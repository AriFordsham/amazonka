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
-- Module      : Network.AWS.RDS.AddRoleToDBCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates an Identity and Access Management (IAM) role from an Amazon
-- Aurora DB cluster. For more information, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/AuroraMySQL.Integrating.Authorizing.html Authorizing Amazon Aurora MySQL to Access Other AWS Services on Your Behalf>
-- in the /Amazon Aurora User Guide/.
--
-- This action only applies to Aurora DB clusters.
module Network.AWS.RDS.AddRoleToDBCluster
  ( -- * Creating a Request
    AddRoleToDBCluster (..),
    newAddRoleToDBCluster,

    -- * Request Lenses
    addRoleToDBCluster_featureName,
    addRoleToDBCluster_dBClusterIdentifier,
    addRoleToDBCluster_roleArn,

    -- * Destructuring the Response
    AddRoleToDBClusterResponse (..),
    newAddRoleToDBClusterResponse,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newAddRoleToDBCluster' smart constructor.
data AddRoleToDBCluster = AddRoleToDBCluster'
  { -- | The name of the feature for the DB cluster that the IAM role is to be
    -- associated with. For the list of supported feature names, see
    -- DBEngineVersion.
    featureName :: Prelude.Maybe Prelude.Text,
    -- | The name of the DB cluster to associate the IAM role with.
    dBClusterIdentifier :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the IAM role to associate with the
    -- Aurora DB cluster, for example,
    -- @arn:aws:iam::123456789012:role\/AuroraAccessRole@.
    roleArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AddRoleToDBCluster' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'featureName', 'addRoleToDBCluster_featureName' - The name of the feature for the DB cluster that the IAM role is to be
-- associated with. For the list of supported feature names, see
-- DBEngineVersion.
--
-- 'dBClusterIdentifier', 'addRoleToDBCluster_dBClusterIdentifier' - The name of the DB cluster to associate the IAM role with.
--
-- 'roleArn', 'addRoleToDBCluster_roleArn' - The Amazon Resource Name (ARN) of the IAM role to associate with the
-- Aurora DB cluster, for example,
-- @arn:aws:iam::123456789012:role\/AuroraAccessRole@.
newAddRoleToDBCluster ::
  -- | 'dBClusterIdentifier'
  Prelude.Text ->
  -- | 'roleArn'
  Prelude.Text ->
  AddRoleToDBCluster
newAddRoleToDBCluster pDBClusterIdentifier_ pRoleArn_ =
  AddRoleToDBCluster'
    { featureName = Prelude.Nothing,
      dBClusterIdentifier = pDBClusterIdentifier_,
      roleArn = pRoleArn_
    }

-- | The name of the feature for the DB cluster that the IAM role is to be
-- associated with. For the list of supported feature names, see
-- DBEngineVersion.
addRoleToDBCluster_featureName :: Lens.Lens' AddRoleToDBCluster (Prelude.Maybe Prelude.Text)
addRoleToDBCluster_featureName = Lens.lens (\AddRoleToDBCluster' {featureName} -> featureName) (\s@AddRoleToDBCluster' {} a -> s {featureName = a} :: AddRoleToDBCluster)

-- | The name of the DB cluster to associate the IAM role with.
addRoleToDBCluster_dBClusterIdentifier :: Lens.Lens' AddRoleToDBCluster Prelude.Text
addRoleToDBCluster_dBClusterIdentifier = Lens.lens (\AddRoleToDBCluster' {dBClusterIdentifier} -> dBClusterIdentifier) (\s@AddRoleToDBCluster' {} a -> s {dBClusterIdentifier = a} :: AddRoleToDBCluster)

-- | The Amazon Resource Name (ARN) of the IAM role to associate with the
-- Aurora DB cluster, for example,
-- @arn:aws:iam::123456789012:role\/AuroraAccessRole@.
addRoleToDBCluster_roleArn :: Lens.Lens' AddRoleToDBCluster Prelude.Text
addRoleToDBCluster_roleArn = Lens.lens (\AddRoleToDBCluster' {roleArn} -> roleArn) (\s@AddRoleToDBCluster' {} a -> s {roleArn = a} :: AddRoleToDBCluster)

instance Prelude.AWSRequest AddRoleToDBCluster where
  type
    Rs AddRoleToDBCluster =
      AddRoleToDBClusterResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveNull AddRoleToDBClusterResponse'

instance Prelude.Hashable AddRoleToDBCluster

instance Prelude.NFData AddRoleToDBCluster

instance Prelude.ToHeaders AddRoleToDBCluster where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath AddRoleToDBCluster where
  toPath = Prelude.const "/"

instance Prelude.ToQuery AddRoleToDBCluster where
  toQuery AddRoleToDBCluster' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("AddRoleToDBCluster" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2014-10-31" :: Prelude.ByteString),
        "FeatureName" Prelude.=: featureName,
        "DBClusterIdentifier" Prelude.=: dBClusterIdentifier,
        "RoleArn" Prelude.=: roleArn
      ]

-- | /See:/ 'newAddRoleToDBClusterResponse' smart constructor.
data AddRoleToDBClusterResponse = AddRoleToDBClusterResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AddRoleToDBClusterResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newAddRoleToDBClusterResponse ::
  AddRoleToDBClusterResponse
newAddRoleToDBClusterResponse =
  AddRoleToDBClusterResponse'

instance Prelude.NFData AddRoleToDBClusterResponse
