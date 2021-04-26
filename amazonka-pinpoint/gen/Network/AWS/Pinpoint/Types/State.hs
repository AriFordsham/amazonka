{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.State
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.State
  ( State
      ( ..,
        StateACTIVE,
        StateCANCELLED,
        StateCLOSED,
        StateCOMPLETED,
        StateDRAFT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype State = State' {fromState :: Prelude.Text}
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern StateACTIVE :: State
pattern StateACTIVE = State' "ACTIVE"

pattern StateCANCELLED :: State
pattern StateCANCELLED = State' "CANCELLED"

pattern StateCLOSED :: State
pattern StateCLOSED = State' "CLOSED"

pattern StateCOMPLETED :: State
pattern StateCOMPLETED = State' "COMPLETED"

pattern StateDRAFT :: State
pattern StateDRAFT = State' "DRAFT"

{-# COMPLETE
  StateACTIVE,
  StateCANCELLED,
  StateCLOSED,
  StateCOMPLETED,
  StateDRAFT,
  State'
  #-}

instance Prelude.FromText State where
  parser = State' Prelude.<$> Prelude.takeText

instance Prelude.ToText State where
  toText (State' x) = x

instance Prelude.Hashable State

instance Prelude.NFData State

instance Prelude.ToByteString State

instance Prelude.ToQuery State

instance Prelude.ToHeader State

instance Prelude.ToJSON State where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON State where
  parseJSON = Prelude.parseJSONText "State"
