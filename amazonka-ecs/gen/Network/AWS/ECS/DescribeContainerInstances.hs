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
-- Module      : Network.AWS.ECS.DescribeContainerInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes Amazon Elastic Container Service container instances. Returns metadata about registered and remaining resources on each container instance requested.
module Network.AWS.ECS.DescribeContainerInstances
  ( -- * Creating a Request
    describeContainerInstances,
    DescribeContainerInstances,

    -- * Request Lenses
    dciInclude,
    dciCluster,
    dciContainerInstances,

    -- * Destructuring the Response
    describeContainerInstancesResponse,
    DescribeContainerInstancesResponse,

    -- * Response Lenses
    dcirrsFailures,
    dcirrsContainerInstances,
    dcirrsResponseStatus,
  )
where

import Network.AWS.ECS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeContainerInstances' smart constructor.
data DescribeContainerInstances = DescribeContainerInstances'
  { _dciInclude ::
      !( Maybe
           [ContainerInstanceField]
       ),
    _dciCluster ::
      !(Maybe Text),
    _dciContainerInstances ::
      ![Text]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeContainerInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dciInclude' - Specifies whether you want to see the resource tags for the container instance. If @TAGS@ is specified, the tags are included in the response. If this field is omitted, tags are not included in the response.
--
-- * 'dciCluster' - The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instances to describe. If you do not specify a cluster, the default cluster is assumed. This parameter is required if the container instance or container instances you are describing were launched in any cluster other than the default cluster.
--
-- * 'dciContainerInstances' - A list of up to 100 container instance IDs or full Amazon Resource Name (ARN) entries.
describeContainerInstances ::
  DescribeContainerInstances
describeContainerInstances =
  DescribeContainerInstances'
    { _dciInclude = Nothing,
      _dciCluster = Nothing,
      _dciContainerInstances = mempty
    }

-- | Specifies whether you want to see the resource tags for the container instance. If @TAGS@ is specified, the tags are included in the response. If this field is omitted, tags are not included in the response.
dciInclude :: Lens' DescribeContainerInstances [ContainerInstanceField]
dciInclude = lens _dciInclude (\s a -> s {_dciInclude = a}) . _Default . _Coerce

-- | The short name or full Amazon Resource Name (ARN) of the cluster that hosts the container instances to describe. If you do not specify a cluster, the default cluster is assumed. This parameter is required if the container instance or container instances you are describing were launched in any cluster other than the default cluster.
dciCluster :: Lens' DescribeContainerInstances (Maybe Text)
dciCluster = lens _dciCluster (\s a -> s {_dciCluster = a})

-- | A list of up to 100 container instance IDs or full Amazon Resource Name (ARN) entries.
dciContainerInstances :: Lens' DescribeContainerInstances [Text]
dciContainerInstances = lens _dciContainerInstances (\s a -> s {_dciContainerInstances = a}) . _Coerce

instance AWSRequest DescribeContainerInstances where
  type
    Rs DescribeContainerInstances =
      DescribeContainerInstancesResponse
  request = postJSON ecs
  response =
    receiveJSON
      ( \s h x ->
          DescribeContainerInstancesResponse'
            <$> (x .?> "failures" .!@ mempty)
            <*> (x .?> "containerInstances" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeContainerInstances

instance NFData DescribeContainerInstances

instance ToHeaders DescribeContainerInstances where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerServiceV20141113.DescribeContainerInstances" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeContainerInstances where
  toJSON DescribeContainerInstances' {..} =
    object
      ( catMaybes
          [ ("include" .=) <$> _dciInclude,
            ("cluster" .=) <$> _dciCluster,
            Just
              ("containerInstances" .= _dciContainerInstances)
          ]
      )

instance ToPath DescribeContainerInstances where
  toPath = const "/"

instance ToQuery DescribeContainerInstances where
  toQuery = const mempty

-- | /See:/ 'describeContainerInstancesResponse' smart constructor.
data DescribeContainerInstancesResponse = DescribeContainerInstancesResponse'
  { _dcirrsFailures ::
      !( Maybe
           [Failure]
       ),
    _dcirrsContainerInstances ::
      !( Maybe
           [ContainerInstance]
       ),
    _dcirrsResponseStatus ::
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

-- | Creates a value of 'DescribeContainerInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcirrsFailures' - Any failures associated with the call.
--
-- * 'dcirrsContainerInstances' - The list of container instances.
--
-- * 'dcirrsResponseStatus' - -- | The response status code.
describeContainerInstancesResponse ::
  -- | 'dcirrsResponseStatus'
  Int ->
  DescribeContainerInstancesResponse
describeContainerInstancesResponse pResponseStatus_ =
  DescribeContainerInstancesResponse'
    { _dcirrsFailures =
        Nothing,
      _dcirrsContainerInstances = Nothing,
      _dcirrsResponseStatus =
        pResponseStatus_
    }

-- | Any failures associated with the call.
dcirrsFailures :: Lens' DescribeContainerInstancesResponse [Failure]
dcirrsFailures = lens _dcirrsFailures (\s a -> s {_dcirrsFailures = a}) . _Default . _Coerce

-- | The list of container instances.
dcirrsContainerInstances :: Lens' DescribeContainerInstancesResponse [ContainerInstance]
dcirrsContainerInstances = lens _dcirrsContainerInstances (\s a -> s {_dcirrsContainerInstances = a}) . _Default . _Coerce

-- | -- | The response status code.
dcirrsResponseStatus :: Lens' DescribeContainerInstancesResponse Int
dcirrsResponseStatus = lens _dcirrsResponseStatus (\s a -> s {_dcirrsResponseStatus = a})

instance NFData DescribeContainerInstancesResponse
