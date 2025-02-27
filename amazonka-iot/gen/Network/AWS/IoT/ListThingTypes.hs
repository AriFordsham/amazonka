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
-- Module      : Network.AWS.IoT.ListThingTypes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the existing thing types.
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListThingTypes
  ( -- * Creating a Request
    ListThingTypes (..),
    newListThingTypes,

    -- * Request Lenses
    listThingTypes_nextToken,
    listThingTypes_maxResults,
    listThingTypes_thingTypeName,

    -- * Destructuring the Response
    ListThingTypesResponse (..),
    newListThingTypesResponse,

    -- * Response Lenses
    listThingTypesResponse_thingTypes,
    listThingTypesResponse_nextToken,
    listThingTypesResponse_httpStatus,
  )
where

import Network.AWS.IoT.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The input for the ListThingTypes operation.
--
-- /See:/ 'newListThingTypes' smart constructor.
data ListThingTypes = ListThingTypes'
  { -- | To retrieve the next set of results, the @nextToken@ value from a
    -- previous response; otherwise __null__ to receive the first set of
    -- results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results to return in this operation.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The name of the thing type.
    thingTypeName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListThingTypes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listThingTypes_nextToken' - To retrieve the next set of results, the @nextToken@ value from a
-- previous response; otherwise __null__ to receive the first set of
-- results.
--
-- 'maxResults', 'listThingTypes_maxResults' - The maximum number of results to return in this operation.
--
-- 'thingTypeName', 'listThingTypes_thingTypeName' - The name of the thing type.
newListThingTypes ::
  ListThingTypes
newListThingTypes =
  ListThingTypes'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      thingTypeName = Prelude.Nothing
    }

-- | To retrieve the next set of results, the @nextToken@ value from a
-- previous response; otherwise __null__ to receive the first set of
-- results.
listThingTypes_nextToken :: Lens.Lens' ListThingTypes (Prelude.Maybe Prelude.Text)
listThingTypes_nextToken = Lens.lens (\ListThingTypes' {nextToken} -> nextToken) (\s@ListThingTypes' {} a -> s {nextToken = a} :: ListThingTypes)

-- | The maximum number of results to return in this operation.
listThingTypes_maxResults :: Lens.Lens' ListThingTypes (Prelude.Maybe Prelude.Natural)
listThingTypes_maxResults = Lens.lens (\ListThingTypes' {maxResults} -> maxResults) (\s@ListThingTypes' {} a -> s {maxResults = a} :: ListThingTypes)

-- | The name of the thing type.
listThingTypes_thingTypeName :: Lens.Lens' ListThingTypes (Prelude.Maybe Prelude.Text)
listThingTypes_thingTypeName = Lens.lens (\ListThingTypes' {thingTypeName} -> thingTypeName) (\s@ListThingTypes' {} a -> s {thingTypeName = a} :: ListThingTypes)

instance Pager.AWSPager ListThingTypes where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? listThingTypesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? listThingTypesResponse_thingTypes
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& listThingTypes_nextToken
          Lens..~ rs
          Lens.^? listThingTypesResponse_nextToken Prelude.. Lens._Just

instance Prelude.AWSRequest ListThingTypes where
  type Rs ListThingTypes = ListThingTypesResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListThingTypesResponse'
            Prelude.<$> ( x Prelude..?> "thingTypes"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (x Prelude..?> "nextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListThingTypes

instance Prelude.NFData ListThingTypes

instance Prelude.ToHeaders ListThingTypes where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath ListThingTypes where
  toPath = Prelude.const "/thing-types"

instance Prelude.ToQuery ListThingTypes where
  toQuery ListThingTypes' {..} =
    Prelude.mconcat
      [ "nextToken" Prelude.=: nextToken,
        "maxResults" Prelude.=: maxResults,
        "thingTypeName" Prelude.=: thingTypeName
      ]

-- | The output for the ListThingTypes operation.
--
-- /See:/ 'newListThingTypesResponse' smart constructor.
data ListThingTypesResponse = ListThingTypesResponse'
  { -- | The thing types.
    thingTypes :: Prelude.Maybe [ThingTypeDefinition],
    -- | The token for the next set of results. Will not be returned if operation
    -- has returned all results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListThingTypesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'thingTypes', 'listThingTypesResponse_thingTypes' - The thing types.
--
-- 'nextToken', 'listThingTypesResponse_nextToken' - The token for the next set of results. Will not be returned if operation
-- has returned all results.
--
-- 'httpStatus', 'listThingTypesResponse_httpStatus' - The response's http status code.
newListThingTypesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListThingTypesResponse
newListThingTypesResponse pHttpStatus_ =
  ListThingTypesResponse'
    { thingTypes =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The thing types.
listThingTypesResponse_thingTypes :: Lens.Lens' ListThingTypesResponse (Prelude.Maybe [ThingTypeDefinition])
listThingTypesResponse_thingTypes = Lens.lens (\ListThingTypesResponse' {thingTypes} -> thingTypes) (\s@ListThingTypesResponse' {} a -> s {thingTypes = a} :: ListThingTypesResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The token for the next set of results. Will not be returned if operation
-- has returned all results.
listThingTypesResponse_nextToken :: Lens.Lens' ListThingTypesResponse (Prelude.Maybe Prelude.Text)
listThingTypesResponse_nextToken = Lens.lens (\ListThingTypesResponse' {nextToken} -> nextToken) (\s@ListThingTypesResponse' {} a -> s {nextToken = a} :: ListThingTypesResponse)

-- | The response's http status code.
listThingTypesResponse_httpStatus :: Lens.Lens' ListThingTypesResponse Prelude.Int
listThingTypesResponse_httpStatus = Lens.lens (\ListThingTypesResponse' {httpStatus} -> httpStatus) (\s@ListThingTypesResponse' {} a -> s {httpStatus = a} :: ListThingTypesResponse)

instance Prelude.NFData ListThingTypesResponse
