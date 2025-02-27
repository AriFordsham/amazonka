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
-- Module      : Network.AWS.ElastiCache.CompleteMigration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Complete the migration of data.
module Network.AWS.ElastiCache.CompleteMigration
  ( -- * Creating a Request
    CompleteMigration (..),
    newCompleteMigration,

    -- * Request Lenses
    completeMigration_force,
    completeMigration_replicationGroupId,

    -- * Destructuring the Response
    CompleteMigrationResponse (..),
    newCompleteMigrationResponse,

    -- * Response Lenses
    completeMigrationResponse_replicationGroup,
    completeMigrationResponse_httpStatus,
  )
where

import Network.AWS.ElastiCache.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCompleteMigration' smart constructor.
data CompleteMigration = CompleteMigration'
  { -- | Forces the migration to stop without ensuring that data is in sync. It
    -- is recommended to use this option only to abort the migration and not
    -- recommended when application wants to continue migration to ElastiCache.
    force :: Prelude.Maybe Prelude.Bool,
    -- | The ID of the replication group to which data is being migrated.
    replicationGroupId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CompleteMigration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'force', 'completeMigration_force' - Forces the migration to stop without ensuring that data is in sync. It
-- is recommended to use this option only to abort the migration and not
-- recommended when application wants to continue migration to ElastiCache.
--
-- 'replicationGroupId', 'completeMigration_replicationGroupId' - The ID of the replication group to which data is being migrated.
newCompleteMigration ::
  -- | 'replicationGroupId'
  Prelude.Text ->
  CompleteMigration
newCompleteMigration pReplicationGroupId_ =
  CompleteMigration'
    { force = Prelude.Nothing,
      replicationGroupId = pReplicationGroupId_
    }

-- | Forces the migration to stop without ensuring that data is in sync. It
-- is recommended to use this option only to abort the migration and not
-- recommended when application wants to continue migration to ElastiCache.
completeMigration_force :: Lens.Lens' CompleteMigration (Prelude.Maybe Prelude.Bool)
completeMigration_force = Lens.lens (\CompleteMigration' {force} -> force) (\s@CompleteMigration' {} a -> s {force = a} :: CompleteMigration)

-- | The ID of the replication group to which data is being migrated.
completeMigration_replicationGroupId :: Lens.Lens' CompleteMigration Prelude.Text
completeMigration_replicationGroupId = Lens.lens (\CompleteMigration' {replicationGroupId} -> replicationGroupId) (\s@CompleteMigration' {} a -> s {replicationGroupId = a} :: CompleteMigration)

instance Prelude.AWSRequest CompleteMigration where
  type Rs CompleteMigration = CompleteMigrationResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "CompleteMigrationResult"
      ( \s h x ->
          CompleteMigrationResponse'
            Prelude.<$> (x Prelude..@? "ReplicationGroup")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CompleteMigration

instance Prelude.NFData CompleteMigration

instance Prelude.ToHeaders CompleteMigration where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath CompleteMigration where
  toPath = Prelude.const "/"

instance Prelude.ToQuery CompleteMigration where
  toQuery CompleteMigration' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("CompleteMigration" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2015-02-02" :: Prelude.ByteString),
        "Force" Prelude.=: force,
        "ReplicationGroupId" Prelude.=: replicationGroupId
      ]

-- | /See:/ 'newCompleteMigrationResponse' smart constructor.
data CompleteMigrationResponse = CompleteMigrationResponse'
  { replicationGroup :: Prelude.Maybe ReplicationGroup,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CompleteMigrationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'replicationGroup', 'completeMigrationResponse_replicationGroup' - Undocumented member.
--
-- 'httpStatus', 'completeMigrationResponse_httpStatus' - The response's http status code.
newCompleteMigrationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CompleteMigrationResponse
newCompleteMigrationResponse pHttpStatus_ =
  CompleteMigrationResponse'
    { replicationGroup =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
completeMigrationResponse_replicationGroup :: Lens.Lens' CompleteMigrationResponse (Prelude.Maybe ReplicationGroup)
completeMigrationResponse_replicationGroup = Lens.lens (\CompleteMigrationResponse' {replicationGroup} -> replicationGroup) (\s@CompleteMigrationResponse' {} a -> s {replicationGroup = a} :: CompleteMigrationResponse)

-- | The response's http status code.
completeMigrationResponse_httpStatus :: Lens.Lens' CompleteMigrationResponse Prelude.Int
completeMigrationResponse_httpStatus = Lens.lens (\CompleteMigrationResponse' {httpStatus} -> httpStatus) (\s@CompleteMigrationResponse' {} a -> s {httpStatus = a} :: CompleteMigrationResponse)

instance Prelude.NFData CompleteMigrationResponse
