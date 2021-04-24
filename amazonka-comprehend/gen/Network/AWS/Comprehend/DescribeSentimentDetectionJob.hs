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
-- Module      : Network.AWS.Comprehend.DescribeSentimentDetectionJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the properties associated with a sentiment detection job. Use this operation to get the status of a detection job.
module Network.AWS.Comprehend.DescribeSentimentDetectionJob
  ( -- * Creating a Request
    describeSentimentDetectionJob,
    DescribeSentimentDetectionJob,

    -- * Request Lenses
    dsdjJobId,

    -- * Destructuring the Response
    describeSentimentDetectionJobResponse,
    DescribeSentimentDetectionJobResponse,

    -- * Response Lenses
    dsdjrrsSentimentDetectionJobProperties,
    dsdjrrsResponseStatus,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeSentimentDetectionJob' smart constructor.
newtype DescribeSentimentDetectionJob = DescribeSentimentDetectionJob'
  { _dsdjJobId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeSentimentDetectionJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsdjJobId' - The identifier that Amazon Comprehend generated for the job. The operation returns this identifier in its response.
describeSentimentDetectionJob ::
  -- | 'dsdjJobId'
  Text ->
  DescribeSentimentDetectionJob
describeSentimentDetectionJob pJobId_ =
  DescribeSentimentDetectionJob'
    { _dsdjJobId =
        pJobId_
    }

-- | The identifier that Amazon Comprehend generated for the job. The operation returns this identifier in its response.
dsdjJobId :: Lens' DescribeSentimentDetectionJob Text
dsdjJobId = lens _dsdjJobId (\s a -> s {_dsdjJobId = a})

instance AWSRequest DescribeSentimentDetectionJob where
  type
    Rs DescribeSentimentDetectionJob =
      DescribeSentimentDetectionJobResponse
  request = postJSON comprehend
  response =
    receiveJSON
      ( \s h x ->
          DescribeSentimentDetectionJobResponse'
            <$> (x .?> "SentimentDetectionJobProperties")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeSentimentDetectionJob

instance NFData DescribeSentimentDetectionJob

instance ToHeaders DescribeSentimentDetectionJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Comprehend_20171127.DescribeSentimentDetectionJob" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeSentimentDetectionJob where
  toJSON DescribeSentimentDetectionJob' {..} =
    object (catMaybes [Just ("JobId" .= _dsdjJobId)])

instance ToPath DescribeSentimentDetectionJob where
  toPath = const "/"

instance ToQuery DescribeSentimentDetectionJob where
  toQuery = const mempty

-- | /See:/ 'describeSentimentDetectionJobResponse' smart constructor.
data DescribeSentimentDetectionJobResponse = DescribeSentimentDetectionJobResponse'
  { _dsdjrrsSentimentDetectionJobProperties ::
      !( Maybe
           SentimentDetectionJobProperties
       ),
    _dsdjrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeSentimentDetectionJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsdjrrsSentimentDetectionJobProperties' - An object that contains the properties associated with a sentiment detection job.
--
-- * 'dsdjrrsResponseStatus' - -- | The response status code.
describeSentimentDetectionJobResponse ::
  -- | 'dsdjrrsResponseStatus'
  Int ->
  DescribeSentimentDetectionJobResponse
describeSentimentDetectionJobResponse
  pResponseStatus_ =
    DescribeSentimentDetectionJobResponse'
      { _dsdjrrsSentimentDetectionJobProperties =
          Nothing,
        _dsdjrrsResponseStatus =
          pResponseStatus_
      }

-- | An object that contains the properties associated with a sentiment detection job.
dsdjrrsSentimentDetectionJobProperties :: Lens' DescribeSentimentDetectionJobResponse (Maybe SentimentDetectionJobProperties)
dsdjrrsSentimentDetectionJobProperties = lens _dsdjrrsSentimentDetectionJobProperties (\s a -> s {_dsdjrrsSentimentDetectionJobProperties = a})

-- | -- | The response status code.
dsdjrrsResponseStatus :: Lens' DescribeSentimentDetectionJobResponse Int
dsdjrrsResponseStatus = lens _dsdjrrsResponseStatus (\s a -> s {_dsdjrrsResponseStatus = a})

instance NFData DescribeSentimentDetectionJobResponse
