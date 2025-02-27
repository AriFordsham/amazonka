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
-- Module      : Network.AWS.StorageGateway.Types.ActiveDirectoryStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.ActiveDirectoryStatus
  ( ActiveDirectoryStatus
      ( ..,
        ActiveDirectoryStatus_ACCESS_DENIED,
        ActiveDirectoryStatus_DETACHED,
        ActiveDirectoryStatus_JOINED,
        ActiveDirectoryStatus_JOINING,
        ActiveDirectoryStatus_NETWORK_ERROR,
        ActiveDirectoryStatus_TIMEOUT,
        ActiveDirectoryStatus_UNKNOWN_ERROR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ActiveDirectoryStatus = ActiveDirectoryStatus'
  { fromActiveDirectoryStatus ::
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

pattern ActiveDirectoryStatus_ACCESS_DENIED :: ActiveDirectoryStatus
pattern ActiveDirectoryStatus_ACCESS_DENIED = ActiveDirectoryStatus' "ACCESS_DENIED"

pattern ActiveDirectoryStatus_DETACHED :: ActiveDirectoryStatus
pattern ActiveDirectoryStatus_DETACHED = ActiveDirectoryStatus' "DETACHED"

pattern ActiveDirectoryStatus_JOINED :: ActiveDirectoryStatus
pattern ActiveDirectoryStatus_JOINED = ActiveDirectoryStatus' "JOINED"

pattern ActiveDirectoryStatus_JOINING :: ActiveDirectoryStatus
pattern ActiveDirectoryStatus_JOINING = ActiveDirectoryStatus' "JOINING"

pattern ActiveDirectoryStatus_NETWORK_ERROR :: ActiveDirectoryStatus
pattern ActiveDirectoryStatus_NETWORK_ERROR = ActiveDirectoryStatus' "NETWORK_ERROR"

pattern ActiveDirectoryStatus_TIMEOUT :: ActiveDirectoryStatus
pattern ActiveDirectoryStatus_TIMEOUT = ActiveDirectoryStatus' "TIMEOUT"

pattern ActiveDirectoryStatus_UNKNOWN_ERROR :: ActiveDirectoryStatus
pattern ActiveDirectoryStatus_UNKNOWN_ERROR = ActiveDirectoryStatus' "UNKNOWN_ERROR"

{-# COMPLETE
  ActiveDirectoryStatus_ACCESS_DENIED,
  ActiveDirectoryStatus_DETACHED,
  ActiveDirectoryStatus_JOINED,
  ActiveDirectoryStatus_JOINING,
  ActiveDirectoryStatus_NETWORK_ERROR,
  ActiveDirectoryStatus_TIMEOUT,
  ActiveDirectoryStatus_UNKNOWN_ERROR,
  ActiveDirectoryStatus'
  #-}
