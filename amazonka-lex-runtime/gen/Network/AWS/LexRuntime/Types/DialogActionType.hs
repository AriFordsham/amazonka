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
-- Module      : Network.AWS.LexRuntime.Types.DialogActionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexRuntime.Types.DialogActionType
  ( DialogActionType
      ( ..,
        DialogActionType_Close,
        DialogActionType_ConfirmIntent,
        DialogActionType_Delegate,
        DialogActionType_ElicitIntent,
        DialogActionType_ElicitSlot
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DialogActionType = DialogActionType'
  { fromDialogActionType ::
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

pattern DialogActionType_Close :: DialogActionType
pattern DialogActionType_Close = DialogActionType' "Close"

pattern DialogActionType_ConfirmIntent :: DialogActionType
pattern DialogActionType_ConfirmIntent = DialogActionType' "ConfirmIntent"

pattern DialogActionType_Delegate :: DialogActionType
pattern DialogActionType_Delegate = DialogActionType' "Delegate"

pattern DialogActionType_ElicitIntent :: DialogActionType
pattern DialogActionType_ElicitIntent = DialogActionType' "ElicitIntent"

pattern DialogActionType_ElicitSlot :: DialogActionType
pattern DialogActionType_ElicitSlot = DialogActionType' "ElicitSlot"

{-# COMPLETE
  DialogActionType_Close,
  DialogActionType_ConfirmIntent,
  DialogActionType_Delegate,
  DialogActionType_ElicitIntent,
  DialogActionType_ElicitSlot,
  DialogActionType'
  #-}
