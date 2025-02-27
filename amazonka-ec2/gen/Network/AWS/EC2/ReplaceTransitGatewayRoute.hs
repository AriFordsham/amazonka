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
-- Module      : Network.AWS.EC2.ReplaceTransitGatewayRoute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Replaces the specified route in the specified transit gateway route
-- table.
module Network.AWS.EC2.ReplaceTransitGatewayRoute
  ( -- * Creating a Request
    ReplaceTransitGatewayRoute (..),
    newReplaceTransitGatewayRoute,

    -- * Request Lenses
    replaceTransitGatewayRoute_dryRun,
    replaceTransitGatewayRoute_blackhole,
    replaceTransitGatewayRoute_transitGatewayAttachmentId,
    replaceTransitGatewayRoute_destinationCidrBlock,
    replaceTransitGatewayRoute_transitGatewayRouteTableId,

    -- * Destructuring the Response
    ReplaceTransitGatewayRouteResponse (..),
    newReplaceTransitGatewayRouteResponse,

    -- * Response Lenses
    replaceTransitGatewayRouteResponse_route,
    replaceTransitGatewayRouteResponse_httpStatus,
  )
where

import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newReplaceTransitGatewayRoute' smart constructor.
data ReplaceTransitGatewayRoute = ReplaceTransitGatewayRoute'
  { -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | Indicates whether traffic matching this route is to be dropped.
    blackhole :: Prelude.Maybe Prelude.Bool,
    -- | The ID of the attachment.
    transitGatewayAttachmentId :: Prelude.Maybe Prelude.Text,
    -- | The CIDR range used for the destination match. Routing decisions are
    -- based on the most specific match.
    destinationCidrBlock :: Prelude.Text,
    -- | The ID of the route table.
    transitGatewayRouteTableId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ReplaceTransitGatewayRoute' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dryRun', 'replaceTransitGatewayRoute_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'blackhole', 'replaceTransitGatewayRoute_blackhole' - Indicates whether traffic matching this route is to be dropped.
--
-- 'transitGatewayAttachmentId', 'replaceTransitGatewayRoute_transitGatewayAttachmentId' - The ID of the attachment.
--
-- 'destinationCidrBlock', 'replaceTransitGatewayRoute_destinationCidrBlock' - The CIDR range used for the destination match. Routing decisions are
-- based on the most specific match.
--
-- 'transitGatewayRouteTableId', 'replaceTransitGatewayRoute_transitGatewayRouteTableId' - The ID of the route table.
newReplaceTransitGatewayRoute ::
  -- | 'destinationCidrBlock'
  Prelude.Text ->
  -- | 'transitGatewayRouteTableId'
  Prelude.Text ->
  ReplaceTransitGatewayRoute
newReplaceTransitGatewayRoute
  pDestinationCidrBlock_
  pTransitGatewayRouteTableId_ =
    ReplaceTransitGatewayRoute'
      { dryRun =
          Prelude.Nothing,
        blackhole = Prelude.Nothing,
        transitGatewayAttachmentId = Prelude.Nothing,
        destinationCidrBlock = pDestinationCidrBlock_,
        transitGatewayRouteTableId =
          pTransitGatewayRouteTableId_
      }

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
replaceTransitGatewayRoute_dryRun :: Lens.Lens' ReplaceTransitGatewayRoute (Prelude.Maybe Prelude.Bool)
replaceTransitGatewayRoute_dryRun = Lens.lens (\ReplaceTransitGatewayRoute' {dryRun} -> dryRun) (\s@ReplaceTransitGatewayRoute' {} a -> s {dryRun = a} :: ReplaceTransitGatewayRoute)

-- | Indicates whether traffic matching this route is to be dropped.
replaceTransitGatewayRoute_blackhole :: Lens.Lens' ReplaceTransitGatewayRoute (Prelude.Maybe Prelude.Bool)
replaceTransitGatewayRoute_blackhole = Lens.lens (\ReplaceTransitGatewayRoute' {blackhole} -> blackhole) (\s@ReplaceTransitGatewayRoute' {} a -> s {blackhole = a} :: ReplaceTransitGatewayRoute)

-- | The ID of the attachment.
replaceTransitGatewayRoute_transitGatewayAttachmentId :: Lens.Lens' ReplaceTransitGatewayRoute (Prelude.Maybe Prelude.Text)
replaceTransitGatewayRoute_transitGatewayAttachmentId = Lens.lens (\ReplaceTransitGatewayRoute' {transitGatewayAttachmentId} -> transitGatewayAttachmentId) (\s@ReplaceTransitGatewayRoute' {} a -> s {transitGatewayAttachmentId = a} :: ReplaceTransitGatewayRoute)

-- | The CIDR range used for the destination match. Routing decisions are
-- based on the most specific match.
replaceTransitGatewayRoute_destinationCidrBlock :: Lens.Lens' ReplaceTransitGatewayRoute Prelude.Text
replaceTransitGatewayRoute_destinationCidrBlock = Lens.lens (\ReplaceTransitGatewayRoute' {destinationCidrBlock} -> destinationCidrBlock) (\s@ReplaceTransitGatewayRoute' {} a -> s {destinationCidrBlock = a} :: ReplaceTransitGatewayRoute)

-- | The ID of the route table.
replaceTransitGatewayRoute_transitGatewayRouteTableId :: Lens.Lens' ReplaceTransitGatewayRoute Prelude.Text
replaceTransitGatewayRoute_transitGatewayRouteTableId = Lens.lens (\ReplaceTransitGatewayRoute' {transitGatewayRouteTableId} -> transitGatewayRouteTableId) (\s@ReplaceTransitGatewayRoute' {} a -> s {transitGatewayRouteTableId = a} :: ReplaceTransitGatewayRoute)

instance
  Prelude.AWSRequest
    ReplaceTransitGatewayRoute
  where
  type
    Rs ReplaceTransitGatewayRoute =
      ReplaceTransitGatewayRouteResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          ReplaceTransitGatewayRouteResponse'
            Prelude.<$> (x Prelude..@? "route")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ReplaceTransitGatewayRoute

instance Prelude.NFData ReplaceTransitGatewayRoute

instance Prelude.ToHeaders ReplaceTransitGatewayRoute where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath ReplaceTransitGatewayRoute where
  toPath = Prelude.const "/"

instance Prelude.ToQuery ReplaceTransitGatewayRoute where
  toQuery ReplaceTransitGatewayRoute' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("ReplaceTransitGatewayRoute" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2016-11-15" :: Prelude.ByteString),
        "DryRun" Prelude.=: dryRun,
        "Blackhole" Prelude.=: blackhole,
        "TransitGatewayAttachmentId"
          Prelude.=: transitGatewayAttachmentId,
        "DestinationCidrBlock"
          Prelude.=: destinationCidrBlock,
        "TransitGatewayRouteTableId"
          Prelude.=: transitGatewayRouteTableId
      ]

-- | /See:/ 'newReplaceTransitGatewayRouteResponse' smart constructor.
data ReplaceTransitGatewayRouteResponse = ReplaceTransitGatewayRouteResponse'
  { -- | Information about the modified route.
    route :: Prelude.Maybe TransitGatewayRoute,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ReplaceTransitGatewayRouteResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'route', 'replaceTransitGatewayRouteResponse_route' - Information about the modified route.
--
-- 'httpStatus', 'replaceTransitGatewayRouteResponse_httpStatus' - The response's http status code.
newReplaceTransitGatewayRouteResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ReplaceTransitGatewayRouteResponse
newReplaceTransitGatewayRouteResponse pHttpStatus_ =
  ReplaceTransitGatewayRouteResponse'
    { route =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the modified route.
replaceTransitGatewayRouteResponse_route :: Lens.Lens' ReplaceTransitGatewayRouteResponse (Prelude.Maybe TransitGatewayRoute)
replaceTransitGatewayRouteResponse_route = Lens.lens (\ReplaceTransitGatewayRouteResponse' {route} -> route) (\s@ReplaceTransitGatewayRouteResponse' {} a -> s {route = a} :: ReplaceTransitGatewayRouteResponse)

-- | The response's http status code.
replaceTransitGatewayRouteResponse_httpStatus :: Lens.Lens' ReplaceTransitGatewayRouteResponse Prelude.Int
replaceTransitGatewayRouteResponse_httpStatus = Lens.lens (\ReplaceTransitGatewayRouteResponse' {httpStatus} -> httpStatus) (\s@ReplaceTransitGatewayRouteResponse' {} a -> s {httpStatus = a} :: ReplaceTransitGatewayRouteResponse)

instance
  Prelude.NFData
    ReplaceTransitGatewayRouteResponse
