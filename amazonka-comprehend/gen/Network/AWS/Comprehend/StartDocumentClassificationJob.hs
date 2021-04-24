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
-- Module      : Network.AWS.Comprehend.StartDocumentClassificationJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts an asynchronous document classification job. Use the operation to track the progress of the job.
module Network.AWS.Comprehend.StartDocumentClassificationJob
  ( -- * Creating a Request
    startDocumentClassificationJob,
    StartDocumentClassificationJob,

    -- * Request Lenses
    sdcjVPCConfig,
    sdcjVolumeKMSKeyId,
    sdcjClientRequestToken,
    sdcjJobName,
    sdcjDocumentClassifierARN,
    sdcjInputDataConfig,
    sdcjOutputDataConfig,
    sdcjDataAccessRoleARN,

    -- * Destructuring the Response
    startDocumentClassificationJobResponse,
    StartDocumentClassificationJobResponse,

    -- * Response Lenses
    sdcjrrsJobStatus,
    sdcjrrsJobId,
    sdcjrrsResponseStatus,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'startDocumentClassificationJob' smart constructor.
data StartDocumentClassificationJob = StartDocumentClassificationJob'
  { _sdcjVPCConfig ::
      !( Maybe
           VPCConfig
       ),
    _sdcjVolumeKMSKeyId ::
      !( Maybe
           Text
       ),
    _sdcjClientRequestToken ::
      !( Maybe
           Text
       ),
    _sdcjJobName ::
      !( Maybe
           Text
       ),
    _sdcjDocumentClassifierARN ::
      !Text,
    _sdcjInputDataConfig ::
      !InputDataConfig,
    _sdcjOutputDataConfig ::
      !OutputDataConfig,
    _sdcjDataAccessRoleARN ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'StartDocumentClassificationJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdcjVPCConfig' - Configuration parameters for an optional private Virtual Private Cloud (VPC) containing the resources you are using for your document classification job. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
--
-- * 'sdcjVolumeKMSKeyId' - ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
--
-- * 'sdcjClientRequestToken' - A unique identifier for the request. If you do not set the client request token, Amazon Comprehend generates one.
--
-- * 'sdcjJobName' - The identifier of the job.
--
-- * 'sdcjDocumentClassifierARN' - The Amazon Resource Name (ARN) of the document classifier to use to process the job.
--
-- * 'sdcjInputDataConfig' - Specifies the format and location of the input data for the job.
--
-- * 'sdcjOutputDataConfig' - Specifies where to send the output files.
--
-- * 'sdcjDataAccessRoleARN' - The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend read access to your input data.
startDocumentClassificationJob ::
  -- | 'sdcjDocumentClassifierARN'
  Text ->
  -- | 'sdcjInputDataConfig'
  InputDataConfig ->
  -- | 'sdcjOutputDataConfig'
  OutputDataConfig ->
  -- | 'sdcjDataAccessRoleARN'
  Text ->
  StartDocumentClassificationJob
startDocumentClassificationJob
  pDocumentClassifierARN_
  pInputDataConfig_
  pOutputDataConfig_
  pDataAccessRoleARN_ =
    StartDocumentClassificationJob'
      { _sdcjVPCConfig =
          Nothing,
        _sdcjVolumeKMSKeyId = Nothing,
        _sdcjClientRequestToken = Nothing,
        _sdcjJobName = Nothing,
        _sdcjDocumentClassifierARN =
          pDocumentClassifierARN_,
        _sdcjInputDataConfig = pInputDataConfig_,
        _sdcjOutputDataConfig = pOutputDataConfig_,
        _sdcjDataAccessRoleARN =
          pDataAccessRoleARN_
      }

-- | Configuration parameters for an optional private Virtual Private Cloud (VPC) containing the resources you are using for your document classification job. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
sdcjVPCConfig :: Lens' StartDocumentClassificationJob (Maybe VPCConfig)
sdcjVPCConfig = lens _sdcjVPCConfig (\s a -> s {_sdcjVPCConfig = a})

-- | ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
sdcjVolumeKMSKeyId :: Lens' StartDocumentClassificationJob (Maybe Text)
sdcjVolumeKMSKeyId = lens _sdcjVolumeKMSKeyId (\s a -> s {_sdcjVolumeKMSKeyId = a})

-- | A unique identifier for the request. If you do not set the client request token, Amazon Comprehend generates one.
sdcjClientRequestToken :: Lens' StartDocumentClassificationJob (Maybe Text)
sdcjClientRequestToken = lens _sdcjClientRequestToken (\s a -> s {_sdcjClientRequestToken = a})

-- | The identifier of the job.
sdcjJobName :: Lens' StartDocumentClassificationJob (Maybe Text)
sdcjJobName = lens _sdcjJobName (\s a -> s {_sdcjJobName = a})

-- | The Amazon Resource Name (ARN) of the document classifier to use to process the job.
sdcjDocumentClassifierARN :: Lens' StartDocumentClassificationJob Text
sdcjDocumentClassifierARN = lens _sdcjDocumentClassifierARN (\s a -> s {_sdcjDocumentClassifierARN = a})

-- | Specifies the format and location of the input data for the job.
sdcjInputDataConfig :: Lens' StartDocumentClassificationJob InputDataConfig
sdcjInputDataConfig = lens _sdcjInputDataConfig (\s a -> s {_sdcjInputDataConfig = a})

-- | Specifies where to send the output files.
sdcjOutputDataConfig :: Lens' StartDocumentClassificationJob OutputDataConfig
sdcjOutputDataConfig = lens _sdcjOutputDataConfig (\s a -> s {_sdcjOutputDataConfig = a})

-- | The Amazon Resource Name (ARN) of the AWS Identity and Access Management (IAM) role that grants Amazon Comprehend read access to your input data.
sdcjDataAccessRoleARN :: Lens' StartDocumentClassificationJob Text
sdcjDataAccessRoleARN = lens _sdcjDataAccessRoleARN (\s a -> s {_sdcjDataAccessRoleARN = a})

instance AWSRequest StartDocumentClassificationJob where
  type
    Rs StartDocumentClassificationJob =
      StartDocumentClassificationJobResponse
  request = postJSON comprehend
  response =
    receiveJSON
      ( \s h x ->
          StartDocumentClassificationJobResponse'
            <$> (x .?> "JobStatus")
            <*> (x .?> "JobId")
            <*> (pure (fromEnum s))
      )

instance Hashable StartDocumentClassificationJob

instance NFData StartDocumentClassificationJob

instance ToHeaders StartDocumentClassificationJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Comprehend_20171127.StartDocumentClassificationJob" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StartDocumentClassificationJob where
  toJSON StartDocumentClassificationJob' {..} =
    object
      ( catMaybes
          [ ("VpcConfig" .=) <$> _sdcjVPCConfig,
            ("VolumeKmsKeyId" .=) <$> _sdcjVolumeKMSKeyId,
            ("ClientRequestToken" .=)
              <$> _sdcjClientRequestToken,
            ("JobName" .=) <$> _sdcjJobName,
            Just
              ( "DocumentClassifierArn"
                  .= _sdcjDocumentClassifierARN
              ),
            Just ("InputDataConfig" .= _sdcjInputDataConfig),
            Just ("OutputDataConfig" .= _sdcjOutputDataConfig),
            Just
              ("DataAccessRoleArn" .= _sdcjDataAccessRoleARN)
          ]
      )

instance ToPath StartDocumentClassificationJob where
  toPath = const "/"

instance ToQuery StartDocumentClassificationJob where
  toQuery = const mempty

-- | /See:/ 'startDocumentClassificationJobResponse' smart constructor.
data StartDocumentClassificationJobResponse = StartDocumentClassificationJobResponse'
  { _sdcjrrsJobStatus ::
      !( Maybe
           JobStatus
       ),
    _sdcjrrsJobId ::
      !( Maybe
           Text
       ),
    _sdcjrrsResponseStatus ::
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

-- | Creates a value of 'StartDocumentClassificationJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sdcjrrsJobStatus' - The status of the job:     * SUBMITTED - The job has been received and queued for processing.     * IN_PROGRESS - Amazon Comprehend is processing the job.     * COMPLETED - The job was successfully completed and the output is available.     * FAILED - The job did not complete. For details, use the operation.     * STOP_REQUESTED - Amazon Comprehend has received a stop request for the job and is processing the request.     * STOPPED - The job was successfully stopped without completing.
--
-- * 'sdcjrrsJobId' - The identifier generated for the job. To get the status of the job, use this identifier with the operation.
--
-- * 'sdcjrrsResponseStatus' - -- | The response status code.
startDocumentClassificationJobResponse ::
  -- | 'sdcjrrsResponseStatus'
  Int ->
  StartDocumentClassificationJobResponse
startDocumentClassificationJobResponse
  pResponseStatus_ =
    StartDocumentClassificationJobResponse'
      { _sdcjrrsJobStatus =
          Nothing,
        _sdcjrrsJobId = Nothing,
        _sdcjrrsResponseStatus =
          pResponseStatus_
      }

-- | The status of the job:     * SUBMITTED - The job has been received and queued for processing.     * IN_PROGRESS - Amazon Comprehend is processing the job.     * COMPLETED - The job was successfully completed and the output is available.     * FAILED - The job did not complete. For details, use the operation.     * STOP_REQUESTED - Amazon Comprehend has received a stop request for the job and is processing the request.     * STOPPED - The job was successfully stopped without completing.
sdcjrrsJobStatus :: Lens' StartDocumentClassificationJobResponse (Maybe JobStatus)
sdcjrrsJobStatus = lens _sdcjrrsJobStatus (\s a -> s {_sdcjrrsJobStatus = a})

-- | The identifier generated for the job. To get the status of the job, use this identifier with the operation.
sdcjrrsJobId :: Lens' StartDocumentClassificationJobResponse (Maybe Text)
sdcjrrsJobId = lens _sdcjrrsJobId (\s a -> s {_sdcjrrsJobId = a})

-- | -- | The response status code.
sdcjrrsResponseStatus :: Lens' StartDocumentClassificationJobResponse Int
sdcjrrsResponseStatus = lens _sdcjrrsResponseStatus (\s a -> s {_sdcjrrsResponseStatus = a})

instance
  NFData
    StartDocumentClassificationJobResponse
