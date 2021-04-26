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
-- Module      : Network.AWS.RDS.DescribeDBClusterEndpoints
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about endpoints for an Amazon Aurora DB cluster.
--
-- This action only applies to Aurora DB clusters.
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeDBClusterEndpoints
  ( -- * Creating a Request
    DescribeDBClusterEndpoints (..),
    newDescribeDBClusterEndpoints,

    -- * Request Lenses
    describeDBClusterEndpoints_dBClusterEndpointIdentifier,
    describeDBClusterEndpoints_dBClusterIdentifier,
    describeDBClusterEndpoints_filters,
    describeDBClusterEndpoints_marker,
    describeDBClusterEndpoints_maxRecords,

    -- * Destructuring the Response
    DescribeDBClusterEndpointsResponse (..),
    newDescribeDBClusterEndpointsResponse,

    -- * Response Lenses
    describeDBClusterEndpointsResponse_dBClusterEndpoints,
    describeDBClusterEndpointsResponse_marker,
    describeDBClusterEndpointsResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types
import Network.AWS.RDS.Types.DBClusterEndpoint
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeDBClusterEndpoints' smart constructor.
data DescribeDBClusterEndpoints = DescribeDBClusterEndpoints'
  { -- | The identifier of the endpoint to describe. This parameter is stored as
    -- a lowercase string.
    dBClusterEndpointIdentifier :: Prelude.Maybe Prelude.Text,
    -- | The DB cluster identifier of the DB cluster associated with the
    -- endpoint. This parameter is stored as a lowercase string.
    dBClusterIdentifier :: Prelude.Maybe Prelude.Text,
    -- | A set of name-value pairs that define which endpoints to include in the
    -- output. The filters are specified as name-value pairs, in the format
    -- @Name=endpoint_type,Values=endpoint_type1,endpoint_type2,...@. @Name@
    -- can be one of: @db-cluster-endpoint-type@,
    -- @db-cluster-endpoint-custom-type@, @db-cluster-endpoint-id@,
    -- @db-cluster-endpoint-status@. @Values@ for the
    -- @ db-cluster-endpoint-type@ filter can be one or more of: @reader@,
    -- @writer@, @custom@. @Values@ for the @db-cluster-endpoint-custom-type@
    -- filter can be one or more of: @reader@, @any@. @Values@ for the
    -- @db-cluster-endpoint-status@ filter can be one or more of: @available@,
    -- @creating@, @deleting@, @inactive@, @modifying@.
    filters :: Prelude.Maybe [Filter],
    -- | An optional pagination token provided by a previous
    -- @DescribeDBClusterEndpoints@ request. If this parameter is specified,
    -- the response includes only records beyond the marker, up to the value
    -- specified by @MaxRecords@.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of records to include in the response. If more
    -- records exist than the specified @MaxRecords@ value, a pagination token
    -- called a marker is included in the response so you can retrieve the
    -- remaining results.
    --
    -- Default: 100
    --
    -- Constraints: Minimum 20, maximum 100.
    maxRecords :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeDBClusterEndpoints' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBClusterEndpointIdentifier', 'describeDBClusterEndpoints_dBClusterEndpointIdentifier' - The identifier of the endpoint to describe. This parameter is stored as
-- a lowercase string.
--
-- 'dBClusterIdentifier', 'describeDBClusterEndpoints_dBClusterIdentifier' - The DB cluster identifier of the DB cluster associated with the
-- endpoint. This parameter is stored as a lowercase string.
--
-- 'filters', 'describeDBClusterEndpoints_filters' - A set of name-value pairs that define which endpoints to include in the
-- output. The filters are specified as name-value pairs, in the format
-- @Name=endpoint_type,Values=endpoint_type1,endpoint_type2,...@. @Name@
-- can be one of: @db-cluster-endpoint-type@,
-- @db-cluster-endpoint-custom-type@, @db-cluster-endpoint-id@,
-- @db-cluster-endpoint-status@. @Values@ for the
-- @ db-cluster-endpoint-type@ filter can be one or more of: @reader@,
-- @writer@, @custom@. @Values@ for the @db-cluster-endpoint-custom-type@
-- filter can be one or more of: @reader@, @any@. @Values@ for the
-- @db-cluster-endpoint-status@ filter can be one or more of: @available@,
-- @creating@, @deleting@, @inactive@, @modifying@.
--
-- 'marker', 'describeDBClusterEndpoints_marker' - An optional pagination token provided by a previous
-- @DescribeDBClusterEndpoints@ request. If this parameter is specified,
-- the response includes only records beyond the marker, up to the value
-- specified by @MaxRecords@.
--
-- 'maxRecords', 'describeDBClusterEndpoints_maxRecords' - The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- called a marker is included in the response so you can retrieve the
-- remaining results.
--
-- Default: 100
--
-- Constraints: Minimum 20, maximum 100.
newDescribeDBClusterEndpoints ::
  DescribeDBClusterEndpoints
newDescribeDBClusterEndpoints =
  DescribeDBClusterEndpoints'
    { dBClusterEndpointIdentifier =
        Prelude.Nothing,
      dBClusterIdentifier = Prelude.Nothing,
      filters = Prelude.Nothing,
      marker = Prelude.Nothing,
      maxRecords = Prelude.Nothing
    }

-- | The identifier of the endpoint to describe. This parameter is stored as
-- a lowercase string.
describeDBClusterEndpoints_dBClusterEndpointIdentifier :: Lens.Lens' DescribeDBClusterEndpoints (Prelude.Maybe Prelude.Text)
describeDBClusterEndpoints_dBClusterEndpointIdentifier = Lens.lens (\DescribeDBClusterEndpoints' {dBClusterEndpointIdentifier} -> dBClusterEndpointIdentifier) (\s@DescribeDBClusterEndpoints' {} a -> s {dBClusterEndpointIdentifier = a} :: DescribeDBClusterEndpoints)

-- | The DB cluster identifier of the DB cluster associated with the
-- endpoint. This parameter is stored as a lowercase string.
describeDBClusterEndpoints_dBClusterIdentifier :: Lens.Lens' DescribeDBClusterEndpoints (Prelude.Maybe Prelude.Text)
describeDBClusterEndpoints_dBClusterIdentifier = Lens.lens (\DescribeDBClusterEndpoints' {dBClusterIdentifier} -> dBClusterIdentifier) (\s@DescribeDBClusterEndpoints' {} a -> s {dBClusterIdentifier = a} :: DescribeDBClusterEndpoints)

-- | A set of name-value pairs that define which endpoints to include in the
-- output. The filters are specified as name-value pairs, in the format
-- @Name=endpoint_type,Values=endpoint_type1,endpoint_type2,...@. @Name@
-- can be one of: @db-cluster-endpoint-type@,
-- @db-cluster-endpoint-custom-type@, @db-cluster-endpoint-id@,
-- @db-cluster-endpoint-status@. @Values@ for the
-- @ db-cluster-endpoint-type@ filter can be one or more of: @reader@,
-- @writer@, @custom@. @Values@ for the @db-cluster-endpoint-custom-type@
-- filter can be one or more of: @reader@, @any@. @Values@ for the
-- @db-cluster-endpoint-status@ filter can be one or more of: @available@,
-- @creating@, @deleting@, @inactive@, @modifying@.
describeDBClusterEndpoints_filters :: Lens.Lens' DescribeDBClusterEndpoints (Prelude.Maybe [Filter])
describeDBClusterEndpoints_filters = Lens.lens (\DescribeDBClusterEndpoints' {filters} -> filters) (\s@DescribeDBClusterEndpoints' {} a -> s {filters = a} :: DescribeDBClusterEndpoints) Prelude.. Lens.mapping Prelude._Coerce

-- | An optional pagination token provided by a previous
-- @DescribeDBClusterEndpoints@ request. If this parameter is specified,
-- the response includes only records beyond the marker, up to the value
-- specified by @MaxRecords@.
describeDBClusterEndpoints_marker :: Lens.Lens' DescribeDBClusterEndpoints (Prelude.Maybe Prelude.Text)
describeDBClusterEndpoints_marker = Lens.lens (\DescribeDBClusterEndpoints' {marker} -> marker) (\s@DescribeDBClusterEndpoints' {} a -> s {marker = a} :: DescribeDBClusterEndpoints)

-- | The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- called a marker is included in the response so you can retrieve the
-- remaining results.
--
-- Default: 100
--
-- Constraints: Minimum 20, maximum 100.
describeDBClusterEndpoints_maxRecords :: Lens.Lens' DescribeDBClusterEndpoints (Prelude.Maybe Prelude.Int)
describeDBClusterEndpoints_maxRecords = Lens.lens (\DescribeDBClusterEndpoints' {maxRecords} -> maxRecords) (\s@DescribeDBClusterEndpoints' {} a -> s {maxRecords = a} :: DescribeDBClusterEndpoints)

instance Pager.AWSPager DescribeDBClusterEndpoints where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? describeDBClusterEndpointsResponse_marker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? describeDBClusterEndpointsResponse_dBClusterEndpoints
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& describeDBClusterEndpoints_marker
          Lens..~ rs
          Lens.^? describeDBClusterEndpointsResponse_marker
            Prelude.. Lens._Just

instance
  Prelude.AWSRequest
    DescribeDBClusterEndpoints
  where
  type
    Rs DescribeDBClusterEndpoints =
      DescribeDBClusterEndpointsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DescribeDBClusterEndpointsResult"
      ( \s h x ->
          DescribeDBClusterEndpointsResponse'
            Prelude.<$> ( x Prelude..@? "DBClusterEndpoints"
                            Prelude..!@ Prelude.mempty
                            Prelude.>>= Prelude.may
                              (Prelude.parseXMLList "DBClusterEndpointList")
                        )
            Prelude.<*> (x Prelude..@? "Marker")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeDBClusterEndpoints

instance Prelude.NFData DescribeDBClusterEndpoints

instance Prelude.ToHeaders DescribeDBClusterEndpoints where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath DescribeDBClusterEndpoints where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DescribeDBClusterEndpoints where
  toQuery DescribeDBClusterEndpoints' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("DescribeDBClusterEndpoints" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2014-10-31" :: Prelude.ByteString),
        "DBClusterEndpointIdentifier"
          Prelude.=: dBClusterEndpointIdentifier,
        "DBClusterIdentifier" Prelude.=: dBClusterIdentifier,
        "Filters"
          Prelude.=: Prelude.toQuery
            (Prelude.toQueryList "Filter" Prelude.<$> filters),
        "Marker" Prelude.=: marker,
        "MaxRecords" Prelude.=: maxRecords
      ]

-- | /See:/ 'newDescribeDBClusterEndpointsResponse' smart constructor.
data DescribeDBClusterEndpointsResponse = DescribeDBClusterEndpointsResponse'
  { -- | Contains the details of the endpoints associated with the cluster and
    -- matching any filter conditions.
    dBClusterEndpoints :: Prelude.Maybe [DBClusterEndpoint],
    -- | An optional pagination token provided by a previous
    -- @DescribeDBClusterEndpoints@ request. If this parameter is specified,
    -- the response includes only records beyond the marker, up to the value
    -- specified by @MaxRecords@.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeDBClusterEndpointsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBClusterEndpoints', 'describeDBClusterEndpointsResponse_dBClusterEndpoints' - Contains the details of the endpoints associated with the cluster and
-- matching any filter conditions.
--
-- 'marker', 'describeDBClusterEndpointsResponse_marker' - An optional pagination token provided by a previous
-- @DescribeDBClusterEndpoints@ request. If this parameter is specified,
-- the response includes only records beyond the marker, up to the value
-- specified by @MaxRecords@.
--
-- 'httpStatus', 'describeDBClusterEndpointsResponse_httpStatus' - The response's http status code.
newDescribeDBClusterEndpointsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeDBClusterEndpointsResponse
newDescribeDBClusterEndpointsResponse pHttpStatus_ =
  DescribeDBClusterEndpointsResponse'
    { dBClusterEndpoints =
        Prelude.Nothing,
      marker = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Contains the details of the endpoints associated with the cluster and
-- matching any filter conditions.
describeDBClusterEndpointsResponse_dBClusterEndpoints :: Lens.Lens' DescribeDBClusterEndpointsResponse (Prelude.Maybe [DBClusterEndpoint])
describeDBClusterEndpointsResponse_dBClusterEndpoints = Lens.lens (\DescribeDBClusterEndpointsResponse' {dBClusterEndpoints} -> dBClusterEndpoints) (\s@DescribeDBClusterEndpointsResponse' {} a -> s {dBClusterEndpoints = a} :: DescribeDBClusterEndpointsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | An optional pagination token provided by a previous
-- @DescribeDBClusterEndpoints@ request. If this parameter is specified,
-- the response includes only records beyond the marker, up to the value
-- specified by @MaxRecords@.
describeDBClusterEndpointsResponse_marker :: Lens.Lens' DescribeDBClusterEndpointsResponse (Prelude.Maybe Prelude.Text)
describeDBClusterEndpointsResponse_marker = Lens.lens (\DescribeDBClusterEndpointsResponse' {marker} -> marker) (\s@DescribeDBClusterEndpointsResponse' {} a -> s {marker = a} :: DescribeDBClusterEndpointsResponse)

-- | The response's http status code.
describeDBClusterEndpointsResponse_httpStatus :: Lens.Lens' DescribeDBClusterEndpointsResponse Prelude.Int
describeDBClusterEndpointsResponse_httpStatus = Lens.lens (\DescribeDBClusterEndpointsResponse' {httpStatus} -> httpStatus) (\s@DescribeDBClusterEndpointsResponse' {} a -> s {httpStatus = a} :: DescribeDBClusterEndpointsResponse)

instance
  Prelude.NFData
    DescribeDBClusterEndpointsResponse
