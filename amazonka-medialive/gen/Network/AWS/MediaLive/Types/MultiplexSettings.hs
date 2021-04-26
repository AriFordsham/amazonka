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
-- Module      : Network.AWS.MediaLive.Types.MultiplexSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.MultiplexSettings where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains configuration for a Multiplex event
--
-- /See:/ 'newMultiplexSettings' smart constructor.
data MultiplexSettings = MultiplexSettings'
  { -- | Transport stream reserved bit rate.
    transportStreamReservedBitrate :: Prelude.Maybe Prelude.Nat,
    -- | Maximum video buffer delay in milliseconds.
    maximumVideoBufferDelayMilliseconds :: Prelude.Maybe Prelude.Nat,
    -- | Transport stream bit rate.
    transportStreamBitrate :: Prelude.Nat,
    -- | Transport stream ID.
    transportStreamId :: Prelude.Nat
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'MultiplexSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'transportStreamReservedBitrate', 'multiplexSettings_transportStreamReservedBitrate' - Transport stream reserved bit rate.
--
-- 'maximumVideoBufferDelayMilliseconds', 'multiplexSettings_maximumVideoBufferDelayMilliseconds' - Maximum video buffer delay in milliseconds.
--
-- 'transportStreamBitrate', 'multiplexSettings_transportStreamBitrate' - Transport stream bit rate.
--
-- 'transportStreamId', 'multiplexSettings_transportStreamId' - Transport stream ID.
newMultiplexSettings ::
  -- | 'transportStreamBitrate'
  Prelude.Natural ->
  -- | 'transportStreamId'
  Prelude.Natural ->
  MultiplexSettings
newMultiplexSettings
  pTransportStreamBitrate_
  pTransportStreamId_ =
    MultiplexSettings'
      { transportStreamReservedBitrate =
          Prelude.Nothing,
        maximumVideoBufferDelayMilliseconds =
          Prelude.Nothing,
        transportStreamBitrate =
          Prelude._Nat Lens.# pTransportStreamBitrate_,
        transportStreamId =
          Prelude._Nat Lens.# pTransportStreamId_
      }

-- | Transport stream reserved bit rate.
multiplexSettings_transportStreamReservedBitrate :: Lens.Lens' MultiplexSettings (Prelude.Maybe Prelude.Natural)
multiplexSettings_transportStreamReservedBitrate = Lens.lens (\MultiplexSettings' {transportStreamReservedBitrate} -> transportStreamReservedBitrate) (\s@MultiplexSettings' {} a -> s {transportStreamReservedBitrate = a} :: MultiplexSettings) Prelude.. Lens.mapping Prelude._Nat

-- | Maximum video buffer delay in milliseconds.
multiplexSettings_maximumVideoBufferDelayMilliseconds :: Lens.Lens' MultiplexSettings (Prelude.Maybe Prelude.Natural)
multiplexSettings_maximumVideoBufferDelayMilliseconds = Lens.lens (\MultiplexSettings' {maximumVideoBufferDelayMilliseconds} -> maximumVideoBufferDelayMilliseconds) (\s@MultiplexSettings' {} a -> s {maximumVideoBufferDelayMilliseconds = a} :: MultiplexSettings) Prelude.. Lens.mapping Prelude._Nat

-- | Transport stream bit rate.
multiplexSettings_transportStreamBitrate :: Lens.Lens' MultiplexSettings Prelude.Natural
multiplexSettings_transportStreamBitrate = Lens.lens (\MultiplexSettings' {transportStreamBitrate} -> transportStreamBitrate) (\s@MultiplexSettings' {} a -> s {transportStreamBitrate = a} :: MultiplexSettings) Prelude.. Prelude._Nat

-- | Transport stream ID.
multiplexSettings_transportStreamId :: Lens.Lens' MultiplexSettings Prelude.Natural
multiplexSettings_transportStreamId = Lens.lens (\MultiplexSettings' {transportStreamId} -> transportStreamId) (\s@MultiplexSettings' {} a -> s {transportStreamId = a} :: MultiplexSettings) Prelude.. Prelude._Nat

instance Prelude.FromJSON MultiplexSettings where
  parseJSON =
    Prelude.withObject
      "MultiplexSettings"
      ( \x ->
          MultiplexSettings'
            Prelude.<$> (x Prelude..:? "transportStreamReservedBitrate")
            Prelude.<*> (x Prelude..:? "maximumVideoBufferDelayMilliseconds")
            Prelude.<*> (x Prelude..: "transportStreamBitrate")
            Prelude.<*> (x Prelude..: "transportStreamId")
      )

instance Prelude.Hashable MultiplexSettings

instance Prelude.NFData MultiplexSettings

instance Prelude.ToJSON MultiplexSettings where
  toJSON MultiplexSettings' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("transportStreamReservedBitrate" Prelude..=)
              Prelude.<$> transportStreamReservedBitrate,
            ("maximumVideoBufferDelayMilliseconds" Prelude..=)
              Prelude.<$> maximumVideoBufferDelayMilliseconds,
            Prelude.Just
              ( "transportStreamBitrate"
                  Prelude..= transportStreamBitrate
              ),
            Prelude.Just
              ("transportStreamId" Prelude..= transportStreamId)
          ]
      )
