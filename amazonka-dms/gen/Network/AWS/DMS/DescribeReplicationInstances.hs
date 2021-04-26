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
-- Module      : Network.AWS.DMS.DescribeReplicationInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about replication instances for your account in the
-- current region.
--
-- This operation returns paginated results.
module Network.AWS.DMS.DescribeReplicationInstances
  ( -- * Creating a Request
    DescribeReplicationInstances (..),
    newDescribeReplicationInstances,

    -- * Request Lenses
    describeReplicationInstances_filters,
    describeReplicationInstances_marker,
    describeReplicationInstances_maxRecords,

    -- * Destructuring the Response
    DescribeReplicationInstancesResponse (..),
    newDescribeReplicationInstancesResponse,

    -- * Response Lenses
    describeReplicationInstancesResponse_replicationInstances,
    describeReplicationInstancesResponse_marker,
    describeReplicationInstancesResponse_httpStatus,
  )
where

import Network.AWS.DMS.Types
import Network.AWS.DMS.Types.ReplicationInstance
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newDescribeReplicationInstances' smart constructor.
data DescribeReplicationInstances = DescribeReplicationInstances'
  { -- | Filters applied to replication instances.
    --
    -- Valid filter names: replication-instance-arn | replication-instance-id |
    -- replication-instance-class | engine-version
    filters :: Prelude.Maybe [Filter],
    -- | An optional pagination token provided by a previous request. If this
    -- parameter is specified, the response includes only records beyond the
    -- marker, up to the value specified by @MaxRecords@.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of records to include in the response. If more
    -- records exist than the specified @MaxRecords@ value, a pagination token
    -- called a marker is included in the response so that the remaining
    -- results can be retrieved.
    --
    -- Default: 100
    --
    -- Constraints: Minimum 20, maximum 100.
    maxRecords :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeReplicationInstances' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filters', 'describeReplicationInstances_filters' - Filters applied to replication instances.
--
-- Valid filter names: replication-instance-arn | replication-instance-id |
-- replication-instance-class | engine-version
--
-- 'marker', 'describeReplicationInstances_marker' - An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
--
-- 'maxRecords', 'describeReplicationInstances_maxRecords' - The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- called a marker is included in the response so that the remaining
-- results can be retrieved.
--
-- Default: 100
--
-- Constraints: Minimum 20, maximum 100.
newDescribeReplicationInstances ::
  DescribeReplicationInstances
newDescribeReplicationInstances =
  DescribeReplicationInstances'
    { filters =
        Prelude.Nothing,
      marker = Prelude.Nothing,
      maxRecords = Prelude.Nothing
    }

-- | Filters applied to replication instances.
--
-- Valid filter names: replication-instance-arn | replication-instance-id |
-- replication-instance-class | engine-version
describeReplicationInstances_filters :: Lens.Lens' DescribeReplicationInstances (Prelude.Maybe [Filter])
describeReplicationInstances_filters = Lens.lens (\DescribeReplicationInstances' {filters} -> filters) (\s@DescribeReplicationInstances' {} a -> s {filters = a} :: DescribeReplicationInstances) Prelude.. Lens.mapping Prelude._Coerce

-- | An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
describeReplicationInstances_marker :: Lens.Lens' DescribeReplicationInstances (Prelude.Maybe Prelude.Text)
describeReplicationInstances_marker = Lens.lens (\DescribeReplicationInstances' {marker} -> marker) (\s@DescribeReplicationInstances' {} a -> s {marker = a} :: DescribeReplicationInstances)

-- | The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- called a marker is included in the response so that the remaining
-- results can be retrieved.
--
-- Default: 100
--
-- Constraints: Minimum 20, maximum 100.
describeReplicationInstances_maxRecords :: Lens.Lens' DescribeReplicationInstances (Prelude.Maybe Prelude.Int)
describeReplicationInstances_maxRecords = Lens.lens (\DescribeReplicationInstances' {maxRecords} -> maxRecords) (\s@DescribeReplicationInstances' {} a -> s {maxRecords = a} :: DescribeReplicationInstances)

instance Pager.AWSPager DescribeReplicationInstances where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? describeReplicationInstancesResponse_marker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? describeReplicationInstancesResponse_replicationInstances
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& describeReplicationInstances_marker
          Lens..~ rs
          Lens.^? describeReplicationInstancesResponse_marker
            Prelude.. Lens._Just

instance
  Prelude.AWSRequest
    DescribeReplicationInstances
  where
  type
    Rs DescribeReplicationInstances =
      DescribeReplicationInstancesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeReplicationInstancesResponse'
            Prelude.<$> ( x Prelude..?> "ReplicationInstances"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (x Prelude..?> "Marker")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeReplicationInstances

instance Prelude.NFData DescribeReplicationInstances

instance
  Prelude.ToHeaders
    DescribeReplicationInstances
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "AmazonDMSv20160101.DescribeReplicationInstances" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON DescribeReplicationInstances where
  toJSON DescribeReplicationInstances' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("Filters" Prelude..=) Prelude.<$> filters,
            ("Marker" Prelude..=) Prelude.<$> marker,
            ("MaxRecords" Prelude..=) Prelude.<$> maxRecords
          ]
      )

instance Prelude.ToPath DescribeReplicationInstances where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DescribeReplicationInstances where
  toQuery = Prelude.const Prelude.mempty

-- |
--
-- /See:/ 'newDescribeReplicationInstancesResponse' smart constructor.
data DescribeReplicationInstancesResponse = DescribeReplicationInstancesResponse'
  { -- | The replication instances described.
    replicationInstances :: Prelude.Maybe [ReplicationInstance],
    -- | An optional pagination token provided by a previous request. If this
    -- parameter is specified, the response includes only records beyond the
    -- marker, up to the value specified by @MaxRecords@.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeReplicationInstancesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'replicationInstances', 'describeReplicationInstancesResponse_replicationInstances' - The replication instances described.
--
-- 'marker', 'describeReplicationInstancesResponse_marker' - An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
--
-- 'httpStatus', 'describeReplicationInstancesResponse_httpStatus' - The response's http status code.
newDescribeReplicationInstancesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeReplicationInstancesResponse
newDescribeReplicationInstancesResponse pHttpStatus_ =
  DescribeReplicationInstancesResponse'
    { replicationInstances =
        Prelude.Nothing,
      marker = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The replication instances described.
describeReplicationInstancesResponse_replicationInstances :: Lens.Lens' DescribeReplicationInstancesResponse (Prelude.Maybe [ReplicationInstance])
describeReplicationInstancesResponse_replicationInstances = Lens.lens (\DescribeReplicationInstancesResponse' {replicationInstances} -> replicationInstances) (\s@DescribeReplicationInstancesResponse' {} a -> s {replicationInstances = a} :: DescribeReplicationInstancesResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
describeReplicationInstancesResponse_marker :: Lens.Lens' DescribeReplicationInstancesResponse (Prelude.Maybe Prelude.Text)
describeReplicationInstancesResponse_marker = Lens.lens (\DescribeReplicationInstancesResponse' {marker} -> marker) (\s@DescribeReplicationInstancesResponse' {} a -> s {marker = a} :: DescribeReplicationInstancesResponse)

-- | The response's http status code.
describeReplicationInstancesResponse_httpStatus :: Lens.Lens' DescribeReplicationInstancesResponse Prelude.Int
describeReplicationInstancesResponse_httpStatus = Lens.lens (\DescribeReplicationInstancesResponse' {httpStatus} -> httpStatus) (\s@DescribeReplicationInstancesResponse' {} a -> s {httpStatus = a} :: DescribeReplicationInstancesResponse)

instance
  Prelude.NFData
    DescribeReplicationInstancesResponse
