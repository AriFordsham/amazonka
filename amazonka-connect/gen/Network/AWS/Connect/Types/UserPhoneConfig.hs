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
-- Module      : Network.AWS.Connect.Types.UserPhoneConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.UserPhoneConfig where

import Network.AWS.Connect.Types.PhoneType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about the phone configuration settings for a user.
--
-- /See:/ 'newUserPhoneConfig' smart constructor.
data UserPhoneConfig = UserPhoneConfig'
  { -- | The Auto accept setting.
    autoAccept :: Prelude.Maybe Prelude.Bool,
    -- | The After Call Work (ACW) timeout setting, in seconds.
    afterContactWorkTimeLimit :: Prelude.Maybe Prelude.Nat,
    -- | The phone number for the user\'s desk phone.
    deskPhoneNumber :: Prelude.Maybe Prelude.Text,
    -- | The phone type.
    phoneType :: PhoneType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'UserPhoneConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'autoAccept', 'userPhoneConfig_autoAccept' - The Auto accept setting.
--
-- 'afterContactWorkTimeLimit', 'userPhoneConfig_afterContactWorkTimeLimit' - The After Call Work (ACW) timeout setting, in seconds.
--
-- 'deskPhoneNumber', 'userPhoneConfig_deskPhoneNumber' - The phone number for the user\'s desk phone.
--
-- 'phoneType', 'userPhoneConfig_phoneType' - The phone type.
newUserPhoneConfig ::
  -- | 'phoneType'
  PhoneType ->
  UserPhoneConfig
newUserPhoneConfig pPhoneType_ =
  UserPhoneConfig'
    { autoAccept = Prelude.Nothing,
      afterContactWorkTimeLimit = Prelude.Nothing,
      deskPhoneNumber = Prelude.Nothing,
      phoneType = pPhoneType_
    }

-- | The Auto accept setting.
userPhoneConfig_autoAccept :: Lens.Lens' UserPhoneConfig (Prelude.Maybe Prelude.Bool)
userPhoneConfig_autoAccept = Lens.lens (\UserPhoneConfig' {autoAccept} -> autoAccept) (\s@UserPhoneConfig' {} a -> s {autoAccept = a} :: UserPhoneConfig)

-- | The After Call Work (ACW) timeout setting, in seconds.
userPhoneConfig_afterContactWorkTimeLimit :: Lens.Lens' UserPhoneConfig (Prelude.Maybe Prelude.Natural)
userPhoneConfig_afterContactWorkTimeLimit = Lens.lens (\UserPhoneConfig' {afterContactWorkTimeLimit} -> afterContactWorkTimeLimit) (\s@UserPhoneConfig' {} a -> s {afterContactWorkTimeLimit = a} :: UserPhoneConfig) Prelude.. Lens.mapping Prelude._Nat

-- | The phone number for the user\'s desk phone.
userPhoneConfig_deskPhoneNumber :: Lens.Lens' UserPhoneConfig (Prelude.Maybe Prelude.Text)
userPhoneConfig_deskPhoneNumber = Lens.lens (\UserPhoneConfig' {deskPhoneNumber} -> deskPhoneNumber) (\s@UserPhoneConfig' {} a -> s {deskPhoneNumber = a} :: UserPhoneConfig)

-- | The phone type.
userPhoneConfig_phoneType :: Lens.Lens' UserPhoneConfig PhoneType
userPhoneConfig_phoneType = Lens.lens (\UserPhoneConfig' {phoneType} -> phoneType) (\s@UserPhoneConfig' {} a -> s {phoneType = a} :: UserPhoneConfig)

instance Prelude.FromJSON UserPhoneConfig where
  parseJSON =
    Prelude.withObject
      "UserPhoneConfig"
      ( \x ->
          UserPhoneConfig'
            Prelude.<$> (x Prelude..:? "AutoAccept")
            Prelude.<*> (x Prelude..:? "AfterContactWorkTimeLimit")
            Prelude.<*> (x Prelude..:? "DeskPhoneNumber")
            Prelude.<*> (x Prelude..: "PhoneType")
      )

instance Prelude.Hashable UserPhoneConfig

instance Prelude.NFData UserPhoneConfig

instance Prelude.ToJSON UserPhoneConfig where
  toJSON UserPhoneConfig' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("AutoAccept" Prelude..=) Prelude.<$> autoAccept,
            ("AfterContactWorkTimeLimit" Prelude..=)
              Prelude.<$> afterContactWorkTimeLimit,
            ("DeskPhoneNumber" Prelude..=)
              Prelude.<$> deskPhoneNumber,
            Prelude.Just ("PhoneType" Prelude..= phoneType)
          ]
      )
