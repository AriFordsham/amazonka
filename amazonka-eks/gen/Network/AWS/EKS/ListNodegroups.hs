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
-- Module      : Network.AWS.EKS.ListNodegroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the Amazon EKS managed node groups associated with the specified
-- cluster in your AWS account in the specified Region. Self-managed node
-- groups are not listed.
--
-- This operation returns paginated results.
module Network.AWS.EKS.ListNodegroups
  ( -- * Creating a Request
    ListNodegroups (..),
    newListNodegroups,

    -- * Request Lenses
    listNodegroups_nextToken,
    listNodegroups_maxResults,
    listNodegroups_clusterName,

    -- * Destructuring the Response
    ListNodegroupsResponse (..),
    newListNodegroupsResponse,

    -- * Response Lenses
    listNodegroupsResponse_nextToken,
    listNodegroupsResponse_nodegroups,
    listNodegroupsResponse_httpStatus,
  )
where

import Network.AWS.EKS.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListNodegroups' smart constructor.
data ListNodegroups = ListNodegroups'
  { -- | The @nextToken@ value returned from a previous paginated
    -- @ListNodegroups@ request where @maxResults@ was used and the results
    -- exceeded the value of that parameter. Pagination continues from the end
    -- of the previous results that returned the @nextToken@ value.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of node group results returned by @ListNodegroups@ in
    -- paginated output. When you use this parameter, @ListNodegroups@ returns
    -- only @maxResults@ results in a single page along with a @nextToken@
    -- response element. You can see the remaining results of the initial
    -- request by sending another @ListNodegroups@ request with the returned
    -- @nextToken@ value. This value can be between 1 and 100. If you don\'t
    -- use this parameter, @ListNodegroups@ returns up to 100 results and a
    -- @nextToken@ value if applicable.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The name of the Amazon EKS cluster that you would like to list node
    -- groups in.
    clusterName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListNodegroups' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listNodegroups_nextToken' - The @nextToken@ value returned from a previous paginated
-- @ListNodegroups@ request where @maxResults@ was used and the results
-- exceeded the value of that parameter. Pagination continues from the end
-- of the previous results that returned the @nextToken@ value.
--
-- 'maxResults', 'listNodegroups_maxResults' - The maximum number of node group results returned by @ListNodegroups@ in
-- paginated output. When you use this parameter, @ListNodegroups@ returns
-- only @maxResults@ results in a single page along with a @nextToken@
-- response element. You can see the remaining results of the initial
-- request by sending another @ListNodegroups@ request with the returned
-- @nextToken@ value. This value can be between 1 and 100. If you don\'t
-- use this parameter, @ListNodegroups@ returns up to 100 results and a
-- @nextToken@ value if applicable.
--
-- 'clusterName', 'listNodegroups_clusterName' - The name of the Amazon EKS cluster that you would like to list node
-- groups in.
newListNodegroups ::
  -- | 'clusterName'
  Prelude.Text ->
  ListNodegroups
newListNodegroups pClusterName_ =
  ListNodegroups'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      clusterName = pClusterName_
    }

-- | The @nextToken@ value returned from a previous paginated
-- @ListNodegroups@ request where @maxResults@ was used and the results
-- exceeded the value of that parameter. Pagination continues from the end
-- of the previous results that returned the @nextToken@ value.
listNodegroups_nextToken :: Lens.Lens' ListNodegroups (Prelude.Maybe Prelude.Text)
listNodegroups_nextToken = Lens.lens (\ListNodegroups' {nextToken} -> nextToken) (\s@ListNodegroups' {} a -> s {nextToken = a} :: ListNodegroups)

-- | The maximum number of node group results returned by @ListNodegroups@ in
-- paginated output. When you use this parameter, @ListNodegroups@ returns
-- only @maxResults@ results in a single page along with a @nextToken@
-- response element. You can see the remaining results of the initial
-- request by sending another @ListNodegroups@ request with the returned
-- @nextToken@ value. This value can be between 1 and 100. If you don\'t
-- use this parameter, @ListNodegroups@ returns up to 100 results and a
-- @nextToken@ value if applicable.
listNodegroups_maxResults :: Lens.Lens' ListNodegroups (Prelude.Maybe Prelude.Natural)
listNodegroups_maxResults = Lens.lens (\ListNodegroups' {maxResults} -> maxResults) (\s@ListNodegroups' {} a -> s {maxResults = a} :: ListNodegroups)

-- | The name of the Amazon EKS cluster that you would like to list node
-- groups in.
listNodegroups_clusterName :: Lens.Lens' ListNodegroups Prelude.Text
listNodegroups_clusterName = Lens.lens (\ListNodegroups' {clusterName} -> clusterName) (\s@ListNodegroups' {} a -> s {clusterName = a} :: ListNodegroups)

instance Pager.AWSPager ListNodegroups where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? listNodegroupsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? listNodegroupsResponse_nodegroups
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& listNodegroups_nextToken
          Lens..~ rs
          Lens.^? listNodegroupsResponse_nextToken Prelude.. Lens._Just

instance Prelude.AWSRequest ListNodegroups where
  type Rs ListNodegroups = ListNodegroupsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListNodegroupsResponse'
            Prelude.<$> (x Prelude..?> "nextToken")
            Prelude.<*> ( x Prelude..?> "nodegroups"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListNodegroups

instance Prelude.NFData ListNodegroups

instance Prelude.ToHeaders ListNodegroups where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToPath ListNodegroups where
  toPath ListNodegroups' {..} =
    Prelude.mconcat
      [ "/clusters/",
        Prelude.toBS clusterName,
        "/node-groups"
      ]

instance Prelude.ToQuery ListNodegroups where
  toQuery ListNodegroups' {..} =
    Prelude.mconcat
      [ "nextToken" Prelude.=: nextToken,
        "maxResults" Prelude.=: maxResults
      ]

-- | /See:/ 'newListNodegroupsResponse' smart constructor.
data ListNodegroupsResponse = ListNodegroupsResponse'
  { -- | The @nextToken@ value to include in a future @ListNodegroups@ request.
    -- When the results of a @ListNodegroups@ request exceed @maxResults@, you
    -- can use this value to retrieve the next page of results. This value is
    -- @null@ when there are no more results to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of all of the node groups associated with the specified cluster.
    nodegroups :: Prelude.Maybe [Prelude.Text],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListNodegroupsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listNodegroupsResponse_nextToken' - The @nextToken@ value to include in a future @ListNodegroups@ request.
-- When the results of a @ListNodegroups@ request exceed @maxResults@, you
-- can use this value to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
--
-- 'nodegroups', 'listNodegroupsResponse_nodegroups' - A list of all of the node groups associated with the specified cluster.
--
-- 'httpStatus', 'listNodegroupsResponse_httpStatus' - The response's http status code.
newListNodegroupsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListNodegroupsResponse
newListNodegroupsResponse pHttpStatus_ =
  ListNodegroupsResponse'
    { nextToken =
        Prelude.Nothing,
      nodegroups = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The @nextToken@ value to include in a future @ListNodegroups@ request.
-- When the results of a @ListNodegroups@ request exceed @maxResults@, you
-- can use this value to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
listNodegroupsResponse_nextToken :: Lens.Lens' ListNodegroupsResponse (Prelude.Maybe Prelude.Text)
listNodegroupsResponse_nextToken = Lens.lens (\ListNodegroupsResponse' {nextToken} -> nextToken) (\s@ListNodegroupsResponse' {} a -> s {nextToken = a} :: ListNodegroupsResponse)

-- | A list of all of the node groups associated with the specified cluster.
listNodegroupsResponse_nodegroups :: Lens.Lens' ListNodegroupsResponse (Prelude.Maybe [Prelude.Text])
listNodegroupsResponse_nodegroups = Lens.lens (\ListNodegroupsResponse' {nodegroups} -> nodegroups) (\s@ListNodegroupsResponse' {} a -> s {nodegroups = a} :: ListNodegroupsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
listNodegroupsResponse_httpStatus :: Lens.Lens' ListNodegroupsResponse Prelude.Int
listNodegroupsResponse_httpStatus = Lens.lens (\ListNodegroupsResponse' {httpStatus} -> httpStatus) (\s@ListNodegroupsResponse' {} a -> s {httpStatus = a} :: ListNodegroupsResponse)

instance Prelude.NFData ListNodegroupsResponse
