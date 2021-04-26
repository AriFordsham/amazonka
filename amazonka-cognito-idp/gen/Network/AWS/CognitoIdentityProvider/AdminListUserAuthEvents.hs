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
-- Module      : Network.AWS.CognitoIdentityProvider.AdminListUserAuthEvents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists a history of user activity and any risks detected as part of
-- Amazon Cognito advanced security.
--
-- This operation returns paginated results.
module Network.AWS.CognitoIdentityProvider.AdminListUserAuthEvents
  ( -- * Creating a Request
    AdminListUserAuthEvents (..),
    newAdminListUserAuthEvents,

    -- * Request Lenses
    adminListUserAuthEvents_nextToken,
    adminListUserAuthEvents_maxResults,
    adminListUserAuthEvents_userPoolId,
    adminListUserAuthEvents_username,

    -- * Destructuring the Response
    AdminListUserAuthEventsResponse (..),
    newAdminListUserAuthEventsResponse,

    -- * Response Lenses
    adminListUserAuthEventsResponse_nextToken,
    adminListUserAuthEventsResponse_authEvents,
    adminListUserAuthEventsResponse_httpStatus,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.CognitoIdentityProvider.Types.AuthEventType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newAdminListUserAuthEvents' smart constructor.
data AdminListUserAuthEvents = AdminListUserAuthEvents'
  { -- | A pagination token.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of authentication events to return.
    maxResults :: Prelude.Maybe Prelude.Nat,
    -- | The user pool ID.
    userPoolId :: Prelude.Text,
    -- | The user pool username or an alias.
    username :: Prelude.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AdminListUserAuthEvents' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'adminListUserAuthEvents_nextToken' - A pagination token.
--
-- 'maxResults', 'adminListUserAuthEvents_maxResults' - The maximum number of authentication events to return.
--
-- 'userPoolId', 'adminListUserAuthEvents_userPoolId' - The user pool ID.
--
-- 'username', 'adminListUserAuthEvents_username' - The user pool username or an alias.
newAdminListUserAuthEvents ::
  -- | 'userPoolId'
  Prelude.Text ->
  -- | 'username'
  Prelude.Text ->
  AdminListUserAuthEvents
newAdminListUserAuthEvents pUserPoolId_ pUsername_ =
  AdminListUserAuthEvents'
    { nextToken =
        Prelude.Nothing,
      maxResults = Prelude.Nothing,
      userPoolId = pUserPoolId_,
      username = Prelude._Sensitive Lens.# pUsername_
    }

-- | A pagination token.
adminListUserAuthEvents_nextToken :: Lens.Lens' AdminListUserAuthEvents (Prelude.Maybe Prelude.Text)
adminListUserAuthEvents_nextToken = Lens.lens (\AdminListUserAuthEvents' {nextToken} -> nextToken) (\s@AdminListUserAuthEvents' {} a -> s {nextToken = a} :: AdminListUserAuthEvents)

-- | The maximum number of authentication events to return.
adminListUserAuthEvents_maxResults :: Lens.Lens' AdminListUserAuthEvents (Prelude.Maybe Prelude.Natural)
adminListUserAuthEvents_maxResults = Lens.lens (\AdminListUserAuthEvents' {maxResults} -> maxResults) (\s@AdminListUserAuthEvents' {} a -> s {maxResults = a} :: AdminListUserAuthEvents) Prelude.. Lens.mapping Prelude._Nat

-- | The user pool ID.
adminListUserAuthEvents_userPoolId :: Lens.Lens' AdminListUserAuthEvents Prelude.Text
adminListUserAuthEvents_userPoolId = Lens.lens (\AdminListUserAuthEvents' {userPoolId} -> userPoolId) (\s@AdminListUserAuthEvents' {} a -> s {userPoolId = a} :: AdminListUserAuthEvents)

-- | The user pool username or an alias.
adminListUserAuthEvents_username :: Lens.Lens' AdminListUserAuthEvents Prelude.Text
adminListUserAuthEvents_username = Lens.lens (\AdminListUserAuthEvents' {username} -> username) (\s@AdminListUserAuthEvents' {} a -> s {username = a} :: AdminListUserAuthEvents) Prelude.. Prelude._Sensitive

instance Pager.AWSPager AdminListUserAuthEvents where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? adminListUserAuthEventsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? adminListUserAuthEventsResponse_authEvents
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& adminListUserAuthEvents_nextToken
          Lens..~ rs
          Lens.^? adminListUserAuthEventsResponse_nextToken
            Prelude.. Lens._Just

instance Prelude.AWSRequest AdminListUserAuthEvents where
  type
    Rs AdminListUserAuthEvents =
      AdminListUserAuthEventsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          AdminListUserAuthEventsResponse'
            Prelude.<$> (x Prelude..?> "NextToken")
            Prelude.<*> ( x Prelude..?> "AuthEvents"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable AdminListUserAuthEvents

instance Prelude.NFData AdminListUserAuthEvents

instance Prelude.ToHeaders AdminListUserAuthEvents where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "AWSCognitoIdentityProviderService.AdminListUserAuthEvents" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON AdminListUserAuthEvents where
  toJSON AdminListUserAuthEvents' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("NextToken" Prelude..=) Prelude.<$> nextToken,
            ("MaxResults" Prelude..=) Prelude.<$> maxResults,
            Prelude.Just ("UserPoolId" Prelude..= userPoolId),
            Prelude.Just ("Username" Prelude..= username)
          ]
      )

instance Prelude.ToPath AdminListUserAuthEvents where
  toPath = Prelude.const "/"

instance Prelude.ToQuery AdminListUserAuthEvents where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newAdminListUserAuthEventsResponse' smart constructor.
data AdminListUserAuthEventsResponse = AdminListUserAuthEventsResponse'
  { -- | A pagination token.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response object. It includes the @EventID@, @EventType@,
    -- @CreationDate@, @EventRisk@, and @EventResponse@.
    authEvents :: Prelude.Maybe [AuthEventType],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AdminListUserAuthEventsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'adminListUserAuthEventsResponse_nextToken' - A pagination token.
--
-- 'authEvents', 'adminListUserAuthEventsResponse_authEvents' - The response object. It includes the @EventID@, @EventType@,
-- @CreationDate@, @EventRisk@, and @EventResponse@.
--
-- 'httpStatus', 'adminListUserAuthEventsResponse_httpStatus' - The response's http status code.
newAdminListUserAuthEventsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  AdminListUserAuthEventsResponse
newAdminListUserAuthEventsResponse pHttpStatus_ =
  AdminListUserAuthEventsResponse'
    { nextToken =
        Prelude.Nothing,
      authEvents = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A pagination token.
adminListUserAuthEventsResponse_nextToken :: Lens.Lens' AdminListUserAuthEventsResponse (Prelude.Maybe Prelude.Text)
adminListUserAuthEventsResponse_nextToken = Lens.lens (\AdminListUserAuthEventsResponse' {nextToken} -> nextToken) (\s@AdminListUserAuthEventsResponse' {} a -> s {nextToken = a} :: AdminListUserAuthEventsResponse)

-- | The response object. It includes the @EventID@, @EventType@,
-- @CreationDate@, @EventRisk@, and @EventResponse@.
adminListUserAuthEventsResponse_authEvents :: Lens.Lens' AdminListUserAuthEventsResponse (Prelude.Maybe [AuthEventType])
adminListUserAuthEventsResponse_authEvents = Lens.lens (\AdminListUserAuthEventsResponse' {authEvents} -> authEvents) (\s@AdminListUserAuthEventsResponse' {} a -> s {authEvents = a} :: AdminListUserAuthEventsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
adminListUserAuthEventsResponse_httpStatus :: Lens.Lens' AdminListUserAuthEventsResponse Prelude.Int
adminListUserAuthEventsResponse_httpStatus = Lens.lens (\AdminListUserAuthEventsResponse' {httpStatus} -> httpStatus) (\s@AdminListUserAuthEventsResponse' {} a -> s {httpStatus = a} :: AdminListUserAuthEventsResponse)

instance
  Prelude.NFData
    AdminListUserAuthEventsResponse
