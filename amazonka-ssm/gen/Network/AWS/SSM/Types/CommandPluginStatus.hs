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
-- Module      : Network.AWS.SSM.Types.CommandPluginStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.CommandPluginStatus
  ( CommandPluginStatus
      ( ..,
        CommandPluginStatus_Cancelled,
        CommandPluginStatus_Failed,
        CommandPluginStatus_InProgress,
        CommandPluginStatus_Pending,
        CommandPluginStatus_Success,
        CommandPluginStatus_TimedOut
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CommandPluginStatus = CommandPluginStatus'
  { fromCommandPluginStatus ::
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

pattern CommandPluginStatus_Cancelled :: CommandPluginStatus
pattern CommandPluginStatus_Cancelled = CommandPluginStatus' "Cancelled"

pattern CommandPluginStatus_Failed :: CommandPluginStatus
pattern CommandPluginStatus_Failed = CommandPluginStatus' "Failed"

pattern CommandPluginStatus_InProgress :: CommandPluginStatus
pattern CommandPluginStatus_InProgress = CommandPluginStatus' "InProgress"

pattern CommandPluginStatus_Pending :: CommandPluginStatus
pattern CommandPluginStatus_Pending = CommandPluginStatus' "Pending"

pattern CommandPluginStatus_Success :: CommandPluginStatus
pattern CommandPluginStatus_Success = CommandPluginStatus' "Success"

pattern CommandPluginStatus_TimedOut :: CommandPluginStatus
pattern CommandPluginStatus_TimedOut = CommandPluginStatus' "TimedOut"

{-# COMPLETE
  CommandPluginStatus_Cancelled,
  CommandPluginStatus_Failed,
  CommandPluginStatus_InProgress,
  CommandPluginStatus_Pending,
  CommandPluginStatus_Success,
  CommandPluginStatus_TimedOut,
  CommandPluginStatus'
  #-}
