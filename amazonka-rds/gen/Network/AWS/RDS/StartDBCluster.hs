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
-- Module      : Network.AWS.RDS.StartDBCluster
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Starts an Amazon Aurora DB cluster that was stopped using the AWS
-- console, the stop-db-cluster AWS CLI command, or the StopDBCluster
-- action.
--
-- For more information, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/aurora-cluster-stop-start.html Stopping and Starting an Aurora Cluster>
-- in the /Amazon Aurora User Guide./
--
-- This action only applies to Aurora DB clusters.
module Network.AWS.RDS.StartDBCluster
  ( -- * Creating a Request
    StartDBCluster (..),
    newStartDBCluster,

    -- * Request Lenses
    startDBCluster_dBClusterIdentifier,

    -- * Destructuring the Response
    StartDBClusterResponse (..),
    newStartDBClusterResponse,

    -- * Response Lenses
    startDBClusterResponse_dBCluster,
    startDBClusterResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types
import Network.AWS.RDS.Types.DBCluster
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newStartDBCluster' smart constructor.
data StartDBCluster = StartDBCluster'
  { -- | The DB cluster identifier of the Amazon Aurora DB cluster to be started.
    -- This parameter is stored as a lowercase string.
    dBClusterIdentifier :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'StartDBCluster' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBClusterIdentifier', 'startDBCluster_dBClusterIdentifier' - The DB cluster identifier of the Amazon Aurora DB cluster to be started.
-- This parameter is stored as a lowercase string.
newStartDBCluster ::
  -- | 'dBClusterIdentifier'
  Prelude.Text ->
  StartDBCluster
newStartDBCluster pDBClusterIdentifier_ =
  StartDBCluster'
    { dBClusterIdentifier =
        pDBClusterIdentifier_
    }

-- | The DB cluster identifier of the Amazon Aurora DB cluster to be started.
-- This parameter is stored as a lowercase string.
startDBCluster_dBClusterIdentifier :: Lens.Lens' StartDBCluster Prelude.Text
startDBCluster_dBClusterIdentifier = Lens.lens (\StartDBCluster' {dBClusterIdentifier} -> dBClusterIdentifier) (\s@StartDBCluster' {} a -> s {dBClusterIdentifier = a} :: StartDBCluster)

instance Prelude.AWSRequest StartDBCluster where
  type Rs StartDBCluster = StartDBClusterResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "StartDBClusterResult"
      ( \s h x ->
          StartDBClusterResponse'
            Prelude.<$> (x Prelude..@? "DBCluster")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable StartDBCluster

instance Prelude.NFData StartDBCluster

instance Prelude.ToHeaders StartDBCluster where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath StartDBCluster where
  toPath = Prelude.const "/"

instance Prelude.ToQuery StartDBCluster where
  toQuery StartDBCluster' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("StartDBCluster" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2014-10-31" :: Prelude.ByteString),
        "DBClusterIdentifier" Prelude.=: dBClusterIdentifier
      ]

-- | /See:/ 'newStartDBClusterResponse' smart constructor.
data StartDBClusterResponse = StartDBClusterResponse'
  { dBCluster :: Prelude.Maybe DBCluster,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'StartDBClusterResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBCluster', 'startDBClusterResponse_dBCluster' - Undocumented member.
--
-- 'httpStatus', 'startDBClusterResponse_httpStatus' - The response's http status code.
newStartDBClusterResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  StartDBClusterResponse
newStartDBClusterResponse pHttpStatus_ =
  StartDBClusterResponse'
    { dBCluster =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
startDBClusterResponse_dBCluster :: Lens.Lens' StartDBClusterResponse (Prelude.Maybe DBCluster)
startDBClusterResponse_dBCluster = Lens.lens (\StartDBClusterResponse' {dBCluster} -> dBCluster) (\s@StartDBClusterResponse' {} a -> s {dBCluster = a} :: StartDBClusterResponse)

-- | The response's http status code.
startDBClusterResponse_httpStatus :: Lens.Lens' StartDBClusterResponse Prelude.Int
startDBClusterResponse_httpStatus = Lens.lens (\StartDBClusterResponse' {httpStatus} -> httpStatus) (\s@StartDBClusterResponse' {} a -> s {httpStatus = a} :: StartDBClusterResponse)

instance Prelude.NFData StartDBClusterResponse
