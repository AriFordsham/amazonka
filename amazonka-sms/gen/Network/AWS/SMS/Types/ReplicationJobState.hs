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
-- Module      : Network.AWS.SMS.Types.ReplicationJobState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.ReplicationJobState
  ( ReplicationJobState
      ( ..,
        ReplicationJobState_ACTIVE,
        ReplicationJobState_COMPLETED,
        ReplicationJobState_DELETED,
        ReplicationJobState_DELETING,
        ReplicationJobState_FAILED,
        ReplicationJobState_FAILING,
        ReplicationJobState_PAUSED_ON_FAILURE,
        ReplicationJobState_PENDING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReplicationJobState = ReplicationJobState'
  { fromReplicationJobState ::
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

pattern ReplicationJobState_ACTIVE :: ReplicationJobState
pattern ReplicationJobState_ACTIVE = ReplicationJobState' "ACTIVE"

pattern ReplicationJobState_COMPLETED :: ReplicationJobState
pattern ReplicationJobState_COMPLETED = ReplicationJobState' "COMPLETED"

pattern ReplicationJobState_DELETED :: ReplicationJobState
pattern ReplicationJobState_DELETED = ReplicationJobState' "DELETED"

pattern ReplicationJobState_DELETING :: ReplicationJobState
pattern ReplicationJobState_DELETING = ReplicationJobState' "DELETING"

pattern ReplicationJobState_FAILED :: ReplicationJobState
pattern ReplicationJobState_FAILED = ReplicationJobState' "FAILED"

pattern ReplicationJobState_FAILING :: ReplicationJobState
pattern ReplicationJobState_FAILING = ReplicationJobState' "FAILING"

pattern ReplicationJobState_PAUSED_ON_FAILURE :: ReplicationJobState
pattern ReplicationJobState_PAUSED_ON_FAILURE = ReplicationJobState' "PAUSED_ON_FAILURE"

pattern ReplicationJobState_PENDING :: ReplicationJobState
pattern ReplicationJobState_PENDING = ReplicationJobState' "PENDING"

{-# COMPLETE
  ReplicationJobState_ACTIVE,
  ReplicationJobState_COMPLETED,
  ReplicationJobState_DELETED,
  ReplicationJobState_DELETING,
  ReplicationJobState_FAILED,
  ReplicationJobState_FAILING,
  ReplicationJobState_PAUSED_ON_FAILURE,
  ReplicationJobState_PENDING,
  ReplicationJobState'
  #-}
