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
-- Module      : Network.AWS.RDS.DeleteDBSnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a DB snapshot. If the snapshot is being copied, the copy
-- operation is terminated.
--
-- The DB snapshot must be in the @available@ state to be deleted.
module Network.AWS.RDS.DeleteDBSnapshot
  ( -- * Creating a Request
    DeleteDBSnapshot (..),
    newDeleteDBSnapshot,

    -- * Request Lenses
    deleteDBSnapshot_dBSnapshotIdentifier,

    -- * Destructuring the Response
    DeleteDBSnapshotResponse (..),
    newDeleteDBSnapshotResponse,

    -- * Response Lenses
    deleteDBSnapshotResponse_dBSnapshot,
    deleteDBSnapshotResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types
import Network.AWS.RDS.Types.DBSnapshot
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newDeleteDBSnapshot' smart constructor.
data DeleteDBSnapshot = DeleteDBSnapshot'
  { -- | The DB snapshot identifier.
    --
    -- Constraints: Must be the name of an existing DB snapshot in the
    -- @available@ state.
    dBSnapshotIdentifier :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DeleteDBSnapshot' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBSnapshotIdentifier', 'deleteDBSnapshot_dBSnapshotIdentifier' - The DB snapshot identifier.
--
-- Constraints: Must be the name of an existing DB snapshot in the
-- @available@ state.
newDeleteDBSnapshot ::
  -- | 'dBSnapshotIdentifier'
  Prelude.Text ->
  DeleteDBSnapshot
newDeleteDBSnapshot pDBSnapshotIdentifier_ =
  DeleteDBSnapshot'
    { dBSnapshotIdentifier =
        pDBSnapshotIdentifier_
    }

-- | The DB snapshot identifier.
--
-- Constraints: Must be the name of an existing DB snapshot in the
-- @available@ state.
deleteDBSnapshot_dBSnapshotIdentifier :: Lens.Lens' DeleteDBSnapshot Prelude.Text
deleteDBSnapshot_dBSnapshotIdentifier = Lens.lens (\DeleteDBSnapshot' {dBSnapshotIdentifier} -> dBSnapshotIdentifier) (\s@DeleteDBSnapshot' {} a -> s {dBSnapshotIdentifier = a} :: DeleteDBSnapshot)

instance Prelude.AWSRequest DeleteDBSnapshot where
  type Rs DeleteDBSnapshot = DeleteDBSnapshotResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DeleteDBSnapshotResult"
      ( \s h x ->
          DeleteDBSnapshotResponse'
            Prelude.<$> (x Prelude..@? "DBSnapshot")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteDBSnapshot

instance Prelude.NFData DeleteDBSnapshot

instance Prelude.ToHeaders DeleteDBSnapshot where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath DeleteDBSnapshot where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DeleteDBSnapshot where
  toQuery DeleteDBSnapshot' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("DeleteDBSnapshot" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2014-10-31" :: Prelude.ByteString),
        "DBSnapshotIdentifier"
          Prelude.=: dBSnapshotIdentifier
      ]

-- | /See:/ 'newDeleteDBSnapshotResponse' smart constructor.
data DeleteDBSnapshotResponse = DeleteDBSnapshotResponse'
  { dBSnapshot :: Prelude.Maybe DBSnapshot,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DeleteDBSnapshotResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBSnapshot', 'deleteDBSnapshotResponse_dBSnapshot' - Undocumented member.
--
-- 'httpStatus', 'deleteDBSnapshotResponse_httpStatus' - The response's http status code.
newDeleteDBSnapshotResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteDBSnapshotResponse
newDeleteDBSnapshotResponse pHttpStatus_ =
  DeleteDBSnapshotResponse'
    { dBSnapshot =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
deleteDBSnapshotResponse_dBSnapshot :: Lens.Lens' DeleteDBSnapshotResponse (Prelude.Maybe DBSnapshot)
deleteDBSnapshotResponse_dBSnapshot = Lens.lens (\DeleteDBSnapshotResponse' {dBSnapshot} -> dBSnapshot) (\s@DeleteDBSnapshotResponse' {} a -> s {dBSnapshot = a} :: DeleteDBSnapshotResponse)

-- | The response's http status code.
deleteDBSnapshotResponse_httpStatus :: Lens.Lens' DeleteDBSnapshotResponse Prelude.Int
deleteDBSnapshotResponse_httpStatus = Lens.lens (\DeleteDBSnapshotResponse' {httpStatus} -> httpStatus) (\s@DeleteDBSnapshotResponse' {} a -> s {httpStatus = a} :: DeleteDBSnapshotResponse)

instance Prelude.NFData DeleteDBSnapshotResponse
