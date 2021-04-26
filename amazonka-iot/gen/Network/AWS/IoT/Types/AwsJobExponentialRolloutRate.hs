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
-- Module      : Network.AWS.IoT.Types.AwsJobExponentialRolloutRate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.AwsJobExponentialRolloutRate where

import Network.AWS.IoT.Types.AwsJobRateIncreaseCriteria
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The rate of increase for a job rollout. This parameter allows you to
-- define an exponential rate increase for a job rollout.
--
-- /See:/ 'newAwsJobExponentialRolloutRate' smart constructor.
data AwsJobExponentialRolloutRate = AwsJobExponentialRolloutRate'
  { -- | The minimum number of things that will be notified of a pending job, per
    -- minute, at the start of the job rollout. This is the initial rate of the
    -- rollout.
    baseRatePerMinute :: Prelude.Nat,
    -- | The rate of increase for a job rollout. The number of things notified is
    -- multiplied by this factor.
    incrementFactor :: Prelude.Double,
    -- | The criteria to initiate the increase in rate of rollout for a job.
    --
    -- AWS IoT supports up to one digit after the decimal (for example, 1.5,
    -- but not 1.55).
    rateIncreaseCriteria :: AwsJobRateIncreaseCriteria
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AwsJobExponentialRolloutRate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'baseRatePerMinute', 'awsJobExponentialRolloutRate_baseRatePerMinute' - The minimum number of things that will be notified of a pending job, per
-- minute, at the start of the job rollout. This is the initial rate of the
-- rollout.
--
-- 'incrementFactor', 'awsJobExponentialRolloutRate_incrementFactor' - The rate of increase for a job rollout. The number of things notified is
-- multiplied by this factor.
--
-- 'rateIncreaseCriteria', 'awsJobExponentialRolloutRate_rateIncreaseCriteria' - The criteria to initiate the increase in rate of rollout for a job.
--
-- AWS IoT supports up to one digit after the decimal (for example, 1.5,
-- but not 1.55).
newAwsJobExponentialRolloutRate ::
  -- | 'baseRatePerMinute'
  Prelude.Natural ->
  -- | 'incrementFactor'
  Prelude.Double ->
  -- | 'rateIncreaseCriteria'
  AwsJobRateIncreaseCriteria ->
  AwsJobExponentialRolloutRate
newAwsJobExponentialRolloutRate
  pBaseRatePerMinute_
  pIncrementFactor_
  pRateIncreaseCriteria_ =
    AwsJobExponentialRolloutRate'
      { baseRatePerMinute =
          Prelude._Nat Lens.# pBaseRatePerMinute_,
        incrementFactor = pIncrementFactor_,
        rateIncreaseCriteria = pRateIncreaseCriteria_
      }

-- | The minimum number of things that will be notified of a pending job, per
-- minute, at the start of the job rollout. This is the initial rate of the
-- rollout.
awsJobExponentialRolloutRate_baseRatePerMinute :: Lens.Lens' AwsJobExponentialRolloutRate Prelude.Natural
awsJobExponentialRolloutRate_baseRatePerMinute = Lens.lens (\AwsJobExponentialRolloutRate' {baseRatePerMinute} -> baseRatePerMinute) (\s@AwsJobExponentialRolloutRate' {} a -> s {baseRatePerMinute = a} :: AwsJobExponentialRolloutRate) Prelude.. Prelude._Nat

-- | The rate of increase for a job rollout. The number of things notified is
-- multiplied by this factor.
awsJobExponentialRolloutRate_incrementFactor :: Lens.Lens' AwsJobExponentialRolloutRate Prelude.Double
awsJobExponentialRolloutRate_incrementFactor = Lens.lens (\AwsJobExponentialRolloutRate' {incrementFactor} -> incrementFactor) (\s@AwsJobExponentialRolloutRate' {} a -> s {incrementFactor = a} :: AwsJobExponentialRolloutRate)

-- | The criteria to initiate the increase in rate of rollout for a job.
--
-- AWS IoT supports up to one digit after the decimal (for example, 1.5,
-- but not 1.55).
awsJobExponentialRolloutRate_rateIncreaseCriteria :: Lens.Lens' AwsJobExponentialRolloutRate AwsJobRateIncreaseCriteria
awsJobExponentialRolloutRate_rateIncreaseCriteria = Lens.lens (\AwsJobExponentialRolloutRate' {rateIncreaseCriteria} -> rateIncreaseCriteria) (\s@AwsJobExponentialRolloutRate' {} a -> s {rateIncreaseCriteria = a} :: AwsJobExponentialRolloutRate)

instance
  Prelude.FromJSON
    AwsJobExponentialRolloutRate
  where
  parseJSON =
    Prelude.withObject
      "AwsJobExponentialRolloutRate"
      ( \x ->
          AwsJobExponentialRolloutRate'
            Prelude.<$> (x Prelude..: "baseRatePerMinute")
            Prelude.<*> (x Prelude..: "incrementFactor")
            Prelude.<*> (x Prelude..: "rateIncreaseCriteria")
      )

instance
  Prelude.Hashable
    AwsJobExponentialRolloutRate

instance Prelude.NFData AwsJobExponentialRolloutRate

instance Prelude.ToJSON AwsJobExponentialRolloutRate where
  toJSON AwsJobExponentialRolloutRate' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("baseRatePerMinute" Prelude..= baseRatePerMinute),
            Prelude.Just
              ("incrementFactor" Prelude..= incrementFactor),
            Prelude.Just
              ( "rateIncreaseCriteria"
                  Prelude..= rateIncreaseCriteria
              )
          ]
      )
