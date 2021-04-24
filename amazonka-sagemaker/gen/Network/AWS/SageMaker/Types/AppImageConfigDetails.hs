{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.AppImageConfigDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AppImageConfigDetails where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.KernelGatewayImageConfig

-- | The configuration for running a SageMaker image as a KernelGateway app.
--
--
--
-- /See:/ 'appImageConfigDetails' smart constructor.
data AppImageConfigDetails = AppImageConfigDetails'
  { _aicdCreationTime ::
      !(Maybe POSIX),
    _aicdAppImageConfigARN ::
      !(Maybe Text),
    _aicdKernelGatewayImageConfig ::
      !( Maybe
           KernelGatewayImageConfig
       ),
    _aicdAppImageConfigName ::
      !(Maybe Text),
    _aicdLastModifiedTime ::
      !(Maybe POSIX)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AppImageConfigDetails' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aicdCreationTime' - When the AppImageConfig was created.
--
-- * 'aicdAppImageConfigARN' - The Amazon Resource Name (ARN) of the AppImageConfig.
--
-- * 'aicdKernelGatewayImageConfig' - The configuration for the file system and kernels in the SageMaker image.
--
-- * 'aicdAppImageConfigName' - The name of the AppImageConfig. Must be unique to your account.
--
-- * 'aicdLastModifiedTime' - When the AppImageConfig was last modified.
appImageConfigDetails ::
  AppImageConfigDetails
appImageConfigDetails =
  AppImageConfigDetails'
    { _aicdCreationTime = Nothing,
      _aicdAppImageConfigARN = Nothing,
      _aicdKernelGatewayImageConfig = Nothing,
      _aicdAppImageConfigName = Nothing,
      _aicdLastModifiedTime = Nothing
    }

-- | When the AppImageConfig was created.
aicdCreationTime :: Lens' AppImageConfigDetails (Maybe UTCTime)
aicdCreationTime = lens _aicdCreationTime (\s a -> s {_aicdCreationTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the AppImageConfig.
aicdAppImageConfigARN :: Lens' AppImageConfigDetails (Maybe Text)
aicdAppImageConfigARN = lens _aicdAppImageConfigARN (\s a -> s {_aicdAppImageConfigARN = a})

-- | The configuration for the file system and kernels in the SageMaker image.
aicdKernelGatewayImageConfig :: Lens' AppImageConfigDetails (Maybe KernelGatewayImageConfig)
aicdKernelGatewayImageConfig = lens _aicdKernelGatewayImageConfig (\s a -> s {_aicdKernelGatewayImageConfig = a})

-- | The name of the AppImageConfig. Must be unique to your account.
aicdAppImageConfigName :: Lens' AppImageConfigDetails (Maybe Text)
aicdAppImageConfigName = lens _aicdAppImageConfigName (\s a -> s {_aicdAppImageConfigName = a})

-- | When the AppImageConfig was last modified.
aicdLastModifiedTime :: Lens' AppImageConfigDetails (Maybe UTCTime)
aicdLastModifiedTime = lens _aicdLastModifiedTime (\s a -> s {_aicdLastModifiedTime = a}) . mapping _Time

instance FromJSON AppImageConfigDetails where
  parseJSON =
    withObject
      "AppImageConfigDetails"
      ( \x ->
          AppImageConfigDetails'
            <$> (x .:? "CreationTime")
            <*> (x .:? "AppImageConfigArn")
            <*> (x .:? "KernelGatewayImageConfig")
            <*> (x .:? "AppImageConfigName")
            <*> (x .:? "LastModifiedTime")
      )

instance Hashable AppImageConfigDetails

instance NFData AppImageConfigDetails
