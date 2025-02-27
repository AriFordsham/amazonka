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
-- Module      : Network.AWS.Lightsail.Types.InstanceHealthState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.InstanceHealthState
  ( InstanceHealthState
      ( ..,
        InstanceHealthState_Draining,
        InstanceHealthState_Healthy,
        InstanceHealthState_Initial,
        InstanceHealthState_Unavailable,
        InstanceHealthState_Unhealthy,
        InstanceHealthState_Unused
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InstanceHealthState = InstanceHealthState'
  { fromInstanceHealthState ::
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

pattern InstanceHealthState_Draining :: InstanceHealthState
pattern InstanceHealthState_Draining = InstanceHealthState' "draining"

pattern InstanceHealthState_Healthy :: InstanceHealthState
pattern InstanceHealthState_Healthy = InstanceHealthState' "healthy"

pattern InstanceHealthState_Initial :: InstanceHealthState
pattern InstanceHealthState_Initial = InstanceHealthState' "initial"

pattern InstanceHealthState_Unavailable :: InstanceHealthState
pattern InstanceHealthState_Unavailable = InstanceHealthState' "unavailable"

pattern InstanceHealthState_Unhealthy :: InstanceHealthState
pattern InstanceHealthState_Unhealthy = InstanceHealthState' "unhealthy"

pattern InstanceHealthState_Unused :: InstanceHealthState
pattern InstanceHealthState_Unused = InstanceHealthState' "unused"

{-# COMPLETE
  InstanceHealthState_Draining,
  InstanceHealthState_Healthy,
  InstanceHealthState_Initial,
  InstanceHealthState_Unavailable,
  InstanceHealthState_Unhealthy,
  InstanceHealthState_Unused,
  InstanceHealthState'
  #-}
