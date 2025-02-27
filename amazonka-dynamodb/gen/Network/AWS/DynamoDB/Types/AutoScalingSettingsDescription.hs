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
-- Module      : Network.AWS.DynamoDB.Types.AutoScalingSettingsDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.AutoScalingSettingsDescription where

import Network.AWS.DynamoDB.Types.AutoScalingPolicyDescription
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Represents the auto scaling settings for a global table or global
-- secondary index.
--
-- /See:/ 'newAutoScalingSettingsDescription' smart constructor.
data AutoScalingSettingsDescription = AutoScalingSettingsDescription'
  { -- | Information about the scaling policies.
    scalingPolicies :: Prelude.Maybe [AutoScalingPolicyDescription],
    -- | The minimum capacity units that a global table or global secondary index
    -- should be scaled down to.
    minimumUnits :: Prelude.Maybe Prelude.Natural,
    -- | The maximum capacity units that a global table or global secondary index
    -- should be scaled up to.
    maximumUnits :: Prelude.Maybe Prelude.Natural,
    -- | Role ARN used for configuring the auto scaling policy.
    autoScalingRoleArn :: Prelude.Maybe Prelude.Text,
    -- | Disabled auto scaling for this global table or global secondary index.
    autoScalingDisabled :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AutoScalingSettingsDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'scalingPolicies', 'autoScalingSettingsDescription_scalingPolicies' - Information about the scaling policies.
--
-- 'minimumUnits', 'autoScalingSettingsDescription_minimumUnits' - The minimum capacity units that a global table or global secondary index
-- should be scaled down to.
--
-- 'maximumUnits', 'autoScalingSettingsDescription_maximumUnits' - The maximum capacity units that a global table or global secondary index
-- should be scaled up to.
--
-- 'autoScalingRoleArn', 'autoScalingSettingsDescription_autoScalingRoleArn' - Role ARN used for configuring the auto scaling policy.
--
-- 'autoScalingDisabled', 'autoScalingSettingsDescription_autoScalingDisabled' - Disabled auto scaling for this global table or global secondary index.
newAutoScalingSettingsDescription ::
  AutoScalingSettingsDescription
newAutoScalingSettingsDescription =
  AutoScalingSettingsDescription'
    { scalingPolicies =
        Prelude.Nothing,
      minimumUnits = Prelude.Nothing,
      maximumUnits = Prelude.Nothing,
      autoScalingRoleArn = Prelude.Nothing,
      autoScalingDisabled = Prelude.Nothing
    }

-- | Information about the scaling policies.
autoScalingSettingsDescription_scalingPolicies :: Lens.Lens' AutoScalingSettingsDescription (Prelude.Maybe [AutoScalingPolicyDescription])
autoScalingSettingsDescription_scalingPolicies = Lens.lens (\AutoScalingSettingsDescription' {scalingPolicies} -> scalingPolicies) (\s@AutoScalingSettingsDescription' {} a -> s {scalingPolicies = a} :: AutoScalingSettingsDescription) Prelude.. Lens.mapping Prelude._Coerce

-- | The minimum capacity units that a global table or global secondary index
-- should be scaled down to.
autoScalingSettingsDescription_minimumUnits :: Lens.Lens' AutoScalingSettingsDescription (Prelude.Maybe Prelude.Natural)
autoScalingSettingsDescription_minimumUnits = Lens.lens (\AutoScalingSettingsDescription' {minimumUnits} -> minimumUnits) (\s@AutoScalingSettingsDescription' {} a -> s {minimumUnits = a} :: AutoScalingSettingsDescription)

-- | The maximum capacity units that a global table or global secondary index
-- should be scaled up to.
autoScalingSettingsDescription_maximumUnits :: Lens.Lens' AutoScalingSettingsDescription (Prelude.Maybe Prelude.Natural)
autoScalingSettingsDescription_maximumUnits = Lens.lens (\AutoScalingSettingsDescription' {maximumUnits} -> maximumUnits) (\s@AutoScalingSettingsDescription' {} a -> s {maximumUnits = a} :: AutoScalingSettingsDescription)

-- | Role ARN used for configuring the auto scaling policy.
autoScalingSettingsDescription_autoScalingRoleArn :: Lens.Lens' AutoScalingSettingsDescription (Prelude.Maybe Prelude.Text)
autoScalingSettingsDescription_autoScalingRoleArn = Lens.lens (\AutoScalingSettingsDescription' {autoScalingRoleArn} -> autoScalingRoleArn) (\s@AutoScalingSettingsDescription' {} a -> s {autoScalingRoleArn = a} :: AutoScalingSettingsDescription)

-- | Disabled auto scaling for this global table or global secondary index.
autoScalingSettingsDescription_autoScalingDisabled :: Lens.Lens' AutoScalingSettingsDescription (Prelude.Maybe Prelude.Bool)
autoScalingSettingsDescription_autoScalingDisabled = Lens.lens (\AutoScalingSettingsDescription' {autoScalingDisabled} -> autoScalingDisabled) (\s@AutoScalingSettingsDescription' {} a -> s {autoScalingDisabled = a} :: AutoScalingSettingsDescription)

instance
  Prelude.FromJSON
    AutoScalingSettingsDescription
  where
  parseJSON =
    Prelude.withObject
      "AutoScalingSettingsDescription"
      ( \x ->
          AutoScalingSettingsDescription'
            Prelude.<$> ( x Prelude..:? "ScalingPolicies"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> (x Prelude..:? "MinimumUnits")
            Prelude.<*> (x Prelude..:? "MaximumUnits")
            Prelude.<*> (x Prelude..:? "AutoScalingRoleArn")
            Prelude.<*> (x Prelude..:? "AutoScalingDisabled")
      )

instance
  Prelude.Hashable
    AutoScalingSettingsDescription

instance
  Prelude.NFData
    AutoScalingSettingsDescription
