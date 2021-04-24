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
-- Module      : Network.AWS.Comprehend.DescribeDocumentClassificationJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the properties associated with a document classification job. Use this operation to get the status of a classification job.
module Network.AWS.Comprehend.DescribeDocumentClassificationJob
  ( -- * Creating a Request
    describeDocumentClassificationJob,
    DescribeDocumentClassificationJob,

    -- * Request Lenses
    ddcjJobId,

    -- * Destructuring the Response
    describeDocumentClassificationJobResponse,
    DescribeDocumentClassificationJobResponse,

    -- * Response Lenses
    ddcjrrsDocumentClassificationJobProperties,
    ddcjrrsResponseStatus,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeDocumentClassificationJob' smart constructor.
newtype DescribeDocumentClassificationJob = DescribeDocumentClassificationJob'
  { _ddcjJobId ::
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

-- | Creates a value of 'DescribeDocumentClassificationJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddcjJobId' - The identifier that Amazon Comprehend generated for the job. The operation returns this identifier in its response.
describeDocumentClassificationJob ::
  -- | 'ddcjJobId'
  Text ->
  DescribeDocumentClassificationJob
describeDocumentClassificationJob pJobId_ =
  DescribeDocumentClassificationJob'
    { _ddcjJobId =
        pJobId_
    }

-- | The identifier that Amazon Comprehend generated for the job. The operation returns this identifier in its response.
ddcjJobId :: Lens' DescribeDocumentClassificationJob Text
ddcjJobId = lens _ddcjJobId (\s a -> s {_ddcjJobId = a})

instance AWSRequest DescribeDocumentClassificationJob where
  type
    Rs DescribeDocumentClassificationJob =
      DescribeDocumentClassificationJobResponse
  request = postJSON comprehend
  response =
    receiveJSON
      ( \s h x ->
          DescribeDocumentClassificationJobResponse'
            <$> (x .?> "DocumentClassificationJobProperties")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDocumentClassificationJob

instance NFData DescribeDocumentClassificationJob

instance ToHeaders DescribeDocumentClassificationJob where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Comprehend_20171127.DescribeDocumentClassificationJob" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeDocumentClassificationJob where
  toJSON DescribeDocumentClassificationJob' {..} =
    object (catMaybes [Just ("JobId" .= _ddcjJobId)])

instance ToPath DescribeDocumentClassificationJob where
  toPath = const "/"

instance ToQuery DescribeDocumentClassificationJob where
  toQuery = const mempty

-- | /See:/ 'describeDocumentClassificationJobResponse' smart constructor.
data DescribeDocumentClassificationJobResponse = DescribeDocumentClassificationJobResponse'
  { _ddcjrrsDocumentClassificationJobProperties ::
      !( Maybe
           DocumentClassificationJobProperties
       ),
    _ddcjrrsResponseStatus ::
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

-- | Creates a value of 'DescribeDocumentClassificationJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddcjrrsDocumentClassificationJobProperties' - An object that describes the properties associated with the document classification job.
--
-- * 'ddcjrrsResponseStatus' - -- | The response status code.
describeDocumentClassificationJobResponse ::
  -- | 'ddcjrrsResponseStatus'
  Int ->
  DescribeDocumentClassificationJobResponse
describeDocumentClassificationJobResponse
  pResponseStatus_ =
    DescribeDocumentClassificationJobResponse'
      { _ddcjrrsDocumentClassificationJobProperties =
          Nothing,
        _ddcjrrsResponseStatus =
          pResponseStatus_
      }

-- | An object that describes the properties associated with the document classification job.
ddcjrrsDocumentClassificationJobProperties :: Lens' DescribeDocumentClassificationJobResponse (Maybe DocumentClassificationJobProperties)
ddcjrrsDocumentClassificationJobProperties = lens _ddcjrrsDocumentClassificationJobProperties (\s a -> s {_ddcjrrsDocumentClassificationJobProperties = a})

-- | -- | The response status code.
ddcjrrsResponseStatus :: Lens' DescribeDocumentClassificationJobResponse Int
ddcjrrsResponseStatus = lens _ddcjrrsResponseStatus (\s a -> s {_ddcjrrsResponseStatus = a})

instance
  NFData
    DescribeDocumentClassificationJobResponse
