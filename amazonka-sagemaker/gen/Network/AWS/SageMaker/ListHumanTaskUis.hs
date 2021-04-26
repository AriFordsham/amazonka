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
-- Module      : Network.AWS.SageMaker.ListHumanTaskUis
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the human task user interfaces in your
-- account.
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListHumanTaskUis
  ( -- * Creating a Request
    ListHumanTaskUis (..),
    newListHumanTaskUis,

    -- * Request Lenses
    listHumanTaskUis_sortOrder,
    listHumanTaskUis_nextToken,
    listHumanTaskUis_maxResults,
    listHumanTaskUis_creationTimeBefore,
    listHumanTaskUis_creationTimeAfter,

    -- * Destructuring the Response
    ListHumanTaskUisResponse (..),
    newListHumanTaskUisResponse,

    -- * Response Lenses
    listHumanTaskUisResponse_nextToken,
    listHumanTaskUisResponse_httpStatus,
    listHumanTaskUisResponse_humanTaskUiSummaries,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SageMaker.Types
import Network.AWS.SageMaker.Types.HumanTaskUiSummary

-- | /See:/ 'newListHumanTaskUis' smart constructor.
data ListHumanTaskUis = ListHumanTaskUis'
  { -- | An optional value that specifies whether you want the results sorted in
    -- @Ascending@ or @Descending@ order.
    sortOrder :: Prelude.Maybe SortOrder,
    -- | A token to resume pagination.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The total number of items to return. If the total number of available
    -- items is more than the value specified in @MaxResults@, then a
    -- @NextToken@ will be provided in the output that you can use to resume
    -- pagination.
    maxResults :: Prelude.Maybe Prelude.Nat,
    -- | A filter that returns only human task user interfaces that were created
    -- before the specified timestamp.
    creationTimeBefore :: Prelude.Maybe Prelude.POSIX,
    -- | A filter that returns only human task user interfaces with a creation
    -- time greater than or equal to the specified timestamp.
    creationTimeAfter :: Prelude.Maybe Prelude.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListHumanTaskUis' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sortOrder', 'listHumanTaskUis_sortOrder' - An optional value that specifies whether you want the results sorted in
-- @Ascending@ or @Descending@ order.
--
-- 'nextToken', 'listHumanTaskUis_nextToken' - A token to resume pagination.
--
-- 'maxResults', 'listHumanTaskUis_maxResults' - The total number of items to return. If the total number of available
-- items is more than the value specified in @MaxResults@, then a
-- @NextToken@ will be provided in the output that you can use to resume
-- pagination.
--
-- 'creationTimeBefore', 'listHumanTaskUis_creationTimeBefore' - A filter that returns only human task user interfaces that were created
-- before the specified timestamp.
--
-- 'creationTimeAfter', 'listHumanTaskUis_creationTimeAfter' - A filter that returns only human task user interfaces with a creation
-- time greater than or equal to the specified timestamp.
newListHumanTaskUis ::
  ListHumanTaskUis
newListHumanTaskUis =
  ListHumanTaskUis'
    { sortOrder = Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      creationTimeBefore = Prelude.Nothing,
      creationTimeAfter = Prelude.Nothing
    }

-- | An optional value that specifies whether you want the results sorted in
-- @Ascending@ or @Descending@ order.
listHumanTaskUis_sortOrder :: Lens.Lens' ListHumanTaskUis (Prelude.Maybe SortOrder)
listHumanTaskUis_sortOrder = Lens.lens (\ListHumanTaskUis' {sortOrder} -> sortOrder) (\s@ListHumanTaskUis' {} a -> s {sortOrder = a} :: ListHumanTaskUis)

-- | A token to resume pagination.
listHumanTaskUis_nextToken :: Lens.Lens' ListHumanTaskUis (Prelude.Maybe Prelude.Text)
listHumanTaskUis_nextToken = Lens.lens (\ListHumanTaskUis' {nextToken} -> nextToken) (\s@ListHumanTaskUis' {} a -> s {nextToken = a} :: ListHumanTaskUis)

-- | The total number of items to return. If the total number of available
-- items is more than the value specified in @MaxResults@, then a
-- @NextToken@ will be provided in the output that you can use to resume
-- pagination.
listHumanTaskUis_maxResults :: Lens.Lens' ListHumanTaskUis (Prelude.Maybe Prelude.Natural)
listHumanTaskUis_maxResults = Lens.lens (\ListHumanTaskUis' {maxResults} -> maxResults) (\s@ListHumanTaskUis' {} a -> s {maxResults = a} :: ListHumanTaskUis) Prelude.. Lens.mapping Prelude._Nat

-- | A filter that returns only human task user interfaces that were created
-- before the specified timestamp.
listHumanTaskUis_creationTimeBefore :: Lens.Lens' ListHumanTaskUis (Prelude.Maybe Prelude.UTCTime)
listHumanTaskUis_creationTimeBefore = Lens.lens (\ListHumanTaskUis' {creationTimeBefore} -> creationTimeBefore) (\s@ListHumanTaskUis' {} a -> s {creationTimeBefore = a} :: ListHumanTaskUis) Prelude.. Lens.mapping Prelude._Time

-- | A filter that returns only human task user interfaces with a creation
-- time greater than or equal to the specified timestamp.
listHumanTaskUis_creationTimeAfter :: Lens.Lens' ListHumanTaskUis (Prelude.Maybe Prelude.UTCTime)
listHumanTaskUis_creationTimeAfter = Lens.lens (\ListHumanTaskUis' {creationTimeAfter} -> creationTimeAfter) (\s@ListHumanTaskUis' {} a -> s {creationTimeAfter = a} :: ListHumanTaskUis) Prelude.. Lens.mapping Prelude._Time

instance Pager.AWSPager ListHumanTaskUis where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? listHumanTaskUisResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^. listHumanTaskUisResponse_humanTaskUiSummaries
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& listHumanTaskUis_nextToken
          Lens..~ rs
          Lens.^? listHumanTaskUisResponse_nextToken
            Prelude.. Lens._Just

instance Prelude.AWSRequest ListHumanTaskUis where
  type Rs ListHumanTaskUis = ListHumanTaskUisResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListHumanTaskUisResponse'
            Prelude.<$> (x Prelude..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Prelude..?> "HumanTaskUiSummaries"
                            Prelude..!@ Prelude.mempty
                        )
      )

instance Prelude.Hashable ListHumanTaskUis

instance Prelude.NFData ListHumanTaskUis

instance Prelude.ToHeaders ListHumanTaskUis where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ("SageMaker.ListHumanTaskUis" :: Prelude.ByteString),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON ListHumanTaskUis where
  toJSON ListHumanTaskUis' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("SortOrder" Prelude..=) Prelude.<$> sortOrder,
            ("NextToken" Prelude..=) Prelude.<$> nextToken,
            ("MaxResults" Prelude..=) Prelude.<$> maxResults,
            ("CreationTimeBefore" Prelude..=)
              Prelude.<$> creationTimeBefore,
            ("CreationTimeAfter" Prelude..=)
              Prelude.<$> creationTimeAfter
          ]
      )

instance Prelude.ToPath ListHumanTaskUis where
  toPath = Prelude.const "/"

instance Prelude.ToQuery ListHumanTaskUis where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListHumanTaskUisResponse' smart constructor.
data ListHumanTaskUisResponse = ListHumanTaskUisResponse'
  { -- | A token to resume pagination.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | An array of objects describing the human task user interfaces.
    humanTaskUiSummaries :: [HumanTaskUiSummary]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListHumanTaskUisResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listHumanTaskUisResponse_nextToken' - A token to resume pagination.
--
-- 'httpStatus', 'listHumanTaskUisResponse_httpStatus' - The response's http status code.
--
-- 'humanTaskUiSummaries', 'listHumanTaskUisResponse_humanTaskUiSummaries' - An array of objects describing the human task user interfaces.
newListHumanTaskUisResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListHumanTaskUisResponse
newListHumanTaskUisResponse pHttpStatus_ =
  ListHumanTaskUisResponse'
    { nextToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_,
      humanTaskUiSummaries = Prelude.mempty
    }

-- | A token to resume pagination.
listHumanTaskUisResponse_nextToken :: Lens.Lens' ListHumanTaskUisResponse (Prelude.Maybe Prelude.Text)
listHumanTaskUisResponse_nextToken = Lens.lens (\ListHumanTaskUisResponse' {nextToken} -> nextToken) (\s@ListHumanTaskUisResponse' {} a -> s {nextToken = a} :: ListHumanTaskUisResponse)

-- | The response's http status code.
listHumanTaskUisResponse_httpStatus :: Lens.Lens' ListHumanTaskUisResponse Prelude.Int
listHumanTaskUisResponse_httpStatus = Lens.lens (\ListHumanTaskUisResponse' {httpStatus} -> httpStatus) (\s@ListHumanTaskUisResponse' {} a -> s {httpStatus = a} :: ListHumanTaskUisResponse)

-- | An array of objects describing the human task user interfaces.
listHumanTaskUisResponse_humanTaskUiSummaries :: Lens.Lens' ListHumanTaskUisResponse [HumanTaskUiSummary]
listHumanTaskUisResponse_humanTaskUiSummaries = Lens.lens (\ListHumanTaskUisResponse' {humanTaskUiSummaries} -> humanTaskUiSummaries) (\s@ListHumanTaskUisResponse' {} a -> s {humanTaskUiSummaries = a} :: ListHumanTaskUisResponse) Prelude.. Prelude._Coerce

instance Prelude.NFData ListHumanTaskUisResponse
