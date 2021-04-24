{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ELBv2
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- __Elastic Load Balancing__
--
-- A load balancer distributes incoming traffic across targets, such as your EC2 instances. This enables you to increase the availability of your application. The load balancer also monitors the health of its registered targets and ensures that it routes traffic only to healthy targets. You configure your load balancer to accept incoming traffic by specifying one or more listeners, which are configured with a protocol and port number for connections from clients to the load balancer. You configure a target group with a protocol and port number for connections from the load balancer to the targets, and with health check settings to be used when checking the health status of the targets.
--
-- Elastic Load Balancing supports the following types of load balancers: Application Load Balancers, Network Load Balancers, Gateway Load Balancers, and Classic Load Balancers. This reference covers the following load balancer types:
--
--     * Application Load Balancer - Operates at the application layer (layer 7) and supports HTTP and HTTPS.
--
--     * Network Load Balancer - Operates at the transport layer (layer 4) and supports TCP, TLS, and UDP.
--
--     * Gateway Load Balancer - Operates at the network layer (layer 3).
--
--
--
-- For more information, see the <https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/ Elastic Load Balancing User Guide> .
--
-- All Elastic Load Balancing operations are idempotent, which means that they complete at most one time. If you repeat an operation, it succeeds.
module Network.AWS.ELBv2
  ( -- * Service Configuration
    eLBv2,

    -- * Errors
    -- $errors

    -- ** InvalidSecurityGroupException
    _InvalidSecurityGroupException,

    -- ** ALPNPolicyNotSupportedException
    _ALPNPolicyNotSupportedException,

    -- ** InvalidConfigurationRequestException
    _InvalidConfigurationRequestException,

    -- ** TooManyTagsException
    _TooManyTagsException,

    -- ** HealthUnavailableException
    _HealthUnavailableException,

    -- ** PriorityInUseException
    _PriorityInUseException,

    -- ** DuplicateTagKeysException
    _DuplicateTagKeysException,

    -- ** AvailabilityZoneNotSupportedException
    _AvailabilityZoneNotSupportedException,

    -- ** TooManyUniqueTargetGroupsPerLoadBalancerException
    _TooManyUniqueTargetGroupsPerLoadBalancerException,

    -- ** IncompatibleProtocolsException
    _IncompatibleProtocolsException,

    -- ** TooManyRulesException
    _TooManyRulesException,

    -- ** TooManyActionsException
    _TooManyActionsException,

    -- ** OperationNotPermittedException
    _OperationNotPermittedException,

    -- ** TargetGroupAssociationLimitException
    _TargetGroupAssociationLimitException,

    -- ** TooManyRegistrationsForTargetIdException
    _TooManyRegistrationsForTargetIdException,

    -- ** ListenerNotFoundException
    _ListenerNotFoundException,

    -- ** SubnetNotFoundException
    _SubnetNotFoundException,

    -- ** InvalidTargetException
    _InvalidTargetException,

    -- ** UnsupportedProtocolException
    _UnsupportedProtocolException,

    -- ** ResourceInUseException
    _ResourceInUseException,

    -- ** AllocationIdNotFoundException
    _AllocationIdNotFoundException,

    -- ** TooManyLoadBalancersException
    _TooManyLoadBalancersException,

    -- ** CertificateNotFoundException
    _CertificateNotFoundException,

    -- ** DuplicateTargetGroupNameException
    _DuplicateTargetGroupNameException,

    -- ** DuplicateListenerException
    _DuplicateListenerException,

    -- ** LoadBalancerNotFoundException
    _LoadBalancerNotFoundException,

    -- ** TooManyCertificatesException
    _TooManyCertificatesException,

    -- ** InvalidSchemeException
    _InvalidSchemeException,

    -- ** SSLPolicyNotFoundException
    _SSLPolicyNotFoundException,

    -- ** InvalidSubnetException
    _InvalidSubnetException,

    -- ** TooManyTargetGroupsException
    _TooManyTargetGroupsException,

    -- ** DuplicateLoadBalancerNameException
    _DuplicateLoadBalancerNameException,

    -- ** TooManyListenersException
    _TooManyListenersException,

    -- ** InvalidLoadBalancerActionException
    _InvalidLoadBalancerActionException,

    -- ** TooManyTargetsException
    _TooManyTargetsException,

    -- ** RuleNotFoundException
    _RuleNotFoundException,

    -- ** TargetGroupNotFoundException
    _TargetGroupNotFoundException,

    -- * Waiters
    -- $waiters

    -- ** LoadBalancersDeleted
    loadBalancersDeleted,

    -- ** TargetDeregistered
    targetDeregistered,

    -- ** LoadBalancerAvailable
    loadBalancerAvailable,

    -- ** TargetInService
    targetInService,

    -- ** LoadBalancerExists
    loadBalancerExists,

    -- * Operations
    -- $operations

    -- ** DescribeSSLPolicies (Paginated)
    module Network.AWS.ELBv2.DescribeSSLPolicies,

    -- ** RemoveTags
    module Network.AWS.ELBv2.RemoveTags,

    -- ** DeleteRule
    module Network.AWS.ELBv2.DeleteRule,

    -- ** DescribeTags
    module Network.AWS.ELBv2.DescribeTags,

    -- ** DescribeTargetGroupAttributes
    module Network.AWS.ELBv2.DescribeTargetGroupAttributes,

    -- ** AddListenerCertificates
    module Network.AWS.ELBv2.AddListenerCertificates,

    -- ** CreateLoadBalancer
    module Network.AWS.ELBv2.CreateLoadBalancer,

    -- ** RemoveListenerCertificates
    module Network.AWS.ELBv2.RemoveListenerCertificates,

    -- ** ModifyRule
    module Network.AWS.ELBv2.ModifyRule,

    -- ** ModifyTargetGroup
    module Network.AWS.ELBv2.ModifyTargetGroup,

    -- ** DeleteLoadBalancer
    module Network.AWS.ELBv2.DeleteLoadBalancer,

    -- ** DescribeListeners (Paginated)
    module Network.AWS.ELBv2.DescribeListeners,

    -- ** AddTags
    module Network.AWS.ELBv2.AddTags,

    -- ** DescribeTargetGroups (Paginated)
    module Network.AWS.ELBv2.DescribeTargetGroups,

    -- ** SetIPAddressType
    module Network.AWS.ELBv2.SetIPAddressType,

    -- ** ModifyLoadBalancerAttributes
    module Network.AWS.ELBv2.ModifyLoadBalancerAttributes,

    -- ** DescribeAccountLimits (Paginated)
    module Network.AWS.ELBv2.DescribeAccountLimits,

    -- ** CreateRule
    module Network.AWS.ELBv2.CreateRule,

    -- ** CreateTargetGroup
    module Network.AWS.ELBv2.CreateTargetGroup,

    -- ** SetSubnets
    module Network.AWS.ELBv2.SetSubnets,

    -- ** DeregisterTargets
    module Network.AWS.ELBv2.DeregisterTargets,

    -- ** DeleteListener
    module Network.AWS.ELBv2.DeleteListener,

    -- ** DeleteTargetGroup
    module Network.AWS.ELBv2.DeleteTargetGroup,

    -- ** DescribeLoadBalancers (Paginated)
    module Network.AWS.ELBv2.DescribeLoadBalancers,

    -- ** ModifyTargetGroupAttributes
    module Network.AWS.ELBv2.ModifyTargetGroupAttributes,

    -- ** ModifyListener
    module Network.AWS.ELBv2.ModifyListener,

    -- ** RegisterTargets
    module Network.AWS.ELBv2.RegisterTargets,

    -- ** DescribeTargetHealth
    module Network.AWS.ELBv2.DescribeTargetHealth,

    -- ** SetRulePriorities
    module Network.AWS.ELBv2.SetRulePriorities,

    -- ** DescribeRules (Paginated)
    module Network.AWS.ELBv2.DescribeRules,

    -- ** SetSecurityGroups
    module Network.AWS.ELBv2.SetSecurityGroups,

    -- ** DescribeLoadBalancerAttributes
    module Network.AWS.ELBv2.DescribeLoadBalancerAttributes,

    -- ** DescribeListenerCertificates (Paginated)
    module Network.AWS.ELBv2.DescribeListenerCertificates,

    -- ** CreateListener
    module Network.AWS.ELBv2.CreateListener,

    -- * Types

    -- ** ActionTypeEnum
    ActionTypeEnum (..),

    -- ** AuthenticateCognitoActionConditionalBehaviorEnum
    AuthenticateCognitoActionConditionalBehaviorEnum (..),

    -- ** AuthenticateOidcActionConditionalBehaviorEnum
    AuthenticateOidcActionConditionalBehaviorEnum (..),

    -- ** IPAddressType
    IPAddressType (..),

    -- ** LoadBalancerSchemeEnum
    LoadBalancerSchemeEnum (..),

    -- ** LoadBalancerStateEnum
    LoadBalancerStateEnum (..),

    -- ** LoadBalancerTypeEnum
    LoadBalancerTypeEnum (..),

    -- ** ProtocolEnum
    ProtocolEnum (..),

    -- ** RedirectActionStatusCodeEnum
    RedirectActionStatusCodeEnum (..),

    -- ** TargetHealthReasonEnum
    TargetHealthReasonEnum (..),

    -- ** TargetHealthStateEnum
    TargetHealthStateEnum (..),

    -- ** TargetTypeEnum
    TargetTypeEnum (..),

    -- ** Action
    Action,
    action,
    aAuthenticateOidcConfig,
    aTargetGroupARN,
    aAuthenticateCognitoConfig,
    aFixedResponseConfig,
    aForwardConfig,
    aOrder,
    aRedirectConfig,
    aType,

    -- ** AuthenticateCognitoActionConfig
    AuthenticateCognitoActionConfig,
    authenticateCognitoActionConfig,
    acacSessionTimeout,
    acacScope,
    acacAuthenticationRequestExtraParams,
    acacSessionCookieName,
    acacOnUnauthenticatedRequest,
    acacUserPoolARN,
    acacUserPoolClientId,
    acacUserPoolDomain,

    -- ** AuthenticateOidcActionConfig
    AuthenticateOidcActionConfig,
    authenticateOidcActionConfig,
    aoacUseExistingClientSecret,
    aoacClientSecret,
    aoacSessionTimeout,
    aoacScope,
    aoacAuthenticationRequestExtraParams,
    aoacSessionCookieName,
    aoacOnUnauthenticatedRequest,
    aoacIssuer,
    aoacAuthorizationEndpoint,
    aoacTokenEndpoint,
    aoacUserInfoEndpoint,
    aoacClientId,

    -- ** AvailabilityZone
    AvailabilityZone,
    availabilityZone,
    azZoneName,
    azOutpostId,
    azLoadBalancerAddresses,
    azSubnetId,

    -- ** Certificate
    Certificate,
    certificate,
    cIsDefault,
    cCertificateARN,

    -- ** Cipher
    Cipher,
    cipher,
    cPriority,
    cName,

    -- ** FixedResponseActionConfig
    FixedResponseActionConfig,
    fixedResponseActionConfig,
    fracContentType,
    fracMessageBody,
    fracStatusCode,

    -- ** ForwardActionConfig
    ForwardActionConfig,
    forwardActionConfig,
    facTargetGroupStickinessConfig,
    facTargetGroups,

    -- ** HTTPHeaderConditionConfig
    HTTPHeaderConditionConfig,
    hTTPHeaderConditionConfig,
    httphccValues,
    httphccHTTPHeaderName,

    -- ** HTTPRequestMethodConditionConfig
    HTTPRequestMethodConditionConfig,
    hTTPRequestMethodConditionConfig,
    httprmccValues,

    -- ** HostHeaderConditionConfig
    HostHeaderConditionConfig,
    hostHeaderConditionConfig,
    hhccValues,

    -- ** Limit
    Limit,
    limit,
    lName,
    lMax,

    -- ** Listener
    Listener,
    listener,
    lLoadBalancerARN,
    lSSLPolicy,
    lPort,
    lDefaultActions,
    lProtocol,
    lCertificates,
    lListenerARN,
    lAlpnPolicy,

    -- ** LoadBalancer
    LoadBalancer,
    loadBalancer,
    lbIPAddressType,
    lbLoadBalancerARN,
    lbCustomerOwnedIPv4Pool,
    lbAvailabilityZones,
    lbScheme,
    lbCreatedTime,
    lbSecurityGroups,
    lbState,
    lbDNSName,
    lbType,
    lbCanonicalHostedZoneId,
    lbVPCId,
    lbLoadBalancerName,

    -- ** LoadBalancerAddress
    LoadBalancerAddress,
    loadBalancerAddress,
    lbaPrivateIPv4Address,
    lbaIPAddress,
    lbaIPv6Address,
    lbaAllocationId,

    -- ** LoadBalancerAttribute
    LoadBalancerAttribute,
    loadBalancerAttribute,
    lbaKey,
    lbaValue,

    -- ** LoadBalancerState
    LoadBalancerState,
    loadBalancerState,
    lbsCode,
    lbsReason,

    -- ** Matcher
    Matcher,
    matcher,
    mGrpcCode,
    mHTTPCode,

    -- ** PathPatternConditionConfig
    PathPatternConditionConfig,
    pathPatternConditionConfig,
    ppccValues,

    -- ** QueryStringConditionConfig
    QueryStringConditionConfig,
    queryStringConditionConfig,
    qsccValues,

    -- ** QueryStringKeyValuePair
    QueryStringKeyValuePair,
    queryStringKeyValuePair,
    qskvpKey,
    qskvpValue,

    -- ** RedirectActionConfig
    RedirectActionConfig,
    redirectActionConfig,
    racQuery,
    racPort,
    racProtocol,
    racHost,
    racPath,
    racStatusCode,

    -- ** Rule
    Rule,
    rule,
    rIsDefault,
    rRuleARN,
    rActions,
    rPriority,
    rConditions,

    -- ** RuleCondition
    RuleCondition,
    ruleCondition,
    rcPathPatternConfig,
    rcHTTPRequestMethodConfig,
    rcValues,
    rcSourceIPConfig,
    rcHTTPHeaderConfig,
    rcHostHeaderConfig,
    rcQueryStringConfig,
    rcField,

    -- ** RulePriorityPair
    RulePriorityPair,
    rulePriorityPair,
    rppRuleARN,
    rppPriority,

    -- ** SSLPolicy
    SSLPolicy,
    sslPolicy,
    spCiphers,
    spName,
    spSSLProtocols,

    -- ** SourceIPConditionConfig
    SourceIPConditionConfig,
    sourceIPConditionConfig,
    siccValues,

    -- ** SubnetMapping
    SubnetMapping,
    subnetMapping,
    smPrivateIPv4Address,
    smIPv6Address,
    smSubnetId,
    smAllocationId,

    -- ** Tag
    Tag,
    tag,
    tagValue,
    tagKey,

    -- ** TagDescription
    TagDescription,
    tagDescription,
    tdResourceARN,
    tdTags,

    -- ** TargetDescription
    TargetDescription,
    targetDescription,
    tdAvailabilityZone,
    tdPort,
    tdId,

    -- ** TargetGroup
    TargetGroup,
    targetGroup,
    tgHealthCheckEnabled,
    tgHealthCheckProtocol,
    tgTargetGroupName,
    tgTargetType,
    tgTargetGroupARN,
    tgHealthCheckPort,
    tgHealthCheckTimeoutSeconds,
    tgHealthCheckPath,
    tgLoadBalancerARNs,
    tgMatcher,
    tgProtocolVersion,
    tgHealthyThresholdCount,
    tgPort,
    tgHealthCheckIntervalSeconds,
    tgProtocol,
    tgVPCId,
    tgUnhealthyThresholdCount,

    -- ** TargetGroupAttribute
    TargetGroupAttribute,
    targetGroupAttribute,
    tgaKey,
    tgaValue,

    -- ** TargetGroupStickinessConfig
    TargetGroupStickinessConfig,
    targetGroupStickinessConfig,
    tgscEnabled,
    tgscDurationSeconds,

    -- ** TargetGroupTuple
    TargetGroupTuple,
    targetGroupTuple,
    tgtTargetGroupARN,
    tgtWeight,

    -- ** TargetHealth
    TargetHealth,
    targetHealth,
    thState,
    thReason,
    thDescription,

    -- ** TargetHealthDescription
    TargetHealthDescription,
    targetHealthDescription,
    thdHealthCheckPort,
    thdTarget,
    thdTargetHealth,
  )
where

import Network.AWS.ELBv2.AddListenerCertificates
import Network.AWS.ELBv2.AddTags
import Network.AWS.ELBv2.CreateListener
import Network.AWS.ELBv2.CreateLoadBalancer
import Network.AWS.ELBv2.CreateRule
import Network.AWS.ELBv2.CreateTargetGroup
import Network.AWS.ELBv2.DeleteListener
import Network.AWS.ELBv2.DeleteLoadBalancer
import Network.AWS.ELBv2.DeleteRule
import Network.AWS.ELBv2.DeleteTargetGroup
import Network.AWS.ELBv2.DeregisterTargets
import Network.AWS.ELBv2.DescribeAccountLimits
import Network.AWS.ELBv2.DescribeListenerCertificates
import Network.AWS.ELBv2.DescribeListeners
import Network.AWS.ELBv2.DescribeLoadBalancerAttributes
import Network.AWS.ELBv2.DescribeLoadBalancers
import Network.AWS.ELBv2.DescribeRules
import Network.AWS.ELBv2.DescribeSSLPolicies
import Network.AWS.ELBv2.DescribeTags
import Network.AWS.ELBv2.DescribeTargetGroupAttributes
import Network.AWS.ELBv2.DescribeTargetGroups
import Network.AWS.ELBv2.DescribeTargetHealth
import Network.AWS.ELBv2.ModifyListener
import Network.AWS.ELBv2.ModifyLoadBalancerAttributes
import Network.AWS.ELBv2.ModifyRule
import Network.AWS.ELBv2.ModifyTargetGroup
import Network.AWS.ELBv2.ModifyTargetGroupAttributes
import Network.AWS.ELBv2.RegisterTargets
import Network.AWS.ELBv2.RemoveListenerCertificates
import Network.AWS.ELBv2.RemoveTags
import Network.AWS.ELBv2.SetIPAddressType
import Network.AWS.ELBv2.SetRulePriorities
import Network.AWS.ELBv2.SetSecurityGroups
import Network.AWS.ELBv2.SetSubnets
import Network.AWS.ELBv2.Types
import Network.AWS.ELBv2.Waiters

-- $errors
-- Error matchers are designed for use with the functions provided by
-- <http://hackage.haskell.org/package/lens/docs/Control-Exception-Lens.html Control.Exception.Lens>.
-- This allows catching (and rethrowing) service specific errors returned
-- by 'ELBv2'.

-- $operations
-- Some AWS operations return results that are incomplete and require subsequent
-- requests in order to obtain the entire result set. The process of sending
-- subsequent requests to continue where a previous request left off is called
-- pagination. For example, the 'ListObjects' operation of Amazon S3 returns up to
-- 1000 objects at a time, and you must send subsequent requests with the
-- appropriate Marker in order to retrieve the next page of results.
--
-- Operations that have an 'AWSPager' instance can transparently perform subsequent
-- requests, correctly setting Markers and other request facets to iterate through
-- the entire result set of a truncated API operation. Operations which support
-- this have an additional note in the documentation.
--
-- Many operations have the ability to filter results on the server side. See the
-- individual operation parameters for details.

-- $waiters
-- Waiters poll by repeatedly sending a request until some remote success condition
-- configured by the 'Wait' specification is fulfilled. The 'Wait' specification
-- determines how many attempts should be made, in addition to delay and retry strategies.
