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
-- Module      : Network.AWS.ELBv2.ModifyTargetGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the health checks used when evaluating the health state of the targets in the specified target group.
module Network.AWS.ELBv2.ModifyTargetGroup
  ( -- * Creating a Request
    modifyTargetGroup,
    ModifyTargetGroup,

    -- * Request Lenses
    mtgHealthCheckEnabled,
    mtgHealthCheckProtocol,
    mtgHealthCheckPort,
    mtgHealthCheckTimeoutSeconds,
    mtgHealthCheckPath,
    mtgMatcher,
    mtgHealthyThresholdCount,
    mtgHealthCheckIntervalSeconds,
    mtgUnhealthyThresholdCount,
    mtgTargetGroupARN,

    -- * Destructuring the Response
    modifyTargetGroupResponse,
    ModifyTargetGroupResponse,

    -- * Response Lenses
    mtgrrsTargetGroups,
    mtgrrsResponseStatus,
  )
where

import Network.AWS.ELBv2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'modifyTargetGroup' smart constructor.
data ModifyTargetGroup = ModifyTargetGroup'
  { _mtgHealthCheckEnabled ::
      !(Maybe Bool),
    _mtgHealthCheckProtocol ::
      !(Maybe ProtocolEnum),
    _mtgHealthCheckPort ::
      !(Maybe Text),
    _mtgHealthCheckTimeoutSeconds ::
      !(Maybe Nat),
    _mtgHealthCheckPath ::
      !(Maybe Text),
    _mtgMatcher :: !(Maybe Matcher),
    _mtgHealthyThresholdCount ::
      !(Maybe Nat),
    _mtgHealthCheckIntervalSeconds ::
      !(Maybe Nat),
    _mtgUnhealthyThresholdCount ::
      !(Maybe Nat),
    _mtgTargetGroupARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ModifyTargetGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtgHealthCheckEnabled' - Indicates whether health checks are enabled.
--
-- * 'mtgHealthCheckProtocol' - The protocol the load balancer uses when performing health checks on targets. The TCP protocol is supported for health checks only if the protocol of the target group is TCP, TLS, UDP, or TCP_UDP. The GENEVE, TLS, UDP, and TCP_UDP protocols are not supported for health checks. With Network Load Balancers, you can't modify this setting.
--
-- * 'mtgHealthCheckPort' - The port the load balancer uses when performing health checks on targets.
--
-- * 'mtgHealthCheckTimeoutSeconds' - [HTTP/HTTPS health checks] The amount of time, in seconds, during which no response means a failed health check. With Network Load Balancers, you can't modify this setting.
--
-- * 'mtgHealthCheckPath' - [HTTP/HTTPS health checks] The destination for health checks on the targets. [HTTP1 or HTTP2 protocol version] The ping path. The default is /. [GRPC protocol version] The path of a custom health check method with the format /package.service/method. The default is /AWS.ALB/healthcheck.
--
-- * 'mtgMatcher' - [HTTP/HTTPS health checks] The HTTP or gRPC codes to use when checking for a successful response from a target. With Network Load Balancers, you can't modify this setting.
--
-- * 'mtgHealthyThresholdCount' - The number of consecutive health checks successes required before considering an unhealthy target healthy.
--
-- * 'mtgHealthCheckIntervalSeconds' - The approximate amount of time, in seconds, between health checks of an individual target. For TCP health checks, the supported values are 10 or 30 seconds. With Network Load Balancers, you can't modify this setting.
--
-- * 'mtgUnhealthyThresholdCount' - The number of consecutive health check failures required before considering the target unhealthy. For target groups with a protocol of TCP or TLS, this value must be the same as the healthy threshold count.
--
-- * 'mtgTargetGroupARN' - The Amazon Resource Name (ARN) of the target group.
modifyTargetGroup ::
  -- | 'mtgTargetGroupARN'
  Text ->
  ModifyTargetGroup
modifyTargetGroup pTargetGroupARN_ =
  ModifyTargetGroup'
    { _mtgHealthCheckEnabled =
        Nothing,
      _mtgHealthCheckProtocol = Nothing,
      _mtgHealthCheckPort = Nothing,
      _mtgHealthCheckTimeoutSeconds = Nothing,
      _mtgHealthCheckPath = Nothing,
      _mtgMatcher = Nothing,
      _mtgHealthyThresholdCount = Nothing,
      _mtgHealthCheckIntervalSeconds = Nothing,
      _mtgUnhealthyThresholdCount = Nothing,
      _mtgTargetGroupARN = pTargetGroupARN_
    }

-- | Indicates whether health checks are enabled.
mtgHealthCheckEnabled :: Lens' ModifyTargetGroup (Maybe Bool)
mtgHealthCheckEnabled = lens _mtgHealthCheckEnabled (\s a -> s {_mtgHealthCheckEnabled = a})

-- | The protocol the load balancer uses when performing health checks on targets. The TCP protocol is supported for health checks only if the protocol of the target group is TCP, TLS, UDP, or TCP_UDP. The GENEVE, TLS, UDP, and TCP_UDP protocols are not supported for health checks. With Network Load Balancers, you can't modify this setting.
mtgHealthCheckProtocol :: Lens' ModifyTargetGroup (Maybe ProtocolEnum)
mtgHealthCheckProtocol = lens _mtgHealthCheckProtocol (\s a -> s {_mtgHealthCheckProtocol = a})

-- | The port the load balancer uses when performing health checks on targets.
mtgHealthCheckPort :: Lens' ModifyTargetGroup (Maybe Text)
mtgHealthCheckPort = lens _mtgHealthCheckPort (\s a -> s {_mtgHealthCheckPort = a})

-- | [HTTP/HTTPS health checks] The amount of time, in seconds, during which no response means a failed health check. With Network Load Balancers, you can't modify this setting.
mtgHealthCheckTimeoutSeconds :: Lens' ModifyTargetGroup (Maybe Natural)
mtgHealthCheckTimeoutSeconds = lens _mtgHealthCheckTimeoutSeconds (\s a -> s {_mtgHealthCheckTimeoutSeconds = a}) . mapping _Nat

-- | [HTTP/HTTPS health checks] The destination for health checks on the targets. [HTTP1 or HTTP2 protocol version] The ping path. The default is /. [GRPC protocol version] The path of a custom health check method with the format /package.service/method. The default is /AWS.ALB/healthcheck.
mtgHealthCheckPath :: Lens' ModifyTargetGroup (Maybe Text)
mtgHealthCheckPath = lens _mtgHealthCheckPath (\s a -> s {_mtgHealthCheckPath = a})

-- | [HTTP/HTTPS health checks] The HTTP or gRPC codes to use when checking for a successful response from a target. With Network Load Balancers, you can't modify this setting.
mtgMatcher :: Lens' ModifyTargetGroup (Maybe Matcher)
mtgMatcher = lens _mtgMatcher (\s a -> s {_mtgMatcher = a})

-- | The number of consecutive health checks successes required before considering an unhealthy target healthy.
mtgHealthyThresholdCount :: Lens' ModifyTargetGroup (Maybe Natural)
mtgHealthyThresholdCount = lens _mtgHealthyThresholdCount (\s a -> s {_mtgHealthyThresholdCount = a}) . mapping _Nat

-- | The approximate amount of time, in seconds, between health checks of an individual target. For TCP health checks, the supported values are 10 or 30 seconds. With Network Load Balancers, you can't modify this setting.
mtgHealthCheckIntervalSeconds :: Lens' ModifyTargetGroup (Maybe Natural)
mtgHealthCheckIntervalSeconds = lens _mtgHealthCheckIntervalSeconds (\s a -> s {_mtgHealthCheckIntervalSeconds = a}) . mapping _Nat

-- | The number of consecutive health check failures required before considering the target unhealthy. For target groups with a protocol of TCP or TLS, this value must be the same as the healthy threshold count.
mtgUnhealthyThresholdCount :: Lens' ModifyTargetGroup (Maybe Natural)
mtgUnhealthyThresholdCount = lens _mtgUnhealthyThresholdCount (\s a -> s {_mtgUnhealthyThresholdCount = a}) . mapping _Nat

-- | The Amazon Resource Name (ARN) of the target group.
mtgTargetGroupARN :: Lens' ModifyTargetGroup Text
mtgTargetGroupARN = lens _mtgTargetGroupARN (\s a -> s {_mtgTargetGroupARN = a})

instance AWSRequest ModifyTargetGroup where
  type Rs ModifyTargetGroup = ModifyTargetGroupResponse
  request = postQuery eLBv2
  response =
    receiveXMLWrapper
      "ModifyTargetGroupResult"
      ( \s h x ->
          ModifyTargetGroupResponse'
            <$> ( x .@? "TargetGroups" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ModifyTargetGroup

instance NFData ModifyTargetGroup

instance ToHeaders ModifyTargetGroup where
  toHeaders = const mempty

instance ToPath ModifyTargetGroup where
  toPath = const "/"

instance ToQuery ModifyTargetGroup where
  toQuery ModifyTargetGroup' {..} =
    mconcat
      [ "Action" =: ("ModifyTargetGroup" :: ByteString),
        "Version" =: ("2015-12-01" :: ByteString),
        "HealthCheckEnabled" =: _mtgHealthCheckEnabled,
        "HealthCheckProtocol" =: _mtgHealthCheckProtocol,
        "HealthCheckPort" =: _mtgHealthCheckPort,
        "HealthCheckTimeoutSeconds"
          =: _mtgHealthCheckTimeoutSeconds,
        "HealthCheckPath" =: _mtgHealthCheckPath,
        "Matcher" =: _mtgMatcher,
        "HealthyThresholdCount" =: _mtgHealthyThresholdCount,
        "HealthCheckIntervalSeconds"
          =: _mtgHealthCheckIntervalSeconds,
        "UnhealthyThresholdCount"
          =: _mtgUnhealthyThresholdCount,
        "TargetGroupArn" =: _mtgTargetGroupARN
      ]

-- | /See:/ 'modifyTargetGroupResponse' smart constructor.
data ModifyTargetGroupResponse = ModifyTargetGroupResponse'
  { _mtgrrsTargetGroups ::
      !( Maybe
           [TargetGroup]
       ),
    _mtgrrsResponseStatus ::
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

-- | Creates a value of 'ModifyTargetGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtgrrsTargetGroups' - Information about the modified target group.
--
-- * 'mtgrrsResponseStatus' - -- | The response status code.
modifyTargetGroupResponse ::
  -- | 'mtgrrsResponseStatus'
  Int ->
  ModifyTargetGroupResponse
modifyTargetGroupResponse pResponseStatus_ =
  ModifyTargetGroupResponse'
    { _mtgrrsTargetGroups =
        Nothing,
      _mtgrrsResponseStatus = pResponseStatus_
    }

-- | Information about the modified target group.
mtgrrsTargetGroups :: Lens' ModifyTargetGroupResponse [TargetGroup]
mtgrrsTargetGroups = lens _mtgrrsTargetGroups (\s a -> s {_mtgrrsTargetGroups = a}) . _Default . _Coerce

-- | -- | The response status code.
mtgrrsResponseStatus :: Lens' ModifyTargetGroupResponse Int
mtgrrsResponseStatus = lens _mtgrrsResponseStatus (\s a -> s {_mtgrrsResponseStatus = a})

instance NFData ModifyTargetGroupResponse
