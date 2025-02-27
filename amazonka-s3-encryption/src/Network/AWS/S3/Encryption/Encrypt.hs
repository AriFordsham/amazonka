{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE TupleSections #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}

-- |
-- Module      : Network.AWS.S3.Encryption.Encrypt
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Encryption.Encrypt where

import Control.Lens (Setter', (%~), (&), (<>~), (^.))
import qualified Control.Lens as Lens
import Control.Monad.Trans.AWS
import Control.Monad.Trans.Resource (MonadResource)
import Data.Coerce (coerce)
import Data.Proxy (Proxy (Proxy))
import qualified Data.Traversable as Traversable
import Network.AWS.Prelude
import qualified Network.AWS.S3 as S3
import Network.AWS.S3.Encryption.Envelope
import Network.AWS.S3.Encryption.Instructions
import Network.AWS.S3.Encryption.Types
import qualified Network.AWS.S3.Lens as S3

-- FIXME: Material

-- | Note about how it doesn't attach metadata by default.
-- You can re-set the location and then discard the PutInstructions request.
encrypted ::
  (MonadResource m, ToEncrypted a) =>
  Env ->
  Key ->
  a ->
  m (Either EncryptionError (Encrypted a, PutInstructions))
encrypted env key x = do
  result <- newEnvelope env key

  Traversable.for result $ \e ->
    pure
      ( encryptWith x Discard e,
        putInstructions x e
      )

encryptPart ::
  Encrypted S3.CreateMultipartUpload ->
  S3.UploadPart ->
  Encrypted S3.UploadPart
encryptPart e x = encryptWith x Discard (envelope e)

data Encrypted a = Encrypted
  { _encPayload :: a,
    _encHeaders :: [Header],
    _encLocation :: Location,
    _encEnvelope :: Envelope
  }

location :: Setter' (Encrypted a) Location
location = Lens.lens _encLocation (\s a -> s {_encLocation = a})

envelope :: Encrypted a -> Envelope
envelope = _encEnvelope

instance AWSRequest a => AWSRequest (Encrypted a) where
  type Rs (Encrypted a) = Rs a

  request (Encrypted x xs l e) =
    coerce (request x)
      & rqBody %~ f
      & rqHeaders <>~ hs
    where
      f b
        | contentLength b > 0 = bodyEncrypt e b
        | otherwise = b

      hs
        | l == Metadata = xs <> toHeaders e
        | otherwise = xs

  response l s p =
    response l s (proxy p)

proxy :: forall a. Proxy (Encrypted a) -> Proxy a
proxy = const Proxy

class AddInstructions a => ToEncrypted a where
  -- | Create an encryption context.
  encryptWith :: a -> Location -> Envelope -> Encrypted a

instance ToEncrypted S3.CreateMultipartUpload where
  encryptWith x = Encrypted x []

instance ToEncrypted S3.PutObject where
  encryptWith x = Encrypted x (len : maybeToList md5)
    where
      len = ("X-Amz-Unencrypted-Content-Length", toBS (contentLength body))
      md5 = ("X-Amz-Unencrypted-Content-MD5",) <$> md5Base64 body

      body = x ^. S3.putObject_body

-- FIXME: verify these additional headers.
instance ToEncrypted S3.UploadPart where
  encryptWith x = Encrypted x (len : maybeToList md5)
    where
      len = ("X-Amz-Unencrypted-Content-Length", toBS (contentLength body))
      md5 = ("X-Amz-Unencrypted-Content-MD5",) <$> md5Base64 body

      body = x ^. S3.uploadPart_body
