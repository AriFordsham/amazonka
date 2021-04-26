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
-- Module      : Network.AWS.RDS.CreateDBClusterSnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a snapshot of a DB cluster. For more information on Amazon
-- Aurora, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html What Is Amazon Aurora?>
-- in the /Amazon Aurora User Guide./
--
-- This action only applies to Aurora DB clusters.
module Network.AWS.RDS.CreateDBClusterSnapshot
  ( -- * Creating a Request
    CreateDBClusterSnapshot (..),
    newCreateDBClusterSnapshot,

    -- * Request Lenses
    createDBClusterSnapshot_tags,
    createDBClusterSnapshot_dBClusterSnapshotIdentifier,
    createDBClusterSnapshot_dBClusterIdentifier,

    -- * Destructuring the Response
    CreateDBClusterSnapshotResponse (..),
    newCreateDBClusterSnapshotResponse,

    -- * Response Lenses
    createDBClusterSnapshotResponse_dBClusterSnapshot,
    createDBClusterSnapshotResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types
import Network.AWS.RDS.Types.DBClusterSnapshot
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newCreateDBClusterSnapshot' smart constructor.
data CreateDBClusterSnapshot = CreateDBClusterSnapshot'
  { -- | The tags to be assigned to the DB cluster snapshot.
    tags :: Prelude.Maybe [Tag],
    -- | The identifier of the DB cluster snapshot. This parameter is stored as a
    -- lowercase string.
    --
    -- Constraints:
    --
    -- -   Must contain from 1 to 63 letters, numbers, or hyphens.
    --
    -- -   First character must be a letter.
    --
    -- -   Can\'t end with a hyphen or contain two consecutive hyphens.
    --
    -- Example: @my-cluster1-snapshot1@
    dBClusterSnapshotIdentifier :: Prelude.Text,
    -- | The identifier of the DB cluster to create a snapshot for. This
    -- parameter isn\'t case-sensitive.
    --
    -- Constraints:
    --
    -- -   Must match the identifier of an existing DBCluster.
    --
    -- Example: @my-cluster1@
    dBClusterIdentifier :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateDBClusterSnapshot' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createDBClusterSnapshot_tags' - The tags to be assigned to the DB cluster snapshot.
--
-- 'dBClusterSnapshotIdentifier', 'createDBClusterSnapshot_dBClusterSnapshotIdentifier' - The identifier of the DB cluster snapshot. This parameter is stored as a
-- lowercase string.
--
-- Constraints:
--
-- -   Must contain from 1 to 63 letters, numbers, or hyphens.
--
-- -   First character must be a letter.
--
-- -   Can\'t end with a hyphen or contain two consecutive hyphens.
--
-- Example: @my-cluster1-snapshot1@
--
-- 'dBClusterIdentifier', 'createDBClusterSnapshot_dBClusterIdentifier' - The identifier of the DB cluster to create a snapshot for. This
-- parameter isn\'t case-sensitive.
--
-- Constraints:
--
-- -   Must match the identifier of an existing DBCluster.
--
-- Example: @my-cluster1@
newCreateDBClusterSnapshot ::
  -- | 'dBClusterSnapshotIdentifier'
  Prelude.Text ->
  -- | 'dBClusterIdentifier'
  Prelude.Text ->
  CreateDBClusterSnapshot
newCreateDBClusterSnapshot
  pDBClusterSnapshotIdentifier_
  pDBClusterIdentifier_ =
    CreateDBClusterSnapshot'
      { tags = Prelude.Nothing,
        dBClusterSnapshotIdentifier =
          pDBClusterSnapshotIdentifier_,
        dBClusterIdentifier = pDBClusterIdentifier_
      }

-- | The tags to be assigned to the DB cluster snapshot.
createDBClusterSnapshot_tags :: Lens.Lens' CreateDBClusterSnapshot (Prelude.Maybe [Tag])
createDBClusterSnapshot_tags = Lens.lens (\CreateDBClusterSnapshot' {tags} -> tags) (\s@CreateDBClusterSnapshot' {} a -> s {tags = a} :: CreateDBClusterSnapshot) Prelude.. Lens.mapping Prelude._Coerce

-- | The identifier of the DB cluster snapshot. This parameter is stored as a
-- lowercase string.
--
-- Constraints:
--
-- -   Must contain from 1 to 63 letters, numbers, or hyphens.
--
-- -   First character must be a letter.
--
-- -   Can\'t end with a hyphen or contain two consecutive hyphens.
--
-- Example: @my-cluster1-snapshot1@
createDBClusterSnapshot_dBClusterSnapshotIdentifier :: Lens.Lens' CreateDBClusterSnapshot Prelude.Text
createDBClusterSnapshot_dBClusterSnapshotIdentifier = Lens.lens (\CreateDBClusterSnapshot' {dBClusterSnapshotIdentifier} -> dBClusterSnapshotIdentifier) (\s@CreateDBClusterSnapshot' {} a -> s {dBClusterSnapshotIdentifier = a} :: CreateDBClusterSnapshot)

-- | The identifier of the DB cluster to create a snapshot for. This
-- parameter isn\'t case-sensitive.
--
-- Constraints:
--
-- -   Must match the identifier of an existing DBCluster.
--
-- Example: @my-cluster1@
createDBClusterSnapshot_dBClusterIdentifier :: Lens.Lens' CreateDBClusterSnapshot Prelude.Text
createDBClusterSnapshot_dBClusterIdentifier = Lens.lens (\CreateDBClusterSnapshot' {dBClusterIdentifier} -> dBClusterIdentifier) (\s@CreateDBClusterSnapshot' {} a -> s {dBClusterIdentifier = a} :: CreateDBClusterSnapshot)

instance Prelude.AWSRequest CreateDBClusterSnapshot where
  type
    Rs CreateDBClusterSnapshot =
      CreateDBClusterSnapshotResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "CreateDBClusterSnapshotResult"
      ( \s h x ->
          CreateDBClusterSnapshotResponse'
            Prelude.<$> (x Prelude..@? "DBClusterSnapshot")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateDBClusterSnapshot

instance Prelude.NFData CreateDBClusterSnapshot

instance Prelude.ToHeaders CreateDBClusterSnapshot where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath CreateDBClusterSnapshot where
  toPath = Prelude.const "/"

instance Prelude.ToQuery CreateDBClusterSnapshot where
  toQuery CreateDBClusterSnapshot' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("CreateDBClusterSnapshot" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2014-10-31" :: Prelude.ByteString),
        "Tags"
          Prelude.=: Prelude.toQuery
            (Prelude.toQueryList "Tag" Prelude.<$> tags),
        "DBClusterSnapshotIdentifier"
          Prelude.=: dBClusterSnapshotIdentifier,
        "DBClusterIdentifier" Prelude.=: dBClusterIdentifier
      ]

-- | /See:/ 'newCreateDBClusterSnapshotResponse' smart constructor.
data CreateDBClusterSnapshotResponse = CreateDBClusterSnapshotResponse'
  { dBClusterSnapshot :: Prelude.Maybe DBClusterSnapshot,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateDBClusterSnapshotResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBClusterSnapshot', 'createDBClusterSnapshotResponse_dBClusterSnapshot' - Undocumented member.
--
-- 'httpStatus', 'createDBClusterSnapshotResponse_httpStatus' - The response's http status code.
newCreateDBClusterSnapshotResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateDBClusterSnapshotResponse
newCreateDBClusterSnapshotResponse pHttpStatus_ =
  CreateDBClusterSnapshotResponse'
    { dBClusterSnapshot =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
createDBClusterSnapshotResponse_dBClusterSnapshot :: Lens.Lens' CreateDBClusterSnapshotResponse (Prelude.Maybe DBClusterSnapshot)
createDBClusterSnapshotResponse_dBClusterSnapshot = Lens.lens (\CreateDBClusterSnapshotResponse' {dBClusterSnapshot} -> dBClusterSnapshot) (\s@CreateDBClusterSnapshotResponse' {} a -> s {dBClusterSnapshot = a} :: CreateDBClusterSnapshotResponse)

-- | The response's http status code.
createDBClusterSnapshotResponse_httpStatus :: Lens.Lens' CreateDBClusterSnapshotResponse Prelude.Int
createDBClusterSnapshotResponse_httpStatus = Lens.lens (\CreateDBClusterSnapshotResponse' {httpStatus} -> httpStatus) (\s@CreateDBClusterSnapshotResponse' {} a -> s {httpStatus = a} :: CreateDBClusterSnapshotResponse)

instance
  Prelude.NFData
    CreateDBClusterSnapshotResponse
