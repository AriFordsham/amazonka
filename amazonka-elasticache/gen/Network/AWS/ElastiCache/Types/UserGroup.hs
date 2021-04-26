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
-- Module      : Network.AWS.ElastiCache.Types.UserGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.UserGroup where

import Network.AWS.ElastiCache.Types.UserGroupPendingChanges
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | /See:/ 'newUserGroup' smart constructor.
data UserGroup = UserGroup'
  { -- | Indicates user group status. Can be \"creating\", \"active\",
    -- \"modifying\", \"deleting\".
    status :: Prelude.Maybe Prelude.Text,
    -- | A list of replication groups that the user group can access.
    replicationGroups :: Prelude.Maybe [Prelude.Text],
    -- | The Amazon Resource Name (ARN) of the user group.
    aRN :: Prelude.Maybe Prelude.Text,
    -- | The list of user IDs that belong to the user group.
    userIds :: Prelude.Maybe [Prelude.Text],
    -- | The current supported value is Redis.
    engine :: Prelude.Maybe Prelude.Text,
    -- | The ID of the user group.
    userGroupId :: Prelude.Maybe Prelude.Text,
    -- | A list of updates being applied to the user groups.
    pendingChanges :: Prelude.Maybe UserGroupPendingChanges
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'UserGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'userGroup_status' - Indicates user group status. Can be \"creating\", \"active\",
-- \"modifying\", \"deleting\".
--
-- 'replicationGroups', 'userGroup_replicationGroups' - A list of replication groups that the user group can access.
--
-- 'aRN', 'userGroup_aRN' - The Amazon Resource Name (ARN) of the user group.
--
-- 'userIds', 'userGroup_userIds' - The list of user IDs that belong to the user group.
--
-- 'engine', 'userGroup_engine' - The current supported value is Redis.
--
-- 'userGroupId', 'userGroup_userGroupId' - The ID of the user group.
--
-- 'pendingChanges', 'userGroup_pendingChanges' - A list of updates being applied to the user groups.
newUserGroup ::
  UserGroup
newUserGroup =
  UserGroup'
    { status = Prelude.Nothing,
      replicationGroups = Prelude.Nothing,
      aRN = Prelude.Nothing,
      userIds = Prelude.Nothing,
      engine = Prelude.Nothing,
      userGroupId = Prelude.Nothing,
      pendingChanges = Prelude.Nothing
    }

-- | Indicates user group status. Can be \"creating\", \"active\",
-- \"modifying\", \"deleting\".
userGroup_status :: Lens.Lens' UserGroup (Prelude.Maybe Prelude.Text)
userGroup_status = Lens.lens (\UserGroup' {status} -> status) (\s@UserGroup' {} a -> s {status = a} :: UserGroup)

-- | A list of replication groups that the user group can access.
userGroup_replicationGroups :: Lens.Lens' UserGroup (Prelude.Maybe [Prelude.Text])
userGroup_replicationGroups = Lens.lens (\UserGroup' {replicationGroups} -> replicationGroups) (\s@UserGroup' {} a -> s {replicationGroups = a} :: UserGroup) Prelude.. Lens.mapping Prelude._Coerce

-- | The Amazon Resource Name (ARN) of the user group.
userGroup_aRN :: Lens.Lens' UserGroup (Prelude.Maybe Prelude.Text)
userGroup_aRN = Lens.lens (\UserGroup' {aRN} -> aRN) (\s@UserGroup' {} a -> s {aRN = a} :: UserGroup)

-- | The list of user IDs that belong to the user group.
userGroup_userIds :: Lens.Lens' UserGroup (Prelude.Maybe [Prelude.Text])
userGroup_userIds = Lens.lens (\UserGroup' {userIds} -> userIds) (\s@UserGroup' {} a -> s {userIds = a} :: UserGroup) Prelude.. Lens.mapping Prelude._Coerce

-- | The current supported value is Redis.
userGroup_engine :: Lens.Lens' UserGroup (Prelude.Maybe Prelude.Text)
userGroup_engine = Lens.lens (\UserGroup' {engine} -> engine) (\s@UserGroup' {} a -> s {engine = a} :: UserGroup)

-- | The ID of the user group.
userGroup_userGroupId :: Lens.Lens' UserGroup (Prelude.Maybe Prelude.Text)
userGroup_userGroupId = Lens.lens (\UserGroup' {userGroupId} -> userGroupId) (\s@UserGroup' {} a -> s {userGroupId = a} :: UserGroup)

-- | A list of updates being applied to the user groups.
userGroup_pendingChanges :: Lens.Lens' UserGroup (Prelude.Maybe UserGroupPendingChanges)
userGroup_pendingChanges = Lens.lens (\UserGroup' {pendingChanges} -> pendingChanges) (\s@UserGroup' {} a -> s {pendingChanges = a} :: UserGroup)

instance Prelude.FromXML UserGroup where
  parseXML x =
    UserGroup'
      Prelude.<$> (x Prelude..@? "Status")
      Prelude.<*> ( x Prelude..@? "ReplicationGroups"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList "member")
                  )
      Prelude.<*> (x Prelude..@? "ARN")
      Prelude.<*> ( x Prelude..@? "UserIds" Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList "member")
                  )
      Prelude.<*> (x Prelude..@? "Engine")
      Prelude.<*> (x Prelude..@? "UserGroupId")
      Prelude.<*> (x Prelude..@? "PendingChanges")

instance Prelude.Hashable UserGroup

instance Prelude.NFData UserGroup
