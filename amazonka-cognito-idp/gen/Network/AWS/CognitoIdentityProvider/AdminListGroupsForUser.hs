{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CognitoIdentityProvider.AdminListGroupsForUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the groups that the user belongs to.
--
-- Calling this action requires developer credentials.
--
-- This operation returns paginated results.
module Network.AWS.CognitoIdentityProvider.AdminListGroupsForUser
  ( -- * Creating a Request
    AdminListGroupsForUser (..),
    newAdminListGroupsForUser,

    -- * Request Lenses
    adminListGroupsForUser_nextToken,
    adminListGroupsForUser_limit,
    adminListGroupsForUser_username,
    adminListGroupsForUser_userPoolId,

    -- * Destructuring the Response
    AdminListGroupsForUserResponse (..),
    newAdminListGroupsForUserResponse,

    -- * Response Lenses
    adminListGroupsForUserResponse_groups,
    adminListGroupsForUserResponse_nextToken,
    adminListGroupsForUserResponse_httpStatus,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newAdminListGroupsForUser' smart constructor.
data AdminListGroupsForUser = AdminListGroupsForUser'
  { -- | An identifier that was returned from the previous call to this
    -- operation, which can be used to return the next set of items in the
    -- list.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The limit of the request to list groups.
    limit :: Prelude.Maybe Prelude.Natural,
    -- | The username for the user.
    username :: Prelude.Sensitive Prelude.Text,
    -- | The user pool ID for the user pool.
    userPoolId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AdminListGroupsForUser' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'adminListGroupsForUser_nextToken' - An identifier that was returned from the previous call to this
-- operation, which can be used to return the next set of items in the
-- list.
--
-- 'limit', 'adminListGroupsForUser_limit' - The limit of the request to list groups.
--
-- 'username', 'adminListGroupsForUser_username' - The username for the user.
--
-- 'userPoolId', 'adminListGroupsForUser_userPoolId' - The user pool ID for the user pool.
newAdminListGroupsForUser ::
  -- | 'username'
  Prelude.Text ->
  -- | 'userPoolId'
  Prelude.Text ->
  AdminListGroupsForUser
newAdminListGroupsForUser pUsername_ pUserPoolId_ =
  AdminListGroupsForUser'
    { nextToken =
        Prelude.Nothing,
      limit = Prelude.Nothing,
      username = Prelude._Sensitive Lens.# pUsername_,
      userPoolId = pUserPoolId_
    }

-- | An identifier that was returned from the previous call to this
-- operation, which can be used to return the next set of items in the
-- list.
adminListGroupsForUser_nextToken :: Lens.Lens' AdminListGroupsForUser (Prelude.Maybe Prelude.Text)
adminListGroupsForUser_nextToken = Lens.lens (\AdminListGroupsForUser' {nextToken} -> nextToken) (\s@AdminListGroupsForUser' {} a -> s {nextToken = a} :: AdminListGroupsForUser)

-- | The limit of the request to list groups.
adminListGroupsForUser_limit :: Lens.Lens' AdminListGroupsForUser (Prelude.Maybe Prelude.Natural)
adminListGroupsForUser_limit = Lens.lens (\AdminListGroupsForUser' {limit} -> limit) (\s@AdminListGroupsForUser' {} a -> s {limit = a} :: AdminListGroupsForUser)

-- | The username for the user.
adminListGroupsForUser_username :: Lens.Lens' AdminListGroupsForUser Prelude.Text
adminListGroupsForUser_username = Lens.lens (\AdminListGroupsForUser' {username} -> username) (\s@AdminListGroupsForUser' {} a -> s {username = a} :: AdminListGroupsForUser) Prelude.. Prelude._Sensitive

-- | The user pool ID for the user pool.
adminListGroupsForUser_userPoolId :: Lens.Lens' AdminListGroupsForUser Prelude.Text
adminListGroupsForUser_userPoolId = Lens.lens (\AdminListGroupsForUser' {userPoolId} -> userPoolId) (\s@AdminListGroupsForUser' {} a -> s {userPoolId = a} :: AdminListGroupsForUser)

instance Pager.AWSPager AdminListGroupsForUser where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? adminListGroupsForUserResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? adminListGroupsForUserResponse_groups
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& adminListGroupsForUser_nextToken
          Lens..~ rs
          Lens.^? adminListGroupsForUserResponse_nextToken
            Prelude.. Lens._Just

instance Prelude.AWSRequest AdminListGroupsForUser where
  type
    Rs AdminListGroupsForUser =
      AdminListGroupsForUserResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          AdminListGroupsForUserResponse'
            Prelude.<$> (x Prelude..?> "Groups" Prelude..!@ Prelude.mempty)
            Prelude.<*> (x Prelude..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable AdminListGroupsForUser

instance Prelude.NFData AdminListGroupsForUser

instance Prelude.ToHeaders AdminListGroupsForUser where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "AWSCognitoIdentityProviderService.AdminListGroupsForUser" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON AdminListGroupsForUser where
  toJSON AdminListGroupsForUser' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("NextToken" Prelude..=) Prelude.<$> nextToken,
            ("Limit" Prelude..=) Prelude.<$> limit,
            Prelude.Just ("Username" Prelude..= username),
            Prelude.Just ("UserPoolId" Prelude..= userPoolId)
          ]
      )

instance Prelude.ToPath AdminListGroupsForUser where
  toPath = Prelude.const "/"

instance Prelude.ToQuery AdminListGroupsForUser where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newAdminListGroupsForUserResponse' smart constructor.
data AdminListGroupsForUserResponse = AdminListGroupsForUserResponse'
  { -- | The groups that the user belongs to.
    groups :: Prelude.Maybe [GroupType],
    -- | An identifier that was returned from the previous call to this
    -- operation, which can be used to return the next set of items in the
    -- list.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AdminListGroupsForUserResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'groups', 'adminListGroupsForUserResponse_groups' - The groups that the user belongs to.
--
-- 'nextToken', 'adminListGroupsForUserResponse_nextToken' - An identifier that was returned from the previous call to this
-- operation, which can be used to return the next set of items in the
-- list.
--
-- 'httpStatus', 'adminListGroupsForUserResponse_httpStatus' - The response's http status code.
newAdminListGroupsForUserResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  AdminListGroupsForUserResponse
newAdminListGroupsForUserResponse pHttpStatus_ =
  AdminListGroupsForUserResponse'
    { groups =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The groups that the user belongs to.
adminListGroupsForUserResponse_groups :: Lens.Lens' AdminListGroupsForUserResponse (Prelude.Maybe [GroupType])
adminListGroupsForUserResponse_groups = Lens.lens (\AdminListGroupsForUserResponse' {groups} -> groups) (\s@AdminListGroupsForUserResponse' {} a -> s {groups = a} :: AdminListGroupsForUserResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | An identifier that was returned from the previous call to this
-- operation, which can be used to return the next set of items in the
-- list.
adminListGroupsForUserResponse_nextToken :: Lens.Lens' AdminListGroupsForUserResponse (Prelude.Maybe Prelude.Text)
adminListGroupsForUserResponse_nextToken = Lens.lens (\AdminListGroupsForUserResponse' {nextToken} -> nextToken) (\s@AdminListGroupsForUserResponse' {} a -> s {nextToken = a} :: AdminListGroupsForUserResponse)

-- | The response's http status code.
adminListGroupsForUserResponse_httpStatus :: Lens.Lens' AdminListGroupsForUserResponse Prelude.Int
adminListGroupsForUserResponse_httpStatus = Lens.lens (\AdminListGroupsForUserResponse' {httpStatus} -> httpStatus) (\s@AdminListGroupsForUserResponse' {} a -> s {httpStatus = a} :: AdminListGroupsForUserResponse)

instance
  Prelude.NFData
    AdminListGroupsForUserResponse
