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
-- Module      : Network.AWS.AppStream.Types.ImageBuilderState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.ImageBuilderState
  ( ImageBuilderState
      ( ..,
        ImageBuilderState_DELETING,
        ImageBuilderState_FAILED,
        ImageBuilderState_PENDING,
        ImageBuilderState_REBOOTING,
        ImageBuilderState_RUNNING,
        ImageBuilderState_SNAPSHOTTING,
        ImageBuilderState_STOPPED,
        ImageBuilderState_STOPPING,
        ImageBuilderState_UPDATING_AGENT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ImageBuilderState = ImageBuilderState'
  { fromImageBuilderState ::
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

pattern ImageBuilderState_DELETING :: ImageBuilderState
pattern ImageBuilderState_DELETING = ImageBuilderState' "DELETING"

pattern ImageBuilderState_FAILED :: ImageBuilderState
pattern ImageBuilderState_FAILED = ImageBuilderState' "FAILED"

pattern ImageBuilderState_PENDING :: ImageBuilderState
pattern ImageBuilderState_PENDING = ImageBuilderState' "PENDING"

pattern ImageBuilderState_REBOOTING :: ImageBuilderState
pattern ImageBuilderState_REBOOTING = ImageBuilderState' "REBOOTING"

pattern ImageBuilderState_RUNNING :: ImageBuilderState
pattern ImageBuilderState_RUNNING = ImageBuilderState' "RUNNING"

pattern ImageBuilderState_SNAPSHOTTING :: ImageBuilderState
pattern ImageBuilderState_SNAPSHOTTING = ImageBuilderState' "SNAPSHOTTING"

pattern ImageBuilderState_STOPPED :: ImageBuilderState
pattern ImageBuilderState_STOPPED = ImageBuilderState' "STOPPED"

pattern ImageBuilderState_STOPPING :: ImageBuilderState
pattern ImageBuilderState_STOPPING = ImageBuilderState' "STOPPING"

pattern ImageBuilderState_UPDATING_AGENT :: ImageBuilderState
pattern ImageBuilderState_UPDATING_AGENT = ImageBuilderState' "UPDATING_AGENT"

{-# COMPLETE
  ImageBuilderState_DELETING,
  ImageBuilderState_FAILED,
  ImageBuilderState_PENDING,
  ImageBuilderState_REBOOTING,
  ImageBuilderState_RUNNING,
  ImageBuilderState_SNAPSHOTTING,
  ImageBuilderState_STOPPED,
  ImageBuilderState_STOPPING,
  ImageBuilderState_UPDATING_AGENT,
  ImageBuilderState'
  #-}
