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
-- Module      : Network.AWS.ElastiCache.Types.User
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.User where

import Network.AWS.ElastiCache.Types.Authentication
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | /See:/ 'newUser' smart constructor.
data User = User'
  { -- | Indicates the user status. Can be \"active\", \"modifying\" or
    -- \"deleting\".
    status :: Prelude.Maybe Prelude.Text,
    -- | Access permissions string used for this user.
    accessString :: Prelude.Maybe Prelude.Text,
    -- | Returns a list of the user group IDs the user belongs to.
    userGroupIds :: Prelude.Maybe [Prelude.Text],
    -- | Denotes whether the user requires a password to authenticate.
    authentication :: Prelude.Maybe Authentication,
    -- | The Amazon Resource Name (ARN) of the user.
    aRN :: Prelude.Maybe Prelude.Text,
    -- | The ID of the user.
    userId :: Prelude.Maybe Prelude.Text,
    -- | The current supported value is Redis.
    engine :: Prelude.Maybe Prelude.Text,
    -- | The username of the user.
    userName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'User' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'user_status' - Indicates the user status. Can be \"active\", \"modifying\" or
-- \"deleting\".
--
-- 'accessString', 'user_accessString' - Access permissions string used for this user.
--
-- 'userGroupIds', 'user_userGroupIds' - Returns a list of the user group IDs the user belongs to.
--
-- 'authentication', 'user_authentication' - Denotes whether the user requires a password to authenticate.
--
-- 'aRN', 'user_aRN' - The Amazon Resource Name (ARN) of the user.
--
-- 'userId', 'user_userId' - The ID of the user.
--
-- 'engine', 'user_engine' - The current supported value is Redis.
--
-- 'userName', 'user_userName' - The username of the user.
newUser ::
  User
newUser =
  User'
    { status = Prelude.Nothing,
      accessString = Prelude.Nothing,
      userGroupIds = Prelude.Nothing,
      authentication = Prelude.Nothing,
      aRN = Prelude.Nothing,
      userId = Prelude.Nothing,
      engine = Prelude.Nothing,
      userName = Prelude.Nothing
    }

-- | Indicates the user status. Can be \"active\", \"modifying\" or
-- \"deleting\".
user_status :: Lens.Lens' User (Prelude.Maybe Prelude.Text)
user_status = Lens.lens (\User' {status} -> status) (\s@User' {} a -> s {status = a} :: User)

-- | Access permissions string used for this user.
user_accessString :: Lens.Lens' User (Prelude.Maybe Prelude.Text)
user_accessString = Lens.lens (\User' {accessString} -> accessString) (\s@User' {} a -> s {accessString = a} :: User)

-- | Returns a list of the user group IDs the user belongs to.
user_userGroupIds :: Lens.Lens' User (Prelude.Maybe [Prelude.Text])
user_userGroupIds = Lens.lens (\User' {userGroupIds} -> userGroupIds) (\s@User' {} a -> s {userGroupIds = a} :: User) Prelude.. Lens.mapping Prelude._Coerce

-- | Denotes whether the user requires a password to authenticate.
user_authentication :: Lens.Lens' User (Prelude.Maybe Authentication)
user_authentication = Lens.lens (\User' {authentication} -> authentication) (\s@User' {} a -> s {authentication = a} :: User)

-- | The Amazon Resource Name (ARN) of the user.
user_aRN :: Lens.Lens' User (Prelude.Maybe Prelude.Text)
user_aRN = Lens.lens (\User' {aRN} -> aRN) (\s@User' {} a -> s {aRN = a} :: User)

-- | The ID of the user.
user_userId :: Lens.Lens' User (Prelude.Maybe Prelude.Text)
user_userId = Lens.lens (\User' {userId} -> userId) (\s@User' {} a -> s {userId = a} :: User)

-- | The current supported value is Redis.
user_engine :: Lens.Lens' User (Prelude.Maybe Prelude.Text)
user_engine = Lens.lens (\User' {engine} -> engine) (\s@User' {} a -> s {engine = a} :: User)

-- | The username of the user.
user_userName :: Lens.Lens' User (Prelude.Maybe Prelude.Text)
user_userName = Lens.lens (\User' {userName} -> userName) (\s@User' {} a -> s {userName = a} :: User)

instance Prelude.FromXML User where
  parseXML x =
    User'
      Prelude.<$> (x Prelude..@? "Status")
      Prelude.<*> (x Prelude..@? "AccessString")
      Prelude.<*> ( x Prelude..@? "UserGroupIds"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList "member")
                  )
      Prelude.<*> (x Prelude..@? "Authentication")
      Prelude.<*> (x Prelude..@? "ARN")
      Prelude.<*> (x Prelude..@? "UserId")
      Prelude.<*> (x Prelude..@? "Engine")
      Prelude.<*> (x Prelude..@? "UserName")

instance Prelude.Hashable User

instance Prelude.NFData User
