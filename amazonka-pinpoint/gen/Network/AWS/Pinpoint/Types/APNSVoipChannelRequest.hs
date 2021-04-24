{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.APNSVoipChannelRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.APNSVoipChannelRequest where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies the status and settings of the APNs (Apple Push Notification service) VoIP channel for an application.
--
--
--
-- /See:/ 'apnsVoipChannelRequest' smart constructor.
data APNSVoipChannelRequest = APNSVoipChannelRequest'
  { _avcrDefaultAuthenticationMethod ::
      !(Maybe Text),
    _avcrTokenKey ::
      !(Maybe Text),
    _avcrBundleId ::
      !(Maybe Text),
    _avcrTeamId ::
      !(Maybe Text),
    _avcrEnabled ::
      !(Maybe Bool),
    _avcrPrivateKey ::
      !(Maybe Text),
    _avcrTokenKeyId ::
      !(Maybe Text),
    _avcrCertificate ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'APNSVoipChannelRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'avcrDefaultAuthenticationMethod' - The default authentication method that you want Amazon Pinpoint to use when authenticating with APNs, key or certificate.
--
-- * 'avcrTokenKey' - The authentication key to use for APNs tokens.
--
-- * 'avcrBundleId' - The bundle identifier that's assigned to your iOS app. This identifier is used for APNs tokens.
--
-- * 'avcrTeamId' - The identifier that's assigned to your Apple developer account team. This identifier is used for APNs tokens.
--
-- * 'avcrEnabled' - Specifies whether to enable the APNs VoIP channel for the application.
--
-- * 'avcrPrivateKey' - The private key for the APNs client certificate that you want Amazon Pinpoint to use to communicate with APNs.
--
-- * 'avcrTokenKeyId' - The key identifier that's assigned to your APNs signing key, if you want Amazon Pinpoint to communicate with APNs by using APNs tokens.
--
-- * 'avcrCertificate' - The APNs client certificate that you received from Apple, if you want Amazon Pinpoint to communicate with APNs by using an APNs certificate.
apnsVoipChannelRequest ::
  APNSVoipChannelRequest
apnsVoipChannelRequest =
  APNSVoipChannelRequest'
    { _avcrDefaultAuthenticationMethod =
        Nothing,
      _avcrTokenKey = Nothing,
      _avcrBundleId = Nothing,
      _avcrTeamId = Nothing,
      _avcrEnabled = Nothing,
      _avcrPrivateKey = Nothing,
      _avcrTokenKeyId = Nothing,
      _avcrCertificate = Nothing
    }

-- | The default authentication method that you want Amazon Pinpoint to use when authenticating with APNs, key or certificate.
avcrDefaultAuthenticationMethod :: Lens' APNSVoipChannelRequest (Maybe Text)
avcrDefaultAuthenticationMethod = lens _avcrDefaultAuthenticationMethod (\s a -> s {_avcrDefaultAuthenticationMethod = a})

-- | The authentication key to use for APNs tokens.
avcrTokenKey :: Lens' APNSVoipChannelRequest (Maybe Text)
avcrTokenKey = lens _avcrTokenKey (\s a -> s {_avcrTokenKey = a})

-- | The bundle identifier that's assigned to your iOS app. This identifier is used for APNs tokens.
avcrBundleId :: Lens' APNSVoipChannelRequest (Maybe Text)
avcrBundleId = lens _avcrBundleId (\s a -> s {_avcrBundleId = a})

-- | The identifier that's assigned to your Apple developer account team. This identifier is used for APNs tokens.
avcrTeamId :: Lens' APNSVoipChannelRequest (Maybe Text)
avcrTeamId = lens _avcrTeamId (\s a -> s {_avcrTeamId = a})

-- | Specifies whether to enable the APNs VoIP channel for the application.
avcrEnabled :: Lens' APNSVoipChannelRequest (Maybe Bool)
avcrEnabled = lens _avcrEnabled (\s a -> s {_avcrEnabled = a})

-- | The private key for the APNs client certificate that you want Amazon Pinpoint to use to communicate with APNs.
avcrPrivateKey :: Lens' APNSVoipChannelRequest (Maybe Text)
avcrPrivateKey = lens _avcrPrivateKey (\s a -> s {_avcrPrivateKey = a})

-- | The key identifier that's assigned to your APNs signing key, if you want Amazon Pinpoint to communicate with APNs by using APNs tokens.
avcrTokenKeyId :: Lens' APNSVoipChannelRequest (Maybe Text)
avcrTokenKeyId = lens _avcrTokenKeyId (\s a -> s {_avcrTokenKeyId = a})

-- | The APNs client certificate that you received from Apple, if you want Amazon Pinpoint to communicate with APNs by using an APNs certificate.
avcrCertificate :: Lens' APNSVoipChannelRequest (Maybe Text)
avcrCertificate = lens _avcrCertificate (\s a -> s {_avcrCertificate = a})

instance Hashable APNSVoipChannelRequest

instance NFData APNSVoipChannelRequest

instance ToJSON APNSVoipChannelRequest where
  toJSON APNSVoipChannelRequest' {..} =
    object
      ( catMaybes
          [ ("DefaultAuthenticationMethod" .=)
              <$> _avcrDefaultAuthenticationMethod,
            ("TokenKey" .=) <$> _avcrTokenKey,
            ("BundleId" .=) <$> _avcrBundleId,
            ("TeamId" .=) <$> _avcrTeamId,
            ("Enabled" .=) <$> _avcrEnabled,
            ("PrivateKey" .=) <$> _avcrPrivateKey,
            ("TokenKeyId" .=) <$> _avcrTokenKeyId,
            ("Certificate" .=) <$> _avcrCertificate
          ]
      )
