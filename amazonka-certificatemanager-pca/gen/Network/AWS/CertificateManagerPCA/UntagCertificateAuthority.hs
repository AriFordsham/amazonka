{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.UntagCertificateAuthority
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Remove one or more tags from your private CA. A tag consists of a
-- key-value pair. If you do not specify the value portion of the tag when
-- calling this action, the tag will be removed regardless of value. If you
-- specify a value, the tag is removed only if it is associated with the
-- specified value. To add tags to a private CA, use the
-- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_TagCertificateAuthority.html TagCertificateAuthority>.
-- Call the
-- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListTags.html ListTags>
-- action to see what tags are associated with your CA.
module Network.AWS.CertificateManagerPCA.UntagCertificateAuthority
  ( -- * Creating a Request
    UntagCertificateAuthority (..),
    newUntagCertificateAuthority,

    -- * Request Lenses
    untagCertificateAuthority_certificateAuthorityArn,
    untagCertificateAuthority_tags,

    -- * Destructuring the Response
    UntagCertificateAuthorityResponse (..),
    newUntagCertificateAuthorityResponse,
  )
where

import Network.AWS.CertificateManagerPCA.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUntagCertificateAuthority' smart constructor.
data UntagCertificateAuthority = UntagCertificateAuthority'
  { -- | The Amazon Resource Name (ARN) that was returned when you called
    -- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html CreateCertificateAuthority>.
    -- This must be of the form:
    --
    -- @arn:aws:acm-pca:region:account:certificate-authority\/12345678-1234-1234-1234-123456789012 @
    certificateAuthorityArn :: Prelude.Text,
    -- | List of tags to be removed from the CA.
    tags :: Prelude.NonEmpty Tag
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'UntagCertificateAuthority' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'certificateAuthorityArn', 'untagCertificateAuthority_certificateAuthorityArn' - The Amazon Resource Name (ARN) that was returned when you called
-- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html CreateCertificateAuthority>.
-- This must be of the form:
--
-- @arn:aws:acm-pca:region:account:certificate-authority\/12345678-1234-1234-1234-123456789012 @
--
-- 'tags', 'untagCertificateAuthority_tags' - List of tags to be removed from the CA.
newUntagCertificateAuthority ::
  -- | 'certificateAuthorityArn'
  Prelude.Text ->
  -- | 'tags'
  Prelude.NonEmpty Tag ->
  UntagCertificateAuthority
newUntagCertificateAuthority
  pCertificateAuthorityArn_
  pTags_ =
    UntagCertificateAuthority'
      { certificateAuthorityArn =
          pCertificateAuthorityArn_,
        tags = Prelude._Coerce Lens.# pTags_
      }

-- | The Amazon Resource Name (ARN) that was returned when you called
-- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_CreateCertificateAuthority.html CreateCertificateAuthority>.
-- This must be of the form:
--
-- @arn:aws:acm-pca:region:account:certificate-authority\/12345678-1234-1234-1234-123456789012 @
untagCertificateAuthority_certificateAuthorityArn :: Lens.Lens' UntagCertificateAuthority Prelude.Text
untagCertificateAuthority_certificateAuthorityArn = Lens.lens (\UntagCertificateAuthority' {certificateAuthorityArn} -> certificateAuthorityArn) (\s@UntagCertificateAuthority' {} a -> s {certificateAuthorityArn = a} :: UntagCertificateAuthority)

-- | List of tags to be removed from the CA.
untagCertificateAuthority_tags :: Lens.Lens' UntagCertificateAuthority (Prelude.NonEmpty Tag)
untagCertificateAuthority_tags = Lens.lens (\UntagCertificateAuthority' {tags} -> tags) (\s@UntagCertificateAuthority' {} a -> s {tags = a} :: UntagCertificateAuthority) Prelude.. Prelude._Coerce

instance Prelude.AWSRequest UntagCertificateAuthority where
  type
    Rs UntagCertificateAuthority =
      UntagCertificateAuthorityResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull
      UntagCertificateAuthorityResponse'

instance Prelude.Hashable UntagCertificateAuthority

instance Prelude.NFData UntagCertificateAuthority

instance Prelude.ToHeaders UntagCertificateAuthority where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "ACMPrivateCA.UntagCertificateAuthority" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON UntagCertificateAuthority where
  toJSON UntagCertificateAuthority' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "CertificateAuthorityArn"
                  Prelude..= certificateAuthorityArn
              ),
            Prelude.Just ("Tags" Prelude..= tags)
          ]
      )

instance Prelude.ToPath UntagCertificateAuthority where
  toPath = Prelude.const "/"

instance Prelude.ToQuery UntagCertificateAuthority where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUntagCertificateAuthorityResponse' smart constructor.
data UntagCertificateAuthorityResponse = UntagCertificateAuthorityResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'UntagCertificateAuthorityResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newUntagCertificateAuthorityResponse ::
  UntagCertificateAuthorityResponse
newUntagCertificateAuthorityResponse =
  UntagCertificateAuthorityResponse'

instance
  Prelude.NFData
    UntagCertificateAuthorityResponse
