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
-- Module      : Network.AWS.ELBv2.DescribeLoadBalancerAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the attributes for the specified Application Load Balancer, Network Load Balancer, or Gateway Load Balancer.
--
--
-- For more information, see the following:
--
--     * <https://docs.aws.amazon.com/elasticloadbalancing/latest/application/application-load-balancers.html#load-balancer-attributes Load balancer attributes> in the /Application Load Balancers Guide/
--
--     * <https://docs.aws.amazon.com/elasticloadbalancing/latest/network/network-load-balancers.html#load-balancer-attributes Load balancer attributes> in the /Network Load Balancers Guide/
--
--     * <https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/gateway-load-balancers.html#load-balancer-attributes Load balancer attributes> in the /Gateway Load Balancers Guide/
module Network.AWS.ELBv2.DescribeLoadBalancerAttributes
  ( -- * Creating a Request
    describeLoadBalancerAttributes,
    DescribeLoadBalancerAttributes,

    -- * Request Lenses
    dlbaLoadBalancerARN,

    -- * Destructuring the Response
    describeLoadBalancerAttributesResponse,
    DescribeLoadBalancerAttributesResponse,

    -- * Response Lenses
    dlbarrsAttributes,
    dlbarrsResponseStatus,
  )
where

import Network.AWS.ELBv2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeLoadBalancerAttributes' smart constructor.
newtype DescribeLoadBalancerAttributes = DescribeLoadBalancerAttributes'
  { _dlbaLoadBalancerARN ::
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

-- | Creates a value of 'DescribeLoadBalancerAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlbaLoadBalancerARN' - The Amazon Resource Name (ARN) of the load balancer.
describeLoadBalancerAttributes ::
  -- | 'dlbaLoadBalancerARN'
  Text ->
  DescribeLoadBalancerAttributes
describeLoadBalancerAttributes pLoadBalancerARN_ =
  DescribeLoadBalancerAttributes'
    { _dlbaLoadBalancerARN =
        pLoadBalancerARN_
    }

-- | The Amazon Resource Name (ARN) of the load balancer.
dlbaLoadBalancerARN :: Lens' DescribeLoadBalancerAttributes Text
dlbaLoadBalancerARN = lens _dlbaLoadBalancerARN (\s a -> s {_dlbaLoadBalancerARN = a})

instance AWSRequest DescribeLoadBalancerAttributes where
  type
    Rs DescribeLoadBalancerAttributes =
      DescribeLoadBalancerAttributesResponse
  request = postQuery eLBv2
  response =
    receiveXMLWrapper
      "DescribeLoadBalancerAttributesResult"
      ( \s h x ->
          DescribeLoadBalancerAttributesResponse'
            <$> ( x .@? "Attributes" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeLoadBalancerAttributes

instance NFData DescribeLoadBalancerAttributes

instance ToHeaders DescribeLoadBalancerAttributes where
  toHeaders = const mempty

instance ToPath DescribeLoadBalancerAttributes where
  toPath = const "/"

instance ToQuery DescribeLoadBalancerAttributes where
  toQuery DescribeLoadBalancerAttributes' {..} =
    mconcat
      [ "Action"
          =: ("DescribeLoadBalancerAttributes" :: ByteString),
        "Version" =: ("2015-12-01" :: ByteString),
        "LoadBalancerArn" =: _dlbaLoadBalancerARN
      ]

-- | /See:/ 'describeLoadBalancerAttributesResponse' smart constructor.
data DescribeLoadBalancerAttributesResponse = DescribeLoadBalancerAttributesResponse'
  { _dlbarrsAttributes ::
      !( Maybe
           [LoadBalancerAttribute]
       ),
    _dlbarrsResponseStatus ::
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

-- | Creates a value of 'DescribeLoadBalancerAttributesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dlbarrsAttributes' - Information about the load balancer attributes.
--
-- * 'dlbarrsResponseStatus' - -- | The response status code.
describeLoadBalancerAttributesResponse ::
  -- | 'dlbarrsResponseStatus'
  Int ->
  DescribeLoadBalancerAttributesResponse
describeLoadBalancerAttributesResponse
  pResponseStatus_ =
    DescribeLoadBalancerAttributesResponse'
      { _dlbarrsAttributes =
          Nothing,
        _dlbarrsResponseStatus =
          pResponseStatus_
      }

-- | Information about the load balancer attributes.
dlbarrsAttributes :: Lens' DescribeLoadBalancerAttributesResponse [LoadBalancerAttribute]
dlbarrsAttributes = lens _dlbarrsAttributes (\s a -> s {_dlbarrsAttributes = a}) . _Default . _Coerce

-- | -- | The response status code.
dlbarrsResponseStatus :: Lens' DescribeLoadBalancerAttributesResponse Int
dlbarrsResponseStatus = lens _dlbarrsResponseStatus (\s a -> s {_dlbarrsResponseStatus = a})

instance
  NFData
    DescribeLoadBalancerAttributesResponse
