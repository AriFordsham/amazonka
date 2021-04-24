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
-- Module      : Network.AWS.ELB.DescribeInstanceHealth
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the state of the specified instances with respect to the specified load balancer. If no instances are specified, the call describes the state of all instances that are currently registered with the load balancer. If instances are specified, their state is returned even if they are no longer registered with the load balancer. The state of terminated instances is not returned.
module Network.AWS.ELB.DescribeInstanceHealth
  ( -- * Creating a Request
    describeInstanceHealth,
    DescribeInstanceHealth,

    -- * Request Lenses
    dihInstances,
    dihLoadBalancerName,

    -- * Destructuring the Response
    describeInstanceHealthResponse,
    DescribeInstanceHealthResponse,

    -- * Response Lenses
    dihrrsInstanceStates,
    dihrrsResponseStatus,
  )
where

import Network.AWS.ELB.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the parameters for DescribeInstanceHealth.
--
--
--
-- /See:/ 'describeInstanceHealth' smart constructor.
data DescribeInstanceHealth = DescribeInstanceHealth'
  { _dihInstances ::
      !(Maybe [Instance]),
    _dihLoadBalancerName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeInstanceHealth' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dihInstances' - The IDs of the instances.
--
-- * 'dihLoadBalancerName' - The name of the load balancer.
describeInstanceHealth ::
  -- | 'dihLoadBalancerName'
  Text ->
  DescribeInstanceHealth
describeInstanceHealth pLoadBalancerName_ =
  DescribeInstanceHealth'
    { _dihInstances = Nothing,
      _dihLoadBalancerName = pLoadBalancerName_
    }

-- | The IDs of the instances.
dihInstances :: Lens' DescribeInstanceHealth [Instance]
dihInstances = lens _dihInstances (\s a -> s {_dihInstances = a}) . _Default . _Coerce

-- | The name of the load balancer.
dihLoadBalancerName :: Lens' DescribeInstanceHealth Text
dihLoadBalancerName = lens _dihLoadBalancerName (\s a -> s {_dihLoadBalancerName = a})

instance AWSRequest DescribeInstanceHealth where
  type
    Rs DescribeInstanceHealth =
      DescribeInstanceHealthResponse
  request = postQuery elb
  response =
    receiveXMLWrapper
      "DescribeInstanceHealthResult"
      ( \s h x ->
          DescribeInstanceHealthResponse'
            <$> ( x .@? "InstanceStates" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeInstanceHealth

instance NFData DescribeInstanceHealth

instance ToHeaders DescribeInstanceHealth where
  toHeaders = const mempty

instance ToPath DescribeInstanceHealth where
  toPath = const "/"

instance ToQuery DescribeInstanceHealth where
  toQuery DescribeInstanceHealth' {..} =
    mconcat
      [ "Action"
          =: ("DescribeInstanceHealth" :: ByteString),
        "Version" =: ("2012-06-01" :: ByteString),
        "Instances"
          =: toQuery (toQueryList "member" <$> _dihInstances),
        "LoadBalancerName" =: _dihLoadBalancerName
      ]

-- | Contains the output for DescribeInstanceHealth.
--
--
--
-- /See:/ 'describeInstanceHealthResponse' smart constructor.
data DescribeInstanceHealthResponse = DescribeInstanceHealthResponse'
  { _dihrrsInstanceStates ::
      !( Maybe
           [InstanceState]
       ),
    _dihrrsResponseStatus ::
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

-- | Creates a value of 'DescribeInstanceHealthResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dihrrsInstanceStates' - Information about the health of the instances.
--
-- * 'dihrrsResponseStatus' - -- | The response status code.
describeInstanceHealthResponse ::
  -- | 'dihrrsResponseStatus'
  Int ->
  DescribeInstanceHealthResponse
describeInstanceHealthResponse pResponseStatus_ =
  DescribeInstanceHealthResponse'
    { _dihrrsInstanceStates =
        Nothing,
      _dihrrsResponseStatus = pResponseStatus_
    }

-- | Information about the health of the instances.
dihrrsInstanceStates :: Lens' DescribeInstanceHealthResponse [InstanceState]
dihrrsInstanceStates = lens _dihrrsInstanceStates (\s a -> s {_dihrrsInstanceStates = a}) . _Default . _Coerce

-- | -- | The response status code.
dihrrsResponseStatus :: Lens' DescribeInstanceHealthResponse Int
dihrrsResponseStatus = lens _dihrrsResponseStatus (\s a -> s {_dihrrsResponseStatus = a})

instance NFData DescribeInstanceHealthResponse
