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
-- Module      : Network.AWS.WorkSpaces.MigrateWorkspace
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Migrates a WorkSpace from one operating system or bundle type to
-- another, while retaining the data on the user volume.
--
-- The migration process recreates the WorkSpace by using a new root volume
-- from the target bundle image and the user volume from the last available
-- snapshot of the original WorkSpace. During migration, the original
-- @D:\\Users\\%USERNAME%@ user profile folder is renamed to
-- @D:\\Users\\%USERNAME%MMddyyTHHmmss%.NotMigrated@. A new
-- @D:\\Users\\%USERNAME%\\@ folder is generated by the new OS. Certain
-- files in the old user profile are moved to the new user profile.
--
-- For available migration scenarios, details about what happens during
-- migration, and best practices, see
-- <https://docs.aws.amazon.com/workspaces/latest/adminguide/migrate-workspaces.html Migrate a WorkSpace>.
module Network.AWS.WorkSpaces.MigrateWorkspace
  ( -- * Creating a Request
    MigrateWorkspace (..),
    newMigrateWorkspace,

    -- * Request Lenses
    migrateWorkspace_sourceWorkspaceId,
    migrateWorkspace_bundleId,

    -- * Destructuring the Response
    MigrateWorkspaceResponse (..),
    newMigrateWorkspaceResponse,

    -- * Response Lenses
    migrateWorkspaceResponse_targetWorkspaceId,
    migrateWorkspaceResponse_sourceWorkspaceId,
    migrateWorkspaceResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WorkSpaces.Types

-- | /See:/ 'newMigrateWorkspace' smart constructor.
data MigrateWorkspace = MigrateWorkspace'
  { -- | The identifier of the WorkSpace to migrate from.
    sourceWorkspaceId :: Prelude.Text,
    -- | The identifier of the target bundle type to migrate the WorkSpace to.
    bundleId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'MigrateWorkspace' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sourceWorkspaceId', 'migrateWorkspace_sourceWorkspaceId' - The identifier of the WorkSpace to migrate from.
--
-- 'bundleId', 'migrateWorkspace_bundleId' - The identifier of the target bundle type to migrate the WorkSpace to.
newMigrateWorkspace ::
  -- | 'sourceWorkspaceId'
  Prelude.Text ->
  -- | 'bundleId'
  Prelude.Text ->
  MigrateWorkspace
newMigrateWorkspace pSourceWorkspaceId_ pBundleId_ =
  MigrateWorkspace'
    { sourceWorkspaceId =
        pSourceWorkspaceId_,
      bundleId = pBundleId_
    }

-- | The identifier of the WorkSpace to migrate from.
migrateWorkspace_sourceWorkspaceId :: Lens.Lens' MigrateWorkspace Prelude.Text
migrateWorkspace_sourceWorkspaceId = Lens.lens (\MigrateWorkspace' {sourceWorkspaceId} -> sourceWorkspaceId) (\s@MigrateWorkspace' {} a -> s {sourceWorkspaceId = a} :: MigrateWorkspace)

-- | The identifier of the target bundle type to migrate the WorkSpace to.
migrateWorkspace_bundleId :: Lens.Lens' MigrateWorkspace Prelude.Text
migrateWorkspace_bundleId = Lens.lens (\MigrateWorkspace' {bundleId} -> bundleId) (\s@MigrateWorkspace' {} a -> s {bundleId = a} :: MigrateWorkspace)

instance Prelude.AWSRequest MigrateWorkspace where
  type Rs MigrateWorkspace = MigrateWorkspaceResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          MigrateWorkspaceResponse'
            Prelude.<$> (x Prelude..?> "TargetWorkspaceId")
            Prelude.<*> (x Prelude..?> "SourceWorkspaceId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable MigrateWorkspace

instance Prelude.NFData MigrateWorkspace

instance Prelude.ToHeaders MigrateWorkspace where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "WorkspacesService.MigrateWorkspace" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON MigrateWorkspace where
  toJSON MigrateWorkspace' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("SourceWorkspaceId" Prelude..= sourceWorkspaceId),
            Prelude.Just ("BundleId" Prelude..= bundleId)
          ]
      )

instance Prelude.ToPath MigrateWorkspace where
  toPath = Prelude.const "/"

instance Prelude.ToQuery MigrateWorkspace where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newMigrateWorkspaceResponse' smart constructor.
data MigrateWorkspaceResponse = MigrateWorkspaceResponse'
  { -- | The new identifier of the WorkSpace that is being migrated. If the
    -- migration does not succeed, the target WorkSpace ID will not be used,
    -- and the WorkSpace will still have the original WorkSpace ID.
    targetWorkspaceId :: Prelude.Maybe Prelude.Text,
    -- | The original identifier of the WorkSpace that is being migrated.
    sourceWorkspaceId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'MigrateWorkspaceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'targetWorkspaceId', 'migrateWorkspaceResponse_targetWorkspaceId' - The new identifier of the WorkSpace that is being migrated. If the
-- migration does not succeed, the target WorkSpace ID will not be used,
-- and the WorkSpace will still have the original WorkSpace ID.
--
-- 'sourceWorkspaceId', 'migrateWorkspaceResponse_sourceWorkspaceId' - The original identifier of the WorkSpace that is being migrated.
--
-- 'httpStatus', 'migrateWorkspaceResponse_httpStatus' - The response's http status code.
newMigrateWorkspaceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  MigrateWorkspaceResponse
newMigrateWorkspaceResponse pHttpStatus_ =
  MigrateWorkspaceResponse'
    { targetWorkspaceId =
        Prelude.Nothing,
      sourceWorkspaceId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The new identifier of the WorkSpace that is being migrated. If the
-- migration does not succeed, the target WorkSpace ID will not be used,
-- and the WorkSpace will still have the original WorkSpace ID.
migrateWorkspaceResponse_targetWorkspaceId :: Lens.Lens' MigrateWorkspaceResponse (Prelude.Maybe Prelude.Text)
migrateWorkspaceResponse_targetWorkspaceId = Lens.lens (\MigrateWorkspaceResponse' {targetWorkspaceId} -> targetWorkspaceId) (\s@MigrateWorkspaceResponse' {} a -> s {targetWorkspaceId = a} :: MigrateWorkspaceResponse)

-- | The original identifier of the WorkSpace that is being migrated.
migrateWorkspaceResponse_sourceWorkspaceId :: Lens.Lens' MigrateWorkspaceResponse (Prelude.Maybe Prelude.Text)
migrateWorkspaceResponse_sourceWorkspaceId = Lens.lens (\MigrateWorkspaceResponse' {sourceWorkspaceId} -> sourceWorkspaceId) (\s@MigrateWorkspaceResponse' {} a -> s {sourceWorkspaceId = a} :: MigrateWorkspaceResponse)

-- | The response's http status code.
migrateWorkspaceResponse_httpStatus :: Lens.Lens' MigrateWorkspaceResponse Prelude.Int
migrateWorkspaceResponse_httpStatus = Lens.lens (\MigrateWorkspaceResponse' {httpStatus} -> httpStatus) (\s@MigrateWorkspaceResponse' {} a -> s {httpStatus = a} :: MigrateWorkspaceResponse)

instance Prelude.NFData MigrateWorkspaceResponse
