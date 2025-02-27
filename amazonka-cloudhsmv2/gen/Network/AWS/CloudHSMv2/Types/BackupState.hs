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
-- Module      : Network.AWS.CloudHSMv2.Types.BackupState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudHSMv2.Types.BackupState
  ( BackupState
      ( ..,
        BackupState_CREATE_IN_PROGRESS,
        BackupState_DELETED,
        BackupState_PENDING_DELETION,
        BackupState_READY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BackupState = BackupState'
  { fromBackupState ::
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

pattern BackupState_CREATE_IN_PROGRESS :: BackupState
pattern BackupState_CREATE_IN_PROGRESS = BackupState' "CREATE_IN_PROGRESS"

pattern BackupState_DELETED :: BackupState
pattern BackupState_DELETED = BackupState' "DELETED"

pattern BackupState_PENDING_DELETION :: BackupState
pattern BackupState_PENDING_DELETION = BackupState' "PENDING_DELETION"

pattern BackupState_READY :: BackupState
pattern BackupState_READY = BackupState' "READY"

{-# COMPLETE
  BackupState_CREATE_IN_PROGRESS,
  BackupState_DELETED,
  BackupState_PENDING_DELETION,
  BackupState_READY,
  BackupState'
  #-}
