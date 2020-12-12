{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.HlsAdditionalManifest
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsAdditionalManifest
  ( HlsAdditionalManifest (..),

    -- * Smart constructor
    mkHlsAdditionalManifest,

    -- * Lenses
    hamManifestNameModifier,
    hamSelectedOutputs,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Lude

-- | Specify the details for each additional HLS manifest that you want the service to generate for this output group. Each manifest can reference a different subset of outputs in the group.
--
-- /See:/ 'mkHlsAdditionalManifest' smart constructor.
data HlsAdditionalManifest = HlsAdditionalManifest'
  { manifestNameModifier ::
      Lude.Maybe Lude.Text,
    selectedOutputs :: Lude.Maybe [Lude.Text]
  }
  deriving stock
    ( Lude.Eq,
      Lude.Ord,
      Lude.Read,
      Lude.Show,
      Lude.Generic
    )
  deriving anyclass (Lude.Hashable, Lude.NFData)

-- | Creates a value of 'HlsAdditionalManifest' with the minimum fields required to make a request.
--
-- * 'manifestNameModifier' - Specify a name modifier that the service adds to the name of this manifest to make it different from the file names of the other main manifests in the output group. For example, say that the default main manifest for your HLS group is film-name.m3u8. If you enter "-no-premium" for this setting, then the file name the service generates for this top-level manifest is film-name-no-premium.m3u8. For HLS output groups, specify a manifestNameModifier that is different from the nameModifier of the output. The service uses the output name modifier to create unique names for the individual variant manifests.
-- * 'selectedOutputs' - Specify the outputs that you want this additional top-level manifest to reference.
mkHlsAdditionalManifest ::
  HlsAdditionalManifest
mkHlsAdditionalManifest =
  HlsAdditionalManifest'
    { manifestNameModifier = Lude.Nothing,
      selectedOutputs = Lude.Nothing
    }

-- | Specify a name modifier that the service adds to the name of this manifest to make it different from the file names of the other main manifests in the output group. For example, say that the default main manifest for your HLS group is film-name.m3u8. If you enter "-no-premium" for this setting, then the file name the service generates for this top-level manifest is film-name-no-premium.m3u8. For HLS output groups, specify a manifestNameModifier that is different from the nameModifier of the output. The service uses the output name modifier to create unique names for the individual variant manifests.
--
-- /Note:/ Consider using 'manifestNameModifier' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hamManifestNameModifier :: Lens.Lens' HlsAdditionalManifest (Lude.Maybe Lude.Text)
hamManifestNameModifier = Lens.lens (manifestNameModifier :: HlsAdditionalManifest -> Lude.Maybe Lude.Text) (\s a -> s {manifestNameModifier = a} :: HlsAdditionalManifest)
{-# DEPRECATED hamManifestNameModifier "Use generic-lens or generic-optics with 'manifestNameModifier' instead." #-}

-- | Specify the outputs that you want this additional top-level manifest to reference.
--
-- /Note:/ Consider using 'selectedOutputs' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
hamSelectedOutputs :: Lens.Lens' HlsAdditionalManifest (Lude.Maybe [Lude.Text])
hamSelectedOutputs = Lens.lens (selectedOutputs :: HlsAdditionalManifest -> Lude.Maybe [Lude.Text]) (\s a -> s {selectedOutputs = a} :: HlsAdditionalManifest)
{-# DEPRECATED hamSelectedOutputs "Use generic-lens or generic-optics with 'selectedOutputs' instead." #-}

instance Lude.FromJSON HlsAdditionalManifest where
  parseJSON =
    Lude.withObject
      "HlsAdditionalManifest"
      ( \x ->
          HlsAdditionalManifest'
            Lude.<$> (x Lude..:? "manifestNameModifier")
            Lude.<*> (x Lude..:? "selectedOutputs" Lude..!= Lude.mempty)
      )

instance Lude.ToJSON HlsAdditionalManifest where
  toJSON HlsAdditionalManifest' {..} =
    Lude.object
      ( Lude.catMaybes
          [ ("manifestNameModifier" Lude..=) Lude.<$> manifestNameModifier,
            ("selectedOutputs" Lude..=) Lude.<$> selectedOutputs
          ]
      )
