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
-- Module      : Network.AWS.MediaLive.Types.ArchiveGroupSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.ArchiveGroupSettings where

import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaLive.Types.OutputLocationRef
import qualified Network.AWS.Prelude as Prelude

-- | Archive Group Settings
--
-- /See:/ 'newArchiveGroupSettings' smart constructor.
data ArchiveGroupSettings = ArchiveGroupSettings'
  { -- | Number of seconds to write to archive file before closing and starting a
    -- new one.
    rolloverInterval :: Prelude.Maybe Prelude.Nat,
    -- | A directory and base filename where archive files should be written.
    destination :: OutputLocationRef
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ArchiveGroupSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'rolloverInterval', 'archiveGroupSettings_rolloverInterval' - Number of seconds to write to archive file before closing and starting a
-- new one.
--
-- 'destination', 'archiveGroupSettings_destination' - A directory and base filename where archive files should be written.
newArchiveGroupSettings ::
  -- | 'destination'
  OutputLocationRef ->
  ArchiveGroupSettings
newArchiveGroupSettings pDestination_ =
  ArchiveGroupSettings'
    { rolloverInterval =
        Prelude.Nothing,
      destination = pDestination_
    }

-- | Number of seconds to write to archive file before closing and starting a
-- new one.
archiveGroupSettings_rolloverInterval :: Lens.Lens' ArchiveGroupSettings (Prelude.Maybe Prelude.Natural)
archiveGroupSettings_rolloverInterval = Lens.lens (\ArchiveGroupSettings' {rolloverInterval} -> rolloverInterval) (\s@ArchiveGroupSettings' {} a -> s {rolloverInterval = a} :: ArchiveGroupSettings) Prelude.. Lens.mapping Prelude._Nat

-- | A directory and base filename where archive files should be written.
archiveGroupSettings_destination :: Lens.Lens' ArchiveGroupSettings OutputLocationRef
archiveGroupSettings_destination = Lens.lens (\ArchiveGroupSettings' {destination} -> destination) (\s@ArchiveGroupSettings' {} a -> s {destination = a} :: ArchiveGroupSettings)

instance Prelude.FromJSON ArchiveGroupSettings where
  parseJSON =
    Prelude.withObject
      "ArchiveGroupSettings"
      ( \x ->
          ArchiveGroupSettings'
            Prelude.<$> (x Prelude..:? "rolloverInterval")
            Prelude.<*> (x Prelude..: "destination")
      )

instance Prelude.Hashable ArchiveGroupSettings

instance Prelude.NFData ArchiveGroupSettings

instance Prelude.ToJSON ArchiveGroupSettings where
  toJSON ArchiveGroupSettings' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("rolloverInterval" Prelude..=)
              Prelude.<$> rolloverInterval,
            Prelude.Just ("destination" Prelude..= destination)
          ]
      )
