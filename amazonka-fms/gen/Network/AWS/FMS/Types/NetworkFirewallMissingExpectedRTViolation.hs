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
-- Module      : Network.AWS.FMS.Types.NetworkFirewallMissingExpectedRTViolation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FMS.Types.NetworkFirewallMissingExpectedRTViolation where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Violation details for AWS Network Firewall for a subnet that\'s not
-- associated to the expected Firewall Manager managed route table.
--
-- /See:/ 'newNetworkFirewallMissingExpectedRTViolation' smart constructor.
data NetworkFirewallMissingExpectedRTViolation = NetworkFirewallMissingExpectedRTViolation'
  { -- | The resource ID of the current route table that\'s associated with the
    -- subnet, if one is available.
    currentRouteTable :: Prelude.Maybe Prelude.Text,
    -- | The ID of the AWS Network Firewall or VPC resource that\'s in violation.
    violationTarget :: Prelude.Maybe Prelude.Text,
    -- | The Availability Zone of a violating subnet.
    availabilityZone :: Prelude.Maybe Prelude.Text,
    -- | The resource ID of the route table that should be associated with the
    -- subnet.
    expectedRouteTable :: Prelude.Maybe Prelude.Text,
    -- | The resource ID of the VPC associated with a violating subnet.
    vPC :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'NetworkFirewallMissingExpectedRTViolation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'currentRouteTable', 'networkFirewallMissingExpectedRTViolation_currentRouteTable' - The resource ID of the current route table that\'s associated with the
-- subnet, if one is available.
--
-- 'violationTarget', 'networkFirewallMissingExpectedRTViolation_violationTarget' - The ID of the AWS Network Firewall or VPC resource that\'s in violation.
--
-- 'availabilityZone', 'networkFirewallMissingExpectedRTViolation_availabilityZone' - The Availability Zone of a violating subnet.
--
-- 'expectedRouteTable', 'networkFirewallMissingExpectedRTViolation_expectedRouteTable' - The resource ID of the route table that should be associated with the
-- subnet.
--
-- 'vPC', 'networkFirewallMissingExpectedRTViolation_vPC' - The resource ID of the VPC associated with a violating subnet.
newNetworkFirewallMissingExpectedRTViolation ::
  NetworkFirewallMissingExpectedRTViolation
newNetworkFirewallMissingExpectedRTViolation =
  NetworkFirewallMissingExpectedRTViolation'
    { currentRouteTable =
        Prelude.Nothing,
      violationTarget =
        Prelude.Nothing,
      availabilityZone =
        Prelude.Nothing,
      expectedRouteTable =
        Prelude.Nothing,
      vPC = Prelude.Nothing
    }

-- | The resource ID of the current route table that\'s associated with the
-- subnet, if one is available.
networkFirewallMissingExpectedRTViolation_currentRouteTable :: Lens.Lens' NetworkFirewallMissingExpectedRTViolation (Prelude.Maybe Prelude.Text)
networkFirewallMissingExpectedRTViolation_currentRouteTable = Lens.lens (\NetworkFirewallMissingExpectedRTViolation' {currentRouteTable} -> currentRouteTable) (\s@NetworkFirewallMissingExpectedRTViolation' {} a -> s {currentRouteTable = a} :: NetworkFirewallMissingExpectedRTViolation)

-- | The ID of the AWS Network Firewall or VPC resource that\'s in violation.
networkFirewallMissingExpectedRTViolation_violationTarget :: Lens.Lens' NetworkFirewallMissingExpectedRTViolation (Prelude.Maybe Prelude.Text)
networkFirewallMissingExpectedRTViolation_violationTarget = Lens.lens (\NetworkFirewallMissingExpectedRTViolation' {violationTarget} -> violationTarget) (\s@NetworkFirewallMissingExpectedRTViolation' {} a -> s {violationTarget = a} :: NetworkFirewallMissingExpectedRTViolation)

-- | The Availability Zone of a violating subnet.
networkFirewallMissingExpectedRTViolation_availabilityZone :: Lens.Lens' NetworkFirewallMissingExpectedRTViolation (Prelude.Maybe Prelude.Text)
networkFirewallMissingExpectedRTViolation_availabilityZone = Lens.lens (\NetworkFirewallMissingExpectedRTViolation' {availabilityZone} -> availabilityZone) (\s@NetworkFirewallMissingExpectedRTViolation' {} a -> s {availabilityZone = a} :: NetworkFirewallMissingExpectedRTViolation)

-- | The resource ID of the route table that should be associated with the
-- subnet.
networkFirewallMissingExpectedRTViolation_expectedRouteTable :: Lens.Lens' NetworkFirewallMissingExpectedRTViolation (Prelude.Maybe Prelude.Text)
networkFirewallMissingExpectedRTViolation_expectedRouteTable = Lens.lens (\NetworkFirewallMissingExpectedRTViolation' {expectedRouteTable} -> expectedRouteTable) (\s@NetworkFirewallMissingExpectedRTViolation' {} a -> s {expectedRouteTable = a} :: NetworkFirewallMissingExpectedRTViolation)

-- | The resource ID of the VPC associated with a violating subnet.
networkFirewallMissingExpectedRTViolation_vPC :: Lens.Lens' NetworkFirewallMissingExpectedRTViolation (Prelude.Maybe Prelude.Text)
networkFirewallMissingExpectedRTViolation_vPC = Lens.lens (\NetworkFirewallMissingExpectedRTViolation' {vPC} -> vPC) (\s@NetworkFirewallMissingExpectedRTViolation' {} a -> s {vPC = a} :: NetworkFirewallMissingExpectedRTViolation)

instance
  Prelude.FromJSON
    NetworkFirewallMissingExpectedRTViolation
  where
  parseJSON =
    Prelude.withObject
      "NetworkFirewallMissingExpectedRTViolation"
      ( \x ->
          NetworkFirewallMissingExpectedRTViolation'
            Prelude.<$> (x Prelude..:? "CurrentRouteTable")
              Prelude.<*> (x Prelude..:? "ViolationTarget")
              Prelude.<*> (x Prelude..:? "AvailabilityZone")
              Prelude.<*> (x Prelude..:? "ExpectedRouteTable")
              Prelude.<*> (x Prelude..:? "VPC")
      )

instance
  Prelude.Hashable
    NetworkFirewallMissingExpectedRTViolation

instance
  Prelude.NFData
    NetworkFirewallMissingExpectedRTViolation
