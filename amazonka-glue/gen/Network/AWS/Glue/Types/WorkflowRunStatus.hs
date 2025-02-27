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
-- Module      : Network.AWS.Glue.Types.WorkflowRunStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.WorkflowRunStatus
  ( WorkflowRunStatus
      ( ..,
        WorkflowRunStatus_COMPLETED,
        WorkflowRunStatus_ERROR,
        WorkflowRunStatus_RUNNING,
        WorkflowRunStatus_STOPPED,
        WorkflowRunStatus_STOPPING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype WorkflowRunStatus = WorkflowRunStatus'
  { fromWorkflowRunStatus ::
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

pattern WorkflowRunStatus_COMPLETED :: WorkflowRunStatus
pattern WorkflowRunStatus_COMPLETED = WorkflowRunStatus' "COMPLETED"

pattern WorkflowRunStatus_ERROR :: WorkflowRunStatus
pattern WorkflowRunStatus_ERROR = WorkflowRunStatus' "ERROR"

pattern WorkflowRunStatus_RUNNING :: WorkflowRunStatus
pattern WorkflowRunStatus_RUNNING = WorkflowRunStatus' "RUNNING"

pattern WorkflowRunStatus_STOPPED :: WorkflowRunStatus
pattern WorkflowRunStatus_STOPPED = WorkflowRunStatus' "STOPPED"

pattern WorkflowRunStatus_STOPPING :: WorkflowRunStatus
pattern WorkflowRunStatus_STOPPING = WorkflowRunStatus' "STOPPING"

{-# COMPLETE
  WorkflowRunStatus_COMPLETED,
  WorkflowRunStatus_ERROR,
  WorkflowRunStatus_RUNNING,
  WorkflowRunStatus_STOPPED,
  WorkflowRunStatus_STOPPING,
  WorkflowRunStatus'
  #-}
