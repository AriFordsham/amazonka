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
-- Module      : Network.AWS.RDS.DescribeDBEngineVersions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of the available DB engines.
--
-- This operation returns paginated results.
module Network.AWS.RDS.DescribeDBEngineVersions
  ( -- * Creating a Request
    DescribeDBEngineVersions (..),
    newDescribeDBEngineVersions,

    -- * Request Lenses
    describeDBEngineVersions_listSupportedTimezones,
    describeDBEngineVersions_defaultOnly,
    describeDBEngineVersions_listSupportedCharacterSets,
    describeDBEngineVersions_engineVersion,
    describeDBEngineVersions_dBParameterGroupFamily,
    describeDBEngineVersions_engine,
    describeDBEngineVersions_filters,
    describeDBEngineVersions_includeAll,
    describeDBEngineVersions_marker,
    describeDBEngineVersions_maxRecords,

    -- * Destructuring the Response
    DescribeDBEngineVersionsResponse (..),
    newDescribeDBEngineVersionsResponse,

    -- * Response Lenses
    describeDBEngineVersionsResponse_dBEngineVersions,
    describeDBEngineVersionsResponse_marker,
    describeDBEngineVersionsResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types
import Network.AWS.RDS.Types.DBEngineVersion
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeDBEngineVersions' smart constructor.
data DescribeDBEngineVersions = DescribeDBEngineVersions'
  { -- | A value that indicates whether to list the supported time zones for each
    -- engine version.
    --
    -- If this parameter is enabled and the requested engine supports the
    -- @TimeZone@ parameter for @CreateDBInstance@, the response includes a
    -- list of supported time zones for each engine version.
    listSupportedTimezones :: Prelude.Maybe Prelude.Bool,
    -- | A value that indicates whether only the default version of the specified
    -- engine or engine and major version combination is returned.
    defaultOnly :: Prelude.Maybe Prelude.Bool,
    -- | A value that indicates whether to list the supported character sets for
    -- each engine version.
    --
    -- If this parameter is enabled and the requested engine supports the
    -- @CharacterSetName@ parameter for @CreateDBInstance@, the response
    -- includes a list of supported character sets for each engine version.
    listSupportedCharacterSets :: Prelude.Maybe Prelude.Bool,
    -- | The database engine version to return.
    --
    -- Example: @5.1.49@
    engineVersion :: Prelude.Maybe Prelude.Text,
    -- | The name of a specific DB parameter group family to return details for.
    --
    -- Constraints:
    --
    -- -   If supplied, must match an existing DBParameterGroupFamily.
    dBParameterGroupFamily :: Prelude.Maybe Prelude.Text,
    -- | The database engine to return.
    --
    -- Valid Values:
    --
    -- -   @aurora@ (for MySQL 5.6-compatible Aurora)
    --
    -- -   @aurora-mysql@ (for MySQL 5.7-compatible Aurora)
    --
    -- -   @aurora-postgresql@
    --
    -- -   @mariadb@
    --
    -- -   @mysql@
    --
    -- -   @oracle-ee@
    --
    -- -   @oracle-se2@
    --
    -- -   @oracle-se1@
    --
    -- -   @oracle-se@
    --
    -- -   @postgres@
    --
    -- -   @sqlserver-ee@
    --
    -- -   @sqlserver-se@
    --
    -- -   @sqlserver-ex@
    --
    -- -   @sqlserver-web@
    engine :: Prelude.Maybe Prelude.Text,
    -- | This parameter isn\'t currently supported.
    filters :: Prelude.Maybe [Filter],
    -- | A value that indicates whether to include engine versions that aren\'t
    -- available in the list. The default is to list only available engine
    -- versions.
    includeAll :: Prelude.Maybe Prelude.Bool,
    -- | An optional pagination token provided by a previous request. If this
    -- parameter is specified, the response includes only records beyond the
    -- marker, up to the value specified by @MaxRecords@.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of records to include in the response. If more than
    -- the @MaxRecords@ value is available, a pagination token called a marker
    -- is included in the response so you can retrieve the remaining results.
    --
    -- Default: 100
    --
    -- Constraints: Minimum 20, maximum 100.
    maxRecords :: Prelude.Maybe Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeDBEngineVersions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'listSupportedTimezones', 'describeDBEngineVersions_listSupportedTimezones' - A value that indicates whether to list the supported time zones for each
-- engine version.
--
-- If this parameter is enabled and the requested engine supports the
-- @TimeZone@ parameter for @CreateDBInstance@, the response includes a
-- list of supported time zones for each engine version.
--
-- 'defaultOnly', 'describeDBEngineVersions_defaultOnly' - A value that indicates whether only the default version of the specified
-- engine or engine and major version combination is returned.
--
-- 'listSupportedCharacterSets', 'describeDBEngineVersions_listSupportedCharacterSets' - A value that indicates whether to list the supported character sets for
-- each engine version.
--
-- If this parameter is enabled and the requested engine supports the
-- @CharacterSetName@ parameter for @CreateDBInstance@, the response
-- includes a list of supported character sets for each engine version.
--
-- 'engineVersion', 'describeDBEngineVersions_engineVersion' - The database engine version to return.
--
-- Example: @5.1.49@
--
-- 'dBParameterGroupFamily', 'describeDBEngineVersions_dBParameterGroupFamily' - The name of a specific DB parameter group family to return details for.
--
-- Constraints:
--
-- -   If supplied, must match an existing DBParameterGroupFamily.
--
-- 'engine', 'describeDBEngineVersions_engine' - The database engine to return.
--
-- Valid Values:
--
-- -   @aurora@ (for MySQL 5.6-compatible Aurora)
--
-- -   @aurora-mysql@ (for MySQL 5.7-compatible Aurora)
--
-- -   @aurora-postgresql@
--
-- -   @mariadb@
--
-- -   @mysql@
--
-- -   @oracle-ee@
--
-- -   @oracle-se2@
--
-- -   @oracle-se1@
--
-- -   @oracle-se@
--
-- -   @postgres@
--
-- -   @sqlserver-ee@
--
-- -   @sqlserver-se@
--
-- -   @sqlserver-ex@
--
-- -   @sqlserver-web@
--
-- 'filters', 'describeDBEngineVersions_filters' - This parameter isn\'t currently supported.
--
-- 'includeAll', 'describeDBEngineVersions_includeAll' - A value that indicates whether to include engine versions that aren\'t
-- available in the list. The default is to list only available engine
-- versions.
--
-- 'marker', 'describeDBEngineVersions_marker' - An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
--
-- 'maxRecords', 'describeDBEngineVersions_maxRecords' - The maximum number of records to include in the response. If more than
-- the @MaxRecords@ value is available, a pagination token called a marker
-- is included in the response so you can retrieve the remaining results.
--
-- Default: 100
--
-- Constraints: Minimum 20, maximum 100.
newDescribeDBEngineVersions ::
  DescribeDBEngineVersions
newDescribeDBEngineVersions =
  DescribeDBEngineVersions'
    { listSupportedTimezones =
        Prelude.Nothing,
      defaultOnly = Prelude.Nothing,
      listSupportedCharacterSets = Prelude.Nothing,
      engineVersion = Prelude.Nothing,
      dBParameterGroupFamily = Prelude.Nothing,
      engine = Prelude.Nothing,
      filters = Prelude.Nothing,
      includeAll = Prelude.Nothing,
      marker = Prelude.Nothing,
      maxRecords = Prelude.Nothing
    }

-- | A value that indicates whether to list the supported time zones for each
-- engine version.
--
-- If this parameter is enabled and the requested engine supports the
-- @TimeZone@ parameter for @CreateDBInstance@, the response includes a
-- list of supported time zones for each engine version.
describeDBEngineVersions_listSupportedTimezones :: Lens.Lens' DescribeDBEngineVersions (Prelude.Maybe Prelude.Bool)
describeDBEngineVersions_listSupportedTimezones = Lens.lens (\DescribeDBEngineVersions' {listSupportedTimezones} -> listSupportedTimezones) (\s@DescribeDBEngineVersions' {} a -> s {listSupportedTimezones = a} :: DescribeDBEngineVersions)

-- | A value that indicates whether only the default version of the specified
-- engine or engine and major version combination is returned.
describeDBEngineVersions_defaultOnly :: Lens.Lens' DescribeDBEngineVersions (Prelude.Maybe Prelude.Bool)
describeDBEngineVersions_defaultOnly = Lens.lens (\DescribeDBEngineVersions' {defaultOnly} -> defaultOnly) (\s@DescribeDBEngineVersions' {} a -> s {defaultOnly = a} :: DescribeDBEngineVersions)

-- | A value that indicates whether to list the supported character sets for
-- each engine version.
--
-- If this parameter is enabled and the requested engine supports the
-- @CharacterSetName@ parameter for @CreateDBInstance@, the response
-- includes a list of supported character sets for each engine version.
describeDBEngineVersions_listSupportedCharacterSets :: Lens.Lens' DescribeDBEngineVersions (Prelude.Maybe Prelude.Bool)
describeDBEngineVersions_listSupportedCharacterSets = Lens.lens (\DescribeDBEngineVersions' {listSupportedCharacterSets} -> listSupportedCharacterSets) (\s@DescribeDBEngineVersions' {} a -> s {listSupportedCharacterSets = a} :: DescribeDBEngineVersions)

-- | The database engine version to return.
--
-- Example: @5.1.49@
describeDBEngineVersions_engineVersion :: Lens.Lens' DescribeDBEngineVersions (Prelude.Maybe Prelude.Text)
describeDBEngineVersions_engineVersion = Lens.lens (\DescribeDBEngineVersions' {engineVersion} -> engineVersion) (\s@DescribeDBEngineVersions' {} a -> s {engineVersion = a} :: DescribeDBEngineVersions)

-- | The name of a specific DB parameter group family to return details for.
--
-- Constraints:
--
-- -   If supplied, must match an existing DBParameterGroupFamily.
describeDBEngineVersions_dBParameterGroupFamily :: Lens.Lens' DescribeDBEngineVersions (Prelude.Maybe Prelude.Text)
describeDBEngineVersions_dBParameterGroupFamily = Lens.lens (\DescribeDBEngineVersions' {dBParameterGroupFamily} -> dBParameterGroupFamily) (\s@DescribeDBEngineVersions' {} a -> s {dBParameterGroupFamily = a} :: DescribeDBEngineVersions)

-- | The database engine to return.
--
-- Valid Values:
--
-- -   @aurora@ (for MySQL 5.6-compatible Aurora)
--
-- -   @aurora-mysql@ (for MySQL 5.7-compatible Aurora)
--
-- -   @aurora-postgresql@
--
-- -   @mariadb@
--
-- -   @mysql@
--
-- -   @oracle-ee@
--
-- -   @oracle-se2@
--
-- -   @oracle-se1@
--
-- -   @oracle-se@
--
-- -   @postgres@
--
-- -   @sqlserver-ee@
--
-- -   @sqlserver-se@
--
-- -   @sqlserver-ex@
--
-- -   @sqlserver-web@
describeDBEngineVersions_engine :: Lens.Lens' DescribeDBEngineVersions (Prelude.Maybe Prelude.Text)
describeDBEngineVersions_engine = Lens.lens (\DescribeDBEngineVersions' {engine} -> engine) (\s@DescribeDBEngineVersions' {} a -> s {engine = a} :: DescribeDBEngineVersions)

-- | This parameter isn\'t currently supported.
describeDBEngineVersions_filters :: Lens.Lens' DescribeDBEngineVersions (Prelude.Maybe [Filter])
describeDBEngineVersions_filters = Lens.lens (\DescribeDBEngineVersions' {filters} -> filters) (\s@DescribeDBEngineVersions' {} a -> s {filters = a} :: DescribeDBEngineVersions) Prelude.. Lens.mapping Prelude._Coerce

-- | A value that indicates whether to include engine versions that aren\'t
-- available in the list. The default is to list only available engine
-- versions.
describeDBEngineVersions_includeAll :: Lens.Lens' DescribeDBEngineVersions (Prelude.Maybe Prelude.Bool)
describeDBEngineVersions_includeAll = Lens.lens (\DescribeDBEngineVersions' {includeAll} -> includeAll) (\s@DescribeDBEngineVersions' {} a -> s {includeAll = a} :: DescribeDBEngineVersions)

-- | An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
describeDBEngineVersions_marker :: Lens.Lens' DescribeDBEngineVersions (Prelude.Maybe Prelude.Text)
describeDBEngineVersions_marker = Lens.lens (\DescribeDBEngineVersions' {marker} -> marker) (\s@DescribeDBEngineVersions' {} a -> s {marker = a} :: DescribeDBEngineVersions)

-- | The maximum number of records to include in the response. If more than
-- the @MaxRecords@ value is available, a pagination token called a marker
-- is included in the response so you can retrieve the remaining results.
--
-- Default: 100
--
-- Constraints: Minimum 20, maximum 100.
describeDBEngineVersions_maxRecords :: Lens.Lens' DescribeDBEngineVersions (Prelude.Maybe Prelude.Int)
describeDBEngineVersions_maxRecords = Lens.lens (\DescribeDBEngineVersions' {maxRecords} -> maxRecords) (\s@DescribeDBEngineVersions' {} a -> s {maxRecords = a} :: DescribeDBEngineVersions)

instance Pager.AWSPager DescribeDBEngineVersions where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? describeDBEngineVersionsResponse_marker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? describeDBEngineVersionsResponse_dBEngineVersions
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& describeDBEngineVersions_marker
          Lens..~ rs
          Lens.^? describeDBEngineVersionsResponse_marker
            Prelude.. Lens._Just

instance Prelude.AWSRequest DescribeDBEngineVersions where
  type
    Rs DescribeDBEngineVersions =
      DescribeDBEngineVersionsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DescribeDBEngineVersionsResult"
      ( \s h x ->
          DescribeDBEngineVersionsResponse'
            Prelude.<$> ( x Prelude..@? "DBEngineVersions"
                            Prelude..!@ Prelude.mempty
                            Prelude.>>= Prelude.may (Prelude.parseXMLList "DBEngineVersion")
                        )
            Prelude.<*> (x Prelude..@? "Marker")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeDBEngineVersions

instance Prelude.NFData DescribeDBEngineVersions

instance Prelude.ToHeaders DescribeDBEngineVersions where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath DescribeDBEngineVersions where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DescribeDBEngineVersions where
  toQuery DescribeDBEngineVersions' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("DescribeDBEngineVersions" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2014-10-31" :: Prelude.ByteString),
        "ListSupportedTimezones"
          Prelude.=: listSupportedTimezones,
        "DefaultOnly" Prelude.=: defaultOnly,
        "ListSupportedCharacterSets"
          Prelude.=: listSupportedCharacterSets,
        "EngineVersion" Prelude.=: engineVersion,
        "DBParameterGroupFamily"
          Prelude.=: dBParameterGroupFamily,
        "Engine" Prelude.=: engine,
        "Filters"
          Prelude.=: Prelude.toQuery
            (Prelude.toQueryList "Filter" Prelude.<$> filters),
        "IncludeAll" Prelude.=: includeAll,
        "Marker" Prelude.=: marker,
        "MaxRecords" Prelude.=: maxRecords
      ]

-- | Contains the result of a successful invocation of the
-- @DescribeDBEngineVersions@ action.
--
-- /See:/ 'newDescribeDBEngineVersionsResponse' smart constructor.
data DescribeDBEngineVersionsResponse = DescribeDBEngineVersionsResponse'
  { -- | A list of @DBEngineVersion@ elements.
    dBEngineVersions :: Prelude.Maybe [DBEngineVersion],
    -- | An optional pagination token provided by a previous request. If this
    -- parameter is specified, the response includes only records beyond the
    -- marker, up to the value specified by @MaxRecords@.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeDBEngineVersionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBEngineVersions', 'describeDBEngineVersionsResponse_dBEngineVersions' - A list of @DBEngineVersion@ elements.
--
-- 'marker', 'describeDBEngineVersionsResponse_marker' - An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
--
-- 'httpStatus', 'describeDBEngineVersionsResponse_httpStatus' - The response's http status code.
newDescribeDBEngineVersionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeDBEngineVersionsResponse
newDescribeDBEngineVersionsResponse pHttpStatus_ =
  DescribeDBEngineVersionsResponse'
    { dBEngineVersions =
        Prelude.Nothing,
      marker = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of @DBEngineVersion@ elements.
describeDBEngineVersionsResponse_dBEngineVersions :: Lens.Lens' DescribeDBEngineVersionsResponse (Prelude.Maybe [DBEngineVersion])
describeDBEngineVersionsResponse_dBEngineVersions = Lens.lens (\DescribeDBEngineVersionsResponse' {dBEngineVersions} -> dBEngineVersions) (\s@DescribeDBEngineVersionsResponse' {} a -> s {dBEngineVersions = a} :: DescribeDBEngineVersionsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | An optional pagination token provided by a previous request. If this
-- parameter is specified, the response includes only records beyond the
-- marker, up to the value specified by @MaxRecords@.
describeDBEngineVersionsResponse_marker :: Lens.Lens' DescribeDBEngineVersionsResponse (Prelude.Maybe Prelude.Text)
describeDBEngineVersionsResponse_marker = Lens.lens (\DescribeDBEngineVersionsResponse' {marker} -> marker) (\s@DescribeDBEngineVersionsResponse' {} a -> s {marker = a} :: DescribeDBEngineVersionsResponse)

-- | The response's http status code.
describeDBEngineVersionsResponse_httpStatus :: Lens.Lens' DescribeDBEngineVersionsResponse Prelude.Int
describeDBEngineVersionsResponse_httpStatus = Lens.lens (\DescribeDBEngineVersionsResponse' {httpStatus} -> httpStatus) (\s@DescribeDBEngineVersionsResponse' {} a -> s {httpStatus = a} :: DescribeDBEngineVersionsResponse)

instance
  Prelude.NFData
    DescribeDBEngineVersionsResponse
