{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.Setting
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.Setting where

import Network.AWS.ECS.Types.SettingName
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The current account setting for a resource.
--
--
--
-- /See:/ 'setting' smart constructor.
data Setting = Setting'
  { _setName ::
      !(Maybe SettingName),
    _setPrincipalARN :: !(Maybe Text),
    _setValue :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Setting' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'setName' - The Amazon ECS resource name.
--
-- * 'setPrincipalARN' - The ARN of the principal, which can be an IAM user, IAM role, or the root user. If this field is omitted, the authenticated user is assumed.
--
-- * 'setValue' - Whether the account setting is enabled or disabled for the specified resource.
setting ::
  Setting
setting =
  Setting'
    { _setName = Nothing,
      _setPrincipalARN = Nothing,
      _setValue = Nothing
    }

-- | The Amazon ECS resource name.
setName :: Lens' Setting (Maybe SettingName)
setName = lens _setName (\s a -> s {_setName = a})

-- | The ARN of the principal, which can be an IAM user, IAM role, or the root user. If this field is omitted, the authenticated user is assumed.
setPrincipalARN :: Lens' Setting (Maybe Text)
setPrincipalARN = lens _setPrincipalARN (\s a -> s {_setPrincipalARN = a})

-- | Whether the account setting is enabled or disabled for the specified resource.
setValue :: Lens' Setting (Maybe Text)
setValue = lens _setValue (\s a -> s {_setValue = a})

instance FromJSON Setting where
  parseJSON =
    withObject
      "Setting"
      ( \x ->
          Setting'
            <$> (x .:? "name")
            <*> (x .:? "principalArn")
            <*> (x .:? "value")
      )

instance Hashable Setting

instance NFData Setting
