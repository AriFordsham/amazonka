{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _InvalidSecurityGroupException,
    _ALPNPolicyNotSupportedException,
    _InvalidConfigurationRequestException,
    _TooManyTagsException,
    _HealthUnavailableException,
    _PriorityInUseException,
    _DuplicateTagKeysException,
    _AvailabilityZoneNotSupportedException,
    _TooManyUniqueTargetGroupsPerLoadBalancerException,
    _IncompatibleProtocolsException,
    _TooManyRulesException,
    _TooManyActionsException,
    _OperationNotPermittedException,
    _TargetGroupAssociationLimitException,
    _TooManyRegistrationsForTargetIdException,
    _ListenerNotFoundException,
    _SubnetNotFoundException,
    _InvalidTargetException,
    _UnsupportedProtocolException,
    _ResourceInUseException,
    _AllocationIdNotFoundException,
    _TooManyLoadBalancersException,
    _CertificateNotFoundException,
    _DuplicateTargetGroupNameException,
    _DuplicateListenerException,
    _LoadBalancerNotFoundException,
    _TooManyCertificatesException,
    _InvalidSchemeException,
    _SSLPolicyNotFoundException,
    _InvalidSubnetException,
    _TooManyTargetGroupsException,
    _DuplicateLoadBalancerNameException,
    _TooManyListenersException,
    _InvalidLoadBalancerActionException,
    _TooManyTargetsException,
    _RuleNotFoundException,
    _TargetGroupNotFoundException,

    -- * ActionTypeEnum
    ActionTypeEnum (..),

    -- * AuthenticateCognitoActionConditionalBehaviorEnum
    AuthenticateCognitoActionConditionalBehaviorEnum (..),

    -- * AuthenticateOidcActionConditionalBehaviorEnum
    AuthenticateOidcActionConditionalBehaviorEnum (..),

    -- * IpAddressType
    IpAddressType (..),

    -- * LoadBalancerSchemeEnum
    LoadBalancerSchemeEnum (..),

    -- * LoadBalancerStateEnum
    LoadBalancerStateEnum (..),

    -- * LoadBalancerTypeEnum
    LoadBalancerTypeEnum (..),

    -- * ProtocolEnum
    ProtocolEnum (..),

    -- * RedirectActionStatusCodeEnum
    RedirectActionStatusCodeEnum (..),

    -- * TargetHealthReasonEnum
    TargetHealthReasonEnum (..),

    -- * TargetHealthStateEnum
    TargetHealthStateEnum (..),

    -- * TargetTypeEnum
    TargetTypeEnum (..),

    -- * Action
    Action (..),
    newAction,

    -- * AuthenticateCognitoActionConfig
    AuthenticateCognitoActionConfig (..),
    newAuthenticateCognitoActionConfig,

    -- * AuthenticateOidcActionConfig
    AuthenticateOidcActionConfig (..),
    newAuthenticateOidcActionConfig,

    -- * AvailabilityZone
    AvailabilityZone (..),
    newAvailabilityZone,

    -- * Certificate
    Certificate (..),
    newCertificate,

    -- * Cipher
    Cipher (..),
    newCipher,

    -- * FixedResponseActionConfig
    FixedResponseActionConfig (..),
    newFixedResponseActionConfig,

    -- * ForwardActionConfig
    ForwardActionConfig (..),
    newForwardActionConfig,

    -- * HostHeaderConditionConfig
    HostHeaderConditionConfig (..),
    newHostHeaderConditionConfig,

    -- * HttpHeaderConditionConfig
    HttpHeaderConditionConfig (..),
    newHttpHeaderConditionConfig,

    -- * HttpRequestMethodConditionConfig
    HttpRequestMethodConditionConfig (..),
    newHttpRequestMethodConditionConfig,

    -- * Limit
    Limit (..),
    newLimit,

    -- * Listener
    Listener (..),
    newListener,

    -- * LoadBalancer
    LoadBalancer (..),
    newLoadBalancer,

    -- * LoadBalancerAddress
    LoadBalancerAddress (..),
    newLoadBalancerAddress,

    -- * LoadBalancerAttribute
    LoadBalancerAttribute (..),
    newLoadBalancerAttribute,

    -- * LoadBalancerState
    LoadBalancerState (..),
    newLoadBalancerState,

    -- * Matcher
    Matcher (..),
    newMatcher,

    -- * PathPatternConditionConfig
    PathPatternConditionConfig (..),
    newPathPatternConditionConfig,

    -- * QueryStringConditionConfig
    QueryStringConditionConfig (..),
    newQueryStringConditionConfig,

    -- * QueryStringKeyValuePair
    QueryStringKeyValuePair (..),
    newQueryStringKeyValuePair,

    -- * RedirectActionConfig
    RedirectActionConfig (..),
    newRedirectActionConfig,

    -- * Rule
    Rule (..),
    newRule,

    -- * RuleCondition
    RuleCondition (..),
    newRuleCondition,

    -- * RulePriorityPair
    RulePriorityPair (..),
    newRulePriorityPair,

    -- * SourceIpConditionConfig
    SourceIpConditionConfig (..),
    newSourceIpConditionConfig,

    -- * SslPolicy
    SslPolicy (..),
    newSslPolicy,

    -- * SubnetMapping
    SubnetMapping (..),
    newSubnetMapping,

    -- * Tag
    Tag (..),
    newTag,

    -- * TagDescription
    TagDescription (..),
    newTagDescription,

    -- * TargetDescription
    TargetDescription (..),
    newTargetDescription,

    -- * TargetGroup
    TargetGroup (..),
    newTargetGroup,

    -- * TargetGroupAttribute
    TargetGroupAttribute (..),
    newTargetGroupAttribute,

    -- * TargetGroupStickinessConfig
    TargetGroupStickinessConfig (..),
    newTargetGroupStickinessConfig,

    -- * TargetGroupTuple
    TargetGroupTuple (..),
    newTargetGroupTuple,

    -- * TargetHealth
    TargetHealth (..),
    newTargetHealth,

    -- * TargetHealthDescription
    TargetHealthDescription (..),
    newTargetHealthDescription,
  )
where

import Network.AWS.ELBv2.Types.Action
import Network.AWS.ELBv2.Types.ActionTypeEnum
import Network.AWS.ELBv2.Types.AuthenticateCognitoActionConditionalBehaviorEnum
import Network.AWS.ELBv2.Types.AuthenticateCognitoActionConfig
import Network.AWS.ELBv2.Types.AuthenticateOidcActionConditionalBehaviorEnum
import Network.AWS.ELBv2.Types.AuthenticateOidcActionConfig
import Network.AWS.ELBv2.Types.AvailabilityZone
import Network.AWS.ELBv2.Types.Certificate
import Network.AWS.ELBv2.Types.Cipher
import Network.AWS.ELBv2.Types.FixedResponseActionConfig
import Network.AWS.ELBv2.Types.ForwardActionConfig
import Network.AWS.ELBv2.Types.HostHeaderConditionConfig
import Network.AWS.ELBv2.Types.HttpHeaderConditionConfig
import Network.AWS.ELBv2.Types.HttpRequestMethodConditionConfig
import Network.AWS.ELBv2.Types.IpAddressType
import Network.AWS.ELBv2.Types.Limit
import Network.AWS.ELBv2.Types.Listener
import Network.AWS.ELBv2.Types.LoadBalancer
import Network.AWS.ELBv2.Types.LoadBalancerAddress
import Network.AWS.ELBv2.Types.LoadBalancerAttribute
import Network.AWS.ELBv2.Types.LoadBalancerSchemeEnum
import Network.AWS.ELBv2.Types.LoadBalancerState
import Network.AWS.ELBv2.Types.LoadBalancerStateEnum
import Network.AWS.ELBv2.Types.LoadBalancerTypeEnum
import Network.AWS.ELBv2.Types.Matcher
import Network.AWS.ELBv2.Types.PathPatternConditionConfig
import Network.AWS.ELBv2.Types.ProtocolEnum
import Network.AWS.ELBv2.Types.QueryStringConditionConfig
import Network.AWS.ELBv2.Types.QueryStringKeyValuePair
import Network.AWS.ELBv2.Types.RedirectActionConfig
import Network.AWS.ELBv2.Types.RedirectActionStatusCodeEnum
import Network.AWS.ELBv2.Types.Rule
import Network.AWS.ELBv2.Types.RuleCondition
import Network.AWS.ELBv2.Types.RulePriorityPair
import Network.AWS.ELBv2.Types.SourceIpConditionConfig
import Network.AWS.ELBv2.Types.SslPolicy
import Network.AWS.ELBv2.Types.SubnetMapping
import Network.AWS.ELBv2.Types.Tag
import Network.AWS.ELBv2.Types.TagDescription
import Network.AWS.ELBv2.Types.TargetDescription
import Network.AWS.ELBv2.Types.TargetGroup
import Network.AWS.ELBv2.Types.TargetGroupAttribute
import Network.AWS.ELBv2.Types.TargetGroupStickinessConfig
import Network.AWS.ELBv2.Types.TargetGroupTuple
import Network.AWS.ELBv2.Types.TargetHealth
import Network.AWS.ELBv2.Types.TargetHealthDescription
import Network.AWS.ELBv2.Types.TargetHealthReasonEnum
import Network.AWS.ELBv2.Types.TargetHealthStateEnum
import Network.AWS.ELBv2.Types.TargetTypeEnum
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2015-12-01@ of the Amazon Elastic Load Balancing SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "ELBv2",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "elasticloadbalancing",
      Prelude._svcVersion = "2015-12-01",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError = Prelude.parseXMLError "ELBv2",
      Prelude._svcRetry = retry
    }
  where
    retry =
      Prelude.Exponential
        { Prelude._retryBase = 5.0e-2,
          Prelude._retryGrowth = 2,
          Prelude._retryAttempts = 5,
          Prelude._retryCheck = check
        }
    check e
      | Lens.has (Prelude.hasStatus 504) e =
        Prelude.Just "gateway_timeout"
      | Lens.has
          ( Prelude.hasCode
              "ProvisionedThroughputExceededException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throughput_exceeded"
      | Lens.has (Prelude.hasStatus 503) e =
        Prelude.Just "service_unavailable"
      | Lens.has (Prelude.hasStatus 502) e =
        Prelude.Just "bad_gateway"
      | Lens.has (Prelude.hasStatus 429) e =
        Prelude.Just "too_many_requests"
      | Lens.has
          ( Prelude.hasCode "RequestThrottledException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "request_throttled_exception"
      | Lens.has
          ( Prelude.hasCode "ThrottledException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttled_exception"
      | Lens.has (Prelude.hasStatus 509) e =
        Prelude.Just "limit_exceeded"
      | Lens.has (Prelude.hasStatus 500) e =
        Prelude.Just "general_server_error"
      | Lens.has
          ( Prelude.hasCode "ThrottlingException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttling_exception"
      | Lens.has
          ( Prelude.hasCode "Throttling"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttling"
      | Prelude.otherwise = Prelude.Nothing

-- | The specified security group does not exist.
_InvalidSecurityGroupException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidSecurityGroupException =
  Prelude._MatchServiceError
    defaultService
    "InvalidSecurityGroup"
    Prelude.. Prelude.hasStatus 400

-- | The specified ALPN policy is not supported.
_ALPNPolicyNotSupportedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ALPNPolicyNotSupportedException =
  Prelude._MatchServiceError
    defaultService
    "ALPNPolicyNotFound"
    Prelude.. Prelude.hasStatus 400

-- | The requested configuration is not valid.
_InvalidConfigurationRequestException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidConfigurationRequestException =
  Prelude._MatchServiceError
    defaultService
    "InvalidConfigurationRequest"
    Prelude.. Prelude.hasStatus 400

-- | You\'ve reached the limit on the number of tags per load balancer.
_TooManyTagsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyTagsException =
  Prelude._MatchServiceError
    defaultService
    "TooManyTags"
    Prelude.. Prelude.hasStatus 400

-- | The health of the specified targets could not be retrieved due to an
-- internal error.
_HealthUnavailableException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_HealthUnavailableException =
  Prelude._MatchServiceError
    defaultService
    "HealthUnavailable"
    Prelude.. Prelude.hasStatus 500

-- | The specified priority is in use.
_PriorityInUseException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_PriorityInUseException =
  Prelude._MatchServiceError
    defaultService
    "PriorityInUse"
    Prelude.. Prelude.hasStatus 400

-- | A tag key was specified more than once.
_DuplicateTagKeysException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DuplicateTagKeysException =
  Prelude._MatchServiceError
    defaultService
    "DuplicateTagKeys"
    Prelude.. Prelude.hasStatus 400

-- | The specified Availability Zone is not supported.
_AvailabilityZoneNotSupportedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AvailabilityZoneNotSupportedException =
  Prelude._MatchServiceError
    defaultService
    "AvailabilityZoneNotSupported"
    Prelude.. Prelude.hasStatus 400

-- | You\'ve reached the limit on the number of unique target groups per load
-- balancer across all listeners. If a target group is used by multiple
-- actions for a load balancer, it is counted as only one use.
_TooManyUniqueTargetGroupsPerLoadBalancerException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyUniqueTargetGroupsPerLoadBalancerException =
  Prelude._MatchServiceError
    defaultService
    "TooManyUniqueTargetGroupsPerLoadBalancer"
    Prelude.. Prelude.hasStatus 400

-- | The specified configuration is not valid with this protocol.
_IncompatibleProtocolsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_IncompatibleProtocolsException =
  Prelude._MatchServiceError
    defaultService
    "IncompatibleProtocols"
    Prelude.. Prelude.hasStatus 400

-- | You\'ve reached the limit on the number of rules per load balancer.
_TooManyRulesException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyRulesException =
  Prelude._MatchServiceError
    defaultService
    "TooManyRules"
    Prelude.. Prelude.hasStatus 400

-- | You\'ve reached the limit on the number of actions per rule.
_TooManyActionsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyActionsException =
  Prelude._MatchServiceError
    defaultService
    "TooManyActions"
    Prelude.. Prelude.hasStatus 400

-- | This operation is not allowed.
_OperationNotPermittedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OperationNotPermittedException =
  Prelude._MatchServiceError
    defaultService
    "OperationNotPermitted"
    Prelude.. Prelude.hasStatus 400

-- | You\'ve reached the limit on the number of load balancers per target
-- group.
_TargetGroupAssociationLimitException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TargetGroupAssociationLimitException =
  Prelude._MatchServiceError
    defaultService
    "TargetGroupAssociationLimit"
    Prelude.. Prelude.hasStatus 400

-- | You\'ve reached the limit on the number of times a target can be
-- registered with a load balancer.
_TooManyRegistrationsForTargetIdException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyRegistrationsForTargetIdException =
  Prelude._MatchServiceError
    defaultService
    "TooManyRegistrationsForTargetId"
    Prelude.. Prelude.hasStatus 400

-- | The specified listener does not exist.
_ListenerNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ListenerNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ListenerNotFound"
    Prelude.. Prelude.hasStatus 400

-- | The specified subnet does not exist.
_SubnetNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_SubnetNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "SubnetNotFound"
    Prelude.. Prelude.hasStatus 400

-- | The specified target does not exist, is not in the same VPC as the
-- target group, or has an unsupported instance type.
_InvalidTargetException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidTargetException =
  Prelude._MatchServiceError
    defaultService
    "InvalidTarget"
    Prelude.. Prelude.hasStatus 400

-- | The specified protocol is not supported.
_UnsupportedProtocolException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UnsupportedProtocolException =
  Prelude._MatchServiceError
    defaultService
    "UnsupportedProtocol"
    Prelude.. Prelude.hasStatus 400

-- | A specified resource is in use.
_ResourceInUseException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceInUseException =
  Prelude._MatchServiceError
    defaultService
    "ResourceInUse"
    Prelude.. Prelude.hasStatus 400

-- | The specified allocation ID does not exist.
_AllocationIdNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AllocationIdNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "AllocationIdNotFound"
    Prelude.. Prelude.hasStatus 400

-- | You\'ve reached the limit on the number of load balancers for your AWS
-- account.
_TooManyLoadBalancersException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyLoadBalancersException =
  Prelude._MatchServiceError
    defaultService
    "TooManyLoadBalancers"
    Prelude.. Prelude.hasStatus 400

-- | The specified certificate does not exist.
_CertificateNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CertificateNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "CertificateNotFound"
    Prelude.. Prelude.hasStatus 400

-- | A target group with the specified name already exists.
_DuplicateTargetGroupNameException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DuplicateTargetGroupNameException =
  Prelude._MatchServiceError
    defaultService
    "DuplicateTargetGroupName"
    Prelude.. Prelude.hasStatus 400

-- | A listener with the specified port already exists.
_DuplicateListenerException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DuplicateListenerException =
  Prelude._MatchServiceError
    defaultService
    "DuplicateListener"
    Prelude.. Prelude.hasStatus 400

-- | The specified load balancer does not exist.
_LoadBalancerNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LoadBalancerNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "LoadBalancerNotFound"
    Prelude.. Prelude.hasStatus 400

-- | You\'ve reached the limit on the number of certificates per load
-- balancer.
_TooManyCertificatesException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyCertificatesException =
  Prelude._MatchServiceError
    defaultService
    "TooManyCertificates"
    Prelude.. Prelude.hasStatus 400

-- | The requested scheme is not valid.
_InvalidSchemeException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidSchemeException =
  Prelude._MatchServiceError
    defaultService
    "InvalidScheme"
    Prelude.. Prelude.hasStatus 400

-- | The specified SSL policy does not exist.
_SSLPolicyNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_SSLPolicyNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "SSLPolicyNotFound"
    Prelude.. Prelude.hasStatus 400

-- | The specified subnet is out of available addresses.
_InvalidSubnetException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidSubnetException =
  Prelude._MatchServiceError
    defaultService
    "InvalidSubnet"
    Prelude.. Prelude.hasStatus 400

-- | You\'ve reached the limit on the number of target groups for your AWS
-- account.
_TooManyTargetGroupsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyTargetGroupsException =
  Prelude._MatchServiceError
    defaultService
    "TooManyTargetGroups"
    Prelude.. Prelude.hasStatus 400

-- | A load balancer with the specified name already exists.
_DuplicateLoadBalancerNameException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DuplicateLoadBalancerNameException =
  Prelude._MatchServiceError
    defaultService
    "DuplicateLoadBalancerName"
    Prelude.. Prelude.hasStatus 400

-- | You\'ve reached the limit on the number of listeners per load balancer.
_TooManyListenersException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyListenersException =
  Prelude._MatchServiceError
    defaultService
    "TooManyListeners"
    Prelude.. Prelude.hasStatus 400

-- | The requested action is not valid.
_InvalidLoadBalancerActionException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidLoadBalancerActionException =
  Prelude._MatchServiceError
    defaultService
    "InvalidLoadBalancerAction"
    Prelude.. Prelude.hasStatus 400

-- | You\'ve reached the limit on the number of targets.
_TooManyTargetsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyTargetsException =
  Prelude._MatchServiceError
    defaultService
    "TooManyTargets"
    Prelude.. Prelude.hasStatus 400

-- | The specified rule does not exist.
_RuleNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_RuleNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "RuleNotFound"
    Prelude.. Prelude.hasStatus 400

-- | The specified target group does not exist.
_TargetGroupNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TargetGroupNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "TargetGroupNotFound"
    Prelude.. Prelude.hasStatus 400
