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
-- Module      : Network.AWS.EKS.Types.AddonStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EKS.Types.AddonStatus
  ( AddonStatus
      ( ..,
        AddonStatus_ACTIVE,
        AddonStatus_CREATE_FAILED,
        AddonStatus_CREATING,
        AddonStatus_DEGRADED,
        AddonStatus_DELETE_FAILED,
        AddonStatus_DELETING,
        AddonStatus_UPDATING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AddonStatus = AddonStatus'
  { fromAddonStatus ::
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

pattern AddonStatus_ACTIVE :: AddonStatus
pattern AddonStatus_ACTIVE = AddonStatus' "ACTIVE"

pattern AddonStatus_CREATE_FAILED :: AddonStatus
pattern AddonStatus_CREATE_FAILED = AddonStatus' "CREATE_FAILED"

pattern AddonStatus_CREATING :: AddonStatus
pattern AddonStatus_CREATING = AddonStatus' "CREATING"

pattern AddonStatus_DEGRADED :: AddonStatus
pattern AddonStatus_DEGRADED = AddonStatus' "DEGRADED"

pattern AddonStatus_DELETE_FAILED :: AddonStatus
pattern AddonStatus_DELETE_FAILED = AddonStatus' "DELETE_FAILED"

pattern AddonStatus_DELETING :: AddonStatus
pattern AddonStatus_DELETING = AddonStatus' "DELETING"

pattern AddonStatus_UPDATING :: AddonStatus
pattern AddonStatus_UPDATING = AddonStatus' "UPDATING"

{-# COMPLETE
  AddonStatus_ACTIVE,
  AddonStatus_CREATE_FAILED,
  AddonStatus_CREATING,
  AddonStatus_DEGRADED,
  AddonStatus_DELETE_FAILED,
  AddonStatus_DELETING,
  AddonStatus_UPDATING,
  AddonStatus'
  #-}
