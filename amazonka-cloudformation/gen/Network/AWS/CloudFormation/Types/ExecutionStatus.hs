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
-- Module      : Network.AWS.CloudFormation.Types.ExecutionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFormation.Types.ExecutionStatus
  ( ExecutionStatus
      ( ..,
        ExecutionStatus_AVAILABLE,
        ExecutionStatus_EXECUTE_COMPLETE,
        ExecutionStatus_EXECUTE_FAILED,
        ExecutionStatus_EXECUTE_IN_PROGRESS,
        ExecutionStatus_OBSOLETE,
        ExecutionStatus_UNAVAILABLE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ExecutionStatus = ExecutionStatus'
  { fromExecutionStatus ::
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

pattern ExecutionStatus_AVAILABLE :: ExecutionStatus
pattern ExecutionStatus_AVAILABLE = ExecutionStatus' "AVAILABLE"

pattern ExecutionStatus_EXECUTE_COMPLETE :: ExecutionStatus
pattern ExecutionStatus_EXECUTE_COMPLETE = ExecutionStatus' "EXECUTE_COMPLETE"

pattern ExecutionStatus_EXECUTE_FAILED :: ExecutionStatus
pattern ExecutionStatus_EXECUTE_FAILED = ExecutionStatus' "EXECUTE_FAILED"

pattern ExecutionStatus_EXECUTE_IN_PROGRESS :: ExecutionStatus
pattern ExecutionStatus_EXECUTE_IN_PROGRESS = ExecutionStatus' "EXECUTE_IN_PROGRESS"

pattern ExecutionStatus_OBSOLETE :: ExecutionStatus
pattern ExecutionStatus_OBSOLETE = ExecutionStatus' "OBSOLETE"

pattern ExecutionStatus_UNAVAILABLE :: ExecutionStatus
pattern ExecutionStatus_UNAVAILABLE = ExecutionStatus' "UNAVAILABLE"

{-# COMPLETE
  ExecutionStatus_AVAILABLE,
  ExecutionStatus_EXECUTE_COMPLETE,
  ExecutionStatus_EXECUTE_FAILED,
  ExecutionStatus_EXECUTE_IN_PROGRESS,
  ExecutionStatus_OBSOLETE,
  ExecutionStatus_UNAVAILABLE,
  ExecutionStatus'
  #-}
