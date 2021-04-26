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
-- Module      : Network.AWS.RDS.CreateDBClusterParameterGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new DB cluster parameter group.
--
-- Parameters in a DB cluster parameter group apply to all of the instances
-- in a DB cluster.
--
-- A DB cluster parameter group is initially created with the default
-- parameters for the database engine used by instances in the DB cluster.
-- To provide custom values for any of the parameters, you must modify the
-- group after creating it using @ModifyDBClusterParameterGroup@. Once
-- you\'ve created a DB cluster parameter group, you need to associate it
-- with your DB cluster using @ModifyDBCluster@. When you associate a new
-- DB cluster parameter group with a running DB cluster, you need to reboot
-- the DB instances in the DB cluster without failover for the new DB
-- cluster parameter group and associated settings to take effect.
--
-- After you create a DB cluster parameter group, you should wait at least
-- 5 minutes before creating your first DB cluster that uses that DB
-- cluster parameter group as the default parameter group. This allows
-- Amazon RDS to fully complete the create action before the DB cluster
-- parameter group is used as the default for a new DB cluster. This is
-- especially important for parameters that are critical when creating the
-- default database for a DB cluster, such as the character set for the
-- default database defined by the @character_set_database@ parameter. You
-- can use the /Parameter Groups/ option of the
-- <https://console.aws.amazon.com/rds/ Amazon RDS console> or the
-- @DescribeDBClusterParameters@ action to verify that your DB cluster
-- parameter group has been created or modified.
--
-- For more information on Amazon Aurora, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html What Is Amazon Aurora?>
-- in the /Amazon Aurora User Guide./
--
-- This action only applies to Aurora DB clusters.
module Network.AWS.RDS.CreateDBClusterParameterGroup
  ( -- * Creating a Request
    CreateDBClusterParameterGroup (..),
    newCreateDBClusterParameterGroup,

    -- * Request Lenses
    createDBClusterParameterGroup_tags,
    createDBClusterParameterGroup_dBClusterParameterGroupName,
    createDBClusterParameterGroup_dBParameterGroupFamily,
    createDBClusterParameterGroup_description,

    -- * Destructuring the Response
    CreateDBClusterParameterGroupResponse (..),
    newCreateDBClusterParameterGroupResponse,

    -- * Response Lenses
    createDBClusterParameterGroupResponse_dBClusterParameterGroup,
    createDBClusterParameterGroupResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types
import Network.AWS.RDS.Types.DBClusterParameterGroup
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newCreateDBClusterParameterGroup' smart constructor.
data CreateDBClusterParameterGroup = CreateDBClusterParameterGroup'
  { -- | Tags to assign to the DB cluster parameter group.
    tags :: Prelude.Maybe [Tag],
    -- | The name of the DB cluster parameter group.
    --
    -- Constraints:
    --
    -- -   Must match the name of an existing DB cluster parameter group.
    --
    -- This value is stored as a lowercase string.
    dBClusterParameterGroupName :: Prelude.Text,
    -- | The DB cluster parameter group family name. A DB cluster parameter group
    -- can be associated with one and only one DB cluster parameter group
    -- family, and can be applied only to a DB cluster running a database
    -- engine and engine version compatible with that DB cluster parameter
    -- group family.
    --
    -- __Aurora MySQL__
    --
    -- Example: @aurora5.6@, @aurora-mysql5.7@
    --
    -- __Aurora PostgreSQL__
    --
    -- Example: @aurora-postgresql9.6@
    dBParameterGroupFamily :: Prelude.Text,
    -- | The description for the DB cluster parameter group.
    description :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateDBClusterParameterGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createDBClusterParameterGroup_tags' - Tags to assign to the DB cluster parameter group.
--
-- 'dBClusterParameterGroupName', 'createDBClusterParameterGroup_dBClusterParameterGroupName' - The name of the DB cluster parameter group.
--
-- Constraints:
--
-- -   Must match the name of an existing DB cluster parameter group.
--
-- This value is stored as a lowercase string.
--
-- 'dBParameterGroupFamily', 'createDBClusterParameterGroup_dBParameterGroupFamily' - The DB cluster parameter group family name. A DB cluster parameter group
-- can be associated with one and only one DB cluster parameter group
-- family, and can be applied only to a DB cluster running a database
-- engine and engine version compatible with that DB cluster parameter
-- group family.
--
-- __Aurora MySQL__
--
-- Example: @aurora5.6@, @aurora-mysql5.7@
--
-- __Aurora PostgreSQL__
--
-- Example: @aurora-postgresql9.6@
--
-- 'description', 'createDBClusterParameterGroup_description' - The description for the DB cluster parameter group.
newCreateDBClusterParameterGroup ::
  -- | 'dBClusterParameterGroupName'
  Prelude.Text ->
  -- | 'dBParameterGroupFamily'
  Prelude.Text ->
  -- | 'description'
  Prelude.Text ->
  CreateDBClusterParameterGroup
newCreateDBClusterParameterGroup
  pDBClusterParameterGroupName_
  pDBParameterGroupFamily_
  pDescription_ =
    CreateDBClusterParameterGroup'
      { tags =
          Prelude.Nothing,
        dBClusterParameterGroupName =
          pDBClusterParameterGroupName_,
        dBParameterGroupFamily =
          pDBParameterGroupFamily_,
        description = pDescription_
      }

-- | Tags to assign to the DB cluster parameter group.
createDBClusterParameterGroup_tags :: Lens.Lens' CreateDBClusterParameterGroup (Prelude.Maybe [Tag])
createDBClusterParameterGroup_tags = Lens.lens (\CreateDBClusterParameterGroup' {tags} -> tags) (\s@CreateDBClusterParameterGroup' {} a -> s {tags = a} :: CreateDBClusterParameterGroup) Prelude.. Lens.mapping Prelude._Coerce

-- | The name of the DB cluster parameter group.
--
-- Constraints:
--
-- -   Must match the name of an existing DB cluster parameter group.
--
-- This value is stored as a lowercase string.
createDBClusterParameterGroup_dBClusterParameterGroupName :: Lens.Lens' CreateDBClusterParameterGroup Prelude.Text
createDBClusterParameterGroup_dBClusterParameterGroupName = Lens.lens (\CreateDBClusterParameterGroup' {dBClusterParameterGroupName} -> dBClusterParameterGroupName) (\s@CreateDBClusterParameterGroup' {} a -> s {dBClusterParameterGroupName = a} :: CreateDBClusterParameterGroup)

-- | The DB cluster parameter group family name. A DB cluster parameter group
-- can be associated with one and only one DB cluster parameter group
-- family, and can be applied only to a DB cluster running a database
-- engine and engine version compatible with that DB cluster parameter
-- group family.
--
-- __Aurora MySQL__
--
-- Example: @aurora5.6@, @aurora-mysql5.7@
--
-- __Aurora PostgreSQL__
--
-- Example: @aurora-postgresql9.6@
createDBClusterParameterGroup_dBParameterGroupFamily :: Lens.Lens' CreateDBClusterParameterGroup Prelude.Text
createDBClusterParameterGroup_dBParameterGroupFamily = Lens.lens (\CreateDBClusterParameterGroup' {dBParameterGroupFamily} -> dBParameterGroupFamily) (\s@CreateDBClusterParameterGroup' {} a -> s {dBParameterGroupFamily = a} :: CreateDBClusterParameterGroup)

-- | The description for the DB cluster parameter group.
createDBClusterParameterGroup_description :: Lens.Lens' CreateDBClusterParameterGroup Prelude.Text
createDBClusterParameterGroup_description = Lens.lens (\CreateDBClusterParameterGroup' {description} -> description) (\s@CreateDBClusterParameterGroup' {} a -> s {description = a} :: CreateDBClusterParameterGroup)

instance
  Prelude.AWSRequest
    CreateDBClusterParameterGroup
  where
  type
    Rs CreateDBClusterParameterGroup =
      CreateDBClusterParameterGroupResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "CreateDBClusterParameterGroupResult"
      ( \s h x ->
          CreateDBClusterParameterGroupResponse'
            Prelude.<$> (x Prelude..@? "DBClusterParameterGroup")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    CreateDBClusterParameterGroup

instance Prelude.NFData CreateDBClusterParameterGroup

instance
  Prelude.ToHeaders
    CreateDBClusterParameterGroup
  where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath CreateDBClusterParameterGroup where
  toPath = Prelude.const "/"

instance
  Prelude.ToQuery
    CreateDBClusterParameterGroup
  where
  toQuery CreateDBClusterParameterGroup' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ( "CreateDBClusterParameterGroup" ::
                         Prelude.ByteString
                     ),
        "Version"
          Prelude.=: ("2014-10-31" :: Prelude.ByteString),
        "Tags"
          Prelude.=: Prelude.toQuery
            (Prelude.toQueryList "Tag" Prelude.<$> tags),
        "DBClusterParameterGroupName"
          Prelude.=: dBClusterParameterGroupName,
        "DBParameterGroupFamily"
          Prelude.=: dBParameterGroupFamily,
        "Description" Prelude.=: description
      ]

-- | /See:/ 'newCreateDBClusterParameterGroupResponse' smart constructor.
data CreateDBClusterParameterGroupResponse = CreateDBClusterParameterGroupResponse'
  { dBClusterParameterGroup :: Prelude.Maybe DBClusterParameterGroup,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateDBClusterParameterGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBClusterParameterGroup', 'createDBClusterParameterGroupResponse_dBClusterParameterGroup' - Undocumented member.
--
-- 'httpStatus', 'createDBClusterParameterGroupResponse_httpStatus' - The response's http status code.
newCreateDBClusterParameterGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateDBClusterParameterGroupResponse
newCreateDBClusterParameterGroupResponse pHttpStatus_ =
  CreateDBClusterParameterGroupResponse'
    { dBClusterParameterGroup =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
createDBClusterParameterGroupResponse_dBClusterParameterGroup :: Lens.Lens' CreateDBClusterParameterGroupResponse (Prelude.Maybe DBClusterParameterGroup)
createDBClusterParameterGroupResponse_dBClusterParameterGroup = Lens.lens (\CreateDBClusterParameterGroupResponse' {dBClusterParameterGroup} -> dBClusterParameterGroup) (\s@CreateDBClusterParameterGroupResponse' {} a -> s {dBClusterParameterGroup = a} :: CreateDBClusterParameterGroupResponse)

-- | The response's http status code.
createDBClusterParameterGroupResponse_httpStatus :: Lens.Lens' CreateDBClusterParameterGroupResponse Prelude.Int
createDBClusterParameterGroupResponse_httpStatus = Lens.lens (\CreateDBClusterParameterGroupResponse' {httpStatus} -> httpStatus) (\s@CreateDBClusterParameterGroupResponse' {} a -> s {httpStatus = a} :: CreateDBClusterParameterGroupResponse)

instance
  Prelude.NFData
    CreateDBClusterParameterGroupResponse
