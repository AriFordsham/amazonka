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
-- Module      : Network.AWS.Glue.GetDatabases
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves all databases defined in a given Data Catalog.
--
-- This operation returns paginated results.
module Network.AWS.Glue.GetDatabases
  ( -- * Creating a Request
    GetDatabases (..),
    newGetDatabases,

    -- * Request Lenses
    getDatabases_nextToken,
    getDatabases_catalogId,
    getDatabases_maxResults,
    getDatabases_resourceShareType,

    -- * Destructuring the Response
    GetDatabasesResponse (..),
    newGetDatabasesResponse,

    -- * Response Lenses
    getDatabasesResponse_nextToken,
    getDatabasesResponse_httpStatus,
    getDatabasesResponse_databaseList,
  )
where

import Network.AWS.Glue.Types
import Network.AWS.Glue.Types.Database
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetDatabases' smart constructor.
data GetDatabases = GetDatabases'
  { -- | A continuation token, if this is a continuation call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The ID of the Data Catalog from which to retrieve @Databases@. If none
    -- is provided, the AWS account ID is used by default.
    catalogId :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of databases to return in one response.
    maxResults :: Prelude.Maybe Prelude.Nat,
    -- | Allows you to specify that you want to list the databases shared with
    -- your account. The allowable values are @FOREIGN@ or @ALL@.
    --
    -- -   If set to @FOREIGN@, will list the databases shared with your
    --     account.
    --
    -- -   If set to @ALL@, will list the databases shared with your account,
    --     as well as the databases in yor local account.
    resourceShareType :: Prelude.Maybe ResourceShareType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetDatabases' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getDatabases_nextToken' - A continuation token, if this is a continuation call.
--
-- 'catalogId', 'getDatabases_catalogId' - The ID of the Data Catalog from which to retrieve @Databases@. If none
-- is provided, the AWS account ID is used by default.
--
-- 'maxResults', 'getDatabases_maxResults' - The maximum number of databases to return in one response.
--
-- 'resourceShareType', 'getDatabases_resourceShareType' - Allows you to specify that you want to list the databases shared with
-- your account. The allowable values are @FOREIGN@ or @ALL@.
--
-- -   If set to @FOREIGN@, will list the databases shared with your
--     account.
--
-- -   If set to @ALL@, will list the databases shared with your account,
--     as well as the databases in yor local account.
newGetDatabases ::
  GetDatabases
newGetDatabases =
  GetDatabases'
    { nextToken = Prelude.Nothing,
      catalogId = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      resourceShareType = Prelude.Nothing
    }

-- | A continuation token, if this is a continuation call.
getDatabases_nextToken :: Lens.Lens' GetDatabases (Prelude.Maybe Prelude.Text)
getDatabases_nextToken = Lens.lens (\GetDatabases' {nextToken} -> nextToken) (\s@GetDatabases' {} a -> s {nextToken = a} :: GetDatabases)

-- | The ID of the Data Catalog from which to retrieve @Databases@. If none
-- is provided, the AWS account ID is used by default.
getDatabases_catalogId :: Lens.Lens' GetDatabases (Prelude.Maybe Prelude.Text)
getDatabases_catalogId = Lens.lens (\GetDatabases' {catalogId} -> catalogId) (\s@GetDatabases' {} a -> s {catalogId = a} :: GetDatabases)

-- | The maximum number of databases to return in one response.
getDatabases_maxResults :: Lens.Lens' GetDatabases (Prelude.Maybe Prelude.Natural)
getDatabases_maxResults = Lens.lens (\GetDatabases' {maxResults} -> maxResults) (\s@GetDatabases' {} a -> s {maxResults = a} :: GetDatabases) Prelude.. Lens.mapping Prelude._Nat

-- | Allows you to specify that you want to list the databases shared with
-- your account. The allowable values are @FOREIGN@ or @ALL@.
--
-- -   If set to @FOREIGN@, will list the databases shared with your
--     account.
--
-- -   If set to @ALL@, will list the databases shared with your account,
--     as well as the databases in yor local account.
getDatabases_resourceShareType :: Lens.Lens' GetDatabases (Prelude.Maybe ResourceShareType)
getDatabases_resourceShareType = Lens.lens (\GetDatabases' {resourceShareType} -> resourceShareType) (\s@GetDatabases' {} a -> s {resourceShareType = a} :: GetDatabases)

instance Pager.AWSPager GetDatabases where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? getDatabasesResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        (rs Lens.^. getDatabasesResponse_databaseList) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& getDatabases_nextToken
          Lens..~ rs
          Lens.^? getDatabasesResponse_nextToken Prelude.. Lens._Just

instance Prelude.AWSRequest GetDatabases where
  type Rs GetDatabases = GetDatabasesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetDatabasesResponse'
            Prelude.<$> (x Prelude..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Prelude..?> "DatabaseList"
                            Prelude..!@ Prelude.mempty
                        )
      )

instance Prelude.Hashable GetDatabases

instance Prelude.NFData GetDatabases

instance Prelude.ToHeaders GetDatabases where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ("AWSGlue.GetDatabases" :: Prelude.ByteString),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON GetDatabases where
  toJSON GetDatabases' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("NextToken" Prelude..=) Prelude.<$> nextToken,
            ("CatalogId" Prelude..=) Prelude.<$> catalogId,
            ("MaxResults" Prelude..=) Prelude.<$> maxResults,
            ("ResourceShareType" Prelude..=)
              Prelude.<$> resourceShareType
          ]
      )

instance Prelude.ToPath GetDatabases where
  toPath = Prelude.const "/"

instance Prelude.ToQuery GetDatabases where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetDatabasesResponse' smart constructor.
data GetDatabasesResponse = GetDatabasesResponse'
  { -- | A continuation token for paginating the returned list of tokens,
    -- returned if the current segment of the list is not the last.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | A list of @Database@ objects from the specified catalog.
    databaseList :: [Database]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetDatabasesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getDatabasesResponse_nextToken' - A continuation token for paginating the returned list of tokens,
-- returned if the current segment of the list is not the last.
--
-- 'httpStatus', 'getDatabasesResponse_httpStatus' - The response's http status code.
--
-- 'databaseList', 'getDatabasesResponse_databaseList' - A list of @Database@ objects from the specified catalog.
newGetDatabasesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetDatabasesResponse
newGetDatabasesResponse pHttpStatus_ =
  GetDatabasesResponse'
    { nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      databaseList = Prelude.mempty
    }

-- | A continuation token for paginating the returned list of tokens,
-- returned if the current segment of the list is not the last.
getDatabasesResponse_nextToken :: Lens.Lens' GetDatabasesResponse (Prelude.Maybe Prelude.Text)
getDatabasesResponse_nextToken = Lens.lens (\GetDatabasesResponse' {nextToken} -> nextToken) (\s@GetDatabasesResponse' {} a -> s {nextToken = a} :: GetDatabasesResponse)

-- | The response's http status code.
getDatabasesResponse_httpStatus :: Lens.Lens' GetDatabasesResponse Prelude.Int
getDatabasesResponse_httpStatus = Lens.lens (\GetDatabasesResponse' {httpStatus} -> httpStatus) (\s@GetDatabasesResponse' {} a -> s {httpStatus = a} :: GetDatabasesResponse)

-- | A list of @Database@ objects from the specified catalog.
getDatabasesResponse_databaseList :: Lens.Lens' GetDatabasesResponse [Database]
getDatabasesResponse_databaseList = Lens.lens (\GetDatabasesResponse' {databaseList} -> databaseList) (\s@GetDatabasesResponse' {} a -> s {databaseList = a} :: GetDatabasesResponse) Prelude.. Prelude._Coerce

instance Prelude.NFData GetDatabasesResponse
