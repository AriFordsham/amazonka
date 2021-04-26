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
-- Module      : Network.AWS.Lambda.ListFunctions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of Lambda functions, with the version-specific
-- configuration of each. Lambda returns up to 50 functions per call.
--
-- Set @FunctionVersion@ to @ALL@ to include all published versions of each
-- function in addition to the unpublished version. To get more information
-- about a function or version, use GetFunction.
--
-- This operation returns paginated results.
module Network.AWS.Lambda.ListFunctions
  ( -- * Creating a Request
    ListFunctions (..),
    newListFunctions,

    -- * Request Lenses
    listFunctions_masterRegion,
    listFunctions_functionVersion,
    listFunctions_maxItems,
    listFunctions_marker,

    -- * Destructuring the Response
    ListFunctionsResponse (..),
    newListFunctionsResponse,

    -- * Response Lenses
    listFunctionsResponse_functions,
    listFunctionsResponse_nextMarker,
    listFunctionsResponse_httpStatus,
  )
where

import Network.AWS.Lambda.Types
import Network.AWS.Lambda.Types.FunctionConfiguration
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListFunctions' smart constructor.
data ListFunctions = ListFunctions'
  { -- | For Lambda\@Edge functions, the AWS Region of the master function. For
    -- example, @us-east-1@ filters the list of functions to only include
    -- Lambda\@Edge functions replicated from a master function in US East (N.
    -- Virginia). If specified, you must set @FunctionVersion@ to @ALL@.
    masterRegion :: Prelude.Maybe Prelude.Text,
    -- | Set to @ALL@ to include entries for all published versions of each
    -- function.
    functionVersion :: Prelude.Maybe FunctionVersion,
    -- | The maximum number of functions to return.
    maxItems :: Prelude.Maybe Prelude.Nat,
    -- | Specify the pagination token that\'s returned by a previous request to
    -- retrieve the next page of results.
    marker :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListFunctions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'masterRegion', 'listFunctions_masterRegion' - For Lambda\@Edge functions, the AWS Region of the master function. For
-- example, @us-east-1@ filters the list of functions to only include
-- Lambda\@Edge functions replicated from a master function in US East (N.
-- Virginia). If specified, you must set @FunctionVersion@ to @ALL@.
--
-- 'functionVersion', 'listFunctions_functionVersion' - Set to @ALL@ to include entries for all published versions of each
-- function.
--
-- 'maxItems', 'listFunctions_maxItems' - The maximum number of functions to return.
--
-- 'marker', 'listFunctions_marker' - Specify the pagination token that\'s returned by a previous request to
-- retrieve the next page of results.
newListFunctions ::
  ListFunctions
newListFunctions =
  ListFunctions'
    { masterRegion = Prelude.Nothing,
      functionVersion = Prelude.Nothing,
      maxItems = Prelude.Nothing,
      marker = Prelude.Nothing
    }

-- | For Lambda\@Edge functions, the AWS Region of the master function. For
-- example, @us-east-1@ filters the list of functions to only include
-- Lambda\@Edge functions replicated from a master function in US East (N.
-- Virginia). If specified, you must set @FunctionVersion@ to @ALL@.
listFunctions_masterRegion :: Lens.Lens' ListFunctions (Prelude.Maybe Prelude.Text)
listFunctions_masterRegion = Lens.lens (\ListFunctions' {masterRegion} -> masterRegion) (\s@ListFunctions' {} a -> s {masterRegion = a} :: ListFunctions)

-- | Set to @ALL@ to include entries for all published versions of each
-- function.
listFunctions_functionVersion :: Lens.Lens' ListFunctions (Prelude.Maybe FunctionVersion)
listFunctions_functionVersion = Lens.lens (\ListFunctions' {functionVersion} -> functionVersion) (\s@ListFunctions' {} a -> s {functionVersion = a} :: ListFunctions)

-- | The maximum number of functions to return.
listFunctions_maxItems :: Lens.Lens' ListFunctions (Prelude.Maybe Prelude.Natural)
listFunctions_maxItems = Lens.lens (\ListFunctions' {maxItems} -> maxItems) (\s@ListFunctions' {} a -> s {maxItems = a} :: ListFunctions) Prelude.. Lens.mapping Prelude._Nat

-- | Specify the pagination token that\'s returned by a previous request to
-- retrieve the next page of results.
listFunctions_marker :: Lens.Lens' ListFunctions (Prelude.Maybe Prelude.Text)
listFunctions_marker = Lens.lens (\ListFunctions' {marker} -> marker) (\s@ListFunctions' {} a -> s {marker = a} :: ListFunctions)

instance Pager.AWSPager ListFunctions where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? listFunctionsResponse_nextMarker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? listFunctionsResponse_functions Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& listFunctions_marker
          Lens..~ rs
          Lens.^? listFunctionsResponse_nextMarker Prelude.. Lens._Just

instance Prelude.AWSRequest ListFunctions where
  type Rs ListFunctions = ListFunctionsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListFunctionsResponse'
            Prelude.<$> ( x Prelude..?> "Functions"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (x Prelude..?> "NextMarker")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListFunctions

instance Prelude.NFData ListFunctions

instance Prelude.ToHeaders ListFunctions where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath ListFunctions where
  toPath = Prelude.const "/2015-03-31/functions/"

instance Prelude.ToQuery ListFunctions where
  toQuery ListFunctions' {..} =
    Prelude.mconcat
      [ "MasterRegion" Prelude.=: masterRegion,
        "FunctionVersion" Prelude.=: functionVersion,
        "MaxItems" Prelude.=: maxItems,
        "Marker" Prelude.=: marker
      ]

-- | A list of Lambda functions.
--
-- /See:/ 'newListFunctionsResponse' smart constructor.
data ListFunctionsResponse = ListFunctionsResponse'
  { -- | A list of Lambda functions.
    functions :: Prelude.Maybe [FunctionConfiguration],
    -- | The pagination token that\'s included if more results are available.
    nextMarker :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListFunctionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'functions', 'listFunctionsResponse_functions' - A list of Lambda functions.
--
-- 'nextMarker', 'listFunctionsResponse_nextMarker' - The pagination token that\'s included if more results are available.
--
-- 'httpStatus', 'listFunctionsResponse_httpStatus' - The response's http status code.
newListFunctionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListFunctionsResponse
newListFunctionsResponse pHttpStatus_ =
  ListFunctionsResponse'
    { functions = Prelude.Nothing,
      nextMarker = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of Lambda functions.
listFunctionsResponse_functions :: Lens.Lens' ListFunctionsResponse (Prelude.Maybe [FunctionConfiguration])
listFunctionsResponse_functions = Lens.lens (\ListFunctionsResponse' {functions} -> functions) (\s@ListFunctionsResponse' {} a -> s {functions = a} :: ListFunctionsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The pagination token that\'s included if more results are available.
listFunctionsResponse_nextMarker :: Lens.Lens' ListFunctionsResponse (Prelude.Maybe Prelude.Text)
listFunctionsResponse_nextMarker = Lens.lens (\ListFunctionsResponse' {nextMarker} -> nextMarker) (\s@ListFunctionsResponse' {} a -> s {nextMarker = a} :: ListFunctionsResponse)

-- | The response's http status code.
listFunctionsResponse_httpStatus :: Lens.Lens' ListFunctionsResponse Prelude.Int
listFunctionsResponse_httpStatus = Lens.lens (\ListFunctionsResponse' {httpStatus} -> httpStatus) (\s@ListFunctionsResponse' {} a -> s {httpStatus = a} :: ListFunctionsResponse)

instance Prelude.NFData ListFunctionsResponse
