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
-- Module      : Network.AWS.WorkSpaces.RebootWorkspaces
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reboots the specified WorkSpaces.
--
-- You cannot reboot a WorkSpace unless its state is @AVAILABLE@ or
-- @UNHEALTHY@.
--
-- This operation is asynchronous and returns before the WorkSpaces have
-- rebooted.
module Network.AWS.WorkSpaces.RebootWorkspaces
  ( -- * Creating a Request
    RebootWorkspaces (..),
    newRebootWorkspaces,

    -- * Request Lenses
    rebootWorkspaces_rebootWorkspaceRequests,

    -- * Destructuring the Response
    RebootWorkspacesResponse (..),
    newRebootWorkspacesResponse,

    -- * Response Lenses
    rebootWorkspacesResponse_failedRequests,
    rebootWorkspacesResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WorkSpaces.Types
import Network.AWS.WorkSpaces.Types.FailedWorkspaceChangeRequest

-- | /See:/ 'newRebootWorkspaces' smart constructor.
data RebootWorkspaces = RebootWorkspaces'
  { -- | The WorkSpaces to reboot. You can specify up to 25 WorkSpaces.
    rebootWorkspaceRequests :: Prelude.List1 RebootRequest
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'RebootWorkspaces' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'rebootWorkspaceRequests', 'rebootWorkspaces_rebootWorkspaceRequests' - The WorkSpaces to reboot. You can specify up to 25 WorkSpaces.
newRebootWorkspaces ::
  -- | 'rebootWorkspaceRequests'
  Prelude.NonEmpty RebootRequest ->
  RebootWorkspaces
newRebootWorkspaces pRebootWorkspaceRequests_ =
  RebootWorkspaces'
    { rebootWorkspaceRequests =
        Prelude._List1 Lens.# pRebootWorkspaceRequests_
    }

-- | The WorkSpaces to reboot. You can specify up to 25 WorkSpaces.
rebootWorkspaces_rebootWorkspaceRequests :: Lens.Lens' RebootWorkspaces (Prelude.NonEmpty RebootRequest)
rebootWorkspaces_rebootWorkspaceRequests = Lens.lens (\RebootWorkspaces' {rebootWorkspaceRequests} -> rebootWorkspaceRequests) (\s@RebootWorkspaces' {} a -> s {rebootWorkspaceRequests = a} :: RebootWorkspaces) Prelude.. Prelude._List1

instance Prelude.AWSRequest RebootWorkspaces where
  type Rs RebootWorkspaces = RebootWorkspacesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          RebootWorkspacesResponse'
            Prelude.<$> ( x Prelude..?> "FailedRequests"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable RebootWorkspaces

instance Prelude.NFData RebootWorkspaces

instance Prelude.ToHeaders RebootWorkspaces where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "WorkspacesService.RebootWorkspaces" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON RebootWorkspaces where
  toJSON RebootWorkspaces' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "RebootWorkspaceRequests"
                  Prelude..= rebootWorkspaceRequests
              )
          ]
      )

instance Prelude.ToPath RebootWorkspaces where
  toPath = Prelude.const "/"

instance Prelude.ToQuery RebootWorkspaces where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newRebootWorkspacesResponse' smart constructor.
data RebootWorkspacesResponse = RebootWorkspacesResponse'
  { -- | Information about the WorkSpaces that could not be rebooted.
    failedRequests :: Prelude.Maybe [FailedWorkspaceChangeRequest],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'RebootWorkspacesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'failedRequests', 'rebootWorkspacesResponse_failedRequests' - Information about the WorkSpaces that could not be rebooted.
--
-- 'httpStatus', 'rebootWorkspacesResponse_httpStatus' - The response's http status code.
newRebootWorkspacesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  RebootWorkspacesResponse
newRebootWorkspacesResponse pHttpStatus_ =
  RebootWorkspacesResponse'
    { failedRequests =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the WorkSpaces that could not be rebooted.
rebootWorkspacesResponse_failedRequests :: Lens.Lens' RebootWorkspacesResponse (Prelude.Maybe [FailedWorkspaceChangeRequest])
rebootWorkspacesResponse_failedRequests = Lens.lens (\RebootWorkspacesResponse' {failedRequests} -> failedRequests) (\s@RebootWorkspacesResponse' {} a -> s {failedRequests = a} :: RebootWorkspacesResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
rebootWorkspacesResponse_httpStatus :: Lens.Lens' RebootWorkspacesResponse Prelude.Int
rebootWorkspacesResponse_httpStatus = Lens.lens (\RebootWorkspacesResponse' {httpStatus} -> httpStatus) (\s@RebootWorkspacesResponse' {} a -> s {httpStatus = a} :: RebootWorkspacesResponse)

instance Prelude.NFData RebootWorkspacesResponse
