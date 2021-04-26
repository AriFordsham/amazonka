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
-- Module      : Network.AWS.MediaConvert.Types.DvbNitSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DvbNitSettings where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Inserts DVB Network Information Table (NIT) at the specified table
-- repetition interval.
--
-- /See:/ 'newDvbNitSettings' smart constructor.
data DvbNitSettings = DvbNitSettings'
  { -- | The number of milliseconds between instances of this table in the output
    -- transport stream.
    nitInterval :: Prelude.Maybe Prelude.Nat,
    -- | The network name text placed in the network_name_descriptor inside the
    -- Network Information Table. Maximum length is 256 characters.
    networkName :: Prelude.Maybe Prelude.Text,
    -- | The numeric value placed in the Network Information Table (NIT).
    networkId :: Prelude.Maybe Prelude.Nat
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DvbNitSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nitInterval', 'dvbNitSettings_nitInterval' - The number of milliseconds between instances of this table in the output
-- transport stream.
--
-- 'networkName', 'dvbNitSettings_networkName' - The network name text placed in the network_name_descriptor inside the
-- Network Information Table. Maximum length is 256 characters.
--
-- 'networkId', 'dvbNitSettings_networkId' - The numeric value placed in the Network Information Table (NIT).
newDvbNitSettings ::
  DvbNitSettings
newDvbNitSettings =
  DvbNitSettings'
    { nitInterval = Prelude.Nothing,
      networkName = Prelude.Nothing,
      networkId = Prelude.Nothing
    }

-- | The number of milliseconds between instances of this table in the output
-- transport stream.
dvbNitSettings_nitInterval :: Lens.Lens' DvbNitSettings (Prelude.Maybe Prelude.Natural)
dvbNitSettings_nitInterval = Lens.lens (\DvbNitSettings' {nitInterval} -> nitInterval) (\s@DvbNitSettings' {} a -> s {nitInterval = a} :: DvbNitSettings) Prelude.. Lens.mapping Prelude._Nat

-- | The network name text placed in the network_name_descriptor inside the
-- Network Information Table. Maximum length is 256 characters.
dvbNitSettings_networkName :: Lens.Lens' DvbNitSettings (Prelude.Maybe Prelude.Text)
dvbNitSettings_networkName = Lens.lens (\DvbNitSettings' {networkName} -> networkName) (\s@DvbNitSettings' {} a -> s {networkName = a} :: DvbNitSettings)

-- | The numeric value placed in the Network Information Table (NIT).
dvbNitSettings_networkId :: Lens.Lens' DvbNitSettings (Prelude.Maybe Prelude.Natural)
dvbNitSettings_networkId = Lens.lens (\DvbNitSettings' {networkId} -> networkId) (\s@DvbNitSettings' {} a -> s {networkId = a} :: DvbNitSettings) Prelude.. Lens.mapping Prelude._Nat

instance Prelude.FromJSON DvbNitSettings where
  parseJSON =
    Prelude.withObject
      "DvbNitSettings"
      ( \x ->
          DvbNitSettings'
            Prelude.<$> (x Prelude..:? "nitInterval")
            Prelude.<*> (x Prelude..:? "networkName")
            Prelude.<*> (x Prelude..:? "networkId")
      )

instance Prelude.Hashable DvbNitSettings

instance Prelude.NFData DvbNitSettings

instance Prelude.ToJSON DvbNitSettings where
  toJSON DvbNitSettings' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("nitInterval" Prelude..=) Prelude.<$> nitInterval,
            ("networkName" Prelude..=) Prelude.<$> networkName,
            ("networkId" Prelude..=) Prelude.<$> networkId
          ]
      )
