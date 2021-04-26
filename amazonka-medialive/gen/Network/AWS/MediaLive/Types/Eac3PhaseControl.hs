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
-- Module      : Network.AWS.MediaLive.Types.Eac3PhaseControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Eac3PhaseControl
  ( Eac3PhaseControl
      ( ..,
        Eac3PhaseControlNOSHIFT,
        Eac3PhaseControlSHIFT90DEGREES
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Eac3 Phase Control
newtype Eac3PhaseControl = Eac3PhaseControl'
  { fromEac3PhaseControl ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern Eac3PhaseControlNOSHIFT :: Eac3PhaseControl
pattern Eac3PhaseControlNOSHIFT = Eac3PhaseControl' "NO_SHIFT"

pattern Eac3PhaseControlSHIFT90DEGREES :: Eac3PhaseControl
pattern Eac3PhaseControlSHIFT90DEGREES = Eac3PhaseControl' "SHIFT_90_DEGREES"

{-# COMPLETE
  Eac3PhaseControlNOSHIFT,
  Eac3PhaseControlSHIFT90DEGREES,
  Eac3PhaseControl'
  #-}

instance Prelude.FromText Eac3PhaseControl where
  parser = Eac3PhaseControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText Eac3PhaseControl where
  toText (Eac3PhaseControl' x) = x

instance Prelude.Hashable Eac3PhaseControl

instance Prelude.NFData Eac3PhaseControl

instance Prelude.ToByteString Eac3PhaseControl

instance Prelude.ToQuery Eac3PhaseControl

instance Prelude.ToHeader Eac3PhaseControl

instance Prelude.ToJSON Eac3PhaseControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Eac3PhaseControl where
  parseJSON = Prelude.parseJSONText "Eac3PhaseControl"
