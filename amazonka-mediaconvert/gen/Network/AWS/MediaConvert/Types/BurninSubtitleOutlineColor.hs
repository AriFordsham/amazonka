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
-- Module      : Network.AWS.MediaConvert.Types.BurninSubtitleOutlineColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.BurninSubtitleOutlineColor
  ( BurninSubtitleOutlineColor
      ( ..,
        BurninSubtitleOutlineColor_BLACK,
        BurninSubtitleOutlineColor_BLUE,
        BurninSubtitleOutlineColor_GREEN,
        BurninSubtitleOutlineColor_RED,
        BurninSubtitleOutlineColor_WHITE,
        BurninSubtitleOutlineColor_YELLOW
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specifies font outline color. This option is not valid for source
-- captions that are either 608\/embedded or teletext. These source
-- settings are already pre-defined by the caption stream. All burn-in and
-- DVB-Sub font settings must match.
newtype BurninSubtitleOutlineColor = BurninSubtitleOutlineColor'
  { fromBurninSubtitleOutlineColor ::
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

pattern BurninSubtitleOutlineColor_BLACK :: BurninSubtitleOutlineColor
pattern BurninSubtitleOutlineColor_BLACK = BurninSubtitleOutlineColor' "BLACK"

pattern BurninSubtitleOutlineColor_BLUE :: BurninSubtitleOutlineColor
pattern BurninSubtitleOutlineColor_BLUE = BurninSubtitleOutlineColor' "BLUE"

pattern BurninSubtitleOutlineColor_GREEN :: BurninSubtitleOutlineColor
pattern BurninSubtitleOutlineColor_GREEN = BurninSubtitleOutlineColor' "GREEN"

pattern BurninSubtitleOutlineColor_RED :: BurninSubtitleOutlineColor
pattern BurninSubtitleOutlineColor_RED = BurninSubtitleOutlineColor' "RED"

pattern BurninSubtitleOutlineColor_WHITE :: BurninSubtitleOutlineColor
pattern BurninSubtitleOutlineColor_WHITE = BurninSubtitleOutlineColor' "WHITE"

pattern BurninSubtitleOutlineColor_YELLOW :: BurninSubtitleOutlineColor
pattern BurninSubtitleOutlineColor_YELLOW = BurninSubtitleOutlineColor' "YELLOW"

{-# COMPLETE
  BurninSubtitleOutlineColor_BLACK,
  BurninSubtitleOutlineColor_BLUE,
  BurninSubtitleOutlineColor_GREEN,
  BurninSubtitleOutlineColor_RED,
  BurninSubtitleOutlineColor_WHITE,
  BurninSubtitleOutlineColor_YELLOW,
  BurninSubtitleOutlineColor'
  #-}
