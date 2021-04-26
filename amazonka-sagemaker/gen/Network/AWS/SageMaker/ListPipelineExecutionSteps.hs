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
-- Module      : Network.AWS.SageMaker.ListPipelineExecutionSteps
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a list of @PipeLineExecutionStep@ objects.
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListPipelineExecutionSteps
  ( -- * Creating a Request
    ListPipelineExecutionSteps (..),
    newListPipelineExecutionSteps,

    -- * Request Lenses
    listPipelineExecutionSteps_sortOrder,
    listPipelineExecutionSteps_nextToken,
    listPipelineExecutionSteps_maxResults,
    listPipelineExecutionSteps_pipelineExecutionArn,

    -- * Destructuring the Response
    ListPipelineExecutionStepsResponse (..),
    newListPipelineExecutionStepsResponse,

    -- * Response Lenses
    listPipelineExecutionStepsResponse_nextToken,
    listPipelineExecutionStepsResponse_pipelineExecutionSteps,
    listPipelineExecutionStepsResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SageMaker.Types
import Network.AWS.SageMaker.Types.PipelineExecutionStep

-- | /See:/ 'newListPipelineExecutionSteps' smart constructor.
data ListPipelineExecutionSteps = ListPipelineExecutionSteps'
  { -- | The field by which to sort results. The default is @CreatedTime@.
    sortOrder :: Prelude.Maybe SortOrder,
    -- | If the result of the previous @ListPipelineExecutionSteps@ request was
    -- truncated, the response includes a @NextToken@. To retrieve the next set
    -- of pipeline execution steps, use the token in the next request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of pipeline execution steps to return in the
    -- response.
    maxResults :: Prelude.Maybe Prelude.Nat,
    -- | The Amazon Resource Name (ARN) of the pipeline execution.
    pipelineExecutionArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListPipelineExecutionSteps' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sortOrder', 'listPipelineExecutionSteps_sortOrder' - The field by which to sort results. The default is @CreatedTime@.
--
-- 'nextToken', 'listPipelineExecutionSteps_nextToken' - If the result of the previous @ListPipelineExecutionSteps@ request was
-- truncated, the response includes a @NextToken@. To retrieve the next set
-- of pipeline execution steps, use the token in the next request.
--
-- 'maxResults', 'listPipelineExecutionSteps_maxResults' - The maximum number of pipeline execution steps to return in the
-- response.
--
-- 'pipelineExecutionArn', 'listPipelineExecutionSteps_pipelineExecutionArn' - The Amazon Resource Name (ARN) of the pipeline execution.
newListPipelineExecutionSteps ::
  ListPipelineExecutionSteps
newListPipelineExecutionSteps =
  ListPipelineExecutionSteps'
    { sortOrder =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      pipelineExecutionArn = Prelude.Nothing
    }

-- | The field by which to sort results. The default is @CreatedTime@.
listPipelineExecutionSteps_sortOrder :: Lens.Lens' ListPipelineExecutionSteps (Prelude.Maybe SortOrder)
listPipelineExecutionSteps_sortOrder = Lens.lens (\ListPipelineExecutionSteps' {sortOrder} -> sortOrder) (\s@ListPipelineExecutionSteps' {} a -> s {sortOrder = a} :: ListPipelineExecutionSteps)

-- | If the result of the previous @ListPipelineExecutionSteps@ request was
-- truncated, the response includes a @NextToken@. To retrieve the next set
-- of pipeline execution steps, use the token in the next request.
listPipelineExecutionSteps_nextToken :: Lens.Lens' ListPipelineExecutionSteps (Prelude.Maybe Prelude.Text)
listPipelineExecutionSteps_nextToken = Lens.lens (\ListPipelineExecutionSteps' {nextToken} -> nextToken) (\s@ListPipelineExecutionSteps' {} a -> s {nextToken = a} :: ListPipelineExecutionSteps)

-- | The maximum number of pipeline execution steps to return in the
-- response.
listPipelineExecutionSteps_maxResults :: Lens.Lens' ListPipelineExecutionSteps (Prelude.Maybe Prelude.Natural)
listPipelineExecutionSteps_maxResults = Lens.lens (\ListPipelineExecutionSteps' {maxResults} -> maxResults) (\s@ListPipelineExecutionSteps' {} a -> s {maxResults = a} :: ListPipelineExecutionSteps) Prelude.. Lens.mapping Prelude._Nat

-- | The Amazon Resource Name (ARN) of the pipeline execution.
listPipelineExecutionSteps_pipelineExecutionArn :: Lens.Lens' ListPipelineExecutionSteps (Prelude.Maybe Prelude.Text)
listPipelineExecutionSteps_pipelineExecutionArn = Lens.lens (\ListPipelineExecutionSteps' {pipelineExecutionArn} -> pipelineExecutionArn) (\s@ListPipelineExecutionSteps' {} a -> s {pipelineExecutionArn = a} :: ListPipelineExecutionSteps)

instance Pager.AWSPager ListPipelineExecutionSteps where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? listPipelineExecutionStepsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? listPipelineExecutionStepsResponse_pipelineExecutionSteps
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& listPipelineExecutionSteps_nextToken
          Lens..~ rs
          Lens.^? listPipelineExecutionStepsResponse_nextToken
            Prelude.. Lens._Just

instance
  Prelude.AWSRequest
    ListPipelineExecutionSteps
  where
  type
    Rs ListPipelineExecutionSteps =
      ListPipelineExecutionStepsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListPipelineExecutionStepsResponse'
            Prelude.<$> (x Prelude..?> "NextToken")
            Prelude.<*> ( x Prelude..?> "PipelineExecutionSteps"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListPipelineExecutionSteps

instance Prelude.NFData ListPipelineExecutionSteps

instance Prelude.ToHeaders ListPipelineExecutionSteps where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "SageMaker.ListPipelineExecutionSteps" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON ListPipelineExecutionSteps where
  toJSON ListPipelineExecutionSteps' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("SortOrder" Prelude..=) Prelude.<$> sortOrder,
            ("NextToken" Prelude..=) Prelude.<$> nextToken,
            ("MaxResults" Prelude..=) Prelude.<$> maxResults,
            ("PipelineExecutionArn" Prelude..=)
              Prelude.<$> pipelineExecutionArn
          ]
      )

instance Prelude.ToPath ListPipelineExecutionSteps where
  toPath = Prelude.const "/"

instance Prelude.ToQuery ListPipelineExecutionSteps where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newListPipelineExecutionStepsResponse' smart constructor.
data ListPipelineExecutionStepsResponse = ListPipelineExecutionStepsResponse'
  { -- | If the result of the previous @ListPipelineExecutionSteps@ request was
    -- truncated, the response includes a @NextToken@. To retrieve the next set
    -- of pipeline execution steps, use the token in the next request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of @PipeLineExecutionStep@ objects. Each @PipeLineExecutionStep@
    -- consists of StepName, StartTime, EndTime, StepStatus, and Metadata.
    -- Metadata is an object with properties for each job that contains
    -- relevant information about the job created by the step.
    pipelineExecutionSteps :: Prelude.Maybe [PipelineExecutionStep],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListPipelineExecutionStepsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listPipelineExecutionStepsResponse_nextToken' - If the result of the previous @ListPipelineExecutionSteps@ request was
-- truncated, the response includes a @NextToken@. To retrieve the next set
-- of pipeline execution steps, use the token in the next request.
--
-- 'pipelineExecutionSteps', 'listPipelineExecutionStepsResponse_pipelineExecutionSteps' - A list of @PipeLineExecutionStep@ objects. Each @PipeLineExecutionStep@
-- consists of StepName, StartTime, EndTime, StepStatus, and Metadata.
-- Metadata is an object with properties for each job that contains
-- relevant information about the job created by the step.
--
-- 'httpStatus', 'listPipelineExecutionStepsResponse_httpStatus' - The response's http status code.
newListPipelineExecutionStepsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListPipelineExecutionStepsResponse
newListPipelineExecutionStepsResponse pHttpStatus_ =
  ListPipelineExecutionStepsResponse'
    { nextToken =
        Prelude.Nothing,
      pipelineExecutionSteps =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If the result of the previous @ListPipelineExecutionSteps@ request was
-- truncated, the response includes a @NextToken@. To retrieve the next set
-- of pipeline execution steps, use the token in the next request.
listPipelineExecutionStepsResponse_nextToken :: Lens.Lens' ListPipelineExecutionStepsResponse (Prelude.Maybe Prelude.Text)
listPipelineExecutionStepsResponse_nextToken = Lens.lens (\ListPipelineExecutionStepsResponse' {nextToken} -> nextToken) (\s@ListPipelineExecutionStepsResponse' {} a -> s {nextToken = a} :: ListPipelineExecutionStepsResponse)

-- | A list of @PipeLineExecutionStep@ objects. Each @PipeLineExecutionStep@
-- consists of StepName, StartTime, EndTime, StepStatus, and Metadata.
-- Metadata is an object with properties for each job that contains
-- relevant information about the job created by the step.
listPipelineExecutionStepsResponse_pipelineExecutionSteps :: Lens.Lens' ListPipelineExecutionStepsResponse (Prelude.Maybe [PipelineExecutionStep])
listPipelineExecutionStepsResponse_pipelineExecutionSteps = Lens.lens (\ListPipelineExecutionStepsResponse' {pipelineExecutionSteps} -> pipelineExecutionSteps) (\s@ListPipelineExecutionStepsResponse' {} a -> s {pipelineExecutionSteps = a} :: ListPipelineExecutionStepsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
listPipelineExecutionStepsResponse_httpStatus :: Lens.Lens' ListPipelineExecutionStepsResponse Prelude.Int
listPipelineExecutionStepsResponse_httpStatus = Lens.lens (\ListPipelineExecutionStepsResponse' {httpStatus} -> httpStatus) (\s@ListPipelineExecutionStepsResponse' {} a -> s {httpStatus = a} :: ListPipelineExecutionStepsResponse)

instance
  Prelude.NFData
    ListPipelineExecutionStepsResponse
