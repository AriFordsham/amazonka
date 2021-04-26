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
-- Module      : Network.AWS.DynamoDB.ListExports
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists completed exports within the past 90 days.
module Network.AWS.DynamoDB.ListExports
  ( -- * Creating a Request
    ListExports (..),
    newListExports,

    -- * Request Lenses
    listExports_nextToken,
    listExports_maxResults,
    listExports_tableArn,

    -- * Destructuring the Response
    ListExportsResponse (..),
    newListExportsResponse,

    -- * Response Lenses
    listExportsResponse_nextToken,
    listExportsResponse_exportSummaries,
    listExportsResponse_httpStatus,
  )
where

import Network.AWS.DynamoDB.Types
import Network.AWS.DynamoDB.Types.ExportSummary
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListExports' smart constructor.
data ListExports = ListExports'
  { -- | An optional string that, if supplied, must be copied from the output of
    -- a previous call to @ListExports@. When provided in this manner, the API
    -- fetches the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Maximum number of results to return per page.
    maxResults :: Prelude.Maybe Prelude.Nat,
    -- | The Amazon Resource Name (ARN) associated with the exported table.
    tableArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListExports' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listExports_nextToken' - An optional string that, if supplied, must be copied from the output of
-- a previous call to @ListExports@. When provided in this manner, the API
-- fetches the next page of results.
--
-- 'maxResults', 'listExports_maxResults' - Maximum number of results to return per page.
--
-- 'tableArn', 'listExports_tableArn' - The Amazon Resource Name (ARN) associated with the exported table.
newListExports ::
  ListExports
newListExports =
  ListExports'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      tableArn = Prelude.Nothing
    }

-- | An optional string that, if supplied, must be copied from the output of
-- a previous call to @ListExports@. When provided in this manner, the API
-- fetches the next page of results.
listExports_nextToken :: Lens.Lens' ListExports (Prelude.Maybe Prelude.Text)
listExports_nextToken = Lens.lens (\ListExports' {nextToken} -> nextToken) (\s@ListExports' {} a -> s {nextToken = a} :: ListExports)

-- | Maximum number of results to return per page.
listExports_maxResults :: Lens.Lens' ListExports (Prelude.Maybe Prelude.Natural)
listExports_maxResults = Lens.lens (\ListExports' {maxResults} -> maxResults) (\s@ListExports' {} a -> s {maxResults = a} :: ListExports) Prelude.. Lens.mapping Prelude._Nat

-- | The Amazon Resource Name (ARN) associated with the exported table.
listExports_tableArn :: Lens.Lens' ListExports (Prelude.Maybe Prelude.Text)
listExports_tableArn = Lens.lens (\ListExports' {tableArn} -> tableArn) (\s@ListExports' {} a -> s {tableArn = a} :: ListExports)

instance Prelude.AWSRequest ListExports where
  type Rs ListExports = ListExportsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListExportsResponse'
            Prelude.<$> (x Prelude..?> "NextToken")
            Prelude.<*> ( x Prelude..?> "ExportSummaries"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListExports

instance Prelude.NFData ListExports

instance Prelude.ToHeaders ListExports where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "DynamoDB_20120810.ListExports" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.0" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON ListExports where
  toJSON ListExports' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("NextToken" Prelude..=) Prelude.<$> nextToken,
            ("MaxResults" Prelude..=) Prelude.<$> maxResults,
            ("TableArn" Prelude..=) Prelude.<$> tableArn
          ]
      )

instance Prelude.ToPath ListExports where
  toPath = Prelude.const "/"

instance Prelude.ToQuery ListExports where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListExportsResponse' smart constructor.
data ListExportsResponse = ListExportsResponse'
  { -- | If this value is returned, there are additional results to be displayed.
    -- To retrieve them, call @ListExports@ again, with @NextToken@ set to this
    -- value.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of @ExportSummary@ objects.
    exportSummaries :: Prelude.Maybe [ExportSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListExportsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listExportsResponse_nextToken' - If this value is returned, there are additional results to be displayed.
-- To retrieve them, call @ListExports@ again, with @NextToken@ set to this
-- value.
--
-- 'exportSummaries', 'listExportsResponse_exportSummaries' - A list of @ExportSummary@ objects.
--
-- 'httpStatus', 'listExportsResponse_httpStatus' - The response's http status code.
newListExportsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListExportsResponse
newListExportsResponse pHttpStatus_ =
  ListExportsResponse'
    { nextToken = Prelude.Nothing,
      exportSummaries = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If this value is returned, there are additional results to be displayed.
-- To retrieve them, call @ListExports@ again, with @NextToken@ set to this
-- value.
listExportsResponse_nextToken :: Lens.Lens' ListExportsResponse (Prelude.Maybe Prelude.Text)
listExportsResponse_nextToken = Lens.lens (\ListExportsResponse' {nextToken} -> nextToken) (\s@ListExportsResponse' {} a -> s {nextToken = a} :: ListExportsResponse)

-- | A list of @ExportSummary@ objects.
listExportsResponse_exportSummaries :: Lens.Lens' ListExportsResponse (Prelude.Maybe [ExportSummary])
listExportsResponse_exportSummaries = Lens.lens (\ListExportsResponse' {exportSummaries} -> exportSummaries) (\s@ListExportsResponse' {} a -> s {exportSummaries = a} :: ListExportsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
listExportsResponse_httpStatus :: Lens.Lens' ListExportsResponse Prelude.Int
listExportsResponse_httpStatus = Lens.lens (\ListExportsResponse' {httpStatus} -> httpStatus) (\s@ListExportsResponse' {} a -> s {httpStatus = a} :: ListExportsResponse)

instance Prelude.NFData ListExportsResponse
