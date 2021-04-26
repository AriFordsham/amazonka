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
-- Module      : Network.AWS.AlexaBusiness.ListSkillsStoreCategories
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all categories in the Alexa skill store.
--
-- This operation returns paginated results.
module Network.AWS.AlexaBusiness.ListSkillsStoreCategories
  ( -- * Creating a Request
    ListSkillsStoreCategories (..),
    newListSkillsStoreCategories,

    -- * Request Lenses
    listSkillsStoreCategories_nextToken,
    listSkillsStoreCategories_maxResults,

    -- * Destructuring the Response
    ListSkillsStoreCategoriesResponse (..),
    newListSkillsStoreCategoriesResponse,

    -- * Response Lenses
    listSkillsStoreCategoriesResponse_nextToken,
    listSkillsStoreCategoriesResponse_categoryList,
    listSkillsStoreCategoriesResponse_httpStatus,
  )
where

import Network.AWS.AlexaBusiness.Types
import Network.AWS.AlexaBusiness.Types.Category
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListSkillsStoreCategories' smart constructor.
data ListSkillsStoreCategories = ListSkillsStoreCategories'
  { -- | The tokens used for pagination.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of categories returned, per paginated calls.
    maxResults :: Prelude.Maybe Prelude.Nat
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListSkillsStoreCategories' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listSkillsStoreCategories_nextToken' - The tokens used for pagination.
--
-- 'maxResults', 'listSkillsStoreCategories_maxResults' - The maximum number of categories returned, per paginated calls.
newListSkillsStoreCategories ::
  ListSkillsStoreCategories
newListSkillsStoreCategories =
  ListSkillsStoreCategories'
    { nextToken =
        Prelude.Nothing,
      maxResults = Prelude.Nothing
    }

-- | The tokens used for pagination.
listSkillsStoreCategories_nextToken :: Lens.Lens' ListSkillsStoreCategories (Prelude.Maybe Prelude.Text)
listSkillsStoreCategories_nextToken = Lens.lens (\ListSkillsStoreCategories' {nextToken} -> nextToken) (\s@ListSkillsStoreCategories' {} a -> s {nextToken = a} :: ListSkillsStoreCategories)

-- | The maximum number of categories returned, per paginated calls.
listSkillsStoreCategories_maxResults :: Lens.Lens' ListSkillsStoreCategories (Prelude.Maybe Prelude.Natural)
listSkillsStoreCategories_maxResults = Lens.lens (\ListSkillsStoreCategories' {maxResults} -> maxResults) (\s@ListSkillsStoreCategories' {} a -> s {maxResults = a} :: ListSkillsStoreCategories) Prelude.. Lens.mapping Prelude._Nat

instance Pager.AWSPager ListSkillsStoreCategories where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? listSkillsStoreCategoriesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? listSkillsStoreCategoriesResponse_categoryList
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& listSkillsStoreCategories_nextToken
          Lens..~ rs
          Lens.^? listSkillsStoreCategoriesResponse_nextToken
            Prelude.. Lens._Just

instance Prelude.AWSRequest ListSkillsStoreCategories where
  type
    Rs ListSkillsStoreCategories =
      ListSkillsStoreCategoriesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListSkillsStoreCategoriesResponse'
            Prelude.<$> (x Prelude..?> "NextToken")
            Prelude.<*> ( x Prelude..?> "CategoryList"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListSkillsStoreCategories

instance Prelude.NFData ListSkillsStoreCategories

instance Prelude.ToHeaders ListSkillsStoreCategories where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "AlexaForBusiness.ListSkillsStoreCategories" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON ListSkillsStoreCategories where
  toJSON ListSkillsStoreCategories' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("NextToken" Prelude..=) Prelude.<$> nextToken,
            ("MaxResults" Prelude..=) Prelude.<$> maxResults
          ]
      )

instance Prelude.ToPath ListSkillsStoreCategories where
  toPath = Prelude.const "/"

instance Prelude.ToQuery ListSkillsStoreCategories where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListSkillsStoreCategoriesResponse' smart constructor.
data ListSkillsStoreCategoriesResponse = ListSkillsStoreCategoriesResponse'
  { -- | The tokens used for pagination.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The list of categories.
    categoryList :: Prelude.Maybe [Category],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListSkillsStoreCategoriesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listSkillsStoreCategoriesResponse_nextToken' - The tokens used for pagination.
--
-- 'categoryList', 'listSkillsStoreCategoriesResponse_categoryList' - The list of categories.
--
-- 'httpStatus', 'listSkillsStoreCategoriesResponse_httpStatus' - The response's http status code.
newListSkillsStoreCategoriesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListSkillsStoreCategoriesResponse
newListSkillsStoreCategoriesResponse pHttpStatus_ =
  ListSkillsStoreCategoriesResponse'
    { nextToken =
        Prelude.Nothing,
      categoryList = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The tokens used for pagination.
listSkillsStoreCategoriesResponse_nextToken :: Lens.Lens' ListSkillsStoreCategoriesResponse (Prelude.Maybe Prelude.Text)
listSkillsStoreCategoriesResponse_nextToken = Lens.lens (\ListSkillsStoreCategoriesResponse' {nextToken} -> nextToken) (\s@ListSkillsStoreCategoriesResponse' {} a -> s {nextToken = a} :: ListSkillsStoreCategoriesResponse)

-- | The list of categories.
listSkillsStoreCategoriesResponse_categoryList :: Lens.Lens' ListSkillsStoreCategoriesResponse (Prelude.Maybe [Category])
listSkillsStoreCategoriesResponse_categoryList = Lens.lens (\ListSkillsStoreCategoriesResponse' {categoryList} -> categoryList) (\s@ListSkillsStoreCategoriesResponse' {} a -> s {categoryList = a} :: ListSkillsStoreCategoriesResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
listSkillsStoreCategoriesResponse_httpStatus :: Lens.Lens' ListSkillsStoreCategoriesResponse Prelude.Int
listSkillsStoreCategoriesResponse_httpStatus = Lens.lens (\ListSkillsStoreCategoriesResponse' {httpStatus} -> httpStatus) (\s@ListSkillsStoreCategoriesResponse' {} a -> s {httpStatus = a} :: ListSkillsStoreCategoriesResponse)

instance
  Prelude.NFData
    ListSkillsStoreCategoriesResponse
