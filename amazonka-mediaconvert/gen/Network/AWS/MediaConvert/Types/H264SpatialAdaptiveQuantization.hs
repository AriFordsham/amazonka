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
-- Module      : Network.AWS.MediaConvert.Types.H264SpatialAdaptiveQuantization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.H264SpatialAdaptiveQuantization
  ( H264SpatialAdaptiveQuantization
      ( ..,
        H264SpatialAdaptiveQuantizationDISABLED,
        H264SpatialAdaptiveQuantizationENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Only use this setting when you change the default value, Auto (AUTO),
-- for the setting H264AdaptiveQuantization. When you keep all defaults,
-- excluding H264AdaptiveQuantization and all other adaptive quantization
-- from your JSON job specification, MediaConvert automatically applies the
-- best types of quantization for your video content. When you set
-- H264AdaptiveQuantization to a value other than AUTO, the default value
-- for H264SpatialAdaptiveQuantization is Enabled (ENABLED). Keep this
-- default value to adjust quantization within each frame based on spatial
-- variation of content complexity. When you enable this feature, the
-- encoder uses fewer bits on areas that can sustain more distortion with
-- no noticeable visual degradation and uses more bits on areas where any
-- small distortion will be noticeable. For example, complex textured
-- blocks are encoded with fewer bits and smooth textured blocks are
-- encoded with more bits. Enabling this feature will almost always improve
-- your video quality. Note, though, that this feature doesn\'t take into
-- account where the viewer\'s attention is likely to be. If viewers are
-- likely to be focusing their attention on a part of the screen with a lot
-- of complex texture, you might choose to set
-- H264SpatialAdaptiveQuantization to Disabled (DISABLED). Related setting:
-- When you enable spatial adaptive quantization, set the value for
-- Adaptive quantization (H264AdaptiveQuantization) depending on your
-- content. For homogeneous content, such as cartoons and video games, set
-- it to Low. For content with a wider variety of textures, set it to High
-- or Higher. To manually enable or disable
-- H264SpatialAdaptiveQuantization, you must set Adaptive quantization
-- (H264AdaptiveQuantization) to a value other than AUTO.
newtype H264SpatialAdaptiveQuantization = H264SpatialAdaptiveQuantization'
  { fromH264SpatialAdaptiveQuantization ::
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

pattern H264SpatialAdaptiveQuantizationDISABLED :: H264SpatialAdaptiveQuantization
pattern H264SpatialAdaptiveQuantizationDISABLED = H264SpatialAdaptiveQuantization' "DISABLED"

pattern H264SpatialAdaptiveQuantizationENABLED :: H264SpatialAdaptiveQuantization
pattern H264SpatialAdaptiveQuantizationENABLED = H264SpatialAdaptiveQuantization' "ENABLED"

{-# COMPLETE
  H264SpatialAdaptiveQuantizationDISABLED,
  H264SpatialAdaptiveQuantizationENABLED,
  H264SpatialAdaptiveQuantization'
  #-}

instance Prelude.FromText H264SpatialAdaptiveQuantization where
  parser = H264SpatialAdaptiveQuantization' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264SpatialAdaptiveQuantization where
  toText (H264SpatialAdaptiveQuantization' x) = x

instance Prelude.Hashable H264SpatialAdaptiveQuantization

instance Prelude.NFData H264SpatialAdaptiveQuantization

instance Prelude.ToByteString H264SpatialAdaptiveQuantization

instance Prelude.ToQuery H264SpatialAdaptiveQuantization

instance Prelude.ToHeader H264SpatialAdaptiveQuantization

instance Prelude.ToJSON H264SpatialAdaptiveQuantization where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264SpatialAdaptiveQuantization where
  parseJSON = Prelude.parseJSONText "H264SpatialAdaptiveQuantization"
