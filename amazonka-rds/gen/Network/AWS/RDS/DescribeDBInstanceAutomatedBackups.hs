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
-- Module      : Network.AWS.RDS.DescribeDBInstanceAutomatedBackups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Displays backups for both current and deleted instances. For example,
-- use this operation to find details about automated backups for
-- previously deleted instances. Current instances with retention periods
-- greater than zero (0) are returned for both the
-- @DescribeDBInstanceAutomatedBackups@ and @DescribeDBInstances@
-- operations.
--
-- All parameters are optional.
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeDBInstanceAutomatedBackups
  ( -- * Creating a Request
    DescribeDBInstanceAutomatedBackups (..),
    newDescribeDBInstanceAutomatedBackups,

    -- * Request Lenses
    describeDBInstanceAutomatedBackups_dBInstanceAutomatedBackupsArn,
    describeDBInstanceAutomatedBackups_dbiResourceId,
    describeDBInstanceAutomatedBackups_dBInstanceIdentifier,
    describeDBInstanceAutomatedBackups_filters,
    describeDBInstanceAutomatedBackups_marker,
    describeDBInstanceAutomatedBackups_maxRecords,

    -- * Destructuring the Response
    DescribeDBInstanceAutomatedBackupsResponse (..),
    newDescribeDBInstanceAutomatedBackupsResponse,

    -- * Response Lenses
    describeDBInstanceAutomatedBackupsResponse_dBInstanceAutomatedBackups,
    describeDBInstanceAutomatedBackupsResponse_marker,
    describeDBInstanceAutomatedBackupsResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types
import Network.AWS.RDS.Types.DBInstanceAutomatedBackup
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Parameter input for DescribeDBInstanceAutomatedBackups.
--
-- /See:/ 'newDescribeDBInstanceAutomatedBackups' smart constructor.
data DescribeDBInstanceAutomatedBackups = DescribeDBInstanceAutomatedBackups'
  { -- | The Amazon Resource Name (ARN) of the replicated automated backups, for
    -- example,
    -- @arn:aws:rds:us-east-1:123456789012:auto-backup:ab-L2IJCEXJP7XQ7HOJ4SIEXAMPLE@.
    dBInstanceAutomatedBackupsArn :: Prelude.Maybe Prelude.Text,
    -- | The resource ID of the DB instance that is the source of the automated
    -- backup. This parameter isn\'t case-sensitive.
    dbiResourceId :: Prelude.Maybe Prelude.Text,
    -- | (Optional) The user-supplied instance identifier. If this parameter is
    -- specified, it must match the identifier of an existing DB instance. It
    -- returns information from the specific DB instance\' automated backup.
    -- This parameter isn\'t case-sensitive.
    dBInstanceIdentifier :: Prelude.Maybe Prelude.Text,
    -- | A filter that specifies which resources to return based on status.
    --
    -- Supported filters are the following:
    --
    -- -   @status@
    --
    --     -   @active@ - automated backups for current instances
    --
    --     -   @retained@ - automated backups for deleted instances and after
    --         backup replication is stopped
    --
    --     -   @creating@ - automated backups that are waiting for the first
    --         automated snapshot to be available
    --
    -- -   @db-instance-id@ - Accepts DB instance identifiers and Amazon
    --     Resource Names (ARNs). The results list includes only information
    --     about the DB instance automated backups identified by these ARNs.
    --
    -- -   @dbi-resource-id@ - Accepts DB resource identifiers and Amazon
    --     Resource Names (ARNs). The results list includes only information
    --     about the DB instance resources identified by these ARNs.
    --
    -- Returns all resources by default. The status for each resource is
    -- specified in the response.
    filters :: Prelude.Maybe [Filter],
    -- | The pagination token provided in the previous request. If this parameter
    -- is specified the response includes only records beyond the marker, up to
    -- @MaxRecords@.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of records to include in the response. If more
    -- records exist than the specified @MaxRecords@ value, a pagination token
    -- called a marker is included in the response so that you can retrieve the
    -- remaining results.
    maxRecords :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeDBInstanceAutomatedBackups' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBInstanceAutomatedBackupsArn', 'describeDBInstanceAutomatedBackups_dBInstanceAutomatedBackupsArn' - The Amazon Resource Name (ARN) of the replicated automated backups, for
-- example,
-- @arn:aws:rds:us-east-1:123456789012:auto-backup:ab-L2IJCEXJP7XQ7HOJ4SIEXAMPLE@.
--
-- 'dbiResourceId', 'describeDBInstanceAutomatedBackups_dbiResourceId' - The resource ID of the DB instance that is the source of the automated
-- backup. This parameter isn\'t case-sensitive.
--
-- 'dBInstanceIdentifier', 'describeDBInstanceAutomatedBackups_dBInstanceIdentifier' - (Optional) The user-supplied instance identifier. If this parameter is
-- specified, it must match the identifier of an existing DB instance. It
-- returns information from the specific DB instance\' automated backup.
-- This parameter isn\'t case-sensitive.
--
-- 'filters', 'describeDBInstanceAutomatedBackups_filters' - A filter that specifies which resources to return based on status.
--
-- Supported filters are the following:
--
-- -   @status@
--
--     -   @active@ - automated backups for current instances
--
--     -   @retained@ - automated backups for deleted instances and after
--         backup replication is stopped
--
--     -   @creating@ - automated backups that are waiting for the first
--         automated snapshot to be available
--
-- -   @db-instance-id@ - Accepts DB instance identifiers and Amazon
--     Resource Names (ARNs). The results list includes only information
--     about the DB instance automated backups identified by these ARNs.
--
-- -   @dbi-resource-id@ - Accepts DB resource identifiers and Amazon
--     Resource Names (ARNs). The results list includes only information
--     about the DB instance resources identified by these ARNs.
--
-- Returns all resources by default. The status for each resource is
-- specified in the response.
--
-- 'marker', 'describeDBInstanceAutomatedBackups_marker' - The pagination token provided in the previous request. If this parameter
-- is specified the response includes only records beyond the marker, up to
-- @MaxRecords@.
--
-- 'maxRecords', 'describeDBInstanceAutomatedBackups_maxRecords' - The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- called a marker is included in the response so that you can retrieve the
-- remaining results.
newDescribeDBInstanceAutomatedBackups ::
  DescribeDBInstanceAutomatedBackups
newDescribeDBInstanceAutomatedBackups =
  DescribeDBInstanceAutomatedBackups'
    { dBInstanceAutomatedBackupsArn =
        Prelude.Nothing,
      dbiResourceId = Prelude.Nothing,
      dBInstanceIdentifier = Prelude.Nothing,
      filters = Prelude.Nothing,
      marker = Prelude.Nothing,
      maxRecords = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) of the replicated automated backups, for
-- example,
-- @arn:aws:rds:us-east-1:123456789012:auto-backup:ab-L2IJCEXJP7XQ7HOJ4SIEXAMPLE@.
describeDBInstanceAutomatedBackups_dBInstanceAutomatedBackupsArn :: Lens.Lens' DescribeDBInstanceAutomatedBackups (Prelude.Maybe Prelude.Text)
describeDBInstanceAutomatedBackups_dBInstanceAutomatedBackupsArn = Lens.lens (\DescribeDBInstanceAutomatedBackups' {dBInstanceAutomatedBackupsArn} -> dBInstanceAutomatedBackupsArn) (\s@DescribeDBInstanceAutomatedBackups' {} a -> s {dBInstanceAutomatedBackupsArn = a} :: DescribeDBInstanceAutomatedBackups)

-- | The resource ID of the DB instance that is the source of the automated
-- backup. This parameter isn\'t case-sensitive.
describeDBInstanceAutomatedBackups_dbiResourceId :: Lens.Lens' DescribeDBInstanceAutomatedBackups (Prelude.Maybe Prelude.Text)
describeDBInstanceAutomatedBackups_dbiResourceId = Lens.lens (\DescribeDBInstanceAutomatedBackups' {dbiResourceId} -> dbiResourceId) (\s@DescribeDBInstanceAutomatedBackups' {} a -> s {dbiResourceId = a} :: DescribeDBInstanceAutomatedBackups)

-- | (Optional) The user-supplied instance identifier. If this parameter is
-- specified, it must match the identifier of an existing DB instance. It
-- returns information from the specific DB instance\' automated backup.
-- This parameter isn\'t case-sensitive.
describeDBInstanceAutomatedBackups_dBInstanceIdentifier :: Lens.Lens' DescribeDBInstanceAutomatedBackups (Prelude.Maybe Prelude.Text)
describeDBInstanceAutomatedBackups_dBInstanceIdentifier = Lens.lens (\DescribeDBInstanceAutomatedBackups' {dBInstanceIdentifier} -> dBInstanceIdentifier) (\s@DescribeDBInstanceAutomatedBackups' {} a -> s {dBInstanceIdentifier = a} :: DescribeDBInstanceAutomatedBackups)

-- | A filter that specifies which resources to return based on status.
--
-- Supported filters are the following:
--
-- -   @status@
--
--     -   @active@ - automated backups for current instances
--
--     -   @retained@ - automated backups for deleted instances and after
--         backup replication is stopped
--
--     -   @creating@ - automated backups that are waiting for the first
--         automated snapshot to be available
--
-- -   @db-instance-id@ - Accepts DB instance identifiers and Amazon
--     Resource Names (ARNs). The results list includes only information
--     about the DB instance automated backups identified by these ARNs.
--
-- -   @dbi-resource-id@ - Accepts DB resource identifiers and Amazon
--     Resource Names (ARNs). The results list includes only information
--     about the DB instance resources identified by these ARNs.
--
-- Returns all resources by default. The status for each resource is
-- specified in the response.
describeDBInstanceAutomatedBackups_filters :: Lens.Lens' DescribeDBInstanceAutomatedBackups (Prelude.Maybe [Filter])
describeDBInstanceAutomatedBackups_filters = Lens.lens (\DescribeDBInstanceAutomatedBackups' {filters} -> filters) (\s@DescribeDBInstanceAutomatedBackups' {} a -> s {filters = a} :: DescribeDBInstanceAutomatedBackups) Prelude.. Lens.mapping Prelude._Coerce

-- | The pagination token provided in the previous request. If this parameter
-- is specified the response includes only records beyond the marker, up to
-- @MaxRecords@.
describeDBInstanceAutomatedBackups_marker :: Lens.Lens' DescribeDBInstanceAutomatedBackups (Prelude.Maybe Prelude.Text)
describeDBInstanceAutomatedBackups_marker = Lens.lens (\DescribeDBInstanceAutomatedBackups' {marker} -> marker) (\s@DescribeDBInstanceAutomatedBackups' {} a -> s {marker = a} :: DescribeDBInstanceAutomatedBackups)

-- | The maximum number of records to include in the response. If more
-- records exist than the specified @MaxRecords@ value, a pagination token
-- called a marker is included in the response so that you can retrieve the
-- remaining results.
describeDBInstanceAutomatedBackups_maxRecords :: Lens.Lens' DescribeDBInstanceAutomatedBackups (Prelude.Maybe Prelude.Int)
describeDBInstanceAutomatedBackups_maxRecords = Lens.lens (\DescribeDBInstanceAutomatedBackups' {maxRecords} -> maxRecords) (\s@DescribeDBInstanceAutomatedBackups' {} a -> s {maxRecords = a} :: DescribeDBInstanceAutomatedBackups)

instance
  Pager.AWSPager
    DescribeDBInstanceAutomatedBackups
  where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? describeDBInstanceAutomatedBackupsResponse_marker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? describeDBInstanceAutomatedBackupsResponse_dBInstanceAutomatedBackups
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& describeDBInstanceAutomatedBackups_marker
          Lens..~ rs
          Lens.^? describeDBInstanceAutomatedBackupsResponse_marker
            Prelude.. Lens._Just

instance
  Prelude.AWSRequest
    DescribeDBInstanceAutomatedBackups
  where
  type
    Rs DescribeDBInstanceAutomatedBackups =
      DescribeDBInstanceAutomatedBackupsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DescribeDBInstanceAutomatedBackupsResult"
      ( \s h x ->
          DescribeDBInstanceAutomatedBackupsResponse'
            Prelude.<$> ( x Prelude..@? "DBInstanceAutomatedBackups"
                            Prelude..!@ Prelude.mempty
                            Prelude.>>= Prelude.may
                              (Prelude.parseXMLList "DBInstanceAutomatedBackup")
                        )
              Prelude.<*> (x Prelude..@? "Marker")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeDBInstanceAutomatedBackups

instance
  Prelude.NFData
    DescribeDBInstanceAutomatedBackups

instance
  Prelude.ToHeaders
    DescribeDBInstanceAutomatedBackups
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Prelude.ToPath
    DescribeDBInstanceAutomatedBackups
  where
  toPath = Prelude.const "/"

instance
  Prelude.ToQuery
    DescribeDBInstanceAutomatedBackups
  where
  toQuery DescribeDBInstanceAutomatedBackups' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ( "DescribeDBInstanceAutomatedBackups" ::
                         Prelude.ByteString
                     ),
        "Version"
          Prelude.=: ("2014-10-31" :: Prelude.ByteString),
        "DBInstanceAutomatedBackupsArn"
          Prelude.=: dBInstanceAutomatedBackupsArn,
        "DbiResourceId" Prelude.=: dbiResourceId,
        "DBInstanceIdentifier"
          Prelude.=: dBInstanceIdentifier,
        "Filters"
          Prelude.=: Prelude.toQuery
            (Prelude.toQueryList "Filter" Prelude.<$> filters),
        "Marker" Prelude.=: marker,
        "MaxRecords" Prelude.=: maxRecords
      ]

-- | Contains the result of a successful invocation of the
-- @DescribeDBInstanceAutomatedBackups@ action.
--
-- /See:/ 'newDescribeDBInstanceAutomatedBackupsResponse' smart constructor.
data DescribeDBInstanceAutomatedBackupsResponse = DescribeDBInstanceAutomatedBackupsResponse'
  { -- | A list of @DBInstanceAutomatedBackup@ instances.
    dBInstanceAutomatedBackups :: Prelude.Maybe [DBInstanceAutomatedBackup],
    -- | An optional pagination token provided by a previous request. If this
    -- parameter is specified, the response includes only records beyond the
    -- marker, up to the value specified by @MaxRecords@ .
    marker :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeDBInstanceAutomatedBackupsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBInstanceAutomatedBackups', 'describeDBInstanceAutomatedBackupsResponse_dBInstanceAutomatedBackups' - A list of @DBInstanceAutomatedBackup@ instances.
--
-- 'marker', 'describeDBInstanceAutomatedBackupsResponse_marker' - An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@ .
--
-- 'httpStatus', 'describeDBInstanceAutomatedBackupsResponse_httpStatus' - The response's http status code.
newDescribeDBInstanceAutomatedBackupsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeDBInstanceAutomatedBackupsResponse
newDescribeDBInstanceAutomatedBackupsResponse
  pHttpStatus_ =
    DescribeDBInstanceAutomatedBackupsResponse'
      { dBInstanceAutomatedBackups =
          Prelude.Nothing,
        marker = Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | A list of @DBInstanceAutomatedBackup@ instances.
describeDBInstanceAutomatedBackupsResponse_dBInstanceAutomatedBackups :: Lens.Lens' DescribeDBInstanceAutomatedBackupsResponse (Prelude.Maybe [DBInstanceAutomatedBackup])
describeDBInstanceAutomatedBackupsResponse_dBInstanceAutomatedBackups = Lens.lens (\DescribeDBInstanceAutomatedBackupsResponse' {dBInstanceAutomatedBackups} -> dBInstanceAutomatedBackups) (\s@DescribeDBInstanceAutomatedBackupsResponse' {} a -> s {dBInstanceAutomatedBackups = a} :: DescribeDBInstanceAutomatedBackupsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@ .
describeDBInstanceAutomatedBackupsResponse_marker :: Lens.Lens' DescribeDBInstanceAutomatedBackupsResponse (Prelude.Maybe Prelude.Text)
describeDBInstanceAutomatedBackupsResponse_marker = Lens.lens (\DescribeDBInstanceAutomatedBackupsResponse' {marker} -> marker) (\s@DescribeDBInstanceAutomatedBackupsResponse' {} a -> s {marker = a} :: DescribeDBInstanceAutomatedBackupsResponse)

-- | The response's http status code.
describeDBInstanceAutomatedBackupsResponse_httpStatus :: Lens.Lens' DescribeDBInstanceAutomatedBackupsResponse Prelude.Int
describeDBInstanceAutomatedBackupsResponse_httpStatus = Lens.lens (\DescribeDBInstanceAutomatedBackupsResponse' {httpStatus} -> httpStatus) (\s@DescribeDBInstanceAutomatedBackupsResponse' {} a -> s {httpStatus = a} :: DescribeDBInstanceAutomatedBackupsResponse)

instance
  Prelude.NFData
    DescribeDBInstanceAutomatedBackupsResponse
