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
-- Module      : Network.AWS.Firehose.Types.ElasticsearchRetryOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.ElasticsearchRetryOptions where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Configures retry behavior in case Kinesis Data Firehose is unable to
-- deliver documents to Amazon ES.
--
-- /See:/ 'newElasticsearchRetryOptions' smart constructor.
data ElasticsearchRetryOptions = ElasticsearchRetryOptions'
  { -- | After an initial failure to deliver to Amazon ES, the total amount of
    -- time during which Kinesis Data Firehose retries delivery (including the
    -- first attempt). After this time has elapsed, the failed documents are
    -- written to Amazon S3. Default value is 300 seconds (5 minutes). A value
    -- of 0 (zero) results in no retries.
    durationInSeconds :: Prelude.Maybe Prelude.Nat
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ElasticsearchRetryOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'durationInSeconds', 'elasticsearchRetryOptions_durationInSeconds' - After an initial failure to deliver to Amazon ES, the total amount of
-- time during which Kinesis Data Firehose retries delivery (including the
-- first attempt). After this time has elapsed, the failed documents are
-- written to Amazon S3. Default value is 300 seconds (5 minutes). A value
-- of 0 (zero) results in no retries.
newElasticsearchRetryOptions ::
  ElasticsearchRetryOptions
newElasticsearchRetryOptions =
  ElasticsearchRetryOptions'
    { durationInSeconds =
        Prelude.Nothing
    }

-- | After an initial failure to deliver to Amazon ES, the total amount of
-- time during which Kinesis Data Firehose retries delivery (including the
-- first attempt). After this time has elapsed, the failed documents are
-- written to Amazon S3. Default value is 300 seconds (5 minutes). A value
-- of 0 (zero) results in no retries.
elasticsearchRetryOptions_durationInSeconds :: Lens.Lens' ElasticsearchRetryOptions (Prelude.Maybe Prelude.Natural)
elasticsearchRetryOptions_durationInSeconds = Lens.lens (\ElasticsearchRetryOptions' {durationInSeconds} -> durationInSeconds) (\s@ElasticsearchRetryOptions' {} a -> s {durationInSeconds = a} :: ElasticsearchRetryOptions) Prelude.. Lens.mapping Prelude._Nat

instance Prelude.FromJSON ElasticsearchRetryOptions where
  parseJSON =
    Prelude.withObject
      "ElasticsearchRetryOptions"
      ( \x ->
          ElasticsearchRetryOptions'
            Prelude.<$> (x Prelude..:? "DurationInSeconds")
      )

instance Prelude.Hashable ElasticsearchRetryOptions

instance Prelude.NFData ElasticsearchRetryOptions

instance Prelude.ToJSON ElasticsearchRetryOptions where
  toJSON ElasticsearchRetryOptions' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("DurationInSeconds" Prelude..=)
              Prelude.<$> durationInSeconds
          ]
      )
