{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glacier.InitiateMultipartUpload
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation initiates a multipart upload. Amazon S3 Glacier creates a multipart upload resource and returns its ID in the response. The multipart upload ID is used in subsequent requests to upload parts of an archive (see 'UploadMultipartPart' ).
--
--
-- When you initiate a multipart upload, you specify the part size in number of bytes. The part size must be a megabyte (1024 KB) multiplied by a power of 2-for example, 1048576 (1 MB), 2097152 (2 MB), 4194304 (4 MB), 8388608 (8 MB), and so on. The minimum allowable part size is 1 MB, and the maximum is 4 GB.
--
-- Every part you upload to this resource (see 'UploadMultipartPart' ), except the last one, must have the same size. The last one can be the same size or smaller. For example, suppose you want to upload a 16.2 MB file. If you initiate the multipart upload with a part size of 4 MB, you will upload four parts of 4 MB each and one part of 0.2 MB.
--
-- After you complete the multipart upload, Amazon S3 Glacier (Glacier) removes the multipart upload resource referenced by the ID. Glacier also removes the multipart upload resource if you cancel the multipart upload or it may be removed if there is no activity for a period of 24 hours.
--
-- An AWS account has full permission to perform all operations (actions). However, AWS Identity and Access Management (IAM) users don't have any permissions by default. You must grant them explicit permission to perform specific actions. For more information, see <https://docs.aws.amazon.com/amazonglacier/latest/dev/using-iam-with-amazon-glacier.html Access Control Using AWS Identity and Access Management (IAM)> .
--
-- For conceptual information and underlying REST API, see <https://docs.aws.amazon.com/amazonglacier/latest/dev/uploading-archive-mpu.html Uploading Large Archives in Parts (Multipart Upload)> and <https://docs.aws.amazon.com/amazonglacier/latest/dev/api-multipart-initiate-upload.html Initiate Multipart Upload> in the /Amazon Glacier Developer Guide/ .
module Network.AWS.Glacier.InitiateMultipartUpload
  ( -- * Creating a Request
    initiateMultipartUpload,
    InitiateMultipartUpload,

    -- * Request Lenses
    imuPartSize,
    imuArchiveDescription,
    imuAccountId,
    imuVaultName,

    -- * Destructuring the Response
    initiateMultipartUploadResponse,
    InitiateMultipartUploadResponse,

    -- * Response Lenses
    imurrsUploadId,
    imurrsLocation,
    imurrsResponseStatus,
  )
where

import Network.AWS.Glacier.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Provides options for initiating a multipart upload to an Amazon S3 Glacier vault.
--
--
--
-- /See:/ 'initiateMultipartUpload' smart constructor.
data InitiateMultipartUpload = InitiateMultipartUpload'
  { _imuPartSize ::
      !(Maybe Text),
    _imuArchiveDescription ::
      !(Maybe Text),
    _imuAccountId :: !Text,
    _imuVaultName :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'InitiateMultipartUpload' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'imuPartSize' - The size of each part except the last, in bytes. The last part can be smaller than this part size.
--
-- * 'imuArchiveDescription' - The archive description that you are uploading in parts. The part size must be a megabyte (1024 KB) multiplied by a power of 2, for example 1048576 (1 MB), 2097152 (2 MB), 4194304 (4 MB), 8388608 (8 MB), and so on. The minimum allowable part size is 1 MB, and the maximum is 4 GB (4096 MB).
--
-- * 'imuAccountId' - The @AccountId@ value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '@-@ ' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.
--
-- * 'imuVaultName' - The name of the vault.
initiateMultipartUpload ::
  -- | 'imuAccountId'
  Text ->
  -- | 'imuVaultName'
  Text ->
  InitiateMultipartUpload
initiateMultipartUpload pAccountId_ pVaultName_ =
  InitiateMultipartUpload'
    { _imuPartSize = Nothing,
      _imuArchiveDescription = Nothing,
      _imuAccountId = pAccountId_,
      _imuVaultName = pVaultName_
    }

-- | The size of each part except the last, in bytes. The last part can be smaller than this part size.
imuPartSize :: Lens' InitiateMultipartUpload (Maybe Text)
imuPartSize = lens _imuPartSize (\s a -> s {_imuPartSize = a})

-- | The archive description that you are uploading in parts. The part size must be a megabyte (1024 KB) multiplied by a power of 2, for example 1048576 (1 MB), 2097152 (2 MB), 4194304 (4 MB), 8388608 (8 MB), and so on. The minimum allowable part size is 1 MB, and the maximum is 4 GB (4096 MB).
imuArchiveDescription :: Lens' InitiateMultipartUpload (Maybe Text)
imuArchiveDescription = lens _imuArchiveDescription (\s a -> s {_imuArchiveDescription = a})

-- | The @AccountId@ value is the AWS account ID of the account that owns the vault. You can either specify an AWS account ID or optionally a single '@-@ ' (hyphen), in which case Amazon S3 Glacier uses the AWS account ID associated with the credentials used to sign the request. If you use an account ID, do not include any hyphens ('-') in the ID.
imuAccountId :: Lens' InitiateMultipartUpload Text
imuAccountId = lens _imuAccountId (\s a -> s {_imuAccountId = a})

-- | The name of the vault.
imuVaultName :: Lens' InitiateMultipartUpload Text
imuVaultName = lens _imuVaultName (\s a -> s {_imuVaultName = a})

instance AWSRequest InitiateMultipartUpload where
  type
    Rs InitiateMultipartUpload =
      InitiateMultipartUploadResponse
  request = postJSON glacier
  response =
    receiveEmpty
      ( \s h x ->
          InitiateMultipartUploadResponse'
            <$> (h .#? "x-amz-multipart-upload-id")
            <*> (h .#? "Location")
            <*> (pure (fromEnum s))
      )

instance Hashable InitiateMultipartUpload

instance NFData InitiateMultipartUpload

instance ToHeaders InitiateMultipartUpload where
  toHeaders InitiateMultipartUpload' {..} =
    mconcat
      [ "x-amz-part-size" =# _imuPartSize,
        "x-amz-archive-description"
          =# _imuArchiveDescription
      ]

instance ToJSON InitiateMultipartUpload where
  toJSON = const (Object mempty)

instance ToPath InitiateMultipartUpload where
  toPath InitiateMultipartUpload' {..} =
    mconcat
      [ "/",
        toBS _imuAccountId,
        "/vaults/",
        toBS _imuVaultName,
        "/multipart-uploads"
      ]

instance ToQuery InitiateMultipartUpload where
  toQuery = const mempty

-- | The Amazon S3 Glacier response to your request.
--
--
--
-- /See:/ 'initiateMultipartUploadResponse' smart constructor.
data InitiateMultipartUploadResponse = InitiateMultipartUploadResponse'
  { _imurrsUploadId ::
      !( Maybe
           Text
       ),
    _imurrsLocation ::
      !( Maybe
           Text
       ),
    _imurrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'InitiateMultipartUploadResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'imurrsUploadId' - The ID of the multipart upload. This value is also included as part of the location.
--
-- * 'imurrsLocation' - The relative URI path of the multipart upload ID Amazon S3 Glacier created.
--
-- * 'imurrsResponseStatus' - -- | The response status code.
initiateMultipartUploadResponse ::
  -- | 'imurrsResponseStatus'
  Int ->
  InitiateMultipartUploadResponse
initiateMultipartUploadResponse pResponseStatus_ =
  InitiateMultipartUploadResponse'
    { _imurrsUploadId =
        Nothing,
      _imurrsLocation = Nothing,
      _imurrsResponseStatus = pResponseStatus_
    }

-- | The ID of the multipart upload. This value is also included as part of the location.
imurrsUploadId :: Lens' InitiateMultipartUploadResponse (Maybe Text)
imurrsUploadId = lens _imurrsUploadId (\s a -> s {_imurrsUploadId = a})

-- | The relative URI path of the multipart upload ID Amazon S3 Glacier created.
imurrsLocation :: Lens' InitiateMultipartUploadResponse (Maybe Text)
imurrsLocation = lens _imurrsLocation (\s a -> s {_imurrsLocation = a})

-- | -- | The response status code.
imurrsResponseStatus :: Lens' InitiateMultipartUploadResponse Int
imurrsResponseStatus = lens _imurrsResponseStatus (\s a -> s {_imurrsResponseStatus = a})

instance NFData InitiateMultipartUploadResponse
