{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE ViewPatterns #-}
{-# LANGUAGE NoImplicitPrelude #-}

-- |
-- Module      : Network.AWS.S3.Encryption.Instructions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : provisional
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Encryption.Instructions where

import Control.Arrow ((&&&))
import Control.Lens (Lens', (%~), (&))
import qualified Control.Lens as Lens
import Control.Monad.Except (ExceptT (ExceptT))
import qualified Control.Monad.Except as Except
import Control.Monad.Trans.AWS
import Control.Monad.Trans.Resource (ResourceT)
import qualified Data.Aeson.Types as Aeson
import Data.Bifunctor (first)
import Data.Coerce (coerce)
import Data.Proxy (Proxy (Proxy))
import Network.AWS.Prelude
import qualified Network.AWS.Response as Response
import qualified Network.AWS.S3 as S3
import Network.AWS.S3.Encryption.Envelope
import Network.AWS.S3.Encryption.Types
import qualified Network.AWS.S3.Lens as S3

newtype Instructions = Instructions
  { runInstructions ::
      Env ->
      Key ->
      ResourceT IO (Either EncryptionError Envelope)
  }

class AWSRequest a => AddInstructions a where
  -- | Determine the bucket and key an instructions file is adjacent to.
  addInstructions :: a -> (S3.BucketName, S3.ObjectKey)

instance AddInstructions S3.PutObject where
  addInstructions =
    Lens.view S3.putObject_bucket
      &&& Lens.view S3.putObject_key

instance AddInstructions S3.GetObject where
  addInstructions =
    Lens.view S3.getObject_bucket
      &&& Lens.view S3.getObject_key

instance AddInstructions S3.CreateMultipartUpload where
  addInstructions =
    Lens.view S3.createMultipartUpload_bucket
      &&& Lens.view S3.createMultipartUpload_key

instance AddInstructions S3.UploadPart where
  addInstructions =
    Lens.view S3.uploadPart_bucket
      &&& Lens.view S3.uploadPart_key

data PutInstructions = PutInstructions
  { _piExt :: Ext,
    _piPut :: S3.PutObject
  }
  deriving (Show)

putInstructions :: AddInstructions a => a -> Envelope -> PutInstructions
putInstructions (addInstructions -> (b, k)) =
  PutInstructions defaultExtension . S3.newPutObject b k . toBody

piExtension :: Lens' PutInstructions Ext
piExtension = Lens.lens _piExt (\s a -> s {_piExt = a})

instance AWSRequest PutInstructions where
  type Rs PutInstructions = S3.PutObjectResponse

  request x =
    coerce . request $
      _piPut x & S3.putObject_key %~ appendExtension (_piExt x)

  response s l _ = response s l (Proxy :: Proxy S3.PutObject)

data GetInstructions = GetInstructions
  { _giExt :: Ext,
    _giGet :: S3.GetObject
  }
  deriving (Show)

getInstructions :: AddInstructions a => a -> GetInstructions
getInstructions =
  GetInstructions defaultExtension
    . uncurry S3.newGetObject
    . addInstructions

giExtension :: Lens' GetInstructions Ext
giExtension = Lens.lens _giExt (\s a -> s {_giExt = a})

instance AWSRequest GetInstructions where
  type Rs GetInstructions = Instructions

  request x =
    coerce . request $
      _giGet x & S3.getObject_key %~ appendExtension (_giExt x)

  response =
    Response.receiveJSON $ \_ _ o ->
      pure . Instructions $ \env key ->
        Except.runExceptT $ do
          meta <-
            Except.liftEither . first (EnvelopeInvalid "Instructions") $
              Aeson.parseEither Aeson.parseJSON (Aeson.Object o)

          ExceptT (fromMetadata env key meta)

class AWSRequest a => RemoveInstructions a where
  -- | Determine the bucket and key an instructions file is adjacent to.
  removeInstructions :: a -> (S3.BucketName, S3.ObjectKey)

instance RemoveInstructions S3.AbortMultipartUpload where
  removeInstructions =
    Lens.view S3.abortMultipartUpload_bucket
      &&& Lens.view S3.abortMultipartUpload_key

instance RemoveInstructions S3.DeleteObject where
  removeInstructions =
    Lens.view S3.deleteObject_bucket
      &&& Lens.view S3.deleteObject_key

data DeleteInstructions = DeleteInstructions
  { _diExt :: Ext,
    _diDelete :: S3.DeleteObject
  }
  deriving (Show)

deleteInstructions :: RemoveInstructions a => a -> DeleteInstructions
deleteInstructions =
  DeleteInstructions defaultExtension
    . uncurry S3.newDeleteObject
    . removeInstructions

diExtension :: Lens' DeleteInstructions Ext
diExtension = Lens.lens _diExt (\s a -> s {_diExt = a})

instance AWSRequest DeleteInstructions where
  type Rs DeleteInstructions = S3.DeleteObjectResponse

  request x =
    coerce . request $
      _diDelete x & S3.deleteObject_key %~ appendExtension (_diExt x)

  response s l _ = response s l (Proxy :: Proxy S3.DeleteObject)
