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
-- Module      : Network.AWS.ElasticTranscoder.ListPipelines
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The ListPipelines operation gets a list of the pipelines associated with
-- the current AWS account.
--
-- This operation returns paginated results.
module Network.AWS.ElasticTranscoder.ListPipelines
  ( -- * Creating a Request
    ListPipelines (..),
    newListPipelines,

    -- * Request Lenses
    listPipelines_ascending,
    listPipelines_pageToken,

    -- * Destructuring the Response
    ListPipelinesResponse (..),
    newListPipelinesResponse,

    -- * Response Lenses
    listPipelinesResponse_nextPageToken,
    listPipelinesResponse_pipelines,
    listPipelinesResponse_httpStatus,
  )
where

import Network.AWS.ElasticTranscoder.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The @ListPipelineRequest@ structure.
--
-- /See:/ 'newListPipelines' smart constructor.
data ListPipelines = ListPipelines'
  { -- | To list pipelines in chronological order by the date and time that they
    -- were created, enter @true@. To list pipelines in reverse chronological
    -- order, enter @false@.
    ascending :: Prelude.Maybe Prelude.Text,
    -- | When Elastic Transcoder returns more than one page of results, use
    -- @pageToken@ in subsequent @GET@ requests to get each successive page of
    -- results.
    pageToken :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListPipelines' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ascending', 'listPipelines_ascending' - To list pipelines in chronological order by the date and time that they
-- were created, enter @true@. To list pipelines in reverse chronological
-- order, enter @false@.
--
-- 'pageToken', 'listPipelines_pageToken' - When Elastic Transcoder returns more than one page of results, use
-- @pageToken@ in subsequent @GET@ requests to get each successive page of
-- results.
newListPipelines ::
  ListPipelines
newListPipelines =
  ListPipelines'
    { ascending = Prelude.Nothing,
      pageToken = Prelude.Nothing
    }

-- | To list pipelines in chronological order by the date and time that they
-- were created, enter @true@. To list pipelines in reverse chronological
-- order, enter @false@.
listPipelines_ascending :: Lens.Lens' ListPipelines (Prelude.Maybe Prelude.Text)
listPipelines_ascending = Lens.lens (\ListPipelines' {ascending} -> ascending) (\s@ListPipelines' {} a -> s {ascending = a} :: ListPipelines)

-- | When Elastic Transcoder returns more than one page of results, use
-- @pageToken@ in subsequent @GET@ requests to get each successive page of
-- results.
listPipelines_pageToken :: Lens.Lens' ListPipelines (Prelude.Maybe Prelude.Text)
listPipelines_pageToken = Lens.lens (\ListPipelines' {pageToken} -> pageToken) (\s@ListPipelines' {} a -> s {pageToken = a} :: ListPipelines)

instance Pager.AWSPager ListPipelines where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? listPipelinesResponse_nextPageToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? listPipelinesResponse_pipelines Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& listPipelines_pageToken
          Lens..~ rs
          Lens.^? listPipelinesResponse_nextPageToken
            Prelude.. Lens._Just

instance Prelude.AWSRequest ListPipelines where
  type Rs ListPipelines = ListPipelinesResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListPipelinesResponse'
            Prelude.<$> (x Prelude..?> "NextPageToken")
            Prelude.<*> ( x Prelude..?> "Pipelines"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListPipelines

instance Prelude.NFData ListPipelines

instance Prelude.ToHeaders ListPipelines where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath ListPipelines where
  toPath = Prelude.const "/2012-09-25/pipelines"

instance Prelude.ToQuery ListPipelines where
  toQuery ListPipelines' {..} =
    Prelude.mconcat
      [ "Ascending" Prelude.=: ascending,
        "PageToken" Prelude.=: pageToken
      ]

-- | A list of the pipelines associated with the current AWS account.
--
-- /See:/ 'newListPipelinesResponse' smart constructor.
data ListPipelinesResponse = ListPipelinesResponse'
  { -- | A value that you use to access the second and subsequent pages of
    -- results, if any. When the pipelines fit on one page or when you\'ve
    -- reached the last page of results, the value of @NextPageToken@ is
    -- @null@.
    nextPageToken :: Prelude.Maybe Prelude.Text,
    -- | An array of @Pipeline@ objects.
    pipelines :: Prelude.Maybe [Pipeline],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListPipelinesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextPageToken', 'listPipelinesResponse_nextPageToken' - A value that you use to access the second and subsequent pages of
-- results, if any. When the pipelines fit on one page or when you\'ve
-- reached the last page of results, the value of @NextPageToken@ is
-- @null@.
--
-- 'pipelines', 'listPipelinesResponse_pipelines' - An array of @Pipeline@ objects.
--
-- 'httpStatus', 'listPipelinesResponse_httpStatus' - The response's http status code.
newListPipelinesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListPipelinesResponse
newListPipelinesResponse pHttpStatus_ =
  ListPipelinesResponse'
    { nextPageToken =
        Prelude.Nothing,
      pipelines = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A value that you use to access the second and subsequent pages of
-- results, if any. When the pipelines fit on one page or when you\'ve
-- reached the last page of results, the value of @NextPageToken@ is
-- @null@.
listPipelinesResponse_nextPageToken :: Lens.Lens' ListPipelinesResponse (Prelude.Maybe Prelude.Text)
listPipelinesResponse_nextPageToken = Lens.lens (\ListPipelinesResponse' {nextPageToken} -> nextPageToken) (\s@ListPipelinesResponse' {} a -> s {nextPageToken = a} :: ListPipelinesResponse)

-- | An array of @Pipeline@ objects.
listPipelinesResponse_pipelines :: Lens.Lens' ListPipelinesResponse (Prelude.Maybe [Pipeline])
listPipelinesResponse_pipelines = Lens.lens (\ListPipelinesResponse' {pipelines} -> pipelines) (\s@ListPipelinesResponse' {} a -> s {pipelines = a} :: ListPipelinesResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
listPipelinesResponse_httpStatus :: Lens.Lens' ListPipelinesResponse Prelude.Int
listPipelinesResponse_httpStatus = Lens.lens (\ListPipelinesResponse' {httpStatus} -> httpStatus) (\s@ListPipelinesResponse' {} a -> s {httpStatus = a} :: ListPipelinesResponse)

instance Prelude.NFData ListPipelinesResponse
