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
-- Module      : Network.AWS.EC2.Types.State
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.State
  ( State
      ( ..,
        State_Available,
        State_Deleted,
        State_Deleting,
        State_Expired,
        State_Failed,
        State_Pending,
        State_PendingAcceptance,
        State_Rejected
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype State = State' {fromState :: Prelude.Text}
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

pattern State_Available :: State
pattern State_Available = State' "Available"

pattern State_Deleted :: State
pattern State_Deleted = State' "Deleted"

pattern State_Deleting :: State
pattern State_Deleting = State' "Deleting"

pattern State_Expired :: State
pattern State_Expired = State' "Expired"

pattern State_Failed :: State
pattern State_Failed = State' "Failed"

pattern State_Pending :: State
pattern State_Pending = State' "Pending"

pattern State_PendingAcceptance :: State
pattern State_PendingAcceptance = State' "PendingAcceptance"

pattern State_Rejected :: State
pattern State_Rejected = State' "Rejected"

{-# COMPLETE
  State_Available,
  State_Deleted,
  State_Deleting,
  State_Expired,
  State_Failed,
  State_Pending,
  State_PendingAcceptance,
  State_Rejected,
  State'
  #-}
