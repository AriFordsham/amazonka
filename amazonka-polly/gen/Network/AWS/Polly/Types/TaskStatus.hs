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
-- Module      : Network.AWS.Polly.Types.TaskStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Polly.Types.TaskStatus
  ( TaskStatus
      ( ..,
        TaskStatus_Completed,
        TaskStatus_Failed,
        TaskStatus_InProgress,
        TaskStatus_Scheduled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TaskStatus = TaskStatus'
  { fromTaskStatus ::
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

pattern TaskStatus_Completed :: TaskStatus
pattern TaskStatus_Completed = TaskStatus' "completed"

pattern TaskStatus_Failed :: TaskStatus
pattern TaskStatus_Failed = TaskStatus' "failed"

pattern TaskStatus_InProgress :: TaskStatus
pattern TaskStatus_InProgress = TaskStatus' "inProgress"

pattern TaskStatus_Scheduled :: TaskStatus
pattern TaskStatus_Scheduled = TaskStatus' "scheduled"

{-# COMPLETE
  TaskStatus_Completed,
  TaskStatus_Failed,
  TaskStatus_InProgress,
  TaskStatus_Scheduled,
  TaskStatus'
  #-}
