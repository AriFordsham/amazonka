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
-- Module      : Network.AWS.DirectoryService.Types.SchemaExtensionStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.SchemaExtensionStatus
  ( SchemaExtensionStatus
      ( ..,
        SchemaExtensionStatus_CancelInProgress,
        SchemaExtensionStatus_Cancelled,
        SchemaExtensionStatus_Completed,
        SchemaExtensionStatus_CreatingSnapshot,
        SchemaExtensionStatus_Failed,
        SchemaExtensionStatus_Initializing,
        SchemaExtensionStatus_Replicating,
        SchemaExtensionStatus_RollbackInProgress,
        SchemaExtensionStatus_UpdatingSchema
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SchemaExtensionStatus = SchemaExtensionStatus'
  { fromSchemaExtensionStatus ::
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

pattern SchemaExtensionStatus_CancelInProgress :: SchemaExtensionStatus
pattern SchemaExtensionStatus_CancelInProgress = SchemaExtensionStatus' "CancelInProgress"

pattern SchemaExtensionStatus_Cancelled :: SchemaExtensionStatus
pattern SchemaExtensionStatus_Cancelled = SchemaExtensionStatus' "Cancelled"

pattern SchemaExtensionStatus_Completed :: SchemaExtensionStatus
pattern SchemaExtensionStatus_Completed = SchemaExtensionStatus' "Completed"

pattern SchemaExtensionStatus_CreatingSnapshot :: SchemaExtensionStatus
pattern SchemaExtensionStatus_CreatingSnapshot = SchemaExtensionStatus' "CreatingSnapshot"

pattern SchemaExtensionStatus_Failed :: SchemaExtensionStatus
pattern SchemaExtensionStatus_Failed = SchemaExtensionStatus' "Failed"

pattern SchemaExtensionStatus_Initializing :: SchemaExtensionStatus
pattern SchemaExtensionStatus_Initializing = SchemaExtensionStatus' "Initializing"

pattern SchemaExtensionStatus_Replicating :: SchemaExtensionStatus
pattern SchemaExtensionStatus_Replicating = SchemaExtensionStatus' "Replicating"

pattern SchemaExtensionStatus_RollbackInProgress :: SchemaExtensionStatus
pattern SchemaExtensionStatus_RollbackInProgress = SchemaExtensionStatus' "RollbackInProgress"

pattern SchemaExtensionStatus_UpdatingSchema :: SchemaExtensionStatus
pattern SchemaExtensionStatus_UpdatingSchema = SchemaExtensionStatus' "UpdatingSchema"

{-# COMPLETE
  SchemaExtensionStatus_CancelInProgress,
  SchemaExtensionStatus_Cancelled,
  SchemaExtensionStatus_Completed,
  SchemaExtensionStatus_CreatingSnapshot,
  SchemaExtensionStatus_Failed,
  SchemaExtensionStatus_Initializing,
  SchemaExtensionStatus_Replicating,
  SchemaExtensionStatus_RollbackInProgress,
  SchemaExtensionStatus_UpdatingSchema,
  SchemaExtensionStatus'
  #-}
