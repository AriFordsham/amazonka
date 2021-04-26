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
-- Module      : Network.AWS.MediaLive.Types.Hdr10Settings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Hdr10Settings where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Hdr10 Settings
--
-- /See:/ 'newHdr10Settings' smart constructor.
data Hdr10Settings = Hdr10Settings'
  { -- | Maximum Content Light Level An integer metadata value defining the
    -- maximum light level, in nits, of any single pixel within an encoded HDR
    -- video stream or file.
    maxCll :: Prelude.Maybe Prelude.Nat,
    -- | Maximum Frame Average Light Level An integer metadata value defining the
    -- maximum average light level, in nits, for any single frame within an
    -- encoded HDR video stream or file.
    maxFall :: Prelude.Maybe Prelude.Nat
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'Hdr10Settings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'maxCll', 'hdr10Settings_maxCll' - Maximum Content Light Level An integer metadata value defining the
-- maximum light level, in nits, of any single pixel within an encoded HDR
-- video stream or file.
--
-- 'maxFall', 'hdr10Settings_maxFall' - Maximum Frame Average Light Level An integer metadata value defining the
-- maximum average light level, in nits, for any single frame within an
-- encoded HDR video stream or file.
newHdr10Settings ::
  Hdr10Settings
newHdr10Settings =
  Hdr10Settings'
    { maxCll = Prelude.Nothing,
      maxFall = Prelude.Nothing
    }

-- | Maximum Content Light Level An integer metadata value defining the
-- maximum light level, in nits, of any single pixel within an encoded HDR
-- video stream or file.
hdr10Settings_maxCll :: Lens.Lens' Hdr10Settings (Prelude.Maybe Prelude.Natural)
hdr10Settings_maxCll = Lens.lens (\Hdr10Settings' {maxCll} -> maxCll) (\s@Hdr10Settings' {} a -> s {maxCll = a} :: Hdr10Settings) Prelude.. Lens.mapping Prelude._Nat

-- | Maximum Frame Average Light Level An integer metadata value defining the
-- maximum average light level, in nits, for any single frame within an
-- encoded HDR video stream or file.
hdr10Settings_maxFall :: Lens.Lens' Hdr10Settings (Prelude.Maybe Prelude.Natural)
hdr10Settings_maxFall = Lens.lens (\Hdr10Settings' {maxFall} -> maxFall) (\s@Hdr10Settings' {} a -> s {maxFall = a} :: Hdr10Settings) Prelude.. Lens.mapping Prelude._Nat

instance Prelude.FromJSON Hdr10Settings where
  parseJSON =
    Prelude.withObject
      "Hdr10Settings"
      ( \x ->
          Hdr10Settings'
            Prelude.<$> (x Prelude..:? "maxCll")
            Prelude.<*> (x Prelude..:? "maxFall")
      )

instance Prelude.Hashable Hdr10Settings

instance Prelude.NFData Hdr10Settings

instance Prelude.ToJSON Hdr10Settings where
  toJSON Hdr10Settings' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("maxCll" Prelude..=) Prelude.<$> maxCll,
            ("maxFall" Prelude..=) Prelude.<$> maxFall
          ]
      )
