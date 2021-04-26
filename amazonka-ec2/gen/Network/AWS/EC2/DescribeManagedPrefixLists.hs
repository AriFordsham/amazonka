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
-- Module      : Network.AWS.EC2.DescribeManagedPrefixLists
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes your managed prefix lists and any AWS-managed prefix lists.
--
-- To view the entries for your prefix list, use
-- GetManagedPrefixListEntries.
--
-- This operation returns paginated results.
module Network.AWS.EC2.DescribeManagedPrefixLists
  ( -- * Creating a Request
    DescribeManagedPrefixLists (..),
    newDescribeManagedPrefixLists,

    -- * Request Lenses
    describeManagedPrefixLists_nextToken,
    describeManagedPrefixLists_prefixListIds,
    describeManagedPrefixLists_dryRun,
    describeManagedPrefixLists_maxResults,
    describeManagedPrefixLists_filters,

    -- * Destructuring the Response
    DescribeManagedPrefixListsResponse (..),
    newDescribeManagedPrefixListsResponse,

    -- * Response Lenses
    describeManagedPrefixListsResponse_nextToken,
    describeManagedPrefixListsResponse_prefixLists,
    describeManagedPrefixListsResponse_httpStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.EC2.Types.ManagedPrefixList
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeManagedPrefixLists' smart constructor.
data DescribeManagedPrefixLists = DescribeManagedPrefixLists'
  { -- | The token for the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | One or more prefix list IDs.
    prefixListIds :: Prelude.Maybe [Prelude.Text],
    -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The maximum number of results to return with a single call. To retrieve
    -- the remaining results, make another call with the returned @nextToken@
    -- value.
    maxResults :: Prelude.Maybe Prelude.Nat,
    -- | One or more filters.
    --
    -- -   @owner-id@ - The ID of the prefix list owner.
    --
    -- -   @prefix-list-id@ - The ID of the prefix list.
    --
    -- -   @prefix-list-name@ - The name of the prefix list.
    filters :: Prelude.Maybe [Filter]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeManagedPrefixLists' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeManagedPrefixLists_nextToken' - The token for the next page of results.
--
-- 'prefixListIds', 'describeManagedPrefixLists_prefixListIds' - One or more prefix list IDs.
--
-- 'dryRun', 'describeManagedPrefixLists_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'maxResults', 'describeManagedPrefixLists_maxResults' - The maximum number of results to return with a single call. To retrieve
-- the remaining results, make another call with the returned @nextToken@
-- value.
--
-- 'filters', 'describeManagedPrefixLists_filters' - One or more filters.
--
-- -   @owner-id@ - The ID of the prefix list owner.
--
-- -   @prefix-list-id@ - The ID of the prefix list.
--
-- -   @prefix-list-name@ - The name of the prefix list.
newDescribeManagedPrefixLists ::
  DescribeManagedPrefixLists
newDescribeManagedPrefixLists =
  DescribeManagedPrefixLists'
    { nextToken =
        Prelude.Nothing,
      prefixListIds = Prelude.Nothing,
      dryRun = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      filters = Prelude.Nothing
    }

-- | The token for the next page of results.
describeManagedPrefixLists_nextToken :: Lens.Lens' DescribeManagedPrefixLists (Prelude.Maybe Prelude.Text)
describeManagedPrefixLists_nextToken = Lens.lens (\DescribeManagedPrefixLists' {nextToken} -> nextToken) (\s@DescribeManagedPrefixLists' {} a -> s {nextToken = a} :: DescribeManagedPrefixLists)

-- | One or more prefix list IDs.
describeManagedPrefixLists_prefixListIds :: Lens.Lens' DescribeManagedPrefixLists (Prelude.Maybe [Prelude.Text])
describeManagedPrefixLists_prefixListIds = Lens.lens (\DescribeManagedPrefixLists' {prefixListIds} -> prefixListIds) (\s@DescribeManagedPrefixLists' {} a -> s {prefixListIds = a} :: DescribeManagedPrefixLists) Prelude.. Lens.mapping Prelude._Coerce

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
describeManagedPrefixLists_dryRun :: Lens.Lens' DescribeManagedPrefixLists (Prelude.Maybe Prelude.Bool)
describeManagedPrefixLists_dryRun = Lens.lens (\DescribeManagedPrefixLists' {dryRun} -> dryRun) (\s@DescribeManagedPrefixLists' {} a -> s {dryRun = a} :: DescribeManagedPrefixLists)

-- | The maximum number of results to return with a single call. To retrieve
-- the remaining results, make another call with the returned @nextToken@
-- value.
describeManagedPrefixLists_maxResults :: Lens.Lens' DescribeManagedPrefixLists (Prelude.Maybe Prelude.Natural)
describeManagedPrefixLists_maxResults = Lens.lens (\DescribeManagedPrefixLists' {maxResults} -> maxResults) (\s@DescribeManagedPrefixLists' {} a -> s {maxResults = a} :: DescribeManagedPrefixLists) Prelude.. Lens.mapping Prelude._Nat

-- | One or more filters.
--
-- -   @owner-id@ - The ID of the prefix list owner.
--
-- -   @prefix-list-id@ - The ID of the prefix list.
--
-- -   @prefix-list-name@ - The name of the prefix list.
describeManagedPrefixLists_filters :: Lens.Lens' DescribeManagedPrefixLists (Prelude.Maybe [Filter])
describeManagedPrefixLists_filters = Lens.lens (\DescribeManagedPrefixLists' {filters} -> filters) (\s@DescribeManagedPrefixLists' {} a -> s {filters = a} :: DescribeManagedPrefixLists) Prelude.. Lens.mapping Prelude._Coerce

instance Pager.AWSPager DescribeManagedPrefixLists where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? describeManagedPrefixListsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? describeManagedPrefixListsResponse_prefixLists
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& describeManagedPrefixLists_nextToken
          Lens..~ rs
          Lens.^? describeManagedPrefixListsResponse_nextToken
            Prelude.. Lens._Just

instance
  Prelude.AWSRequest
    DescribeManagedPrefixLists
  where
  type
    Rs DescribeManagedPrefixLists =
      DescribeManagedPrefixListsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          DescribeManagedPrefixListsResponse'
            Prelude.<$> (x Prelude..@? "nextToken")
            Prelude.<*> ( x Prelude..@? "prefixListSet"
                            Prelude..!@ Prelude.mempty
                            Prelude.>>= Prelude.may (Prelude.parseXMLList "item")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeManagedPrefixLists

instance Prelude.NFData DescribeManagedPrefixLists

instance Prelude.ToHeaders DescribeManagedPrefixLists where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath DescribeManagedPrefixLists where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DescribeManagedPrefixLists where
  toQuery DescribeManagedPrefixLists' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("DescribeManagedPrefixLists" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2016-11-15" :: Prelude.ByteString),
        "NextToken" Prelude.=: nextToken,
        Prelude.toQuery
          ( Prelude.toQueryList "PrefixListId"
              Prelude.<$> prefixListIds
          ),
        "DryRun" Prelude.=: dryRun,
        "MaxResults" Prelude.=: maxResults,
        Prelude.toQuery
          (Prelude.toQueryList "Filter" Prelude.<$> filters)
      ]

-- | /See:/ 'newDescribeManagedPrefixListsResponse' smart constructor.
data DescribeManagedPrefixListsResponse = DescribeManagedPrefixListsResponse'
  { -- | The token to use to retrieve the next page of results. This value is
    -- @null@ when there are no more results to return.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Information about the prefix lists.
    prefixLists :: Prelude.Maybe [ManagedPrefixList],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeManagedPrefixListsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeManagedPrefixListsResponse_nextToken' - The token to use to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
--
-- 'prefixLists', 'describeManagedPrefixListsResponse_prefixLists' - Information about the prefix lists.
--
-- 'httpStatus', 'describeManagedPrefixListsResponse_httpStatus' - The response's http status code.
newDescribeManagedPrefixListsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeManagedPrefixListsResponse
newDescribeManagedPrefixListsResponse pHttpStatus_ =
  DescribeManagedPrefixListsResponse'
    { nextToken =
        Prelude.Nothing,
      prefixLists = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token to use to retrieve the next page of results. This value is
-- @null@ when there are no more results to return.
describeManagedPrefixListsResponse_nextToken :: Lens.Lens' DescribeManagedPrefixListsResponse (Prelude.Maybe Prelude.Text)
describeManagedPrefixListsResponse_nextToken = Lens.lens (\DescribeManagedPrefixListsResponse' {nextToken} -> nextToken) (\s@DescribeManagedPrefixListsResponse' {} a -> s {nextToken = a} :: DescribeManagedPrefixListsResponse)

-- | Information about the prefix lists.
describeManagedPrefixListsResponse_prefixLists :: Lens.Lens' DescribeManagedPrefixListsResponse (Prelude.Maybe [ManagedPrefixList])
describeManagedPrefixListsResponse_prefixLists = Lens.lens (\DescribeManagedPrefixListsResponse' {prefixLists} -> prefixLists) (\s@DescribeManagedPrefixListsResponse' {} a -> s {prefixLists = a} :: DescribeManagedPrefixListsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
describeManagedPrefixListsResponse_httpStatus :: Lens.Lens' DescribeManagedPrefixListsResponse Prelude.Int
describeManagedPrefixListsResponse_httpStatus = Lens.lens (\DescribeManagedPrefixListsResponse' {httpStatus} -> httpStatus) (\s@DescribeManagedPrefixListsResponse' {} a -> s {httpStatus = a} :: DescribeManagedPrefixListsResponse)

instance
  Prelude.NFData
    DescribeManagedPrefixListsResponse
