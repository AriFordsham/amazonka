{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Snowball.ListJobs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of @JobListEntry@ objects of the specified length. Each @JobListEntry@ object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of export jobs. Calling this API action in one of the US regions will return jobs from the list of all jobs associated with this account in all US regions.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Snowball.ListJobs
  ( -- * Creating a Request
    listJobs,
    ListJobs,

    -- * Request Lenses
    ljNextToken,
    ljMaxResults,

    -- * Destructuring the Response
    listJobsResponse,
    ListJobsResponse,

    -- * Response Lenses
    ljrrsJobListEntries,
    ljrrsNextToken,
    ljrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Snowball.Types

-- | /See:/ 'listJobs' smart constructor.
data ListJobs = ListJobs'
  { _ljNextToken ::
      !(Maybe Text),
    _ljMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListJobs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljNextToken' - HTTP requests are stateless. To identify what object comes "next" in the list of @JobListEntry@ objects, you have the option of specifying @NextToken@ as the starting point for your returned list.
--
-- * 'ljMaxResults' - The number of @JobListEntry@ objects to return.
listJobs ::
  ListJobs
listJobs =
  ListJobs'
    { _ljNextToken = Nothing,
      _ljMaxResults = Nothing
    }

-- | HTTP requests are stateless. To identify what object comes "next" in the list of @JobListEntry@ objects, you have the option of specifying @NextToken@ as the starting point for your returned list.
ljNextToken :: Lens' ListJobs (Maybe Text)
ljNextToken = lens _ljNextToken (\s a -> s {_ljNextToken = a})

-- | The number of @JobListEntry@ objects to return.
ljMaxResults :: Lens' ListJobs (Maybe Natural)
ljMaxResults = lens _ljMaxResults (\s a -> s {_ljMaxResults = a}) . mapping _Nat

instance AWSPager ListJobs where
  page rq rs
    | stop (rs ^. ljrrsNextToken) = Nothing
    | stop (rs ^. ljrrsJobListEntries) = Nothing
    | otherwise =
      Just $ rq & ljNextToken .~ rs ^. ljrrsNextToken

instance AWSRequest ListJobs where
  type Rs ListJobs = ListJobsResponse
  request = postJSON snowball
  response =
    receiveJSON
      ( \s h x ->
          ListJobsResponse'
            <$> (x .?> "JobListEntries" .!@ mempty)
            <*> (x .?> "NextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable ListJobs

instance NFData ListJobs

instance ToHeaders ListJobs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSIESnowballJobManagementService.ListJobs" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListJobs where
  toJSON ListJobs' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _ljNextToken,
            ("MaxResults" .=) <$> _ljMaxResults
          ]
      )

instance ToPath ListJobs where
  toPath = const "/"

instance ToQuery ListJobs where
  toQuery = const mempty

-- | /See:/ 'listJobsResponse' smart constructor.
data ListJobsResponse = ListJobsResponse'
  { _ljrrsJobListEntries ::
      !(Maybe [JobListEntry]),
    _ljrrsNextToken :: !(Maybe Text),
    _ljrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListJobsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljrrsJobListEntries' - Each @JobListEntry@ object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of export jobs.
--
-- * 'ljrrsNextToken' - HTTP requests are stateless. If you use this automatically generated @NextToken@ value in your next @ListJobs@ call, your returned @JobListEntry@ objects will start from this point in the array.
--
-- * 'ljrrsResponseStatus' - -- | The response status code.
listJobsResponse ::
  -- | 'ljrrsResponseStatus'
  Int ->
  ListJobsResponse
listJobsResponse pResponseStatus_ =
  ListJobsResponse'
    { _ljrrsJobListEntries = Nothing,
      _ljrrsNextToken = Nothing,
      _ljrrsResponseStatus = pResponseStatus_
    }

-- | Each @JobListEntry@ object contains a job's state, a job's ID, and a value that indicates whether the job is a job part, in the case of export jobs.
ljrrsJobListEntries :: Lens' ListJobsResponse [JobListEntry]
ljrrsJobListEntries = lens _ljrrsJobListEntries (\s a -> s {_ljrrsJobListEntries = a}) . _Default . _Coerce

-- | HTTP requests are stateless. If you use this automatically generated @NextToken@ value in your next @ListJobs@ call, your returned @JobListEntry@ objects will start from this point in the array.
ljrrsNextToken :: Lens' ListJobsResponse (Maybe Text)
ljrrsNextToken = lens _ljrrsNextToken (\s a -> s {_ljrrsNextToken = a})

-- | -- | The response status code.
ljrrsResponseStatus :: Lens' ListJobsResponse Int
ljrrsResponseStatus = lens _ljrrsResponseStatus (\s a -> s {_ljrrsResponseStatus = a})

instance NFData ListJobsResponse
