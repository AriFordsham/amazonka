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
-- Module      : Network.AWS.Connect.ListLambdaFunctions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to
-- change.
--
-- Returns a paginated list of all Lambda functions that display in the
-- dropdown options in the relevant contact flow blocks.
--
-- This operation returns paginated results.
module Network.AWS.Connect.ListLambdaFunctions
  ( -- * Creating a Request
    ListLambdaFunctions (..),
    newListLambdaFunctions,

    -- * Request Lenses
    listLambdaFunctions_nextToken,
    listLambdaFunctions_maxResults,
    listLambdaFunctions_instanceId,

    -- * Destructuring the Response
    ListLambdaFunctionsResponse (..),
    newListLambdaFunctionsResponse,

    -- * Response Lenses
    listLambdaFunctionsResponse_nextToken,
    listLambdaFunctionsResponse_lambdaFunctions,
    listLambdaFunctionsResponse_httpStatus,
  )
where

import Network.AWS.Connect.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListLambdaFunctions' smart constructor.
data ListLambdaFunctions = ListLambdaFunctions'
  { -- | The token for the next set of results. Use the value returned in the
    -- previous response in the next request to retrieve the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return per page.
    maxResults :: Prelude.Maybe Prelude.Nat,
    -- | The identifier of the Amazon Connect instance.
    instanceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListLambdaFunctions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listLambdaFunctions_nextToken' - The token for the next set of results. Use the value returned in the
-- previous response in the next request to retrieve the next set of
-- results.
--
-- 'maxResults', 'listLambdaFunctions_maxResults' - The maximum number of results to return per page.
--
-- 'instanceId', 'listLambdaFunctions_instanceId' - The identifier of the Amazon Connect instance.
newListLambdaFunctions ::
  -- | 'instanceId'
  Prelude.Text ->
  ListLambdaFunctions
newListLambdaFunctions pInstanceId_ =
  ListLambdaFunctions'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      instanceId = pInstanceId_
    }

-- | The token for the next set of results. Use the value returned in the
-- previous response in the next request to retrieve the next set of
-- results.
listLambdaFunctions_nextToken :: Lens.Lens' ListLambdaFunctions (Prelude.Maybe Prelude.Text)
listLambdaFunctions_nextToken = Lens.lens (\ListLambdaFunctions' {nextToken} -> nextToken) (\s@ListLambdaFunctions' {} a -> s {nextToken = a} :: ListLambdaFunctions)

-- | The maximum number of results to return per page.
listLambdaFunctions_maxResults :: Lens.Lens' ListLambdaFunctions (Prelude.Maybe Prelude.Natural)
listLambdaFunctions_maxResults = Lens.lens (\ListLambdaFunctions' {maxResults} -> maxResults) (\s@ListLambdaFunctions' {} a -> s {maxResults = a} :: ListLambdaFunctions) Prelude.. Lens.mapping Prelude._Nat

-- | The identifier of the Amazon Connect instance.
listLambdaFunctions_instanceId :: Lens.Lens' ListLambdaFunctions Prelude.Text
listLambdaFunctions_instanceId = Lens.lens (\ListLambdaFunctions' {instanceId} -> instanceId) (\s@ListLambdaFunctions' {} a -> s {instanceId = a} :: ListLambdaFunctions)

instance Pager.AWSPager ListLambdaFunctions where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? listLambdaFunctionsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? listLambdaFunctionsResponse_lambdaFunctions
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& listLambdaFunctions_nextToken
          Lens..~ rs
          Lens.^? listLambdaFunctionsResponse_nextToken
            Prelude.. Lens._Just

instance Prelude.AWSRequest ListLambdaFunctions where
  type
    Rs ListLambdaFunctions =
      ListLambdaFunctionsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListLambdaFunctionsResponse'
            Prelude.<$> (x Prelude..?> "NextToken")
            Prelude.<*> ( x Prelude..?> "LambdaFunctions"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListLambdaFunctions

instance Prelude.NFData ListLambdaFunctions

instance Prelude.ToHeaders ListLambdaFunctions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToPath ListLambdaFunctions where
  toPath ListLambdaFunctions' {..} =
    Prelude.mconcat
      [ "/instance/",
        Prelude.toBS instanceId,
        "/lambda-functions"
      ]

instance Prelude.ToQuery ListLambdaFunctions where
  toQuery ListLambdaFunctions' {..} =
    Prelude.mconcat
      [ "nextToken" Prelude.=: nextToken,
        "maxResults" Prelude.=: maxResults
      ]

-- | /See:/ 'newListLambdaFunctionsResponse' smart constructor.
data ListLambdaFunctionsResponse = ListLambdaFunctionsResponse'
  { -- | If there are additional results, this is the token for the next set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The Lambdafunction ARNs associated with the specified instance.
    lambdaFunctions :: Prelude.Maybe [Prelude.Text],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListLambdaFunctionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listLambdaFunctionsResponse_nextToken' - If there are additional results, this is the token for the next set of
-- results.
--
-- 'lambdaFunctions', 'listLambdaFunctionsResponse_lambdaFunctions' - The Lambdafunction ARNs associated with the specified instance.
--
-- 'httpStatus', 'listLambdaFunctionsResponse_httpStatus' - The response's http status code.
newListLambdaFunctionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListLambdaFunctionsResponse
newListLambdaFunctionsResponse pHttpStatus_ =
  ListLambdaFunctionsResponse'
    { nextToken =
        Prelude.Nothing,
      lambdaFunctions = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If there are additional results, this is the token for the next set of
-- results.
listLambdaFunctionsResponse_nextToken :: Lens.Lens' ListLambdaFunctionsResponse (Prelude.Maybe Prelude.Text)
listLambdaFunctionsResponse_nextToken = Lens.lens (\ListLambdaFunctionsResponse' {nextToken} -> nextToken) (\s@ListLambdaFunctionsResponse' {} a -> s {nextToken = a} :: ListLambdaFunctionsResponse)

-- | The Lambdafunction ARNs associated with the specified instance.
listLambdaFunctionsResponse_lambdaFunctions :: Lens.Lens' ListLambdaFunctionsResponse (Prelude.Maybe [Prelude.Text])
listLambdaFunctionsResponse_lambdaFunctions = Lens.lens (\ListLambdaFunctionsResponse' {lambdaFunctions} -> lambdaFunctions) (\s@ListLambdaFunctionsResponse' {} a -> s {lambdaFunctions = a} :: ListLambdaFunctionsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
listLambdaFunctionsResponse_httpStatus :: Lens.Lens' ListLambdaFunctionsResponse Prelude.Int
listLambdaFunctionsResponse_httpStatus = Lens.lens (\ListLambdaFunctionsResponse' {httpStatus} -> httpStatus) (\s@ListLambdaFunctionsResponse' {} a -> s {httpStatus = a} :: ListLambdaFunctionsResponse)

instance Prelude.NFData ListLambdaFunctionsResponse
