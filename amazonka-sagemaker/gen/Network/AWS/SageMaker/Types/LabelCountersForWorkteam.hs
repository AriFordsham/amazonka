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
-- Module      : Network.AWS.SageMaker.Types.LabelCountersForWorkteam
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.LabelCountersForWorkteam where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides counts for human-labeled tasks in the labeling job.
--
-- /See:/ 'newLabelCountersForWorkteam' smart constructor.
data LabelCountersForWorkteam = LabelCountersForWorkteam'
  { -- | The total number of data objects that need to be labeled by a human
    -- worker.
    pendingHuman :: Prelude.Maybe Prelude.Nat,
    -- | The total number of tasks in the labeling job.
    total :: Prelude.Maybe Prelude.Nat,
    -- | The total number of data objects labeled by a human worker.
    humanLabeled :: Prelude.Maybe Prelude.Nat
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'LabelCountersForWorkteam' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'pendingHuman', 'labelCountersForWorkteam_pendingHuman' - The total number of data objects that need to be labeled by a human
-- worker.
--
-- 'total', 'labelCountersForWorkteam_total' - The total number of tasks in the labeling job.
--
-- 'humanLabeled', 'labelCountersForWorkteam_humanLabeled' - The total number of data objects labeled by a human worker.
newLabelCountersForWorkteam ::
  LabelCountersForWorkteam
newLabelCountersForWorkteam =
  LabelCountersForWorkteam'
    { pendingHuman =
        Prelude.Nothing,
      total = Prelude.Nothing,
      humanLabeled = Prelude.Nothing
    }

-- | The total number of data objects that need to be labeled by a human
-- worker.
labelCountersForWorkteam_pendingHuman :: Lens.Lens' LabelCountersForWorkteam (Prelude.Maybe Prelude.Natural)
labelCountersForWorkteam_pendingHuman = Lens.lens (\LabelCountersForWorkteam' {pendingHuman} -> pendingHuman) (\s@LabelCountersForWorkteam' {} a -> s {pendingHuman = a} :: LabelCountersForWorkteam) Prelude.. Lens.mapping Prelude._Nat

-- | The total number of tasks in the labeling job.
labelCountersForWorkteam_total :: Lens.Lens' LabelCountersForWorkteam (Prelude.Maybe Prelude.Natural)
labelCountersForWorkteam_total = Lens.lens (\LabelCountersForWorkteam' {total} -> total) (\s@LabelCountersForWorkteam' {} a -> s {total = a} :: LabelCountersForWorkteam) Prelude.. Lens.mapping Prelude._Nat

-- | The total number of data objects labeled by a human worker.
labelCountersForWorkteam_humanLabeled :: Lens.Lens' LabelCountersForWorkteam (Prelude.Maybe Prelude.Natural)
labelCountersForWorkteam_humanLabeled = Lens.lens (\LabelCountersForWorkteam' {humanLabeled} -> humanLabeled) (\s@LabelCountersForWorkteam' {} a -> s {humanLabeled = a} :: LabelCountersForWorkteam) Prelude.. Lens.mapping Prelude._Nat

instance Prelude.FromJSON LabelCountersForWorkteam where
  parseJSON =
    Prelude.withObject
      "LabelCountersForWorkteam"
      ( \x ->
          LabelCountersForWorkteam'
            Prelude.<$> (x Prelude..:? "PendingHuman")
            Prelude.<*> (x Prelude..:? "Total")
            Prelude.<*> (x Prelude..:? "HumanLabeled")
      )

instance Prelude.Hashable LabelCountersForWorkteam

instance Prelude.NFData LabelCountersForWorkteam
