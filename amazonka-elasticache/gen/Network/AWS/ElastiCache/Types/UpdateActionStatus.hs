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
-- Module      : Network.AWS.ElastiCache.Types.UpdateActionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.UpdateActionStatus
  ( UpdateActionStatus
      ( ..,
        UpdateActionStatus_Complete,
        UpdateActionStatus_In_progress,
        UpdateActionStatus_Not_applicable,
        UpdateActionStatus_Not_applied,
        UpdateActionStatus_Scheduled,
        UpdateActionStatus_Scheduling,
        UpdateActionStatus_Stopped,
        UpdateActionStatus_Stopping,
        UpdateActionStatus_Waiting_to_start
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UpdateActionStatus = UpdateActionStatus'
  { fromUpdateActionStatus ::
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

pattern UpdateActionStatus_Complete :: UpdateActionStatus
pattern UpdateActionStatus_Complete = UpdateActionStatus' "complete"

pattern UpdateActionStatus_In_progress :: UpdateActionStatus
pattern UpdateActionStatus_In_progress = UpdateActionStatus' "in-progress"

pattern UpdateActionStatus_Not_applicable :: UpdateActionStatus
pattern UpdateActionStatus_Not_applicable = UpdateActionStatus' "not-applicable"

pattern UpdateActionStatus_Not_applied :: UpdateActionStatus
pattern UpdateActionStatus_Not_applied = UpdateActionStatus' "not-applied"

pattern UpdateActionStatus_Scheduled :: UpdateActionStatus
pattern UpdateActionStatus_Scheduled = UpdateActionStatus' "scheduled"

pattern UpdateActionStatus_Scheduling :: UpdateActionStatus
pattern UpdateActionStatus_Scheduling = UpdateActionStatus' "scheduling"

pattern UpdateActionStatus_Stopped :: UpdateActionStatus
pattern UpdateActionStatus_Stopped = UpdateActionStatus' "stopped"

pattern UpdateActionStatus_Stopping :: UpdateActionStatus
pattern UpdateActionStatus_Stopping = UpdateActionStatus' "stopping"

pattern UpdateActionStatus_Waiting_to_start :: UpdateActionStatus
pattern UpdateActionStatus_Waiting_to_start = UpdateActionStatus' "waiting-to-start"

{-# COMPLETE
  UpdateActionStatus_Complete,
  UpdateActionStatus_In_progress,
  UpdateActionStatus_Not_applicable,
  UpdateActionStatus_Not_applied,
  UpdateActionStatus_Scheduled,
  UpdateActionStatus_Scheduling,
  UpdateActionStatus_Stopped,
  UpdateActionStatus_Stopping,
  UpdateActionStatus_Waiting_to_start,
  UpdateActionStatus'
  #-}
