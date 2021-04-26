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
-- Module      : Network.AWS.MediaConvert.Types.M3u8NielsenId3
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.M3u8NielsenId3
  ( M3u8NielsenId3
      ( ..,
        M3u8NielsenId3INSERT,
        M3u8NielsenId3NONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | If INSERT, Nielsen inaudible tones for media tracking will be detected
-- in the input audio and an equivalent ID3 tag will be inserted in the
-- output.
newtype M3u8NielsenId3 = M3u8NielsenId3'
  { fromM3u8NielsenId3 ::
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

pattern M3u8NielsenId3INSERT :: M3u8NielsenId3
pattern M3u8NielsenId3INSERT = M3u8NielsenId3' "INSERT"

pattern M3u8NielsenId3NONE :: M3u8NielsenId3
pattern M3u8NielsenId3NONE = M3u8NielsenId3' "NONE"

{-# COMPLETE
  M3u8NielsenId3INSERT,
  M3u8NielsenId3NONE,
  M3u8NielsenId3'
  #-}

instance Prelude.FromText M3u8NielsenId3 where
  parser = M3u8NielsenId3' Prelude.<$> Prelude.takeText

instance Prelude.ToText M3u8NielsenId3 where
  toText (M3u8NielsenId3' x) = x

instance Prelude.Hashable M3u8NielsenId3

instance Prelude.NFData M3u8NielsenId3

instance Prelude.ToByteString M3u8NielsenId3

instance Prelude.ToQuery M3u8NielsenId3

instance Prelude.ToHeader M3u8NielsenId3

instance Prelude.ToJSON M3u8NielsenId3 where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON M3u8NielsenId3 where
  parseJSON = Prelude.parseJSONText "M3u8NielsenId3"
