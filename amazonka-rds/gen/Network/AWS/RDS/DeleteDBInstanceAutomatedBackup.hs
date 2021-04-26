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
-- Module      : Network.AWS.RDS.DeleteDBInstanceAutomatedBackup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes automated backups using the @DbiResourceId@ value of the source
-- DB instance or the Amazon Resource Name (ARN) of the automated backups.
module Network.AWS.RDS.DeleteDBInstanceAutomatedBackup
  ( -- * Creating a Request
    DeleteDBInstanceAutomatedBackup (..),
    newDeleteDBInstanceAutomatedBackup,

    -- * Request Lenses
    deleteDBInstanceAutomatedBackup_dBInstanceAutomatedBackupsArn,
    deleteDBInstanceAutomatedBackup_dbiResourceId,

    -- * Destructuring the Response
    DeleteDBInstanceAutomatedBackupResponse (..),
    newDeleteDBInstanceAutomatedBackupResponse,

    -- * Response Lenses
    deleteDBInstanceAutomatedBackupResponse_dBInstanceAutomatedBackup,
    deleteDBInstanceAutomatedBackupResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types
import Network.AWS.RDS.Types.DBInstanceAutomatedBackup
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Parameter input for the @DeleteDBInstanceAutomatedBackup@ operation.
--
-- /See:/ 'newDeleteDBInstanceAutomatedBackup' smart constructor.
data DeleteDBInstanceAutomatedBackup = DeleteDBInstanceAutomatedBackup'
  { -- | The Amazon Resource Name (ARN) of the automated backups to delete, for
    -- example,
    -- @arn:aws:rds:us-east-1:123456789012:auto-backup:ab-L2IJCEXJP7XQ7HOJ4SIEXAMPLE@.
    dBInstanceAutomatedBackupsArn :: Prelude.Maybe Prelude.Text,
    -- | The identifier for the source DB instance, which can\'t be changed and
    -- which is unique to an AWS Region.
    dbiResourceId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DeleteDBInstanceAutomatedBackup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBInstanceAutomatedBackupsArn', 'deleteDBInstanceAutomatedBackup_dBInstanceAutomatedBackupsArn' - The Amazon Resource Name (ARN) of the automated backups to delete, for
-- example,
-- @arn:aws:rds:us-east-1:123456789012:auto-backup:ab-L2IJCEXJP7XQ7HOJ4SIEXAMPLE@.
--
-- 'dbiResourceId', 'deleteDBInstanceAutomatedBackup_dbiResourceId' - The identifier for the source DB instance, which can\'t be changed and
-- which is unique to an AWS Region.
newDeleteDBInstanceAutomatedBackup ::
  DeleteDBInstanceAutomatedBackup
newDeleteDBInstanceAutomatedBackup =
  DeleteDBInstanceAutomatedBackup'
    { dBInstanceAutomatedBackupsArn =
        Prelude.Nothing,
      dbiResourceId = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) of the automated backups to delete, for
-- example,
-- @arn:aws:rds:us-east-1:123456789012:auto-backup:ab-L2IJCEXJP7XQ7HOJ4SIEXAMPLE@.
deleteDBInstanceAutomatedBackup_dBInstanceAutomatedBackupsArn :: Lens.Lens' DeleteDBInstanceAutomatedBackup (Prelude.Maybe Prelude.Text)
deleteDBInstanceAutomatedBackup_dBInstanceAutomatedBackupsArn = Lens.lens (\DeleteDBInstanceAutomatedBackup' {dBInstanceAutomatedBackupsArn} -> dBInstanceAutomatedBackupsArn) (\s@DeleteDBInstanceAutomatedBackup' {} a -> s {dBInstanceAutomatedBackupsArn = a} :: DeleteDBInstanceAutomatedBackup)

-- | The identifier for the source DB instance, which can\'t be changed and
-- which is unique to an AWS Region.
deleteDBInstanceAutomatedBackup_dbiResourceId :: Lens.Lens' DeleteDBInstanceAutomatedBackup (Prelude.Maybe Prelude.Text)
deleteDBInstanceAutomatedBackup_dbiResourceId = Lens.lens (\DeleteDBInstanceAutomatedBackup' {dbiResourceId} -> dbiResourceId) (\s@DeleteDBInstanceAutomatedBackup' {} a -> s {dbiResourceId = a} :: DeleteDBInstanceAutomatedBackup)

instance
  Prelude.AWSRequest
    DeleteDBInstanceAutomatedBackup
  where
  type
    Rs DeleteDBInstanceAutomatedBackup =
      DeleteDBInstanceAutomatedBackupResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DeleteDBInstanceAutomatedBackupResult"
      ( \s h x ->
          DeleteDBInstanceAutomatedBackupResponse'
            Prelude.<$> (x Prelude..@? "DBInstanceAutomatedBackup")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DeleteDBInstanceAutomatedBackup

instance
  Prelude.NFData
    DeleteDBInstanceAutomatedBackup

instance
  Prelude.ToHeaders
    DeleteDBInstanceAutomatedBackup
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Prelude.ToPath
    DeleteDBInstanceAutomatedBackup
  where
  toPath = Prelude.const "/"

instance
  Prelude.ToQuery
    DeleteDBInstanceAutomatedBackup
  where
  toQuery DeleteDBInstanceAutomatedBackup' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ( "DeleteDBInstanceAutomatedBackup" ::
                         Prelude.ByteString
                     ),
        "Version"
          Prelude.=: ("2014-10-31" :: Prelude.ByteString),
        "DBInstanceAutomatedBackupsArn"
          Prelude.=: dBInstanceAutomatedBackupsArn,
        "DbiResourceId" Prelude.=: dbiResourceId
      ]

-- | /See:/ 'newDeleteDBInstanceAutomatedBackupResponse' smart constructor.
data DeleteDBInstanceAutomatedBackupResponse = DeleteDBInstanceAutomatedBackupResponse'
  { dBInstanceAutomatedBackup :: Prelude.Maybe DBInstanceAutomatedBackup,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DeleteDBInstanceAutomatedBackupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBInstanceAutomatedBackup', 'deleteDBInstanceAutomatedBackupResponse_dBInstanceAutomatedBackup' - Undocumented member.
--
-- 'httpStatus', 'deleteDBInstanceAutomatedBackupResponse_httpStatus' - The response's http status code.
newDeleteDBInstanceAutomatedBackupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteDBInstanceAutomatedBackupResponse
newDeleteDBInstanceAutomatedBackupResponse
  pHttpStatus_ =
    DeleteDBInstanceAutomatedBackupResponse'
      { dBInstanceAutomatedBackup =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | Undocumented member.
deleteDBInstanceAutomatedBackupResponse_dBInstanceAutomatedBackup :: Lens.Lens' DeleteDBInstanceAutomatedBackupResponse (Prelude.Maybe DBInstanceAutomatedBackup)
deleteDBInstanceAutomatedBackupResponse_dBInstanceAutomatedBackup = Lens.lens (\DeleteDBInstanceAutomatedBackupResponse' {dBInstanceAutomatedBackup} -> dBInstanceAutomatedBackup) (\s@DeleteDBInstanceAutomatedBackupResponse' {} a -> s {dBInstanceAutomatedBackup = a} :: DeleteDBInstanceAutomatedBackupResponse)

-- | The response's http status code.
deleteDBInstanceAutomatedBackupResponse_httpStatus :: Lens.Lens' DeleteDBInstanceAutomatedBackupResponse Prelude.Int
deleteDBInstanceAutomatedBackupResponse_httpStatus = Lens.lens (\DeleteDBInstanceAutomatedBackupResponse' {httpStatus} -> httpStatus) (\s@DeleteDBInstanceAutomatedBackupResponse' {} a -> s {httpStatus = a} :: DeleteDBInstanceAutomatedBackupResponse)

instance
  Prelude.NFData
    DeleteDBInstanceAutomatedBackupResponse
