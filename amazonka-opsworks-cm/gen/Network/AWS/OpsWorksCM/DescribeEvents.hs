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
-- Module      : Network.AWS.OpsWorksCM.DescribeEvents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes events for a specified server. Results are ordered by time,
-- with newest events first.
--
-- This operation is synchronous.
--
-- A @ResourceNotFoundException@ is thrown when the server does not exist.
-- A @ValidationException@ is raised when parameters of the request are not
-- valid.
--
-- This operation returns paginated results.
module Network.AWS.OpsWorksCM.DescribeEvents
  ( -- * Creating a Request
    DescribeEvents (..),
    newDescribeEvents,

    -- * Request Lenses
    describeEvents_nextToken,
    describeEvents_maxResults,
    describeEvents_serverName,

    -- * Destructuring the Response
    DescribeEventsResponse (..),
    newDescribeEventsResponse,

    -- * Response Lenses
    describeEventsResponse_nextToken,
    describeEventsResponse_serverEvents,
    describeEventsResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.OpsWorksCM.Types
import Network.AWS.OpsWorksCM.Types.ServerEvent
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeEvents' smart constructor.
data DescribeEvents = DescribeEvents'
  { -- | NextToken is a string that is returned in some command responses. It
    -- indicates that not all entries have been returned, and that you must run
    -- at least one more request to get remaining items. To get remaining
    -- results, call @DescribeEvents@ again, and assign the token from the
    -- previous results as the value of the @nextToken@ parameter. If there are
    -- no more results, the response object\'s @nextToken@ parameter value is
    -- @null@. Setting a @nextToken@ value that was not returned in your
    -- previous results causes an @InvalidNextTokenException@ to occur.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | To receive a paginated response, use this parameter to specify the
    -- maximum number of results to be returned with a single call. If the
    -- number of available results exceeds this maximum, the response includes
    -- a @NextToken@ value that you can assign to the @NextToken@ request
    -- parameter to get the next set of results.
    maxResults :: Prelude.Maybe Prelude.Nat,
    -- | The name of the server for which you want to view events.
    serverName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeEvents' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeEvents_nextToken' - NextToken is a string that is returned in some command responses. It
-- indicates that not all entries have been returned, and that you must run
-- at least one more request to get remaining items. To get remaining
-- results, call @DescribeEvents@ again, and assign the token from the
-- previous results as the value of the @nextToken@ parameter. If there are
-- no more results, the response object\'s @nextToken@ parameter value is
-- @null@. Setting a @nextToken@ value that was not returned in your
-- previous results causes an @InvalidNextTokenException@ to occur.
--
-- 'maxResults', 'describeEvents_maxResults' - To receive a paginated response, use this parameter to specify the
-- maximum number of results to be returned with a single call. If the
-- number of available results exceeds this maximum, the response includes
-- a @NextToken@ value that you can assign to the @NextToken@ request
-- parameter to get the next set of results.
--
-- 'serverName', 'describeEvents_serverName' - The name of the server for which you want to view events.
newDescribeEvents ::
  -- | 'serverName'
  Prelude.Text ->
  DescribeEvents
newDescribeEvents pServerName_ =
  DescribeEvents'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      serverName = pServerName_
    }

-- | NextToken is a string that is returned in some command responses. It
-- indicates that not all entries have been returned, and that you must run
-- at least one more request to get remaining items. To get remaining
-- results, call @DescribeEvents@ again, and assign the token from the
-- previous results as the value of the @nextToken@ parameter. If there are
-- no more results, the response object\'s @nextToken@ parameter value is
-- @null@. Setting a @nextToken@ value that was not returned in your
-- previous results causes an @InvalidNextTokenException@ to occur.
describeEvents_nextToken :: Lens.Lens' DescribeEvents (Prelude.Maybe Prelude.Text)
describeEvents_nextToken = Lens.lens (\DescribeEvents' {nextToken} -> nextToken) (\s@DescribeEvents' {} a -> s {nextToken = a} :: DescribeEvents)

-- | To receive a paginated response, use this parameter to specify the
-- maximum number of results to be returned with a single call. If the
-- number of available results exceeds this maximum, the response includes
-- a @NextToken@ value that you can assign to the @NextToken@ request
-- parameter to get the next set of results.
describeEvents_maxResults :: Lens.Lens' DescribeEvents (Prelude.Maybe Prelude.Natural)
describeEvents_maxResults = Lens.lens (\DescribeEvents' {maxResults} -> maxResults) (\s@DescribeEvents' {} a -> s {maxResults = a} :: DescribeEvents) Prelude.. Lens.mapping Prelude._Nat

-- | The name of the server for which you want to view events.
describeEvents_serverName :: Lens.Lens' DescribeEvents Prelude.Text
describeEvents_serverName = Lens.lens (\DescribeEvents' {serverName} -> serverName) (\s@DescribeEvents' {} a -> s {serverName = a} :: DescribeEvents)

instance Pager.AWSPager DescribeEvents where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? describeEventsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? describeEventsResponse_serverEvents
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& describeEvents_nextToken
          Lens..~ rs
          Lens.^? describeEventsResponse_nextToken Prelude.. Lens._Just

instance Prelude.AWSRequest DescribeEvents where
  type Rs DescribeEvents = DescribeEventsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeEventsResponse'
            Prelude.<$> (x Prelude..?> "NextToken")
            Prelude.<*> ( x Prelude..?> "ServerEvents"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeEvents

instance Prelude.NFData DescribeEvents

instance Prelude.ToHeaders DescribeEvents where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "OpsWorksCM_V2016_11_01.DescribeEvents" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON DescribeEvents where
  toJSON DescribeEvents' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("NextToken" Prelude..=) Prelude.<$> nextToken,
            ("MaxResults" Prelude..=) Prelude.<$> maxResults,
            Prelude.Just ("ServerName" Prelude..= serverName)
          ]
      )

instance Prelude.ToPath DescribeEvents where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DescribeEvents where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeEventsResponse' smart constructor.
data DescribeEventsResponse = DescribeEventsResponse'
  { -- | NextToken is a string that is returned in some command responses. It
    -- indicates that not all entries have been returned, and that you must run
    -- at least one more request to get remaining items. To get remaining
    -- results, call @DescribeEvents@ again, and assign the token from the
    -- previous results as the value of the @nextToken@ parameter. If there are
    -- no more results, the response object\'s @nextToken@ parameter value is
    -- @null@. Setting a @nextToken@ value that was not returned in your
    -- previous results causes an @InvalidNextTokenException@ to occur.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Contains the response to a @DescribeEvents@ request.
    serverEvents :: Prelude.Maybe [ServerEvent],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeEventsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeEventsResponse_nextToken' - NextToken is a string that is returned in some command responses. It
-- indicates that not all entries have been returned, and that you must run
-- at least one more request to get remaining items. To get remaining
-- results, call @DescribeEvents@ again, and assign the token from the
-- previous results as the value of the @nextToken@ parameter. If there are
-- no more results, the response object\'s @nextToken@ parameter value is
-- @null@. Setting a @nextToken@ value that was not returned in your
-- previous results causes an @InvalidNextTokenException@ to occur.
--
-- 'serverEvents', 'describeEventsResponse_serverEvents' - Contains the response to a @DescribeEvents@ request.
--
-- 'httpStatus', 'describeEventsResponse_httpStatus' - The response's http status code.
newDescribeEventsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeEventsResponse
newDescribeEventsResponse pHttpStatus_ =
  DescribeEventsResponse'
    { nextToken =
        Prelude.Nothing,
      serverEvents = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | NextToken is a string that is returned in some command responses. It
-- indicates that not all entries have been returned, and that you must run
-- at least one more request to get remaining items. To get remaining
-- results, call @DescribeEvents@ again, and assign the token from the
-- previous results as the value of the @nextToken@ parameter. If there are
-- no more results, the response object\'s @nextToken@ parameter value is
-- @null@. Setting a @nextToken@ value that was not returned in your
-- previous results causes an @InvalidNextTokenException@ to occur.
describeEventsResponse_nextToken :: Lens.Lens' DescribeEventsResponse (Prelude.Maybe Prelude.Text)
describeEventsResponse_nextToken = Lens.lens (\DescribeEventsResponse' {nextToken} -> nextToken) (\s@DescribeEventsResponse' {} a -> s {nextToken = a} :: DescribeEventsResponse)

-- | Contains the response to a @DescribeEvents@ request.
describeEventsResponse_serverEvents :: Lens.Lens' DescribeEventsResponse (Prelude.Maybe [ServerEvent])
describeEventsResponse_serverEvents = Lens.lens (\DescribeEventsResponse' {serverEvents} -> serverEvents) (\s@DescribeEventsResponse' {} a -> s {serverEvents = a} :: DescribeEventsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
describeEventsResponse_httpStatus :: Lens.Lens' DescribeEventsResponse Prelude.Int
describeEventsResponse_httpStatus = Lens.lens (\DescribeEventsResponse' {httpStatus} -> httpStatus) (\s@DescribeEventsResponse' {} a -> s {httpStatus = a} :: DescribeEventsResponse)

instance Prelude.NFData DescribeEventsResponse
