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
-- Module      : Network.AWS.GuardDuty.DeleteInvitations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes invitations sent to the current member account by AWS accounts
-- specified by their account IDs.
module Network.AWS.GuardDuty.DeleteInvitations
  ( -- * Creating a Request
    DeleteInvitations (..),
    newDeleteInvitations,

    -- * Request Lenses
    deleteInvitations_accountIds,

    -- * Destructuring the Response
    DeleteInvitationsResponse (..),
    newDeleteInvitationsResponse,

    -- * Response Lenses
    deleteInvitationsResponse_httpStatus,
    deleteInvitationsResponse_unprocessedAccounts,
  )
where

import Network.AWS.GuardDuty.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteInvitations' smart constructor.
data DeleteInvitations = DeleteInvitations'
  { -- | A list of account IDs of the AWS accounts that sent invitations to the
    -- current member account that you want to delete invitations from.
    accountIds :: Prelude.NonEmpty Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DeleteInvitations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accountIds', 'deleteInvitations_accountIds' - A list of account IDs of the AWS accounts that sent invitations to the
-- current member account that you want to delete invitations from.
newDeleteInvitations ::
  -- | 'accountIds'
  Prelude.NonEmpty Prelude.Text ->
  DeleteInvitations
newDeleteInvitations pAccountIds_ =
  DeleteInvitations'
    { accountIds =
        Prelude._Coerce Lens.# pAccountIds_
    }

-- | A list of account IDs of the AWS accounts that sent invitations to the
-- current member account that you want to delete invitations from.
deleteInvitations_accountIds :: Lens.Lens' DeleteInvitations (Prelude.NonEmpty Prelude.Text)
deleteInvitations_accountIds = Lens.lens (\DeleteInvitations' {accountIds} -> accountIds) (\s@DeleteInvitations' {} a -> s {accountIds = a} :: DeleteInvitations) Prelude.. Prelude._Coerce

instance Prelude.AWSRequest DeleteInvitations where
  type Rs DeleteInvitations = DeleteInvitationsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteInvitationsResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Prelude..?> "unprocessedAccounts"
                            Prelude..!@ Prelude.mempty
                        )
      )

instance Prelude.Hashable DeleteInvitations

instance Prelude.NFData DeleteInvitations

instance Prelude.ToHeaders DeleteInvitations where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON DeleteInvitations where
  toJSON DeleteInvitations' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [Prelude.Just ("accountIds" Prelude..= accountIds)]
      )

instance Prelude.ToPath DeleteInvitations where
  toPath = Prelude.const "/invitation/delete"

instance Prelude.ToQuery DeleteInvitations where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteInvitationsResponse' smart constructor.
data DeleteInvitationsResponse = DeleteInvitationsResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A list of objects that contain the unprocessed account and a result
    -- string that explains why it was unprocessed.
    unprocessedAccounts :: [UnprocessedAccount]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DeleteInvitationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'deleteInvitationsResponse_httpStatus' - The response's http status code.
--
-- 'unprocessedAccounts', 'deleteInvitationsResponse_unprocessedAccounts' - A list of objects that contain the unprocessed account and a result
-- string that explains why it was unprocessed.
newDeleteInvitationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteInvitationsResponse
newDeleteInvitationsResponse pHttpStatus_ =
  DeleteInvitationsResponse'
    { httpStatus =
        pHttpStatus_,
      unprocessedAccounts = Prelude.mempty
    }

-- | The response's http status code.
deleteInvitationsResponse_httpStatus :: Lens.Lens' DeleteInvitationsResponse Prelude.Int
deleteInvitationsResponse_httpStatus = Lens.lens (\DeleteInvitationsResponse' {httpStatus} -> httpStatus) (\s@DeleteInvitationsResponse' {} a -> s {httpStatus = a} :: DeleteInvitationsResponse)

-- | A list of objects that contain the unprocessed account and a result
-- string that explains why it was unprocessed.
deleteInvitationsResponse_unprocessedAccounts :: Lens.Lens' DeleteInvitationsResponse [UnprocessedAccount]
deleteInvitationsResponse_unprocessedAccounts = Lens.lens (\DeleteInvitationsResponse' {unprocessedAccounts} -> unprocessedAccounts) (\s@DeleteInvitationsResponse' {} a -> s {unprocessedAccounts = a} :: DeleteInvitationsResponse) Prelude.. Prelude._Coerce

instance Prelude.NFData DeleteInvitationsResponse
