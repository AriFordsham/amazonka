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
-- Module      : Network.AWS.IAM.Types.MFADevice
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.MFADevice where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about an MFA device.
--
-- This data type is used as a response element in the ListMFADevices
-- operation.
--
-- /See:/ 'newMFADevice' smart constructor.
data MFADevice = MFADevice'
  { -- | The user with whom the MFA device is associated.
    userName :: Prelude.Text,
    -- | The serial number that uniquely identifies the MFA device. For virtual
    -- MFA devices, the serial number is the device ARN.
    serialNumber :: Prelude.Text,
    -- | The date when the MFA device was enabled for the user.
    enableDate :: Prelude.ISO8601
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'MFADevice' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'userName', 'mFADevice_userName' - The user with whom the MFA device is associated.
--
-- 'serialNumber', 'mFADevice_serialNumber' - The serial number that uniquely identifies the MFA device. For virtual
-- MFA devices, the serial number is the device ARN.
--
-- 'enableDate', 'mFADevice_enableDate' - The date when the MFA device was enabled for the user.
newMFADevice ::
  -- | 'userName'
  Prelude.Text ->
  -- | 'serialNumber'
  Prelude.Text ->
  -- | 'enableDate'
  Prelude.UTCTime ->
  MFADevice
newMFADevice pUserName_ pSerialNumber_ pEnableDate_ =
  MFADevice'
    { userName = pUserName_,
      serialNumber = pSerialNumber_,
      enableDate = Prelude._Time Lens.# pEnableDate_
    }

-- | The user with whom the MFA device is associated.
mFADevice_userName :: Lens.Lens' MFADevice Prelude.Text
mFADevice_userName = Lens.lens (\MFADevice' {userName} -> userName) (\s@MFADevice' {} a -> s {userName = a} :: MFADevice)

-- | The serial number that uniquely identifies the MFA device. For virtual
-- MFA devices, the serial number is the device ARN.
mFADevice_serialNumber :: Lens.Lens' MFADevice Prelude.Text
mFADevice_serialNumber = Lens.lens (\MFADevice' {serialNumber} -> serialNumber) (\s@MFADevice' {} a -> s {serialNumber = a} :: MFADevice)

-- | The date when the MFA device was enabled for the user.
mFADevice_enableDate :: Lens.Lens' MFADevice Prelude.UTCTime
mFADevice_enableDate = Lens.lens (\MFADevice' {enableDate} -> enableDate) (\s@MFADevice' {} a -> s {enableDate = a} :: MFADevice) Prelude.. Prelude._Time

instance Prelude.FromXML MFADevice where
  parseXML x =
    MFADevice'
      Prelude.<$> (x Prelude..@ "UserName")
      Prelude.<*> (x Prelude..@ "SerialNumber")
      Prelude.<*> (x Prelude..@ "EnableDate")

instance Prelude.Hashable MFADevice

instance Prelude.NFData MFADevice
