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
-- Module      : Network.AWS.Pinpoint.GetJourneyExecutionActivityMetrics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves (queries) pre-aggregated data for a standard execution metric
-- that applies to a journey activity.
module Network.AWS.Pinpoint.GetJourneyExecutionActivityMetrics
  ( -- * Creating a Request
    GetJourneyExecutionActivityMetrics (..),
    newGetJourneyExecutionActivityMetrics,

    -- * Request Lenses
    getJourneyExecutionActivityMetrics_nextToken,
    getJourneyExecutionActivityMetrics_pageSize,
    getJourneyExecutionActivityMetrics_journeyActivityId,
    getJourneyExecutionActivityMetrics_applicationId,
    getJourneyExecutionActivityMetrics_journeyId,

    -- * Destructuring the Response
    GetJourneyExecutionActivityMetricsResponse (..),
    newGetJourneyExecutionActivityMetricsResponse,

    -- * Response Lenses
    getJourneyExecutionActivityMetricsResponse_httpStatus,
    getJourneyExecutionActivityMetricsResponse_journeyExecutionActivityMetricsResponse,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetJourneyExecutionActivityMetrics' smart constructor.
data GetJourneyExecutionActivityMetrics = GetJourneyExecutionActivityMetrics'
  { -- | The string that specifies which page of results to return in a paginated
    -- response. This parameter is not supported for application, campaign, and
    -- journey metrics.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of items to include in each page of a paginated
    -- response. This parameter is not supported for application, campaign, and
    -- journey metrics.
    pageSize :: Prelude.Maybe Prelude.Text,
    -- | The unique identifier for the journey activity.
    journeyActivityId :: Prelude.Text,
    -- | The unique identifier for the application. This identifier is displayed
    -- as the __Project ID__ on the Amazon Pinpoint console.
    applicationId :: Prelude.Text,
    -- | The unique identifier for the journey.
    journeyId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetJourneyExecutionActivityMetrics' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getJourneyExecutionActivityMetrics_nextToken' - The string that specifies which page of results to return in a paginated
-- response. This parameter is not supported for application, campaign, and
-- journey metrics.
--
-- 'pageSize', 'getJourneyExecutionActivityMetrics_pageSize' - The maximum number of items to include in each page of a paginated
-- response. This parameter is not supported for application, campaign, and
-- journey metrics.
--
-- 'journeyActivityId', 'getJourneyExecutionActivityMetrics_journeyActivityId' - The unique identifier for the journey activity.
--
-- 'applicationId', 'getJourneyExecutionActivityMetrics_applicationId' - The unique identifier for the application. This identifier is displayed
-- as the __Project ID__ on the Amazon Pinpoint console.
--
-- 'journeyId', 'getJourneyExecutionActivityMetrics_journeyId' - The unique identifier for the journey.
newGetJourneyExecutionActivityMetrics ::
  -- | 'journeyActivityId'
  Prelude.Text ->
  -- | 'applicationId'
  Prelude.Text ->
  -- | 'journeyId'
  Prelude.Text ->
  GetJourneyExecutionActivityMetrics
newGetJourneyExecutionActivityMetrics
  pJourneyActivityId_
  pApplicationId_
  pJourneyId_ =
    GetJourneyExecutionActivityMetrics'
      { nextToken =
          Prelude.Nothing,
        pageSize = Prelude.Nothing,
        journeyActivityId = pJourneyActivityId_,
        applicationId = pApplicationId_,
        journeyId = pJourneyId_
      }

-- | The string that specifies which page of results to return in a paginated
-- response. This parameter is not supported for application, campaign, and
-- journey metrics.
getJourneyExecutionActivityMetrics_nextToken :: Lens.Lens' GetJourneyExecutionActivityMetrics (Prelude.Maybe Prelude.Text)
getJourneyExecutionActivityMetrics_nextToken = Lens.lens (\GetJourneyExecutionActivityMetrics' {nextToken} -> nextToken) (\s@GetJourneyExecutionActivityMetrics' {} a -> s {nextToken = a} :: GetJourneyExecutionActivityMetrics)

-- | The maximum number of items to include in each page of a paginated
-- response. This parameter is not supported for application, campaign, and
-- journey metrics.
getJourneyExecutionActivityMetrics_pageSize :: Lens.Lens' GetJourneyExecutionActivityMetrics (Prelude.Maybe Prelude.Text)
getJourneyExecutionActivityMetrics_pageSize = Lens.lens (\GetJourneyExecutionActivityMetrics' {pageSize} -> pageSize) (\s@GetJourneyExecutionActivityMetrics' {} a -> s {pageSize = a} :: GetJourneyExecutionActivityMetrics)

-- | The unique identifier for the journey activity.
getJourneyExecutionActivityMetrics_journeyActivityId :: Lens.Lens' GetJourneyExecutionActivityMetrics Prelude.Text
getJourneyExecutionActivityMetrics_journeyActivityId = Lens.lens (\GetJourneyExecutionActivityMetrics' {journeyActivityId} -> journeyActivityId) (\s@GetJourneyExecutionActivityMetrics' {} a -> s {journeyActivityId = a} :: GetJourneyExecutionActivityMetrics)

-- | The unique identifier for the application. This identifier is displayed
-- as the __Project ID__ on the Amazon Pinpoint console.
getJourneyExecutionActivityMetrics_applicationId :: Lens.Lens' GetJourneyExecutionActivityMetrics Prelude.Text
getJourneyExecutionActivityMetrics_applicationId = Lens.lens (\GetJourneyExecutionActivityMetrics' {applicationId} -> applicationId) (\s@GetJourneyExecutionActivityMetrics' {} a -> s {applicationId = a} :: GetJourneyExecutionActivityMetrics)

-- | The unique identifier for the journey.
getJourneyExecutionActivityMetrics_journeyId :: Lens.Lens' GetJourneyExecutionActivityMetrics Prelude.Text
getJourneyExecutionActivityMetrics_journeyId = Lens.lens (\GetJourneyExecutionActivityMetrics' {journeyId} -> journeyId) (\s@GetJourneyExecutionActivityMetrics' {} a -> s {journeyId = a} :: GetJourneyExecutionActivityMetrics)

instance
  Prelude.AWSRequest
    GetJourneyExecutionActivityMetrics
  where
  type
    Rs GetJourneyExecutionActivityMetrics =
      GetJourneyExecutionActivityMetricsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetJourneyExecutionActivityMetricsResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
              Prelude.<*> (Prelude.eitherParseJSON x)
      )

instance
  Prelude.Hashable
    GetJourneyExecutionActivityMetrics

instance
  Prelude.NFData
    GetJourneyExecutionActivityMetrics

instance
  Prelude.ToHeaders
    GetJourneyExecutionActivityMetrics
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance
  Prelude.ToPath
    GetJourneyExecutionActivityMetrics
  where
  toPath GetJourneyExecutionActivityMetrics' {..} =
    Prelude.mconcat
      [ "/v1/apps/",
        Prelude.toBS applicationId,
        "/journeys/",
        Prelude.toBS journeyId,
        "/activities/",
        Prelude.toBS journeyActivityId,
        "/execution-metrics"
      ]

instance
  Prelude.ToQuery
    GetJourneyExecutionActivityMetrics
  where
  toQuery GetJourneyExecutionActivityMetrics' {..} =
    Prelude.mconcat
      [ "next-token" Prelude.=: nextToken,
        "page-size" Prelude.=: pageSize
      ]

-- | /See:/ 'newGetJourneyExecutionActivityMetricsResponse' smart constructor.
data GetJourneyExecutionActivityMetricsResponse = GetJourneyExecutionActivityMetricsResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    journeyExecutionActivityMetricsResponse :: JourneyExecutionActivityMetricsResponse
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetJourneyExecutionActivityMetricsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getJourneyExecutionActivityMetricsResponse_httpStatus' - The response's http status code.
--
-- 'journeyExecutionActivityMetricsResponse', 'getJourneyExecutionActivityMetricsResponse_journeyExecutionActivityMetricsResponse' - Undocumented member.
newGetJourneyExecutionActivityMetricsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'journeyExecutionActivityMetricsResponse'
  JourneyExecutionActivityMetricsResponse ->
  GetJourneyExecutionActivityMetricsResponse
newGetJourneyExecutionActivityMetricsResponse
  pHttpStatus_
  pJourneyExecutionActivityMetricsResponse_ =
    GetJourneyExecutionActivityMetricsResponse'
      { httpStatus =
          pHttpStatus_,
        journeyExecutionActivityMetricsResponse =
          pJourneyExecutionActivityMetricsResponse_
      }

-- | The response's http status code.
getJourneyExecutionActivityMetricsResponse_httpStatus :: Lens.Lens' GetJourneyExecutionActivityMetricsResponse Prelude.Int
getJourneyExecutionActivityMetricsResponse_httpStatus = Lens.lens (\GetJourneyExecutionActivityMetricsResponse' {httpStatus} -> httpStatus) (\s@GetJourneyExecutionActivityMetricsResponse' {} a -> s {httpStatus = a} :: GetJourneyExecutionActivityMetricsResponse)

-- | Undocumented member.
getJourneyExecutionActivityMetricsResponse_journeyExecutionActivityMetricsResponse :: Lens.Lens' GetJourneyExecutionActivityMetricsResponse JourneyExecutionActivityMetricsResponse
getJourneyExecutionActivityMetricsResponse_journeyExecutionActivityMetricsResponse = Lens.lens (\GetJourneyExecutionActivityMetricsResponse' {journeyExecutionActivityMetricsResponse} -> journeyExecutionActivityMetricsResponse) (\s@GetJourneyExecutionActivityMetricsResponse' {} a -> s {journeyExecutionActivityMetricsResponse = a} :: GetJourneyExecutionActivityMetricsResponse)

instance
  Prelude.NFData
    GetJourneyExecutionActivityMetricsResponse
