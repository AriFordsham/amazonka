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
-- Module      : Network.AWS.EFS.Types.CreationInfo
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EFS.Types.CreationInfo where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Required if the @RootDirectory@ > @Path@ specified does not exist.
-- Specifies the POSIX IDs and permissions to apply to the access point\'s
-- @RootDirectory@ > @Path@. If the access point root directory does not
-- exist, EFS creates it with these settings when a client connects to the
-- access point. When specifying @CreationInfo@, you must include values
-- for all properties.
--
-- If you do not provide @CreationInfo@ and the specified @RootDirectory@
-- does not exist, attempts to mount the file system using the access point
-- will fail.
--
-- /See:/ 'newCreationInfo' smart constructor.
data CreationInfo = CreationInfo'
  { -- | Specifies the POSIX user ID to apply to the @RootDirectory@. Accepts
    -- values from 0 to 2^32 (4294967295).
    ownerUid :: Prelude.Nat,
    -- | Specifies the POSIX group ID to apply to the @RootDirectory@. Accepts
    -- values from 0 to 2^32 (4294967295).
    ownerGid :: Prelude.Nat,
    -- | Specifies the POSIX permissions to apply to the @RootDirectory@, in the
    -- format of an octal number representing the file\'s mode bits.
    permissions :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreationInfo' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ownerUid', 'creationInfo_ownerUid' - Specifies the POSIX user ID to apply to the @RootDirectory@. Accepts
-- values from 0 to 2^32 (4294967295).
--
-- 'ownerGid', 'creationInfo_ownerGid' - Specifies the POSIX group ID to apply to the @RootDirectory@. Accepts
-- values from 0 to 2^32 (4294967295).
--
-- 'permissions', 'creationInfo_permissions' - Specifies the POSIX permissions to apply to the @RootDirectory@, in the
-- format of an octal number representing the file\'s mode bits.
newCreationInfo ::
  -- | 'ownerUid'
  Prelude.Natural ->
  -- | 'ownerGid'
  Prelude.Natural ->
  -- | 'permissions'
  Prelude.Text ->
  CreationInfo
newCreationInfo pOwnerUid_ pOwnerGid_ pPermissions_ =
  CreationInfo'
    { ownerUid =
        Prelude._Nat Lens.# pOwnerUid_,
      ownerGid = Prelude._Nat Lens.# pOwnerGid_,
      permissions = pPermissions_
    }

-- | Specifies the POSIX user ID to apply to the @RootDirectory@. Accepts
-- values from 0 to 2^32 (4294967295).
creationInfo_ownerUid :: Lens.Lens' CreationInfo Prelude.Natural
creationInfo_ownerUid = Lens.lens (\CreationInfo' {ownerUid} -> ownerUid) (\s@CreationInfo' {} a -> s {ownerUid = a} :: CreationInfo) Prelude.. Prelude._Nat

-- | Specifies the POSIX group ID to apply to the @RootDirectory@. Accepts
-- values from 0 to 2^32 (4294967295).
creationInfo_ownerGid :: Lens.Lens' CreationInfo Prelude.Natural
creationInfo_ownerGid = Lens.lens (\CreationInfo' {ownerGid} -> ownerGid) (\s@CreationInfo' {} a -> s {ownerGid = a} :: CreationInfo) Prelude.. Prelude._Nat

-- | Specifies the POSIX permissions to apply to the @RootDirectory@, in the
-- format of an octal number representing the file\'s mode bits.
creationInfo_permissions :: Lens.Lens' CreationInfo Prelude.Text
creationInfo_permissions = Lens.lens (\CreationInfo' {permissions} -> permissions) (\s@CreationInfo' {} a -> s {permissions = a} :: CreationInfo)

instance Prelude.FromJSON CreationInfo where
  parseJSON =
    Prelude.withObject
      "CreationInfo"
      ( \x ->
          CreationInfo'
            Prelude.<$> (x Prelude..: "OwnerUid")
            Prelude.<*> (x Prelude..: "OwnerGid")
            Prelude.<*> (x Prelude..: "Permissions")
      )

instance Prelude.Hashable CreationInfo

instance Prelude.NFData CreationInfo

instance Prelude.ToJSON CreationInfo where
  toJSON CreationInfo' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just ("OwnerUid" Prelude..= ownerUid),
            Prelude.Just ("OwnerGid" Prelude..= ownerGid),
            Prelude.Just ("Permissions" Prelude..= permissions)
          ]
      )
