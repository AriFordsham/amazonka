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
-- Module      : Network.AWS.RDS.DescribeDBSecurityGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of @DBSecurityGroup@ descriptions. If a
-- @DBSecurityGroupName@ is specified, the list will contain only the
-- descriptions of the specified DB security group.
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeDBSecurityGroups
  ( -- * Creating a Request
    DescribeDBSecurityGroups (..),
    newDescribeDBSecurityGroups,

    -- * Request Lenses
    describeDBSecurityGroups_dBSecurityGroupName,
    describeDBSecurityGroups_filters,
    describeDBSecurityGroups_marker,
    describeDBSecurityGroups_maxRecords,

    -- * Destructuring the Response
    DescribeDBSecurityGroupsResponse (..),
    newDescribeDBSecurityGroupsResponse,

    -- * Response Lenses
    describeDBSecurityGroupsResponse_dBSecurityGroups,
    describeDBSecurityGroupsResponse_marker,
    describeDBSecurityGroupsResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types
import Network.AWS.RDS.Types.DBSecurityGroup
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newDescribeDBSecurityGroups' smart constructor.
data DescribeDBSecurityGroups = DescribeDBSecurityGroups'
  { -- | The name of the DB security group to return details for.
    dBSecurityGroupName :: Prelude.Maybe Prelude.Text,
    -- | This parameter isn\'t currently supported.
    filters :: Prelude.Maybe [Filter],
    -- | An optional pagination token provided by a previous
    -- @DescribeDBSecurityGroups@ request. If this parameter is specified, the
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
-- Create a value of 'DescribeDBSecurityGroups' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBSecurityGroupName', 'describeDBSecurityGroups_dBSecurityGroupName' - The name of the DB security group to return details for.
--
-- 'filters', 'describeDBSecurityGroups_filters' - This parameter isn\'t currently supported.
--
-- 'marker', 'describeDBSecurityGroups_marker' - An optional pagination token provided by a previous
-- @DescribeDBSecurityGroups@ request. If this parameter is specified, the
-- response includes only records beyond the marker, up to the value
-- specified by @MaxRecords@.
--
-- 'maxRecords', 'describeDBSecurityGroups_maxRecords' - The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- called a marker is included in the response so that you can retrieve the
-- remaining results.
--
-- Default: 100
--
-- Constraints: Minimum 20, maximum 100.
newDescribeDBSecurityGroups ::
  DescribeDBSecurityGroups
newDescribeDBSecurityGroups =
  DescribeDBSecurityGroups'
    { dBSecurityGroupName =
        Prelude.Nothing,
      filters = Prelude.Nothing,
      marker = Prelude.Nothing,
      maxRecords = Prelude.Nothing
    }

-- | The name of the DB security group to return details for.
describeDBSecurityGroups_dBSecurityGroupName :: Lens.Lens' DescribeDBSecurityGroups (Prelude.Maybe Prelude.Text)
describeDBSecurityGroups_dBSecurityGroupName = Lens.lens (\DescribeDBSecurityGroups' {dBSecurityGroupName} -> dBSecurityGroupName) (\s@DescribeDBSecurityGroups' {} a -> s {dBSecurityGroupName = a} :: DescribeDBSecurityGroups)

-- | This parameter isn\'t currently supported.
describeDBSecurityGroups_filters :: Lens.Lens' DescribeDBSecurityGroups (Prelude.Maybe [Filter])
describeDBSecurityGroups_filters = Lens.lens (\DescribeDBSecurityGroups' {filters} -> filters) (\s@DescribeDBSecurityGroups' {} a -> s {filters = a} :: DescribeDBSecurityGroups) Prelude.. Lens.mapping Prelude._Coerce

-- | An optional pagination token provided by a previous
-- @DescribeDBSecurityGroups@ request. If this parameter is specified, the
-- response includes only records beyond the marker, up to the value
-- specified by @MaxRecords@.
describeDBSecurityGroups_marker :: Lens.Lens' DescribeDBSecurityGroups (Prelude.Maybe Prelude.Text)
describeDBSecurityGroups_marker = Lens.lens (\DescribeDBSecurityGroups' {marker} -> marker) (\s@DescribeDBSecurityGroups' {} a -> s {marker = a} :: DescribeDBSecurityGroups)

-- | The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- called a marker is included in the response so that you can retrieve the
-- remaining results.
--
-- Default: 100
--
-- Constraints: Minimum 20, maximum 100.
describeDBSecurityGroups_maxRecords :: Lens.Lens' DescribeDBSecurityGroups (Prelude.Maybe Prelude.Int)
describeDBSecurityGroups_maxRecords = Lens.lens (\DescribeDBSecurityGroups' {maxRecords} -> maxRecords) (\s@DescribeDBSecurityGroups' {} a -> s {maxRecords = a} :: DescribeDBSecurityGroups)

instance Pager.AWSPager DescribeDBSecurityGroups where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? describeDBSecurityGroupsResponse_marker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? describeDBSecurityGroupsResponse_dBSecurityGroups
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& describeDBSecurityGroups_marker
          Lens..~ rs
          Lens.^? describeDBSecurityGroupsResponse_marker
            Prelude.. Lens._Just

instance Prelude.AWSRequest DescribeDBSecurityGroups where
  type
    Rs DescribeDBSecurityGroups =
      DescribeDBSecurityGroupsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DescribeDBSecurityGroupsResult"
      ( \s h x ->
          DescribeDBSecurityGroupsResponse'
            Prelude.<$> ( x Prelude..@? "DBSecurityGroups"
                            Prelude..!@ Prelude.mempty
                            Prelude.>>= Prelude.may (Prelude.parseXMLList "DBSecurityGroup")
                        )
            Prelude.<*> (x Prelude..@? "Marker")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeDBSecurityGroups

instance Prelude.NFData DescribeDBSecurityGroups

instance Prelude.ToHeaders DescribeDBSecurityGroups where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath DescribeDBSecurityGroups where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DescribeDBSecurityGroups where
  toQuery DescribeDBSecurityGroups' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("DescribeDBSecurityGroups" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2014-10-31" :: Prelude.ByteString),
        "DBSecurityGroupName" Prelude.=: dBSecurityGroupName,
        "Filters"
          Prelude.=: Prelude.toQuery
            (Prelude.toQueryList "Filter" Prelude.<$> filters),
        "Marker" Prelude.=: marker,
        "MaxRecords" Prelude.=: maxRecords
      ]

-- | Contains the result of a successful invocation of the
-- @DescribeDBSecurityGroups@ action.
--
-- /See:/ 'newDescribeDBSecurityGroupsResponse' smart constructor.
data DescribeDBSecurityGroupsResponse = DescribeDBSecurityGroupsResponse'
  { -- | A list of @DBSecurityGroup@ instances.
    dBSecurityGroups :: Prelude.Maybe [DBSecurityGroup],
    -- | An optional pagination token provided by a previous request. If this
    -- parameter is specified, the response includes only records beyond the
    -- marker, up to the value specified by @MaxRecords@.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeDBSecurityGroupsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBSecurityGroups', 'describeDBSecurityGroupsResponse_dBSecurityGroups' - A list of @DBSecurityGroup@ instances.
--
-- 'marker', 'describeDBSecurityGroupsResponse_marker' - An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
--
-- 'httpStatus', 'describeDBSecurityGroupsResponse_httpStatus' - The response's http status code.
newDescribeDBSecurityGroupsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeDBSecurityGroupsResponse
newDescribeDBSecurityGroupsResponse pHttpStatus_ =
  DescribeDBSecurityGroupsResponse'
    { dBSecurityGroups =
        Prelude.Nothing,
      marker = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of @DBSecurityGroup@ instances.
describeDBSecurityGroupsResponse_dBSecurityGroups :: Lens.Lens' DescribeDBSecurityGroupsResponse (Prelude.Maybe [DBSecurityGroup])
describeDBSecurityGroupsResponse_dBSecurityGroups = Lens.lens (\DescribeDBSecurityGroupsResponse' {dBSecurityGroups} -> dBSecurityGroups) (\s@DescribeDBSecurityGroupsResponse' {} a -> s {dBSecurityGroups = a} :: DescribeDBSecurityGroupsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
describeDBSecurityGroupsResponse_marker :: Lens.Lens' DescribeDBSecurityGroupsResponse (Prelude.Maybe Prelude.Text)
describeDBSecurityGroupsResponse_marker = Lens.lens (\DescribeDBSecurityGroupsResponse' {marker} -> marker) (\s@DescribeDBSecurityGroupsResponse' {} a -> s {marker = a} :: DescribeDBSecurityGroupsResponse)

-- | The response's http status code.
describeDBSecurityGroupsResponse_httpStatus :: Lens.Lens' DescribeDBSecurityGroupsResponse Prelude.Int
describeDBSecurityGroupsResponse_httpStatus = Lens.lens (\DescribeDBSecurityGroupsResponse' {httpStatus} -> httpStatus) (\s@DescribeDBSecurityGroupsResponse' {} a -> s {httpStatus = a} :: DescribeDBSecurityGroupsResponse)

instance
  Prelude.NFData
    DescribeDBSecurityGroupsResponse
