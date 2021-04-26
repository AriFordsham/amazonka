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
-- Module      : Network.AWS.MigrationHub.ListApplicationStates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all the migration statuses for your applications. If you use the
-- optional @ApplicationIds@ parameter, only the migration statuses for
-- those applications will be returned.
--
-- This operation returns paginated results.
module Network.AWS.MigrationHub.ListApplicationStates
  ( -- * Creating a Request
    ListApplicationStates (..),
    newListApplicationStates,

    -- * Request Lenses
    listApplicationStates_nextToken,
    listApplicationStates_maxResults,
    listApplicationStates_applicationIds,

    -- * Destructuring the Response
    ListApplicationStatesResponse (..),
    newListApplicationStatesResponse,

    -- * Response Lenses
    listApplicationStatesResponse_applicationStateList,
    listApplicationStatesResponse_nextToken,
    listApplicationStatesResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.MigrationHub.Types
import Network.AWS.MigrationHub.Types.ApplicationState
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListApplicationStates' smart constructor.
data ListApplicationStates = ListApplicationStates'
  { -- | If a @NextToken@ was returned by a previous call, there are more results
    -- available. To retrieve the next page of results, make the call again
    -- using the returned token in @NextToken@.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Maximum number of results to be returned per page.
    maxResults :: Prelude.Maybe Prelude.Nat,
    -- | The configurationIds from the Application Discovery Service that
    -- uniquely identifies your applications.
    applicationIds :: Prelude.Maybe (Prelude.List1 Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListApplicationStates' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listApplicationStates_nextToken' - If a @NextToken@ was returned by a previous call, there are more results
-- available. To retrieve the next page of results, make the call again
-- using the returned token in @NextToken@.
--
-- 'maxResults', 'listApplicationStates_maxResults' - Maximum number of results to be returned per page.
--
-- 'applicationIds', 'listApplicationStates_applicationIds' - The configurationIds from the Application Discovery Service that
-- uniquely identifies your applications.
newListApplicationStates ::
  ListApplicationStates
newListApplicationStates =
  ListApplicationStates'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      applicationIds = Prelude.Nothing
    }

-- | If a @NextToken@ was returned by a previous call, there are more results
-- available. To retrieve the next page of results, make the call again
-- using the returned token in @NextToken@.
listApplicationStates_nextToken :: Lens.Lens' ListApplicationStates (Prelude.Maybe Prelude.Text)
listApplicationStates_nextToken = Lens.lens (\ListApplicationStates' {nextToken} -> nextToken) (\s@ListApplicationStates' {} a -> s {nextToken = a} :: ListApplicationStates)

-- | Maximum number of results to be returned per page.
listApplicationStates_maxResults :: Lens.Lens' ListApplicationStates (Prelude.Maybe Prelude.Natural)
listApplicationStates_maxResults = Lens.lens (\ListApplicationStates' {maxResults} -> maxResults) (\s@ListApplicationStates' {} a -> s {maxResults = a} :: ListApplicationStates) Prelude.. Lens.mapping Prelude._Nat

-- | The configurationIds from the Application Discovery Service that
-- uniquely identifies your applications.
listApplicationStates_applicationIds :: Lens.Lens' ListApplicationStates (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
listApplicationStates_applicationIds = Lens.lens (\ListApplicationStates' {applicationIds} -> applicationIds) (\s@ListApplicationStates' {} a -> s {applicationIds = a} :: ListApplicationStates) Prelude.. Lens.mapping Prelude._List1

instance Pager.AWSPager ListApplicationStates where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? listApplicationStatesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? listApplicationStatesResponse_applicationStateList
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& listApplicationStates_nextToken
          Lens..~ rs
          Lens.^? listApplicationStatesResponse_nextToken
            Prelude.. Lens._Just

instance Prelude.AWSRequest ListApplicationStates where
  type
    Rs ListApplicationStates =
      ListApplicationStatesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListApplicationStatesResponse'
            Prelude.<$> ( x Prelude..?> "ApplicationStateList"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (x Prelude..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListApplicationStates

instance Prelude.NFData ListApplicationStates

instance Prelude.ToHeaders ListApplicationStates where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "AWSMigrationHub.ListApplicationStates" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON ListApplicationStates where
  toJSON ListApplicationStates' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("NextToken" Prelude..=) Prelude.<$> nextToken,
            ("MaxResults" Prelude..=) Prelude.<$> maxResults,
            ("ApplicationIds" Prelude..=)
              Prelude.<$> applicationIds
          ]
      )

instance Prelude.ToPath ListApplicationStates where
  toPath = Prelude.const "/"

instance Prelude.ToQuery ListApplicationStates where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListApplicationStatesResponse' smart constructor.
data ListApplicationStatesResponse = ListApplicationStatesResponse'
  { -- | A list of Applications that exist in Application Discovery Service.
    applicationStateList :: Prelude.Maybe [ApplicationState],
    -- | If a @NextToken@ was returned by a previous call, there are more results
    -- available. To retrieve the next page of results, make the call again
    -- using the returned token in @NextToken@.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListApplicationStatesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationStateList', 'listApplicationStatesResponse_applicationStateList' - A list of Applications that exist in Application Discovery Service.
--
-- 'nextToken', 'listApplicationStatesResponse_nextToken' - If a @NextToken@ was returned by a previous call, there are more results
-- available. To retrieve the next page of results, make the call again
-- using the returned token in @NextToken@.
--
-- 'httpStatus', 'listApplicationStatesResponse_httpStatus' - The response's http status code.
newListApplicationStatesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListApplicationStatesResponse
newListApplicationStatesResponse pHttpStatus_ =
  ListApplicationStatesResponse'
    { applicationStateList =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of Applications that exist in Application Discovery Service.
listApplicationStatesResponse_applicationStateList :: Lens.Lens' ListApplicationStatesResponse (Prelude.Maybe [ApplicationState])
listApplicationStatesResponse_applicationStateList = Lens.lens (\ListApplicationStatesResponse' {applicationStateList} -> applicationStateList) (\s@ListApplicationStatesResponse' {} a -> s {applicationStateList = a} :: ListApplicationStatesResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | If a @NextToken@ was returned by a previous call, there are more results
-- available. To retrieve the next page of results, make the call again
-- using the returned token in @NextToken@.
listApplicationStatesResponse_nextToken :: Lens.Lens' ListApplicationStatesResponse (Prelude.Maybe Prelude.Text)
listApplicationStatesResponse_nextToken = Lens.lens (\ListApplicationStatesResponse' {nextToken} -> nextToken) (\s@ListApplicationStatesResponse' {} a -> s {nextToken = a} :: ListApplicationStatesResponse)

-- | The response's http status code.
listApplicationStatesResponse_httpStatus :: Lens.Lens' ListApplicationStatesResponse Prelude.Int
listApplicationStatesResponse_httpStatus = Lens.lens (\ListApplicationStatesResponse' {httpStatus} -> httpStatus) (\s@ListApplicationStatesResponse' {} a -> s {httpStatus = a} :: ListApplicationStatesResponse)

instance Prelude.NFData ListApplicationStatesResponse
