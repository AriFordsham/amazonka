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
-- Module      : Network.AWS.RDS.DescribeDBParameterGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of @DBParameterGroup@ descriptions. If a
-- @DBParameterGroupName@ is specified, the list will contain only the
-- description of the specified DB parameter group.
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeDBParameterGroups
  ( -- * Creating a Request
    DescribeDBParameterGroups (..),
    newDescribeDBParameterGroups,

    -- * Request Lenses
    describeDBParameterGroups_dBParameterGroupName,
    describeDBParameterGroups_filters,
    describeDBParameterGroups_marker,
    describeDBParameterGroups_maxRecords,

    -- * Destructuring the Response
    DescribeDBParameterGroupsResponse (..),
    newDescribeDBParameterGroupsResponse,

    -- * Response Lenses
    describeDBParameterGroupsResponse_dBParameterGroups,
    describeDBParameterGroupsResponse_marker,
    describeDBParameterGroupsResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types
import Network.AWS.RDS.Types.DBParameterGroup
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newDescribeDBParameterGroups' smart constructor.
data DescribeDBParameterGroups = DescribeDBParameterGroups'
  { -- | The name of a specific DB parameter group to return details for.
    --
    -- Constraints:
    --
    -- -   If supplied, must match the name of an existing
    --     DBClusterParameterGroup.
    dBParameterGroupName :: Prelude.Maybe Prelude.Text,
    -- | This parameter isn\'t currently supported.
    filters :: Prelude.Maybe [Filter],
    -- | An optional pagination token provided by a previous
    -- @DescribeDBParameterGroups@ request. If this parameter is specified, the
    -- response includes only records beyond the marker, up to the value
    -- specified by @MaxRecords@.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of records to include in the response. If more
    -- records exist than the specified @MaxRecords@ value, a pagination token
    -- called a marker is included in the response so that you can retrieve the
    -- remaining results.
    --
    -- Default: 100
    --
    -- Constraints: Minimum 20, maximum 100.
    maxRecords :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeDBParameterGroups' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBParameterGroupName', 'describeDBParameterGroups_dBParameterGroupName' - The name of a specific DB parameter group to return details for.
--
-- Constraints:
--
-- -   If supplied, must match the name of an existing
--     DBClusterParameterGroup.
--
-- 'filters', 'describeDBParameterGroups_filters' - This parameter isn\'t currently supported.
--
-- 'marker', 'describeDBParameterGroups_marker' - An optional pagination token provided by a previous
-- @DescribeDBParameterGroups@ request. If this parameter is specified, the
-- response includes only records beyond the marker, up to the value
-- specified by @MaxRecords@.
--
-- 'maxRecords', 'describeDBParameterGroups_maxRecords' - The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- called a marker is included in the response so that you can retrieve the
-- remaining results.
--
-- Default: 100
--
-- Constraints: Minimum 20, maximum 100.
newDescribeDBParameterGroups ::
  DescribeDBParameterGroups
newDescribeDBParameterGroups =
  DescribeDBParameterGroups'
    { dBParameterGroupName =
        Prelude.Nothing,
      filters = Prelude.Nothing,
      marker = Prelude.Nothing,
      maxRecords = Prelude.Nothing
    }

-- | The name of a specific DB parameter group to return details for.
--
-- Constraints:
--
-- -   If supplied, must match the name of an existing
--     DBClusterParameterGroup.
describeDBParameterGroups_dBParameterGroupName :: Lens.Lens' DescribeDBParameterGroups (Prelude.Maybe Prelude.Text)
describeDBParameterGroups_dBParameterGroupName = Lens.lens (\DescribeDBParameterGroups' {dBParameterGroupName} -> dBParameterGroupName) (\s@DescribeDBParameterGroups' {} a -> s {dBParameterGroupName = a} :: DescribeDBParameterGroups)

-- | This parameter isn\'t currently supported.
describeDBParameterGroups_filters :: Lens.Lens' DescribeDBParameterGroups (Prelude.Maybe [Filter])
describeDBParameterGroups_filters = Lens.lens (\DescribeDBParameterGroups' {filters} -> filters) (\s@DescribeDBParameterGroups' {} a -> s {filters = a} :: DescribeDBParameterGroups) Prelude.. Lens.mapping Prelude._Coerce

-- | An optional pagination token provided by a previous
-- @DescribeDBParameterGroups@ request. If this parameter is specified, the
-- response includes only records beyond the marker, up to the value
-- specified by @MaxRecords@.
describeDBParameterGroups_marker :: Lens.Lens' DescribeDBParameterGroups (Prelude.Maybe Prelude.Text)
describeDBParameterGroups_marker = Lens.lens (\DescribeDBParameterGroups' {marker} -> marker) (\s@DescribeDBParameterGroups' {} a -> s {marker = a} :: DescribeDBParameterGroups)

-- | The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- called a marker is included in the response so that you can retrieve the
-- remaining results.
--
-- Default: 100
--
-- Constraints: Minimum 20, maximum 100.
describeDBParameterGroups_maxRecords :: Lens.Lens' DescribeDBParameterGroups (Prelude.Maybe Prelude.Int)
describeDBParameterGroups_maxRecords = Lens.lens (\DescribeDBParameterGroups' {maxRecords} -> maxRecords) (\s@DescribeDBParameterGroups' {} a -> s {maxRecords = a} :: DescribeDBParameterGroups)

instance Pager.AWSPager DescribeDBParameterGroups where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? describeDBParameterGroupsResponse_marker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? describeDBParameterGroupsResponse_dBParameterGroups
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& describeDBParameterGroups_marker
          Lens..~ rs
          Lens.^? describeDBParameterGroupsResponse_marker
            Prelude.. Lens._Just

instance Prelude.AWSRequest DescribeDBParameterGroups where
  type
    Rs DescribeDBParameterGroups =
      DescribeDBParameterGroupsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DescribeDBParameterGroupsResult"
      ( \s h x ->
          DescribeDBParameterGroupsResponse'
            Prelude.<$> ( x Prelude..@? "DBParameterGroups"
                            Prelude..!@ Prelude.mempty
                            Prelude.>>= Prelude.may
                              (Prelude.parseXMLList "DBParameterGroup")
                        )
            Prelude.<*> (x Prelude..@? "Marker")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeDBParameterGroups

instance Prelude.NFData DescribeDBParameterGroups

instance Prelude.ToHeaders DescribeDBParameterGroups where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath DescribeDBParameterGroups where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DescribeDBParameterGroups where
  toQuery DescribeDBParameterGroups' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("DescribeDBParameterGroups" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2014-10-31" :: Prelude.ByteString),
        "DBParameterGroupName"
          Prelude.=: dBParameterGroupName,
        "Filters"
          Prelude.=: Prelude.toQuery
            (Prelude.toQueryList "Filter" Prelude.<$> filters),
        "Marker" Prelude.=: marker,
        "MaxRecords" Prelude.=: maxRecords
      ]

-- | Contains the result of a successful invocation of the
-- @DescribeDBParameterGroups@ action.
--
-- /See:/ 'newDescribeDBParameterGroupsResponse' smart constructor.
data DescribeDBParameterGroupsResponse = DescribeDBParameterGroupsResponse'
  { -- | A list of @DBParameterGroup@ instances.
    dBParameterGroups :: Prelude.Maybe [DBParameterGroup],
    -- | An optional pagination token provided by a previous request. If this
    -- parameter is specified, the response includes only records beyond the
    -- marker, up to the value specified by @MaxRecords@.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeDBParameterGroupsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBParameterGroups', 'describeDBParameterGroupsResponse_dBParameterGroups' - A list of @DBParameterGroup@ instances.
--
-- 'marker', 'describeDBParameterGroupsResponse_marker' - An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
--
-- 'httpStatus', 'describeDBParameterGroupsResponse_httpStatus' - The response's http status code.
newDescribeDBParameterGroupsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeDBParameterGroupsResponse
newDescribeDBParameterGroupsResponse pHttpStatus_ =
  DescribeDBParameterGroupsResponse'
    { dBParameterGroups =
        Prelude.Nothing,
      marker = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of @DBParameterGroup@ instances.
describeDBParameterGroupsResponse_dBParameterGroups :: Lens.Lens' DescribeDBParameterGroupsResponse (Prelude.Maybe [DBParameterGroup])
describeDBParameterGroupsResponse_dBParameterGroups = Lens.lens (\DescribeDBParameterGroupsResponse' {dBParameterGroups} -> dBParameterGroups) (\s@DescribeDBParameterGroupsResponse' {} a -> s {dBParameterGroups = a} :: DescribeDBParameterGroupsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
describeDBParameterGroupsResponse_marker :: Lens.Lens' DescribeDBParameterGroupsResponse (Prelude.Maybe Prelude.Text)
describeDBParameterGroupsResponse_marker = Lens.lens (\DescribeDBParameterGroupsResponse' {marker} -> marker) (\s@DescribeDBParameterGroupsResponse' {} a -> s {marker = a} :: DescribeDBParameterGroupsResponse)

-- | The response's http status code.
describeDBParameterGroupsResponse_httpStatus :: Lens.Lens' DescribeDBParameterGroupsResponse Prelude.Int
describeDBParameterGroupsResponse_httpStatus = Lens.lens (\DescribeDBParameterGroupsResponse' {httpStatus} -> httpStatus) (\s@DescribeDBParameterGroupsResponse' {} a -> s {httpStatus = a} :: DescribeDBParameterGroupsResponse)

instance
  Prelude.NFData
    DescribeDBParameterGroupsResponse
