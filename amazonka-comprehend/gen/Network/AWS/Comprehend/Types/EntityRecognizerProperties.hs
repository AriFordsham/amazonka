{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.EntityRecognizerProperties
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.EntityRecognizerProperties where

import Network.AWS.Comprehend.Types.EntityRecognizerInputDataConfig
import Network.AWS.Comprehend.Types.EntityRecognizerMetadata
import Network.AWS.Comprehend.Types.LanguageCode
import Network.AWS.Comprehend.Types.ModelStatus
import Network.AWS.Comprehend.Types.VPCConfig
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Describes information about an entity recognizer.
--
--
--
-- /See:/ 'entityRecognizerProperties' smart constructor.
data EntityRecognizerProperties = EntityRecognizerProperties'
  { _erpVPCConfig ::
      !( Maybe
           VPCConfig
       ),
    _erpLanguageCode ::
      !( Maybe
           LanguageCode
       ),
    _erpStatus ::
      !( Maybe
           ModelStatus
       ),
    _erpInputDataConfig ::
      !( Maybe
           EntityRecognizerInputDataConfig
       ),
    _erpMessage ::
      !(Maybe Text),
    _erpEndTime ::
      !(Maybe POSIX),
    _erpVolumeKMSKeyId ::
      !(Maybe Text),
    _erpSubmitTime ::
      !(Maybe POSIX),
    _erpRecognizerMetadata ::
      !( Maybe
           ( Sensitive
               EntityRecognizerMetadata
           )
       ),
    _erpEntityRecognizerARN ::
      !(Maybe Text),
    _erpTrainingStartTime ::
      !(Maybe POSIX),
    _erpDataAccessRoleARN ::
      !(Maybe Text),
    _erpTrainingEndTime ::
      !(Maybe POSIX)
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'EntityRecognizerProperties' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'erpVPCConfig' - Configuration parameters for a private Virtual Private Cloud (VPC) containing the resources you are using for your custom entity recognizer. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
--
-- * 'erpLanguageCode' - The language of the input documents. All documents must be in the same language. Only English ("en") is currently supported.
--
-- * 'erpStatus' - Provides the status of the entity recognizer.
--
-- * 'erpInputDataConfig' - The input data properties of an entity recognizer.
--
-- * 'erpMessage' - A description of the status of the recognizer.
--
-- * 'erpEndTime' - The time that the recognizer creation completed.
--
-- * 'erpVolumeKMSKeyId' - ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
--
-- * 'erpSubmitTime' - The time that the recognizer was submitted for processing.
--
-- * 'erpRecognizerMetadata' - Provides information about an entity recognizer.
--
-- * 'erpEntityRecognizerARN' - The Amazon Resource Name (ARN) that identifies the entity recognizer.
--
-- * 'erpTrainingStartTime' - The time that training of the entity recognizer started.
--
-- * 'erpDataAccessRoleARN' - The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM) role that grants Amazon Comprehend read access to your input data.
--
-- * 'erpTrainingEndTime' - The time that training of the entity recognizer was completed.
entityRecognizerProperties ::
  EntityRecognizerProperties
entityRecognizerProperties =
  EntityRecognizerProperties'
    { _erpVPCConfig =
        Nothing,
      _erpLanguageCode = Nothing,
      _erpStatus = Nothing,
      _erpInputDataConfig = Nothing,
      _erpMessage = Nothing,
      _erpEndTime = Nothing,
      _erpVolumeKMSKeyId = Nothing,
      _erpSubmitTime = Nothing,
      _erpRecognizerMetadata = Nothing,
      _erpEntityRecognizerARN = Nothing,
      _erpTrainingStartTime = Nothing,
      _erpDataAccessRoleARN = Nothing,
      _erpTrainingEndTime = Nothing
    }

-- | Configuration parameters for a private Virtual Private Cloud (VPC) containing the resources you are using for your custom entity recognizer. For more information, see <https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html Amazon VPC> .
erpVPCConfig :: Lens' EntityRecognizerProperties (Maybe VPCConfig)
erpVPCConfig = lens _erpVPCConfig (\s a -> s {_erpVPCConfig = a})

-- | The language of the input documents. All documents must be in the same language. Only English ("en") is currently supported.
erpLanguageCode :: Lens' EntityRecognizerProperties (Maybe LanguageCode)
erpLanguageCode = lens _erpLanguageCode (\s a -> s {_erpLanguageCode = a})

-- | Provides the status of the entity recognizer.
erpStatus :: Lens' EntityRecognizerProperties (Maybe ModelStatus)
erpStatus = lens _erpStatus (\s a -> s {_erpStatus = a})

-- | The input data properties of an entity recognizer.
erpInputDataConfig :: Lens' EntityRecognizerProperties (Maybe EntityRecognizerInputDataConfig)
erpInputDataConfig = lens _erpInputDataConfig (\s a -> s {_erpInputDataConfig = a})

-- | A description of the status of the recognizer.
erpMessage :: Lens' EntityRecognizerProperties (Maybe Text)
erpMessage = lens _erpMessage (\s a -> s {_erpMessage = a})

-- | The time that the recognizer creation completed.
erpEndTime :: Lens' EntityRecognizerProperties (Maybe UTCTime)
erpEndTime = lens _erpEndTime (\s a -> s {_erpEndTime = a}) . mapping _Time

-- | ID for the AWS Key Management Service (KMS) key that Amazon Comprehend uses to encrypt data on the storage volume attached to the ML compute instance(s) that process the analysis job. The VolumeKmsKeyId can be either of the following formats:     * KMS Key ID: @"1234abcd-12ab-34cd-56ef-1234567890ab"@      * Amazon Resource Name (ARN) of a KMS Key: @"arn:aws:kms:us-west-2:111122223333:key/1234abcd-12ab-34cd-56ef-1234567890ab"@
erpVolumeKMSKeyId :: Lens' EntityRecognizerProperties (Maybe Text)
erpVolumeKMSKeyId = lens _erpVolumeKMSKeyId (\s a -> s {_erpVolumeKMSKeyId = a})

-- | The time that the recognizer was submitted for processing.
erpSubmitTime :: Lens' EntityRecognizerProperties (Maybe UTCTime)
erpSubmitTime = lens _erpSubmitTime (\s a -> s {_erpSubmitTime = a}) . mapping _Time

-- | Provides information about an entity recognizer.
erpRecognizerMetadata :: Lens' EntityRecognizerProperties (Maybe EntityRecognizerMetadata)
erpRecognizerMetadata = lens _erpRecognizerMetadata (\s a -> s {_erpRecognizerMetadata = a}) . mapping _Sensitive

-- | The Amazon Resource Name (ARN) that identifies the entity recognizer.
erpEntityRecognizerARN :: Lens' EntityRecognizerProperties (Maybe Text)
erpEntityRecognizerARN = lens _erpEntityRecognizerARN (\s a -> s {_erpEntityRecognizerARN = a})

-- | The time that training of the entity recognizer started.
erpTrainingStartTime :: Lens' EntityRecognizerProperties (Maybe UTCTime)
erpTrainingStartTime = lens _erpTrainingStartTime (\s a -> s {_erpTrainingStartTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the AWS Identity and Management (IAM) role that grants Amazon Comprehend read access to your input data.
erpDataAccessRoleARN :: Lens' EntityRecognizerProperties (Maybe Text)
erpDataAccessRoleARN = lens _erpDataAccessRoleARN (\s a -> s {_erpDataAccessRoleARN = a})

-- | The time that training of the entity recognizer was completed.
erpTrainingEndTime :: Lens' EntityRecognizerProperties (Maybe UTCTime)
erpTrainingEndTime = lens _erpTrainingEndTime (\s a -> s {_erpTrainingEndTime = a}) . mapping _Time

instance FromJSON EntityRecognizerProperties where
  parseJSON =
    withObject
      "EntityRecognizerProperties"
      ( \x ->
          EntityRecognizerProperties'
            <$> (x .:? "VpcConfig")
            <*> (x .:? "LanguageCode")
            <*> (x .:? "Status")
            <*> (x .:? "InputDataConfig")
            <*> (x .:? "Message")
            <*> (x .:? "EndTime")
            <*> (x .:? "VolumeKmsKeyId")
            <*> (x .:? "SubmitTime")
            <*> (x .:? "RecognizerMetadata")
            <*> (x .:? "EntityRecognizerArn")
            <*> (x .:? "TrainingStartTime")
            <*> (x .:? "DataAccessRoleArn")
            <*> (x .:? "TrainingEndTime")
      )

instance Hashable EntityRecognizerProperties

instance NFData EntityRecognizerProperties
