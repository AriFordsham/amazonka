{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.USD
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.USD where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Represents an amount of money in United States dollars\/
--
-- /See:/ 'newUSD' smart constructor.
data USD = USD'
  { -- | The whole number of dollars in the amount.
    dollars :: Prelude.Maybe Prelude.Natural,
    -- | The fractional portion, in cents, of the amount.
    cents :: Prelude.Maybe Prelude.Natural,
    -- | Fractions of a cent, in tenths.
    tenthFractionsOfACent :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'USD' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dollars', 'usd_dollars' - The whole number of dollars in the amount.
--
-- 'cents', 'usd_cents' - The fractional portion, in cents, of the amount.
--
-- 'tenthFractionsOfACent', 'usd_tenthFractionsOfACent' - Fractions of a cent, in tenths.
newUSD ::
  USD
newUSD =
  USD'
    { dollars = Prelude.Nothing,
      cents = Prelude.Nothing,
      tenthFractionsOfACent = Prelude.Nothing
    }

-- | The whole number of dollars in the amount.
usd_dollars :: Lens.Lens' USD (Prelude.Maybe Prelude.Natural)
usd_dollars = Lens.lens (\USD' {dollars} -> dollars) (\s@USD' {} a -> s {dollars = a} :: USD)

-- | The fractional portion, in cents, of the amount.
usd_cents :: Lens.Lens' USD (Prelude.Maybe Prelude.Natural)
usd_cents = Lens.lens (\USD' {cents} -> cents) (\s@USD' {} a -> s {cents = a} :: USD)

-- | Fractions of a cent, in tenths.
usd_tenthFractionsOfACent :: Lens.Lens' USD (Prelude.Maybe Prelude.Natural)
usd_tenthFractionsOfACent = Lens.lens (\USD' {tenthFractionsOfACent} -> tenthFractionsOfACent) (\s@USD' {} a -> s {tenthFractionsOfACent = a} :: USD)

instance Prelude.FromJSON USD where
  parseJSON =
    Prelude.withObject
      "USD"
      ( \x ->
          USD'
            Prelude.<$> (x Prelude..:? "Dollars")
            Prelude.<*> (x Prelude..:? "Cents")
            Prelude.<*> (x Prelude..:? "TenthFractionsOfACent")
      )

instance Prelude.Hashable USD

instance Prelude.NFData USD

instance Prelude.ToJSON USD where
  toJSON USD' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("Dollars" Prelude..=) Prelude.<$> dollars,
            ("Cents" Prelude..=) Prelude.<$> cents,
            ("TenthFractionsOfACent" Prelude..=)
              Prelude.<$> tenthFractionsOfACent
          ]
      )
