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
-- Module      : Network.AWS.ELBv2.SetIPAddressType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the type of IP addresses used by the subnets of the specified Application Load Balancer or Network Load Balancer.
module Network.AWS.ELBv2.SetIPAddressType
  ( -- * Creating a Request
    setIPAddressType,
    SetIPAddressType,

    -- * Request Lenses
    siatLoadBalancerARN,
    siatIPAddressType,

    -- * Destructuring the Response
    setIPAddressTypeResponse,
    SetIPAddressTypeResponse,

    -- * Response Lenses
    siatrrsIPAddressType,
    siatrrsResponseStatus,
  )
where

import Network.AWS.ELBv2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'setIPAddressType' smart constructor.
data SetIPAddressType = SetIPAddressType'
  { _siatLoadBalancerARN ::
      !Text,
    _siatIPAddressType :: !IPAddressType
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SetIPAddressType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siatLoadBalancerARN' - The Amazon Resource Name (ARN) of the load balancer.
--
-- * 'siatIPAddressType' - The IP address type. The possible values are @ipv4@ (for IPv4 addresses) and @dualstack@ (for IPv4 and IPv6 addresses). Internal load balancers must use @ipv4@ . You can’t specify @dualstack@ for a load balancer with a UDP or TCP_UDP listener.
setIPAddressType ::
  -- | 'siatLoadBalancerARN'
  Text ->
  -- | 'siatIPAddressType'
  IPAddressType ->
  SetIPAddressType
setIPAddressType pLoadBalancerARN_ pIPAddressType_ =
  SetIPAddressType'
    { _siatLoadBalancerARN =
        pLoadBalancerARN_,
      _siatIPAddressType = pIPAddressType_
    }

-- | The Amazon Resource Name (ARN) of the load balancer.
siatLoadBalancerARN :: Lens' SetIPAddressType Text
siatLoadBalancerARN = lens _siatLoadBalancerARN (\s a -> s {_siatLoadBalancerARN = a})

-- | The IP address type. The possible values are @ipv4@ (for IPv4 addresses) and @dualstack@ (for IPv4 and IPv6 addresses). Internal load balancers must use @ipv4@ . You can’t specify @dualstack@ for a load balancer with a UDP or TCP_UDP listener.
siatIPAddressType :: Lens' SetIPAddressType IPAddressType
siatIPAddressType = lens _siatIPAddressType (\s a -> s {_siatIPAddressType = a})

instance AWSRequest SetIPAddressType where
  type Rs SetIPAddressType = SetIPAddressTypeResponse
  request = postQuery eLBv2
  response =
    receiveXMLWrapper
      "SetIpAddressTypeResult"
      ( \s h x ->
          SetIPAddressTypeResponse'
            <$> (x .@? "IpAddressType") <*> (pure (fromEnum s))
      )

instance Hashable SetIPAddressType

instance NFData SetIPAddressType

instance ToHeaders SetIPAddressType where
  toHeaders = const mempty

instance ToPath SetIPAddressType where
  toPath = const "/"

instance ToQuery SetIPAddressType where
  toQuery SetIPAddressType' {..} =
    mconcat
      [ "Action" =: ("SetIpAddressType" :: ByteString),
        "Version" =: ("2015-12-01" :: ByteString),
        "LoadBalancerArn" =: _siatLoadBalancerARN,
        "IpAddressType" =: _siatIPAddressType
      ]

-- | /See:/ 'setIPAddressTypeResponse' smart constructor.
data SetIPAddressTypeResponse = SetIPAddressTypeResponse'
  { _siatrrsIPAddressType ::
      !( Maybe
           IPAddressType
       ),
    _siatrrsResponseStatus ::
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

-- | Creates a value of 'SetIPAddressTypeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'siatrrsIPAddressType' - The IP address type.
--
-- * 'siatrrsResponseStatus' - -- | The response status code.
setIPAddressTypeResponse ::
  -- | 'siatrrsResponseStatus'
  Int ->
  SetIPAddressTypeResponse
setIPAddressTypeResponse pResponseStatus_ =
  SetIPAddressTypeResponse'
    { _siatrrsIPAddressType =
        Nothing,
      _siatrrsResponseStatus = pResponseStatus_
    }

-- | The IP address type.
siatrrsIPAddressType :: Lens' SetIPAddressTypeResponse (Maybe IPAddressType)
siatrrsIPAddressType = lens _siatrrsIPAddressType (\s a -> s {_siatrrsIPAddressType = a})

-- | -- | The response status code.
siatrrsResponseStatus :: Lens' SetIPAddressTypeResponse Int
siatrrsResponseStatus = lens _siatrrsResponseStatus (\s a -> s {_siatrrsResponseStatus = a})

instance NFData SetIPAddressTypeResponse
