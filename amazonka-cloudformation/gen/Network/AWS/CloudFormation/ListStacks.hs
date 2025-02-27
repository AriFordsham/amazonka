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
-- Module      : Network.AWS.CloudFormation.ListStacks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the summary information for stacks whose status matches the
-- specified StackStatusFilter. Summary information for stacks that have
-- been deleted is kept for 90 days after the stack is deleted. If no
-- StackStatusFilter is specified, summary information for all stacks is
-- returned (including existing stacks and stacks that have been deleted).
--
-- This operation returns paginated results.
module Network.AWS.CloudFormation.ListStacks
  ( -- * Creating a Request
    ListStacks (..),
    newListStacks,

    -- * Request Lenses
    listStacks_nextToken,
    listStacks_stackStatusFilter,

    -- * Destructuring the Response
    ListStacksResponse (..),
    newListStacksResponse,

    -- * Response Lenses
    listStacksResponse_nextToken,
    listStacksResponse_stackSummaries,
    listStacksResponse_httpStatus,
  )
where

import Network.AWS.CloudFormation.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The input for ListStacks action.
--
-- /See:/ 'newListStacks' smart constructor.
data ListStacks = ListStacks'
  { -- | A string that identifies the next page of stacks that you want to
    -- retrieve.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Stack status to use as a filter. Specify one or more stack status codes
    -- to list only stacks with the specified status codes. For a complete list
    -- of stack status codes, see the @StackStatus@ parameter of the Stack data
    -- type.
    stackStatusFilter :: Prelude.Maybe [StackStatus]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListStacks' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listStacks_nextToken' - A string that identifies the next page of stacks that you want to
-- retrieve.
--
-- 'stackStatusFilter', 'listStacks_stackStatusFilter' - Stack status to use as a filter. Specify one or more stack status codes
-- to list only stacks with the specified status codes. For a complete list
-- of stack status codes, see the @StackStatus@ parameter of the Stack data
-- type.
newListStacks ::
  ListStacks
newListStacks =
  ListStacks'
    { nextToken = Prelude.Nothing,
      stackStatusFilter = Prelude.Nothing
    }

-- | A string that identifies the next page of stacks that you want to
-- retrieve.
listStacks_nextToken :: Lens.Lens' ListStacks (Prelude.Maybe Prelude.Text)
listStacks_nextToken = Lens.lens (\ListStacks' {nextToken} -> nextToken) (\s@ListStacks' {} a -> s {nextToken = a} :: ListStacks)

-- | Stack status to use as a filter. Specify one or more stack status codes
-- to list only stacks with the specified status codes. For a complete list
-- of stack status codes, see the @StackStatus@ parameter of the Stack data
-- type.
listStacks_stackStatusFilter :: Lens.Lens' ListStacks (Prelude.Maybe [StackStatus])
listStacks_stackStatusFilter = Lens.lens (\ListStacks' {stackStatusFilter} -> stackStatusFilter) (\s@ListStacks' {} a -> s {stackStatusFilter = a} :: ListStacks) Prelude.. Lens.mapping Prelude._Coerce

instance Pager.AWSPager ListStacks where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? listStacksResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? listStacksResponse_stackSummaries
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& listStacks_nextToken
          Lens..~ rs
          Lens.^? listStacksResponse_nextToken Prelude.. Lens._Just

instance Prelude.AWSRequest ListStacks where
  type Rs ListStacks = ListStacksResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "ListStacksResult"
      ( \s h x ->
          ListStacksResponse'
            Prelude.<$> (x Prelude..@? "NextToken")
            Prelude.<*> ( x Prelude..@? "StackSummaries"
                            Prelude..!@ Prelude.mempty
                            Prelude.>>= Prelude.may (Prelude.parseXMLList "member")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListStacks

instance Prelude.NFData ListStacks

instance Prelude.ToHeaders ListStacks where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath ListStacks where
  toPath = Prelude.const "/"

instance Prelude.ToQuery ListStacks where
  toQuery ListStacks' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("ListStacks" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2010-05-15" :: Prelude.ByteString),
        "NextToken" Prelude.=: nextToken,
        "StackStatusFilter"
          Prelude.=: Prelude.toQuery
            ( Prelude.toQueryList "member"
                Prelude.<$> stackStatusFilter
            )
      ]

-- | The output for ListStacks action.
--
-- /See:/ 'newListStacksResponse' smart constructor.
data ListStacksResponse = ListStacksResponse'
  { -- | If the output exceeds 1 MB in size, a string that identifies the next
    -- page of stacks. If no additional page exists, this value is null.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of @StackSummary@ structures containing information about the
    -- specified stacks.
    stackSummaries :: Prelude.Maybe [StackSummary],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListStacksResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listStacksResponse_nextToken' - If the output exceeds 1 MB in size, a string that identifies the next
-- page of stacks. If no additional page exists, this value is null.
--
-- 'stackSummaries', 'listStacksResponse_stackSummaries' - A list of @StackSummary@ structures containing information about the
-- specified stacks.
--
-- 'httpStatus', 'listStacksResponse_httpStatus' - The response's http status code.
newListStacksResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListStacksResponse
newListStacksResponse pHttpStatus_ =
  ListStacksResponse'
    { nextToken = Prelude.Nothing,
      stackSummaries = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If the output exceeds 1 MB in size, a string that identifies the next
-- page of stacks. If no additional page exists, this value is null.
listStacksResponse_nextToken :: Lens.Lens' ListStacksResponse (Prelude.Maybe Prelude.Text)
listStacksResponse_nextToken = Lens.lens (\ListStacksResponse' {nextToken} -> nextToken) (\s@ListStacksResponse' {} a -> s {nextToken = a} :: ListStacksResponse)

-- | A list of @StackSummary@ structures containing information about the
-- specified stacks.
listStacksResponse_stackSummaries :: Lens.Lens' ListStacksResponse (Prelude.Maybe [StackSummary])
listStacksResponse_stackSummaries = Lens.lens (\ListStacksResponse' {stackSummaries} -> stackSummaries) (\s@ListStacksResponse' {} a -> s {stackSummaries = a} :: ListStacksResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
listStacksResponse_httpStatus :: Lens.Lens' ListStacksResponse Prelude.Int
listStacksResponse_httpStatus = Lens.lens (\ListStacksResponse' {httpStatus} -> httpStatus) (\s@ListStacksResponse' {} a -> s {httpStatus = a} :: ListStacksResponse)

instance Prelude.NFData ListStacksResponse
