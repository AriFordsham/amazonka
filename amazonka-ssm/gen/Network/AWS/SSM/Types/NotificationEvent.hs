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
-- Module      : Network.AWS.SSM.Types.NotificationEvent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.NotificationEvent
  ( NotificationEvent
      ( ..,
        NotificationEvent_All,
        NotificationEvent_Cancelled,
        NotificationEvent_Failed,
        NotificationEvent_InProgress,
        NotificationEvent_Success,
        NotificationEvent_TimedOut
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype NotificationEvent = NotificationEvent'
  { fromNotificationEvent ::
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

pattern NotificationEvent_All :: NotificationEvent
pattern NotificationEvent_All = NotificationEvent' "All"

pattern NotificationEvent_Cancelled :: NotificationEvent
pattern NotificationEvent_Cancelled = NotificationEvent' "Cancelled"

pattern NotificationEvent_Failed :: NotificationEvent
pattern NotificationEvent_Failed = NotificationEvent' "Failed"

pattern NotificationEvent_InProgress :: NotificationEvent
pattern NotificationEvent_InProgress = NotificationEvent' "InProgress"

pattern NotificationEvent_Success :: NotificationEvent
pattern NotificationEvent_Success = NotificationEvent' "Success"

pattern NotificationEvent_TimedOut :: NotificationEvent
pattern NotificationEvent_TimedOut = NotificationEvent' "TimedOut"

{-# COMPLETE
  NotificationEvent_All,
  NotificationEvent_Cancelled,
  NotificationEvent_Failed,
  NotificationEvent_InProgress,
  NotificationEvent_Success,
  NotificationEvent_TimedOut,
  NotificationEvent'
  #-}
