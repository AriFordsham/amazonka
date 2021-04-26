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
-- Module      : Network.AWS.Athena.ListDatabases
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the databases in the specified data catalog.
--
-- This operation returns paginated results.
module Network.AWS.Athena.ListDatabases
  ( -- * Creating a Request
    ListDatabases (..),
    newListDatabases,

    -- * Request Lenses
    listDatabases_nextToken,
    listDatabases_maxResults,
    listDatabases_catalogName,

    -- * Destructuring the Response
    ListDatabasesResponse (..),
    newListDatabasesResponse,

    -- * Response Lenses
    listDatabasesResponse_databaseList,
    listDatabasesResponse_nextToken,
    listDatabasesResponse_httpStatus,
  )
where

import Network.AWS.Athena.Types
import Network.AWS.Athena.Types.Database
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListDatabases' smart constructor.
data ListDatabases = ListDatabases'
  { -- | A token generated by the Athena service that specifies where to continue
    -- pagination if a previous request was truncated. To obtain the next set
    -- of pages, pass in the @NextToken@ from the response object of the
    -- previous page call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Specifies the maximum number of results to return.
    maxResults :: Prelude.Maybe Prelude.Nat,
    -- | The name of the data catalog that contains the databases to return.
    catalogName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListDatabases' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listDatabases_nextToken' - A token generated by the Athena service that specifies where to continue
-- pagination if a previous request was truncated. To obtain the next set
-- of pages, pass in the @NextToken@ from the response object of the
-- previous page call.
--
-- 'maxResults', 'listDatabases_maxResults' - Specifies the maximum number of results to return.
--
-- 'catalogName', 'listDatabases_catalogName' - The name of the data catalog that contains the databases to return.
newListDatabases ::
  -- | 'catalogName'
  Prelude.Text ->
  ListDatabases
newListDatabases pCatalogName_ =
  ListDatabases'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      catalogName = pCatalogName_
    }

-- | A token generated by the Athena service that specifies where to continue
-- pagination if a previous request was truncated. To obtain the next set
-- of pages, pass in the @NextToken@ from the response object of the
-- previous page call.
listDatabases_nextToken :: Lens.Lens' ListDatabases (Prelude.Maybe Prelude.Text)
listDatabases_nextToken = Lens.lens (\ListDatabases' {nextToken} -> nextToken) (\s@ListDatabases' {} a -> s {nextToken = a} :: ListDatabases)

-- | Specifies the maximum number of results to return.
listDatabases_maxResults :: Lens.Lens' ListDatabases (Prelude.Maybe Prelude.Natural)
listDatabases_maxResults = Lens.lens (\ListDatabases' {maxResults} -> maxResults) (\s@ListDatabases' {} a -> s {maxResults = a} :: ListDatabases) Prelude.. Lens.mapping Prelude._Nat

-- | The name of the data catalog that contains the databases to return.
listDatabases_catalogName :: Lens.Lens' ListDatabases Prelude.Text
listDatabases_catalogName = Lens.lens (\ListDatabases' {catalogName} -> catalogName) (\s@ListDatabases' {} a -> s {catalogName = a} :: ListDatabases)

instance Pager.AWSPager ListDatabases where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? listDatabasesResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? listDatabasesResponse_databaseList
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& listDatabases_nextToken
          Lens..~ rs
          Lens.^? listDatabasesResponse_nextToken Prelude.. Lens._Just

instance Prelude.AWSRequest ListDatabases where
  type Rs ListDatabases = ListDatabasesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListDatabasesResponse'
            Prelude.<$> ( x Prelude..?> "DatabaseList"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (x Prelude..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListDatabases

instance Prelude.NFData ListDatabases

instance Prelude.ToHeaders ListDatabases where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ("AmazonAthena.ListDatabases" :: Prelude.ByteString),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON ListDatabases where
  toJSON ListDatabases' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("NextToken" Prelude..=) Prelude.<$> nextToken,
            ("MaxResults" Prelude..=) Prelude.<$> maxResults,
            Prelude.Just ("CatalogName" Prelude..= catalogName)
          ]
      )

instance Prelude.ToPath ListDatabases where
  toPath = Prelude.const "/"

instance Prelude.ToQuery ListDatabases where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListDatabasesResponse' smart constructor.
data ListDatabasesResponse = ListDatabasesResponse'
  { -- | A list of databases from a data catalog.
    databaseList :: Prelude.Maybe [Database],
    -- | A token generated by the Athena service that specifies where to continue
    -- pagination if a previous request was truncated. To obtain the next set
    -- of pages, pass in the NextToken from the response object of the previous
    -- page call.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListDatabasesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'databaseList', 'listDatabasesResponse_databaseList' - A list of databases from a data catalog.
--
-- 'nextToken', 'listDatabasesResponse_nextToken' - A token generated by the Athena service that specifies where to continue
-- pagination if a previous request was truncated. To obtain the next set
-- of pages, pass in the NextToken from the response object of the previous
-- page call.
--
-- 'httpStatus', 'listDatabasesResponse_httpStatus' - The response's http status code.
newListDatabasesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListDatabasesResponse
newListDatabasesResponse pHttpStatus_ =
  ListDatabasesResponse'
    { databaseList =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of databases from a data catalog.
listDatabasesResponse_databaseList :: Lens.Lens' ListDatabasesResponse (Prelude.Maybe [Database])
listDatabasesResponse_databaseList = Lens.lens (\ListDatabasesResponse' {databaseList} -> databaseList) (\s@ListDatabasesResponse' {} a -> s {databaseList = a} :: ListDatabasesResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | A token generated by the Athena service that specifies where to continue
-- pagination if a previous request was truncated. To obtain the next set
-- of pages, pass in the NextToken from the response object of the previous
-- page call.
listDatabasesResponse_nextToken :: Lens.Lens' ListDatabasesResponse (Prelude.Maybe Prelude.Text)
listDatabasesResponse_nextToken = Lens.lens (\ListDatabasesResponse' {nextToken} -> nextToken) (\s@ListDatabasesResponse' {} a -> s {nextToken = a} :: ListDatabasesResponse)

-- | The response's http status code.
listDatabasesResponse_httpStatus :: Lens.Lens' ListDatabasesResponse Prelude.Int
listDatabasesResponse_httpStatus = Lens.lens (\ListDatabasesResponse' {httpStatus} -> httpStatus) (\s@ListDatabasesResponse' {} a -> s {httpStatus = a} :: ListDatabasesResponse)

instance Prelude.NFData ListDatabasesResponse
