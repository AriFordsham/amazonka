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
-- Module      : Network.AWS.SageMaker.Types.BlueGreenUpdatePolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.BlueGreenUpdatePolicy where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SageMaker.Types.TrafficRoutingConfig

-- | Currently, the @BlueGreenUpdatePolicy@ API is not supported.
--
-- /See:/ 'newBlueGreenUpdatePolicy' smart constructor.
data BlueGreenUpdatePolicy = BlueGreenUpdatePolicy'
  { terminationWaitInSeconds :: Prelude.Maybe Prelude.Nat,
    maximumExecutionTimeoutInSeconds :: Prelude.Maybe Prelude.Nat,
    trafficRoutingConfiguration :: TrafficRoutingConfig
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'BlueGreenUpdatePolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'terminationWaitInSeconds', 'blueGreenUpdatePolicy_terminationWaitInSeconds' -
--
-- 'maximumExecutionTimeoutInSeconds', 'blueGreenUpdatePolicy_maximumExecutionTimeoutInSeconds' -
--
-- 'trafficRoutingConfiguration', 'blueGreenUpdatePolicy_trafficRoutingConfiguration' -
newBlueGreenUpdatePolicy ::
  -- | 'trafficRoutingConfiguration'
  TrafficRoutingConfig ->
  BlueGreenUpdatePolicy
newBlueGreenUpdatePolicy
  pTrafficRoutingConfiguration_ =
    BlueGreenUpdatePolicy'
      { terminationWaitInSeconds =
          Prelude.Nothing,
        maximumExecutionTimeoutInSeconds = Prelude.Nothing,
        trafficRoutingConfiguration =
          pTrafficRoutingConfiguration_
      }

-- |
blueGreenUpdatePolicy_terminationWaitInSeconds :: Lens.Lens' BlueGreenUpdatePolicy (Prelude.Maybe Prelude.Natural)
blueGreenUpdatePolicy_terminationWaitInSeconds = Lens.lens (\BlueGreenUpdatePolicy' {terminationWaitInSeconds} -> terminationWaitInSeconds) (\s@BlueGreenUpdatePolicy' {} a -> s {terminationWaitInSeconds = a} :: BlueGreenUpdatePolicy) Prelude.. Lens.mapping Prelude._Nat

-- |
blueGreenUpdatePolicy_maximumExecutionTimeoutInSeconds :: Lens.Lens' BlueGreenUpdatePolicy (Prelude.Maybe Prelude.Natural)
blueGreenUpdatePolicy_maximumExecutionTimeoutInSeconds = Lens.lens (\BlueGreenUpdatePolicy' {maximumExecutionTimeoutInSeconds} -> maximumExecutionTimeoutInSeconds) (\s@BlueGreenUpdatePolicy' {} a -> s {maximumExecutionTimeoutInSeconds = a} :: BlueGreenUpdatePolicy) Prelude.. Lens.mapping Prelude._Nat

-- |
blueGreenUpdatePolicy_trafficRoutingConfiguration :: Lens.Lens' BlueGreenUpdatePolicy TrafficRoutingConfig
blueGreenUpdatePolicy_trafficRoutingConfiguration = Lens.lens (\BlueGreenUpdatePolicy' {trafficRoutingConfiguration} -> trafficRoutingConfiguration) (\s@BlueGreenUpdatePolicy' {} a -> s {trafficRoutingConfiguration = a} :: BlueGreenUpdatePolicy)

instance Prelude.FromJSON BlueGreenUpdatePolicy where
  parseJSON =
    Prelude.withObject
      "BlueGreenUpdatePolicy"
      ( \x ->
          BlueGreenUpdatePolicy'
            Prelude.<$> (x Prelude..:? "TerminationWaitInSeconds")
            Prelude.<*> (x Prelude..:? "MaximumExecutionTimeoutInSeconds")
            Prelude.<*> (x Prelude..: "TrafficRoutingConfiguration")
      )

instance Prelude.Hashable BlueGreenUpdatePolicy

instance Prelude.NFData BlueGreenUpdatePolicy

instance Prelude.ToJSON BlueGreenUpdatePolicy where
  toJSON BlueGreenUpdatePolicy' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("TerminationWaitInSeconds" Prelude..=)
              Prelude.<$> terminationWaitInSeconds,
            ("MaximumExecutionTimeoutInSeconds" Prelude..=)
              Prelude.<$> maximumExecutionTimeoutInSeconds,
            Prelude.Just
              ( "TrafficRoutingConfiguration"
                  Prelude..= trafficRoutingConfiguration
              )
          ]
      )
