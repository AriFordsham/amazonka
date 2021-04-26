{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.NoiseReducerFilterSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.NoiseReducerFilterSettings where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Settings for a noise reducer filter
--
-- /See:/ 'newNoiseReducerFilterSettings' smart constructor.
data NoiseReducerFilterSettings = NoiseReducerFilterSettings'
  { -- | Relative strength of noise reducing filter. Higher values produce
    -- stronger filtering.
    strength :: Prelude.Maybe Prelude.Nat
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'NoiseReducerFilterSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'strength', 'noiseReducerFilterSettings_strength' - Relative strength of noise reducing filter. Higher values produce
-- stronger filtering.
newNoiseReducerFilterSettings ::
  NoiseReducerFilterSettings
newNoiseReducerFilterSettings =
  NoiseReducerFilterSettings'
    { strength =
        Prelude.Nothing
    }

-- | Relative strength of noise reducing filter. Higher values produce
-- stronger filtering.
noiseReducerFilterSettings_strength :: Lens.Lens' NoiseReducerFilterSettings (Prelude.Maybe Prelude.Natural)
noiseReducerFilterSettings_strength = Lens.lens (\NoiseReducerFilterSettings' {strength} -> strength) (\s@NoiseReducerFilterSettings' {} a -> s {strength = a} :: NoiseReducerFilterSettings) Prelude.. Lens.mapping Prelude._Nat

instance Prelude.FromJSON NoiseReducerFilterSettings where
  parseJSON =
    Prelude.withObject
      "NoiseReducerFilterSettings"
      ( \x ->
          NoiseReducerFilterSettings'
            Prelude.<$> (x Prelude..:? "strength")
      )

instance Prelude.Hashable NoiseReducerFilterSettings

instance Prelude.NFData NoiseReducerFilterSettings

instance Prelude.ToJSON NoiseReducerFilterSettings where
  toJSON NoiseReducerFilterSettings' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [("strength" Prelude..=) Prelude.<$> strength]
      )
