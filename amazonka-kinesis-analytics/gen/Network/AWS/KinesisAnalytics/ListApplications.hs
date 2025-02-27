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
-- Module      : Network.AWS.KinesisAnalytics.ListApplications
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This documentation is for version 1 of the Amazon Kinesis Data Analytics
-- API, which only supports SQL applications. Version 2 of the API supports
-- SQL and Java applications. For more information about version 2, see
-- </kinesisanalytics/latest/apiv2/Welcome.html Amazon Kinesis Data Analytics API V2 Documentation>.
--
-- Returns a list of Amazon Kinesis Analytics applications in your account.
-- For each application, the response includes the application name, Amazon
-- Resource Name (ARN), and status. If the response returns the
-- @HasMoreApplications@ value as true, you can send another request by
-- adding the @ExclusiveStartApplicationName@ in the request body, and set
-- the value of this to the last application name from the previous
-- response.
--
-- If you want detailed information about a specific application, use
-- <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html DescribeApplication>.
--
-- This operation requires permissions to perform the
-- @kinesisanalytics:ListApplications@ action.
module Network.AWS.KinesisAnalytics.ListApplications
  ( -- * Creating a Request
    ListApplications (..),
    newListApplications,

    -- * Request Lenses
    listApplications_exclusiveStartApplicationName,
    listApplications_limit,

    -- * Destructuring the Response
    ListApplicationsResponse (..),
    newListApplicationsResponse,

    -- * Response Lenses
    listApplicationsResponse_httpStatus,
    listApplicationsResponse_applicationSummaries,
    listApplicationsResponse_hasMoreApplications,
  )
where

import Network.AWS.KinesisAnalytics.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newListApplications' smart constructor.
data ListApplications = ListApplications'
  { -- | Name of the application to start the list with. When using pagination to
    -- retrieve the list, you don\'t need to specify this parameter in the
    -- first request. However, in subsequent requests, you add the last
    -- application name from the previous response to get the next page of
    -- applications.
    exclusiveStartApplicationName :: Prelude.Maybe Prelude.Text,
    -- | Maximum number of applications to list.
    limit :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListApplications' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'exclusiveStartApplicationName', 'listApplications_exclusiveStartApplicationName' - Name of the application to start the list with. When using pagination to
-- retrieve the list, you don\'t need to specify this parameter in the
-- first request. However, in subsequent requests, you add the last
-- application name from the previous response to get the next page of
-- applications.
--
-- 'limit', 'listApplications_limit' - Maximum number of applications to list.
newListApplications ::
  ListApplications
newListApplications =
  ListApplications'
    { exclusiveStartApplicationName =
        Prelude.Nothing,
      limit = Prelude.Nothing
    }

-- | Name of the application to start the list with. When using pagination to
-- retrieve the list, you don\'t need to specify this parameter in the
-- first request. However, in subsequent requests, you add the last
-- application name from the previous response to get the next page of
-- applications.
listApplications_exclusiveStartApplicationName :: Lens.Lens' ListApplications (Prelude.Maybe Prelude.Text)
listApplications_exclusiveStartApplicationName = Lens.lens (\ListApplications' {exclusiveStartApplicationName} -> exclusiveStartApplicationName) (\s@ListApplications' {} a -> s {exclusiveStartApplicationName = a} :: ListApplications)

-- | Maximum number of applications to list.
listApplications_limit :: Lens.Lens' ListApplications (Prelude.Maybe Prelude.Natural)
listApplications_limit = Lens.lens (\ListApplications' {limit} -> limit) (\s@ListApplications' {} a -> s {limit = a} :: ListApplications)

instance Prelude.AWSRequest ListApplications where
  type Rs ListApplications = ListApplicationsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListApplicationsResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Prelude..?> "ApplicationSummaries"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (x Prelude..:> "HasMoreApplications")
      )

instance Prelude.Hashable ListApplications

instance Prelude.NFData ListApplications

instance Prelude.ToHeaders ListApplications where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "KinesisAnalytics_20150814.ListApplications" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON ListApplications where
  toJSON ListApplications' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("ExclusiveStartApplicationName" Prelude..=)
              Prelude.<$> exclusiveStartApplicationName,
            ("Limit" Prelude..=) Prelude.<$> limit
          ]
      )

instance Prelude.ToPath ListApplications where
  toPath = Prelude.const "/"

instance Prelude.ToQuery ListApplications where
  toQuery = Prelude.const Prelude.mempty

-- |
--
-- /See:/ 'newListApplicationsResponse' smart constructor.
data ListApplicationsResponse = ListApplicationsResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | List of @ApplicationSummary@ objects.
    applicationSummaries :: [ApplicationSummary],
    -- | Returns true if there are more applications to retrieve.
    hasMoreApplications :: Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListApplicationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'listApplicationsResponse_httpStatus' - The response's http status code.
--
-- 'applicationSummaries', 'listApplicationsResponse_applicationSummaries' - List of @ApplicationSummary@ objects.
--
-- 'hasMoreApplications', 'listApplicationsResponse_hasMoreApplications' - Returns true if there are more applications to retrieve.
newListApplicationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'hasMoreApplications'
  Prelude.Bool ->
  ListApplicationsResponse
newListApplicationsResponse
  pHttpStatus_
  pHasMoreApplications_ =
    ListApplicationsResponse'
      { httpStatus =
          pHttpStatus_,
        applicationSummaries = Prelude.mempty,
        hasMoreApplications = pHasMoreApplications_
      }

-- | The response's http status code.
listApplicationsResponse_httpStatus :: Lens.Lens' ListApplicationsResponse Prelude.Int
listApplicationsResponse_httpStatus = Lens.lens (\ListApplicationsResponse' {httpStatus} -> httpStatus) (\s@ListApplicationsResponse' {} a -> s {httpStatus = a} :: ListApplicationsResponse)

-- | List of @ApplicationSummary@ objects.
listApplicationsResponse_applicationSummaries :: Lens.Lens' ListApplicationsResponse [ApplicationSummary]
listApplicationsResponse_applicationSummaries = Lens.lens (\ListApplicationsResponse' {applicationSummaries} -> applicationSummaries) (\s@ListApplicationsResponse' {} a -> s {applicationSummaries = a} :: ListApplicationsResponse) Prelude.. Prelude._Coerce

-- | Returns true if there are more applications to retrieve.
listApplicationsResponse_hasMoreApplications :: Lens.Lens' ListApplicationsResponse Prelude.Bool
listApplicationsResponse_hasMoreApplications = Lens.lens (\ListApplicationsResponse' {hasMoreApplications} -> hasMoreApplications) (\s@ListApplicationsResponse' {} a -> s {hasMoreApplications = a} :: ListApplicationsResponse)

instance Prelude.NFData ListApplicationsResponse
