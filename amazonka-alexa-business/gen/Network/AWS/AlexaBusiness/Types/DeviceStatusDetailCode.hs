{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AlexaBusiness.Types.DeviceStatusDetailCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AlexaBusiness.Types.DeviceStatusDetailCode
  ( DeviceStatusDetailCode
      ( ..,
        DeviceStatusDetailCode_ASSOCIATION_REJECTION,
        DeviceStatusDetailCode_AUTHENTICATION_FAILURE,
        DeviceStatusDetailCode_CERTIFICATE_AUTHORITY_ACCESS_DENIED,
        DeviceStatusDetailCode_CERTIFICATE_ISSUING_LIMIT_EXCEEDED,
        DeviceStatusDetailCode_CREDENTIALS_ACCESS_FAILURE,
        DeviceStatusDetailCode_DEVICE_SOFTWARE_UPDATE_NEEDED,
        DeviceStatusDetailCode_DEVICE_WAS_OFFLINE,
        DeviceStatusDetailCode_DHCP_FAILURE,
        DeviceStatusDetailCode_DNS_FAILURE,
        DeviceStatusDetailCode_INTERNET_UNAVAILABLE,
        DeviceStatusDetailCode_INVALID_CERTIFICATE_AUTHORITY,
        DeviceStatusDetailCode_INVALID_PASSWORD_STATE,
        DeviceStatusDetailCode_NETWORK_PROFILE_NOT_FOUND,
        DeviceStatusDetailCode_PASSWORD_MANAGER_ACCESS_DENIED,
        DeviceStatusDetailCode_PASSWORD_NOT_FOUND,
        DeviceStatusDetailCode_TLS_VERSION_MISMATCH,
        DeviceStatusDetailCode_UNKNOWN_FAILURE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeviceStatusDetailCode = DeviceStatusDetailCode'
  { fromDeviceStatusDetailCode ::
      Prelude.Text
  }
  deriving
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic,
      Prelude.Hashable,
      Prelude.NFData,
      Prelude.FromText,
      Prelude.ToText,
      Prelude.ToByteString,
      Prelude.ToLog,
      Prelude.ToHeader,
      Prelude.ToQuery,
      Prelude.FromJSON,
      Prelude.FromJSONKey,
      Prelude.ToJSON,
      Prelude.ToJSONKey,
      Prelude.FromXML,
      Prelude.ToXML
    )

pattern DeviceStatusDetailCode_ASSOCIATION_REJECTION :: DeviceStatusDetailCode
pattern DeviceStatusDetailCode_ASSOCIATION_REJECTION = DeviceStatusDetailCode' "ASSOCIATION_REJECTION"

pattern DeviceStatusDetailCode_AUTHENTICATION_FAILURE :: DeviceStatusDetailCode
pattern DeviceStatusDetailCode_AUTHENTICATION_FAILURE = DeviceStatusDetailCode' "AUTHENTICATION_FAILURE"

pattern DeviceStatusDetailCode_CERTIFICATE_AUTHORITY_ACCESS_DENIED :: DeviceStatusDetailCode
pattern DeviceStatusDetailCode_CERTIFICATE_AUTHORITY_ACCESS_DENIED = DeviceStatusDetailCode' "CERTIFICATE_AUTHORITY_ACCESS_DENIED"

pattern DeviceStatusDetailCode_CERTIFICATE_ISSUING_LIMIT_EXCEEDED :: DeviceStatusDetailCode
pattern DeviceStatusDetailCode_CERTIFICATE_ISSUING_LIMIT_EXCEEDED = DeviceStatusDetailCode' "CERTIFICATE_ISSUING_LIMIT_EXCEEDED"

pattern DeviceStatusDetailCode_CREDENTIALS_ACCESS_FAILURE :: DeviceStatusDetailCode
pattern DeviceStatusDetailCode_CREDENTIALS_ACCESS_FAILURE = DeviceStatusDetailCode' "CREDENTIALS_ACCESS_FAILURE"

pattern DeviceStatusDetailCode_DEVICE_SOFTWARE_UPDATE_NEEDED :: DeviceStatusDetailCode
pattern DeviceStatusDetailCode_DEVICE_SOFTWARE_UPDATE_NEEDED = DeviceStatusDetailCode' "DEVICE_SOFTWARE_UPDATE_NEEDED"

pattern DeviceStatusDetailCode_DEVICE_WAS_OFFLINE :: DeviceStatusDetailCode
pattern DeviceStatusDetailCode_DEVICE_WAS_OFFLINE = DeviceStatusDetailCode' "DEVICE_WAS_OFFLINE"

pattern DeviceStatusDetailCode_DHCP_FAILURE :: DeviceStatusDetailCode
pattern DeviceStatusDetailCode_DHCP_FAILURE = DeviceStatusDetailCode' "DHCP_FAILURE"

pattern DeviceStatusDetailCode_DNS_FAILURE :: DeviceStatusDetailCode
pattern DeviceStatusDetailCode_DNS_FAILURE = DeviceStatusDetailCode' "DNS_FAILURE"

pattern DeviceStatusDetailCode_INTERNET_UNAVAILABLE :: DeviceStatusDetailCode
pattern DeviceStatusDetailCode_INTERNET_UNAVAILABLE = DeviceStatusDetailCode' "INTERNET_UNAVAILABLE"

pattern DeviceStatusDetailCode_INVALID_CERTIFICATE_AUTHORITY :: DeviceStatusDetailCode
pattern DeviceStatusDetailCode_INVALID_CERTIFICATE_AUTHORITY = DeviceStatusDetailCode' "INVALID_CERTIFICATE_AUTHORITY"

pattern DeviceStatusDetailCode_INVALID_PASSWORD_STATE :: DeviceStatusDetailCode
pattern DeviceStatusDetailCode_INVALID_PASSWORD_STATE = DeviceStatusDetailCode' "INVALID_PASSWORD_STATE"

pattern DeviceStatusDetailCode_NETWORK_PROFILE_NOT_FOUND :: DeviceStatusDetailCode
pattern DeviceStatusDetailCode_NETWORK_PROFILE_NOT_FOUND = DeviceStatusDetailCode' "NETWORK_PROFILE_NOT_FOUND"

pattern DeviceStatusDetailCode_PASSWORD_MANAGER_ACCESS_DENIED :: DeviceStatusDetailCode
pattern DeviceStatusDetailCode_PASSWORD_MANAGER_ACCESS_DENIED = DeviceStatusDetailCode' "PASSWORD_MANAGER_ACCESS_DENIED"

pattern DeviceStatusDetailCode_PASSWORD_NOT_FOUND :: DeviceStatusDetailCode
pattern DeviceStatusDetailCode_PASSWORD_NOT_FOUND = DeviceStatusDetailCode' "PASSWORD_NOT_FOUND"

pattern DeviceStatusDetailCode_TLS_VERSION_MISMATCH :: DeviceStatusDetailCode
pattern DeviceStatusDetailCode_TLS_VERSION_MISMATCH = DeviceStatusDetailCode' "TLS_VERSION_MISMATCH"

pattern DeviceStatusDetailCode_UNKNOWN_FAILURE :: DeviceStatusDetailCode
pattern DeviceStatusDetailCode_UNKNOWN_FAILURE = DeviceStatusDetailCode' "UNKNOWN_FAILURE"

{-# COMPLETE
  DeviceStatusDetailCode_ASSOCIATION_REJECTION,
  DeviceStatusDetailCode_AUTHENTICATION_FAILURE,
  DeviceStatusDetailCode_CERTIFICATE_AUTHORITY_ACCESS_DENIED,
  DeviceStatusDetailCode_CERTIFICATE_ISSUING_LIMIT_EXCEEDED,
  DeviceStatusDetailCode_CREDENTIALS_ACCESS_FAILURE,
  DeviceStatusDetailCode_DEVICE_SOFTWARE_UPDATE_NEEDED,
  DeviceStatusDetailCode_DEVICE_WAS_OFFLINE,
  DeviceStatusDetailCode_DHCP_FAILURE,
  DeviceStatusDetailCode_DNS_FAILURE,
  DeviceStatusDetailCode_INTERNET_UNAVAILABLE,
  DeviceStatusDetailCode_INVALID_CERTIFICATE_AUTHORITY,
  DeviceStatusDetailCode_INVALID_PASSWORD_STATE,
  DeviceStatusDetailCode_NETWORK_PROFILE_NOT_FOUND,
  DeviceStatusDetailCode_PASSWORD_MANAGER_ACCESS_DENIED,
  DeviceStatusDetailCode_PASSWORD_NOT_FOUND,
  DeviceStatusDetailCode_TLS_VERSION_MISMATCH,
  DeviceStatusDetailCode_UNKNOWN_FAILURE,
  DeviceStatusDetailCode'
  #-}
