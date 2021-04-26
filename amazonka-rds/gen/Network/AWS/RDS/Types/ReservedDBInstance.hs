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
-- Module      : Network.AWS.RDS.Types.ReservedDBInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.ReservedDBInstance where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types.RecurringCharge

-- | This data type is used as a response element in the
-- @DescribeReservedDBInstances@ and @PurchaseReservedDBInstancesOffering@
-- actions.
--
-- /See:/ 'newReservedDBInstance' smart constructor.
data ReservedDBInstance = ReservedDBInstance'
  { -- | The duration of the reservation in seconds.
    duration :: Prelude.Maybe Prelude.Int,
    -- | The Amazon Resource Name (ARN) for the reserved DB instance.
    reservedDBInstanceArn :: Prelude.Maybe Prelude.Text,
    -- | The time the reservation started.
    startTime :: Prelude.Maybe Prelude.ISO8601,
    -- | The currency code for the reserved DB instance.
    currencyCode :: Prelude.Maybe Prelude.Text,
    -- | Indicates if the reservation applies to Multi-AZ deployments.
    multiAZ :: Prelude.Maybe Prelude.Bool,
    -- | The state of the reserved DB instance.
    state :: Prelude.Maybe Prelude.Text,
    -- | The number of reserved DB instances.
    dBInstanceCount :: Prelude.Maybe Prelude.Int,
    -- | The DB instance class for the reserved DB instance.
    dBInstanceClass :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier for the reservation.
    reservedDBInstanceId :: Prelude.Maybe Prelude.Text,
    -- | The fixed price charged for this reserved DB instance.
    fixedPrice :: Prelude.Maybe Prelude.Double,
    -- | The unique identifier for the lease associated with the reserved DB
    -- instance.
    --
    -- AWS Support might request the lease ID for an issue related to a
    -- reserved DB instance.
    leaseId :: Prelude.Maybe Prelude.Text,
    -- | The hourly price charged for this reserved DB instance.
    usagePrice :: Prelude.Maybe Prelude.Double,
    -- | The offering type of this reserved DB instance.
    offeringType :: Prelude.Maybe Prelude.Text,
    -- | The recurring price charged to run this reserved DB instance.
    recurringCharges :: Prelude.Maybe [RecurringCharge],
    -- | The description of the reserved DB instance.
    productDescription :: Prelude.Maybe Prelude.Text,
    -- | The offering identifier.
    reservedDBInstancesOfferingId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ReservedDBInstance' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'duration', 'reservedDBInstance_duration' - The duration of the reservation in seconds.
--
-- 'reservedDBInstanceArn', 'reservedDBInstance_reservedDBInstanceArn' - The Amazon Resource Name (ARN) for the reserved DB instance.
--
-- 'startTime', 'reservedDBInstance_startTime' - The time the reservation started.
--
-- 'currencyCode', 'reservedDBInstance_currencyCode' - The currency code for the reserved DB instance.
--
-- 'multiAZ', 'reservedDBInstance_multiAZ' - Indicates if the reservation applies to Multi-AZ deployments.
--
-- 'state', 'reservedDBInstance_state' - The state of the reserved DB instance.
--
-- 'dBInstanceCount', 'reservedDBInstance_dBInstanceCount' - The number of reserved DB instances.
--
-- 'dBInstanceClass', 'reservedDBInstance_dBInstanceClass' - The DB instance class for the reserved DB instance.
--
-- 'reservedDBInstanceId', 'reservedDBInstance_reservedDBInstanceId' - The unique identifier for the reservation.
--
-- 'fixedPrice', 'reservedDBInstance_fixedPrice' - The fixed price charged for this reserved DB instance.
--
-- 'leaseId', 'reservedDBInstance_leaseId' - The unique identifier for the lease associated with the reserved DB
-- instance.
--
-- AWS Support might request the lease ID for an issue related to a
-- reserved DB instance.
--
-- 'usagePrice', 'reservedDBInstance_usagePrice' - The hourly price charged for this reserved DB instance.
--
-- 'offeringType', 'reservedDBInstance_offeringType' - The offering type of this reserved DB instance.
--
-- 'recurringCharges', 'reservedDBInstance_recurringCharges' - The recurring price charged to run this reserved DB instance.
--
-- 'productDescription', 'reservedDBInstance_productDescription' - The description of the reserved DB instance.
--
-- 'reservedDBInstancesOfferingId', 'reservedDBInstance_reservedDBInstancesOfferingId' - The offering identifier.
newReservedDBInstance ::
  ReservedDBInstance
newReservedDBInstance =
  ReservedDBInstance'
    { duration = Prelude.Nothing,
      reservedDBInstanceArn = Prelude.Nothing,
      startTime = Prelude.Nothing,
      currencyCode = Prelude.Nothing,
      multiAZ = Prelude.Nothing,
      state = Prelude.Nothing,
      dBInstanceCount = Prelude.Nothing,
      dBInstanceClass = Prelude.Nothing,
      reservedDBInstanceId = Prelude.Nothing,
      fixedPrice = Prelude.Nothing,
      leaseId = Prelude.Nothing,
      usagePrice = Prelude.Nothing,
      offeringType = Prelude.Nothing,
      recurringCharges = Prelude.Nothing,
      productDescription = Prelude.Nothing,
      reservedDBInstancesOfferingId = Prelude.Nothing
    }

-- | The duration of the reservation in seconds.
reservedDBInstance_duration :: Lens.Lens' ReservedDBInstance (Prelude.Maybe Prelude.Int)
reservedDBInstance_duration = Lens.lens (\ReservedDBInstance' {duration} -> duration) (\s@ReservedDBInstance' {} a -> s {duration = a} :: ReservedDBInstance)

-- | The Amazon Resource Name (ARN) for the reserved DB instance.
reservedDBInstance_reservedDBInstanceArn :: Lens.Lens' ReservedDBInstance (Prelude.Maybe Prelude.Text)
reservedDBInstance_reservedDBInstanceArn = Lens.lens (\ReservedDBInstance' {reservedDBInstanceArn} -> reservedDBInstanceArn) (\s@ReservedDBInstance' {} a -> s {reservedDBInstanceArn = a} :: ReservedDBInstance)

-- | The time the reservation started.
reservedDBInstance_startTime :: Lens.Lens' ReservedDBInstance (Prelude.Maybe Prelude.UTCTime)
reservedDBInstance_startTime = Lens.lens (\ReservedDBInstance' {startTime} -> startTime) (\s@ReservedDBInstance' {} a -> s {startTime = a} :: ReservedDBInstance) Prelude.. Lens.mapping Prelude._Time

-- | The currency code for the reserved DB instance.
reservedDBInstance_currencyCode :: Lens.Lens' ReservedDBInstance (Prelude.Maybe Prelude.Text)
reservedDBInstance_currencyCode = Lens.lens (\ReservedDBInstance' {currencyCode} -> currencyCode) (\s@ReservedDBInstance' {} a -> s {currencyCode = a} :: ReservedDBInstance)

-- | Indicates if the reservation applies to Multi-AZ deployments.
reservedDBInstance_multiAZ :: Lens.Lens' ReservedDBInstance (Prelude.Maybe Prelude.Bool)
reservedDBInstance_multiAZ = Lens.lens (\ReservedDBInstance' {multiAZ} -> multiAZ) (\s@ReservedDBInstance' {} a -> s {multiAZ = a} :: ReservedDBInstance)

-- | The state of the reserved DB instance.
reservedDBInstance_state :: Lens.Lens' ReservedDBInstance (Prelude.Maybe Prelude.Text)
reservedDBInstance_state = Lens.lens (\ReservedDBInstance' {state} -> state) (\s@ReservedDBInstance' {} a -> s {state = a} :: ReservedDBInstance)

-- | The number of reserved DB instances.
reservedDBInstance_dBInstanceCount :: Lens.Lens' ReservedDBInstance (Prelude.Maybe Prelude.Int)
reservedDBInstance_dBInstanceCount = Lens.lens (\ReservedDBInstance' {dBInstanceCount} -> dBInstanceCount) (\s@ReservedDBInstance' {} a -> s {dBInstanceCount = a} :: ReservedDBInstance)

-- | The DB instance class for the reserved DB instance.
reservedDBInstance_dBInstanceClass :: Lens.Lens' ReservedDBInstance (Prelude.Maybe Prelude.Text)
reservedDBInstance_dBInstanceClass = Lens.lens (\ReservedDBInstance' {dBInstanceClass} -> dBInstanceClass) (\s@ReservedDBInstance' {} a -> s {dBInstanceClass = a} :: ReservedDBInstance)

-- | The unique identifier for the reservation.
reservedDBInstance_reservedDBInstanceId :: Lens.Lens' ReservedDBInstance (Prelude.Maybe Prelude.Text)
reservedDBInstance_reservedDBInstanceId = Lens.lens (\ReservedDBInstance' {reservedDBInstanceId} -> reservedDBInstanceId) (\s@ReservedDBInstance' {} a -> s {reservedDBInstanceId = a} :: ReservedDBInstance)

-- | The fixed price charged for this reserved DB instance.
reservedDBInstance_fixedPrice :: Lens.Lens' ReservedDBInstance (Prelude.Maybe Prelude.Double)
reservedDBInstance_fixedPrice = Lens.lens (\ReservedDBInstance' {fixedPrice} -> fixedPrice) (\s@ReservedDBInstance' {} a -> s {fixedPrice = a} :: ReservedDBInstance)

-- | The unique identifier for the lease associated with the reserved DB
-- instance.
--
-- AWS Support might request the lease ID for an issue related to a
-- reserved DB instance.
reservedDBInstance_leaseId :: Lens.Lens' ReservedDBInstance (Prelude.Maybe Prelude.Text)
reservedDBInstance_leaseId = Lens.lens (\ReservedDBInstance' {leaseId} -> leaseId) (\s@ReservedDBInstance' {} a -> s {leaseId = a} :: ReservedDBInstance)

-- | The hourly price charged for this reserved DB instance.
reservedDBInstance_usagePrice :: Lens.Lens' ReservedDBInstance (Prelude.Maybe Prelude.Double)
reservedDBInstance_usagePrice = Lens.lens (\ReservedDBInstance' {usagePrice} -> usagePrice) (\s@ReservedDBInstance' {} a -> s {usagePrice = a} :: ReservedDBInstance)

-- | The offering type of this reserved DB instance.
reservedDBInstance_offeringType :: Lens.Lens' ReservedDBInstance (Prelude.Maybe Prelude.Text)
reservedDBInstance_offeringType = Lens.lens (\ReservedDBInstance' {offeringType} -> offeringType) (\s@ReservedDBInstance' {} a -> s {offeringType = a} :: ReservedDBInstance)

-- | The recurring price charged to run this reserved DB instance.
reservedDBInstance_recurringCharges :: Lens.Lens' ReservedDBInstance (Prelude.Maybe [RecurringCharge])
reservedDBInstance_recurringCharges = Lens.lens (\ReservedDBInstance' {recurringCharges} -> recurringCharges) (\s@ReservedDBInstance' {} a -> s {recurringCharges = a} :: ReservedDBInstance) Prelude.. Lens.mapping Prelude._Coerce

-- | The description of the reserved DB instance.
reservedDBInstance_productDescription :: Lens.Lens' ReservedDBInstance (Prelude.Maybe Prelude.Text)
reservedDBInstance_productDescription = Lens.lens (\ReservedDBInstance' {productDescription} -> productDescription) (\s@ReservedDBInstance' {} a -> s {productDescription = a} :: ReservedDBInstance)

-- | The offering identifier.
reservedDBInstance_reservedDBInstancesOfferingId :: Lens.Lens' ReservedDBInstance (Prelude.Maybe Prelude.Text)
reservedDBInstance_reservedDBInstancesOfferingId = Lens.lens (\ReservedDBInstance' {reservedDBInstancesOfferingId} -> reservedDBInstancesOfferingId) (\s@ReservedDBInstance' {} a -> s {reservedDBInstancesOfferingId = a} :: ReservedDBInstance)

instance Prelude.FromXML ReservedDBInstance where
  parseXML x =
    ReservedDBInstance'
      Prelude.<$> (x Prelude..@? "Duration")
      Prelude.<*> (x Prelude..@? "ReservedDBInstanceArn")
      Prelude.<*> (x Prelude..@? "StartTime")
      Prelude.<*> (x Prelude..@? "CurrencyCode")
      Prelude.<*> (x Prelude..@? "MultiAZ")
      Prelude.<*> (x Prelude..@? "State")
      Prelude.<*> (x Prelude..@? "DBInstanceCount")
      Prelude.<*> (x Prelude..@? "DBInstanceClass")
      Prelude.<*> (x Prelude..@? "ReservedDBInstanceId")
      Prelude.<*> (x Prelude..@? "FixedPrice")
      Prelude.<*> (x Prelude..@? "LeaseId")
      Prelude.<*> (x Prelude..@? "UsagePrice")
      Prelude.<*> (x Prelude..@? "OfferingType")
      Prelude.<*> ( x Prelude..@? "RecurringCharges"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList "RecurringCharge")
                  )
      Prelude.<*> (x Prelude..@? "ProductDescription")
      Prelude.<*> (x Prelude..@? "ReservedDBInstancesOfferingId")

instance Prelude.Hashable ReservedDBInstance

instance Prelude.NFData ReservedDBInstance
