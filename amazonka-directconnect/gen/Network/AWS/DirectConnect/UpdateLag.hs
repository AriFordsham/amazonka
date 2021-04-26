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
-- Module      : Network.AWS.DirectConnect.UpdateLag
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the attributes of the specified link aggregation group (LAG).
--
-- You can update the following attributes:
--
-- -   The name of the LAG.
--
-- -   The value for the minimum number of connections that must be
--     operational for the LAG itself to be operational.
--
-- When you create a LAG, the default value for the minimum number of
-- operational connections is zero (0). If you update this value and the
-- number of operational connections falls below the specified value, the
-- LAG automatically goes down to avoid over-utilization of the remaining
-- connections. Adjust this value with care, as it could force the LAG down
-- if it is set higher than the current number of operational connections.
module Network.AWS.DirectConnect.UpdateLag
  ( -- * Creating a Request
    UpdateLag (..),
    newUpdateLag,

    -- * Request Lenses
    updateLag_lagName,
    updateLag_minimumLinks,
    updateLag_lagId,

    -- * Destructuring the Response
    Lag (..),
    newLag,

    -- * Response Lenses
    lag_numberOfConnections,
    lag_awsDeviceV2,
    lag_allowsHostedConnections,
    lag_providerName,
    lag_hasLogicalRedundancy,
    lag_connections,
    lag_awsDevice,
    lag_lagName,
    lag_lagState,
    lag_jumboFrameCapable,
    lag_connectionsBandwidth,
    lag_lagId,
    lag_tags,
    lag_ownerAccount,
    lag_region,
    lag_location,
    lag_minimumLinks,
  )
where

import Network.AWS.DirectConnect.Types
import Network.AWS.DirectConnect.Types.Connection
import Network.AWS.DirectConnect.Types.HasLogicalRedundancy
import Network.AWS.DirectConnect.Types.Lag
import Network.AWS.DirectConnect.Types.LagState
import Network.AWS.DirectConnect.Types.Tag
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateLag' smart constructor.
data UpdateLag = UpdateLag'
  { -- | The name of the LAG.
    lagName :: Prelude.Maybe Prelude.Text,
    -- | The minimum number of physical connections that must be operational for
    -- the LAG itself to be operational.
    minimumLinks :: Prelude.Maybe Prelude.Int,
    -- | The ID of the LAG.
    lagId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'UpdateLag' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lagName', 'updateLag_lagName' - The name of the LAG.
--
-- 'minimumLinks', 'updateLag_minimumLinks' - The minimum number of physical connections that must be operational for
-- the LAG itself to be operational.
--
-- 'lagId', 'updateLag_lagId' - The ID of the LAG.
newUpdateLag ::
  -- | 'lagId'
  Prelude.Text ->
  UpdateLag
newUpdateLag pLagId_ =
  UpdateLag'
    { lagName = Prelude.Nothing,
      minimumLinks = Prelude.Nothing,
      lagId = pLagId_
    }

-- | The name of the LAG.
updateLag_lagName :: Lens.Lens' UpdateLag (Prelude.Maybe Prelude.Text)
updateLag_lagName = Lens.lens (\UpdateLag' {lagName} -> lagName) (\s@UpdateLag' {} a -> s {lagName = a} :: UpdateLag)

-- | The minimum number of physical connections that must be operational for
-- the LAG itself to be operational.
updateLag_minimumLinks :: Lens.Lens' UpdateLag (Prelude.Maybe Prelude.Int)
updateLag_minimumLinks = Lens.lens (\UpdateLag' {minimumLinks} -> minimumLinks) (\s@UpdateLag' {} a -> s {minimumLinks = a} :: UpdateLag)

-- | The ID of the LAG.
updateLag_lagId :: Lens.Lens' UpdateLag Prelude.Text
updateLag_lagId = Lens.lens (\UpdateLag' {lagId} -> lagId) (\s@UpdateLag' {} a -> s {lagId = a} :: UpdateLag)

instance Prelude.AWSRequest UpdateLag where
  type Rs UpdateLag = Lag
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      (\s h x -> Prelude.eitherParseJSON x)

instance Prelude.Hashable UpdateLag

instance Prelude.NFData UpdateLag

instance Prelude.ToHeaders UpdateLag where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ("OvertureService.UpdateLag" :: Prelude.ByteString),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON UpdateLag where
  toJSON UpdateLag' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("lagName" Prelude..=) Prelude.<$> lagName,
            ("minimumLinks" Prelude..=) Prelude.<$> minimumLinks,
            Prelude.Just ("lagId" Prelude..= lagId)
          ]
      )

instance Prelude.ToPath UpdateLag where
  toPath = Prelude.const "/"

instance Prelude.ToQuery UpdateLag where
  toQuery = Prelude.const Prelude.mempty
