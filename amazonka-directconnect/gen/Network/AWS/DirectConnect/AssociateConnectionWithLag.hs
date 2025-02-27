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
-- Module      : Network.AWS.DirectConnect.AssociateConnectionWithLag
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates an existing connection with a link aggregation group (LAG).
-- The connection is interrupted and re-established as a member of the LAG
-- (connectivity to AWS is interrupted). The connection must be hosted on
-- the same AWS Direct Connect endpoint as the LAG, and its bandwidth must
-- match the bandwidth for the LAG. You can re-associate a connection
-- that\'s currently associated with a different LAG; however, if removing
-- the connection would cause the original LAG to fall below its setting
-- for minimum number of operational connections, the request fails.
--
-- Any virtual interfaces that are directly associated with the connection
-- are automatically re-associated with the LAG. If the connection was
-- originally associated with a different LAG, the virtual interfaces
-- remain associated with the original LAG.
--
-- For interconnects, any hosted connections are automatically
-- re-associated with the LAG. If the interconnect was originally
-- associated with a different LAG, the hosted connections remain
-- associated with the original LAG.
module Network.AWS.DirectConnect.AssociateConnectionWithLag
  ( -- * Creating a Request
    AssociateConnectionWithLag (..),
    newAssociateConnectionWithLag,

    -- * Request Lenses
    associateConnectionWithLag_connectionId,
    associateConnectionWithLag_lagId,

    -- * Destructuring the Response
    Connection (..),
    newConnection,

    -- * Response Lenses
    connection_bandwidth,
    connection_connectionState,
    connection_awsDeviceV2,
    connection_connectionName,
    connection_providerName,
    connection_connectionId,
    connection_hasLogicalRedundancy,
    connection_awsDevice,
    connection_jumboFrameCapable,
    connection_lagId,
    connection_partnerName,
    connection_tags,
    connection_loaIssueTime,
    connection_ownerAccount,
    connection_region,
    connection_location,
    connection_vlan,
  )
where

import Network.AWS.DirectConnect.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newAssociateConnectionWithLag' smart constructor.
data AssociateConnectionWithLag = AssociateConnectionWithLag'
  { -- | The ID of the connection.
    connectionId :: Prelude.Text,
    -- | The ID of the LAG with which to associate the connection.
    lagId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AssociateConnectionWithLag' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connectionId', 'associateConnectionWithLag_connectionId' - The ID of the connection.
--
-- 'lagId', 'associateConnectionWithLag_lagId' - The ID of the LAG with which to associate the connection.
newAssociateConnectionWithLag ::
  -- | 'connectionId'
  Prelude.Text ->
  -- | 'lagId'
  Prelude.Text ->
  AssociateConnectionWithLag
newAssociateConnectionWithLag pConnectionId_ pLagId_ =
  AssociateConnectionWithLag'
    { connectionId =
        pConnectionId_,
      lagId = pLagId_
    }

-- | The ID of the connection.
associateConnectionWithLag_connectionId :: Lens.Lens' AssociateConnectionWithLag Prelude.Text
associateConnectionWithLag_connectionId = Lens.lens (\AssociateConnectionWithLag' {connectionId} -> connectionId) (\s@AssociateConnectionWithLag' {} a -> s {connectionId = a} :: AssociateConnectionWithLag)

-- | The ID of the LAG with which to associate the connection.
associateConnectionWithLag_lagId :: Lens.Lens' AssociateConnectionWithLag Prelude.Text
associateConnectionWithLag_lagId = Lens.lens (\AssociateConnectionWithLag' {lagId} -> lagId) (\s@AssociateConnectionWithLag' {} a -> s {lagId = a} :: AssociateConnectionWithLag)

instance
  Prelude.AWSRequest
    AssociateConnectionWithLag
  where
  type Rs AssociateConnectionWithLag = Connection
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      (\s h x -> Prelude.eitherParseJSON x)

instance Prelude.Hashable AssociateConnectionWithLag

instance Prelude.NFData AssociateConnectionWithLag

instance Prelude.ToHeaders AssociateConnectionWithLag where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "OvertureService.AssociateConnectionWithLag" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON AssociateConnectionWithLag where
  toJSON AssociateConnectionWithLag' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("connectionId" Prelude..= connectionId),
            Prelude.Just ("lagId" Prelude..= lagId)
          ]
      )

instance Prelude.ToPath AssociateConnectionWithLag where
  toPath = Prelude.const "/"

instance Prelude.ToQuery AssociateConnectionWithLag where
  toQuery = Prelude.const Prelude.mempty
