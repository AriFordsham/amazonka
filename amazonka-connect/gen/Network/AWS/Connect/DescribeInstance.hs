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
-- Module      : Network.AWS.Connect.DescribeInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This API is in preview release for Amazon Connect and is subject to change.
--
--
-- Returns the current state of the specified instance identifier. It tracks the instance while it is being created and returns an error status, if applicable.
--
-- If an instance is not created successfully, the instance status reason field returns details relevant to the reason. The instance in a failed state is returned only for 24 hours after the CreateInstance API was invoked.
module Network.AWS.Connect.DescribeInstance
  ( -- * Creating a Request
    describeInstance,
    DescribeInstance,

    -- * Request Lenses
    diInstanceId,

    -- * Destructuring the Response
    describeInstanceResponse,
    DescribeInstanceResponse,

    -- * Response Lenses
    dirrsInstance,
    dirrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeInstance' smart constructor.
newtype DescribeInstance = DescribeInstance'
  { _diInstanceId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'diInstanceId' - The identifier of the Amazon Connect instance.
describeInstance ::
  -- | 'diInstanceId'
  Text ->
  DescribeInstance
describeInstance pInstanceId_ =
  DescribeInstance' {_diInstanceId = pInstanceId_}

-- | The identifier of the Amazon Connect instance.
diInstanceId :: Lens' DescribeInstance Text
diInstanceId = lens _diInstanceId (\s a -> s {_diInstanceId = a})

instance AWSRequest DescribeInstance where
  type Rs DescribeInstance = DescribeInstanceResponse
  request = get connect
  response =
    receiveJSON
      ( \s h x ->
          DescribeInstanceResponse'
            <$> (x .?> "Instance") <*> (pure (fromEnum s))
      )

instance Hashable DescribeInstance

instance NFData DescribeInstance

instance ToHeaders DescribeInstance where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DescribeInstance where
  toPath DescribeInstance' {..} =
    mconcat ["/instance/", toBS _diInstanceId]

instance ToQuery DescribeInstance where
  toQuery = const mempty

-- | /See:/ 'describeInstanceResponse' smart constructor.
data DescribeInstanceResponse = DescribeInstanceResponse'
  { _dirrsInstance ::
      !(Maybe Instance),
    _dirrsResponseStatus ::
      !Int
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeInstanceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dirrsInstance' - The name of the instance.
--
-- * 'dirrsResponseStatus' - -- | The response status code.
describeInstanceResponse ::
  -- | 'dirrsResponseStatus'
  Int ->
  DescribeInstanceResponse
describeInstanceResponse pResponseStatus_ =
  DescribeInstanceResponse'
    { _dirrsInstance = Nothing,
      _dirrsResponseStatus = pResponseStatus_
    }

-- | The name of the instance.
dirrsInstance :: Lens' DescribeInstanceResponse (Maybe Instance)
dirrsInstance = lens _dirrsInstance (\s a -> s {_dirrsInstance = a})

-- | -- | The response status code.
dirrsResponseStatus :: Lens' DescribeInstanceResponse Int
dirrsResponseStatus = lens _dirrsResponseStatus (\s a -> s {_dirrsResponseStatus = a})

instance NFData DescribeInstanceResponse
