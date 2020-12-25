{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.Av1SpatialAdaptiveQuantization
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Av1SpatialAdaptiveQuantization
  ( Av1SpatialAdaptiveQuantization
      ( Av1SpatialAdaptiveQuantization',
        Av1SpatialAdaptiveQuantizationDisabled,
        Av1SpatialAdaptiveQuantizationEnabled,
        fromAv1SpatialAdaptiveQuantization
      ),
  )
where

import qualified Network.AWS.Prelude as Core

-- | Keep the default value, Enabled (ENABLED), to adjust quantization within each frame based on spatial variation of content complexity. When you enable this feature, the encoder uses fewer bits on areas that can sustain more distortion with no noticeable visual degradation and uses more bits on areas where any small distortion will be noticeable. For example, complex textured blocks are encoded with fewer bits and smooth textured blocks are encoded with more bits. Enabling this feature will almost always improve your video quality. Note, though, that this feature doesn't take into account where the viewer's attention is likely to be. If viewers are likely to be focusing their attention on a part of the screen with a lot of complex texture, you might choose to disable this feature. Related setting: When you enable spatial adaptive quantization, set the value for Adaptive quantization (adaptiveQuantization) depending on your content. For homogeneous content, such as cartoons and video games, set it to Low. For content with a wider variety of textures, set it to High or Higher.
newtype Av1SpatialAdaptiveQuantization = Av1SpatialAdaptiveQuantization'
  { fromAv1SpatialAdaptiveQuantization ::
      Core.Text
  }
  deriving stock
    ( Core.Eq,
      Core.Ord,
      Core.Read,
      Core.Show,
      Core.Generic
    )
  deriving newtype
    ( Core.IsString,
      Core.Hashable,
      Core.NFData,
      Core.ToJSONKey,
      Core.FromJSONKey,
      Core.ToJSON,
      Core.FromJSON,
      Core.ToXML,
      Core.FromXML,
      Core.ToText,
      Core.FromText,
      Core.ToByteString,
      Core.ToQuery,
      Core.ToHeader
    )

pattern Av1SpatialAdaptiveQuantizationDisabled :: Av1SpatialAdaptiveQuantization
pattern Av1SpatialAdaptiveQuantizationDisabled = Av1SpatialAdaptiveQuantization' "DISABLED"

pattern Av1SpatialAdaptiveQuantizationEnabled :: Av1SpatialAdaptiveQuantization
pattern Av1SpatialAdaptiveQuantizationEnabled = Av1SpatialAdaptiveQuantization' "ENABLED"

{-# COMPLETE
  Av1SpatialAdaptiveQuantizationDisabled,
  Av1SpatialAdaptiveQuantizationEnabled,
  Av1SpatialAdaptiveQuantization'
  #-}
