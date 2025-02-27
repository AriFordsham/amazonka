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
-- Module      : Network.AWS.Discovery.DescribeImportTasks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of import tasks for your account, including status
-- information, times, IDs, the Amazon S3 Object URL for the import file,
-- and more.
module Network.AWS.Discovery.DescribeImportTasks
  ( -- * Creating a Request
    DescribeImportTasks (..),
    newDescribeImportTasks,

    -- * Request Lenses
    describeImportTasks_nextToken,
    describeImportTasks_maxResults,
    describeImportTasks_filters,

    -- * Destructuring the Response
    DescribeImportTasksResponse (..),
    newDescribeImportTasksResponse,

    -- * Response Lenses
    describeImportTasksResponse_nextToken,
    describeImportTasksResponse_tasks,
    describeImportTasksResponse_httpStatus,
  )
where

import Network.AWS.Discovery.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeImportTasks' smart constructor.
data DescribeImportTasks = DescribeImportTasks'
  { -- | The token to request a specific page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of results that you want this request to return, up
    -- to 100.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | An array of name-value pairs that you provide to filter the results for
    -- the @DescribeImportTask@ request to a specific subset of results.
    -- Currently, wildcard values aren\'t supported for filters.
    filters :: Prelude.Maybe [ImportTaskFilter]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeImportTasks' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeImportTasks_nextToken' - The token to request a specific page of results.
--
-- 'maxResults', 'describeImportTasks_maxResults' - The maximum number of results that you want this request to return, up
-- to 100.
--
-- 'filters', 'describeImportTasks_filters' - An array of name-value pairs that you provide to filter the results for
-- the @DescribeImportTask@ request to a specific subset of results.
-- Currently, wildcard values aren\'t supported for filters.
newDescribeImportTasks ::
  DescribeImportTasks
newDescribeImportTasks =
  DescribeImportTasks'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      filters = Prelude.Nothing
    }

-- | The token to request a specific page of results.
describeImportTasks_nextToken :: Lens.Lens' DescribeImportTasks (Prelude.Maybe Prelude.Text)
describeImportTasks_nextToken = Lens.lens (\DescribeImportTasks' {nextToken} -> nextToken) (\s@DescribeImportTasks' {} a -> s {nextToken = a} :: DescribeImportTasks)

-- | The maximum number of results that you want this request to return, up
-- to 100.
describeImportTasks_maxResults :: Lens.Lens' DescribeImportTasks (Prelude.Maybe Prelude.Natural)
describeImportTasks_maxResults = Lens.lens (\DescribeImportTasks' {maxResults} -> maxResults) (\s@DescribeImportTasks' {} a -> s {maxResults = a} :: DescribeImportTasks)

-- | An array of name-value pairs that you provide to filter the results for
-- the @DescribeImportTask@ request to a specific subset of results.
-- Currently, wildcard values aren\'t supported for filters.
describeImportTasks_filters :: Lens.Lens' DescribeImportTasks (Prelude.Maybe [ImportTaskFilter])
describeImportTasks_filters = Lens.lens (\DescribeImportTasks' {filters} -> filters) (\s@DescribeImportTasks' {} a -> s {filters = a} :: DescribeImportTasks) Prelude.. Lens.mapping Prelude._Coerce

instance Prelude.AWSRequest DescribeImportTasks where
  type
    Rs DescribeImportTasks =
      DescribeImportTasksResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeImportTasksResponse'
            Prelude.<$> (x Prelude..?> "nextToken")
            Prelude.<*> (x Prelude..?> "tasks" Prelude..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeImportTasks

instance Prelude.NFData DescribeImportTasks

instance Prelude.ToHeaders DescribeImportTasks where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "AWSPoseidonService_V2015_11_01.DescribeImportTasks" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON DescribeImportTasks where
  toJSON DescribeImportTasks' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("nextToken" Prelude..=) Prelude.<$> nextToken,
            ("maxResults" Prelude..=) Prelude.<$> maxResults,
            ("filters" Prelude..=) Prelude.<$> filters
          ]
      )

instance Prelude.ToPath DescribeImportTasks where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DescribeImportTasks where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeImportTasksResponse' smart constructor.
data DescribeImportTasksResponse = DescribeImportTasksResponse'
  { -- | The token to request the next page of results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A returned array of import tasks that match any applied filters, up to
    -- the specified number of maximum results.
    tasks :: Prelude.Maybe [ImportTask],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeImportTasksResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeImportTasksResponse_nextToken' - The token to request the next page of results.
--
-- 'tasks', 'describeImportTasksResponse_tasks' - A returned array of import tasks that match any applied filters, up to
-- the specified number of maximum results.
--
-- 'httpStatus', 'describeImportTasksResponse_httpStatus' - The response's http status code.
newDescribeImportTasksResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeImportTasksResponse
newDescribeImportTasksResponse pHttpStatus_ =
  DescribeImportTasksResponse'
    { nextToken =
        Prelude.Nothing,
      tasks = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The token to request the next page of results.
describeImportTasksResponse_nextToken :: Lens.Lens' DescribeImportTasksResponse (Prelude.Maybe Prelude.Text)
describeImportTasksResponse_nextToken = Lens.lens (\DescribeImportTasksResponse' {nextToken} -> nextToken) (\s@DescribeImportTasksResponse' {} a -> s {nextToken = a} :: DescribeImportTasksResponse)

-- | A returned array of import tasks that match any applied filters, up to
-- the specified number of maximum results.
describeImportTasksResponse_tasks :: Lens.Lens' DescribeImportTasksResponse (Prelude.Maybe [ImportTask])
describeImportTasksResponse_tasks = Lens.lens (\DescribeImportTasksResponse' {tasks} -> tasks) (\s@DescribeImportTasksResponse' {} a -> s {tasks = a} :: DescribeImportTasksResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
describeImportTasksResponse_httpStatus :: Lens.Lens' DescribeImportTasksResponse Prelude.Int
describeImportTasksResponse_httpStatus = Lens.lens (\DescribeImportTasksResponse' {httpStatus} -> httpStatus) (\s@DescribeImportTasksResponse' {} a -> s {httpStatus = a} :: DescribeImportTasksResponse)

instance Prelude.NFData DescribeImportTasksResponse
