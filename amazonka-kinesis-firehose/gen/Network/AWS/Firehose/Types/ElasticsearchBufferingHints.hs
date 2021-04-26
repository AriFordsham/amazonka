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
-- Module      : Network.AWS.Firehose.Types.ElasticsearchBufferingHints
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.ElasticsearchBufferingHints where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes the buffering to perform before delivering data to the Amazon
-- ES destination.
--
-- /See:/ 'newElasticsearchBufferingHints' smart constructor.
data ElasticsearchBufferingHints = ElasticsearchBufferingHints'
  { -- | Buffer incoming data to the specified size, in MBs, before delivering it
    -- to the destination. The default value is 5.
    --
    -- We recommend setting this parameter to a value greater than the amount
    -- of data you typically ingest into the delivery stream in 10 seconds. For
    -- example, if you typically ingest data at 1 MB\/sec, the value should be
    -- 10 MB or higher.
    sizeInMBs :: Prelude.Maybe Prelude.Nat,
    -- | Buffer incoming data for the specified period of time, in seconds,
    -- before delivering it to the destination. The default value is 300 (5
    -- minutes).
    intervalInSeconds :: Prelude.Maybe Prelude.Nat
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ElasticsearchBufferingHints' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sizeInMBs', 'elasticsearchBufferingHints_sizeInMBs' - Buffer incoming data to the specified size, in MBs, before delivering it
-- to the destination. The default value is 5.
--
-- We recommend setting this parameter to a value greater than the amount
-- of data you typically ingest into the delivery stream in 10 seconds. For
-- example, if you typically ingest data at 1 MB\/sec, the value should be
-- 10 MB or higher.
--
-- 'intervalInSeconds', 'elasticsearchBufferingHints_intervalInSeconds' - Buffer incoming data for the specified period of time, in seconds,
-- before delivering it to the destination. The default value is 300 (5
-- minutes).
newElasticsearchBufferingHints ::
  ElasticsearchBufferingHints
newElasticsearchBufferingHints =
  ElasticsearchBufferingHints'
    { sizeInMBs =
        Prelude.Nothing,
      intervalInSeconds = Prelude.Nothing
    }

-- | Buffer incoming data to the specified size, in MBs, before delivering it
-- to the destination. The default value is 5.
--
-- We recommend setting this parameter to a value greater than the amount
-- of data you typically ingest into the delivery stream in 10 seconds. For
-- example, if you typically ingest data at 1 MB\/sec, the value should be
-- 10 MB or higher.
elasticsearchBufferingHints_sizeInMBs :: Lens.Lens' ElasticsearchBufferingHints (Prelude.Maybe Prelude.Natural)
elasticsearchBufferingHints_sizeInMBs = Lens.lens (\ElasticsearchBufferingHints' {sizeInMBs} -> sizeInMBs) (\s@ElasticsearchBufferingHints' {} a -> s {sizeInMBs = a} :: ElasticsearchBufferingHints) Prelude.. Lens.mapping Prelude._Nat

-- | Buffer incoming data for the specified period of time, in seconds,
-- before delivering it to the destination. The default value is 300 (5
-- minutes).
elasticsearchBufferingHints_intervalInSeconds :: Lens.Lens' ElasticsearchBufferingHints (Prelude.Maybe Prelude.Natural)
elasticsearchBufferingHints_intervalInSeconds = Lens.lens (\ElasticsearchBufferingHints' {intervalInSeconds} -> intervalInSeconds) (\s@ElasticsearchBufferingHints' {} a -> s {intervalInSeconds = a} :: ElasticsearchBufferingHints) Prelude.. Lens.mapping Prelude._Nat

instance Prelude.FromJSON ElasticsearchBufferingHints where
  parseJSON =
    Prelude.withObject
      "ElasticsearchBufferingHints"
      ( \x ->
          ElasticsearchBufferingHints'
            Prelude.<$> (x Prelude..:? "SizeInMBs")
            Prelude.<*> (x Prelude..:? "IntervalInSeconds")
      )

instance Prelude.Hashable ElasticsearchBufferingHints

instance Prelude.NFData ElasticsearchBufferingHints

instance Prelude.ToJSON ElasticsearchBufferingHints where
  toJSON ElasticsearchBufferingHints' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("SizeInMBs" Prelude..=) Prelude.<$> sizeInMBs,
            ("IntervalInSeconds" Prelude..=)
              Prelude.<$> intervalInSeconds
          ]
      )
