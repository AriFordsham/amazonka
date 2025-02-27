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
-- Module      : Network.AWS.MediaLive.Types.BurnInFontColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.BurnInFontColor
  ( BurnInFontColor
      ( ..,
        BurnInFontColor_BLACK,
        BurnInFontColor_BLUE,
        BurnInFontColor_GREEN,
        BurnInFontColor_RED,
        BurnInFontColor_WHITE,
        BurnInFontColor_YELLOW
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Burn In Font Color
newtype BurnInFontColor = BurnInFontColor'
  { fromBurnInFontColor ::
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

pattern BurnInFontColor_BLACK :: BurnInFontColor
pattern BurnInFontColor_BLACK = BurnInFontColor' "BLACK"

pattern BurnInFontColor_BLUE :: BurnInFontColor
pattern BurnInFontColor_BLUE = BurnInFontColor' "BLUE"

pattern BurnInFontColor_GREEN :: BurnInFontColor
pattern BurnInFontColor_GREEN = BurnInFontColor' "GREEN"

pattern BurnInFontColor_RED :: BurnInFontColor
pattern BurnInFontColor_RED = BurnInFontColor' "RED"

pattern BurnInFontColor_WHITE :: BurnInFontColor
pattern BurnInFontColor_WHITE = BurnInFontColor' "WHITE"

pattern BurnInFontColor_YELLOW :: BurnInFontColor
pattern BurnInFontColor_YELLOW = BurnInFontColor' "YELLOW"

{-# COMPLETE
  BurnInFontColor_BLACK,
  BurnInFontColor_BLUE,
  BurnInFontColor_GREEN,
  BurnInFontColor_RED,
  BurnInFontColor_WHITE,
  BurnInFontColor_YELLOW,
  BurnInFontColor'
  #-}
