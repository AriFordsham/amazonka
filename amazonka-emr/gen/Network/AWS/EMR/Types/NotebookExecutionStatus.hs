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
-- Module      : Network.AWS.EMR.Types.NotebookExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.NotebookExecutionStatus
  ( NotebookExecutionStatus
      ( ..,
        NotebookExecutionStatus_FAILED,
        NotebookExecutionStatus_FAILING,
        NotebookExecutionStatus_FINISHED,
        NotebookExecutionStatus_FINISHING,
        NotebookExecutionStatus_RUNNING,
        NotebookExecutionStatus_STARTING,
        NotebookExecutionStatus_START_PENDING,
        NotebookExecutionStatus_STOPPED,
        NotebookExecutionStatus_STOPPING,
        NotebookExecutionStatus_STOP_PENDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype NotebookExecutionStatus = NotebookExecutionStatus'
  { fromNotebookExecutionStatus ::
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

pattern NotebookExecutionStatus_FAILED :: NotebookExecutionStatus
pattern NotebookExecutionStatus_FAILED = NotebookExecutionStatus' "FAILED"

pattern NotebookExecutionStatus_FAILING :: NotebookExecutionStatus
pattern NotebookExecutionStatus_FAILING = NotebookExecutionStatus' "FAILING"

pattern NotebookExecutionStatus_FINISHED :: NotebookExecutionStatus
pattern NotebookExecutionStatus_FINISHED = NotebookExecutionStatus' "FINISHED"

pattern NotebookExecutionStatus_FINISHING :: NotebookExecutionStatus
pattern NotebookExecutionStatus_FINISHING = NotebookExecutionStatus' "FINISHING"

pattern NotebookExecutionStatus_RUNNING :: NotebookExecutionStatus
pattern NotebookExecutionStatus_RUNNING = NotebookExecutionStatus' "RUNNING"

pattern NotebookExecutionStatus_STARTING :: NotebookExecutionStatus
pattern NotebookExecutionStatus_STARTING = NotebookExecutionStatus' "STARTING"

pattern NotebookExecutionStatus_START_PENDING :: NotebookExecutionStatus
pattern NotebookExecutionStatus_START_PENDING = NotebookExecutionStatus' "START_PENDING"

pattern NotebookExecutionStatus_STOPPED :: NotebookExecutionStatus
pattern NotebookExecutionStatus_STOPPED = NotebookExecutionStatus' "STOPPED"

pattern NotebookExecutionStatus_STOPPING :: NotebookExecutionStatus
pattern NotebookExecutionStatus_STOPPING = NotebookExecutionStatus' "STOPPING"

pattern NotebookExecutionStatus_STOP_PENDING :: NotebookExecutionStatus
pattern NotebookExecutionStatus_STOP_PENDING = NotebookExecutionStatus' "STOP_PENDING"

{-# COMPLETE
  NotebookExecutionStatus_FAILED,
  NotebookExecutionStatus_FAILING,
  NotebookExecutionStatus_FINISHED,
  NotebookExecutionStatus_FINISHING,
  NotebookExecutionStatus_RUNNING,
  NotebookExecutionStatus_STARTING,
  NotebookExecutionStatus_START_PENDING,
  NotebookExecutionStatus_STOPPED,
  NotebookExecutionStatus_STOPPING,
  NotebookExecutionStatus_STOP_PENDING,
  NotebookExecutionStatus'
  #-}
