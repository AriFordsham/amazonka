{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _KeySigningKeyInUse,
    _NoSuchKeySigningKey,
    _HostedZoneNotEmpty,
    _NoSuchQueryLoggingConfig,
    _InvalidInput,
    _HostedZoneNotPrivate,
    _DNSSECNotFound,
    _NoSuchDelegationSet,
    _VPCAssociationAuthorizationNotFound,
    _NoSuchGeoLocation,
    _DelegationSetNotAvailable,
    _HealthCheckVersionMismatch,
    _HostedZoneAlreadyExists,
    _InvalidKMSArn,
    _InvalidDomainName,
    _InvalidKeySigningKeyStatus,
    _LastVPCAssociation,
    _HealthCheckInUse,
    _TrafficPolicyAlreadyExists,
    _InvalidChangeBatch,
    _IncompatibleVersion,
    _InvalidTrafficPolicyDocument,
    _NoSuchCloudWatchLogsLogGroup,
    _InsufficientCloudWatchLogsResourcePolicy,
    _NoSuchTrafficPolicyInstance,
    _TooManyTrafficPolicyInstances,
    _InvalidKeySigningKeyName,
    _QueryLoggingConfigAlreadyExists,
    _LimitsExceeded,
    _KeySigningKeyAlreadyExists,
    _TrafficPolicyInstanceAlreadyExists,
    _KeySigningKeyInParentDSRecord,
    _ThrottlingException,
    _VPCAssociationNotFound,
    _TooManyKeySigningKeys,
    _DelegationSetInUse,
    _HealthCheckAlreadyExists,
    _HostedZoneNotFound,
    _TooManyTrafficPolicies,
    _NoSuchTrafficPolicy,
    _TooManyTrafficPolicyVersionsForCurrentPolicy,
    _InvalidVPCId,
    _TrafficPolicyInUse,
    _InvalidSigningStatus,
    _DelegationSetNotReusable,
    _NoSuchHealthCheck,
    _InvalidPaginationToken,
    _ConflictingDomainExists,
    _TooManyHealthChecks,
    _DelegationSetAlreadyCreated,
    _TooManyVPCAssociationAuthorizations,
    _TooManyHostedZones,
    _PriorRequestNotComplete,
    _NoSuchHostedZone,
    _PublicZoneVPCAssociation,
    _ConflictingTypes,
    _NotAuthorizedException,
    _DelegationSetAlreadyReusable,
    _ConcurrentModification,
    _KeySigningKeyWithActiveStatusNotFound,
    _HostedZonePartiallyDelegated,
    _NoSuchChange,
    _InvalidArgument,

    -- * Re-exported Types
    module Network.AWS.Route53.Internal,

    -- * AccountLimitType
    AccountLimitType (..),

    -- * ChangeAction
    ChangeAction (..),

    -- * ChangeStatus
    ChangeStatus (..),

    -- * CloudWatchRegion
    CloudWatchRegion (..),

    -- * ComparisonOperator
    ComparisonOperator (..),

    -- * Failover
    Failover (..),

    -- * HealthCheckRegion
    HealthCheckRegion (..),

    -- * HealthCheckType
    HealthCheckType (..),

    -- * HostedZoneLimitType
    HostedZoneLimitType (..),

    -- * InsufficientDataHealthStatus
    InsufficientDataHealthStatus (..),

    -- * RecordType
    RecordType (..),

    -- * ResettableElementName
    ResettableElementName (..),

    -- * ReusableDelegationSetLimitType
    ReusableDelegationSetLimitType (..),

    -- * Statistic
    Statistic (..),

    -- * TagResourceType
    TagResourceType (..),

    -- * VPCRegion
    VPCRegion (..),

    -- * AccountLimit
    AccountLimit (..),
    newAccountLimit,

    -- * AlarmIdentifier
    AlarmIdentifier (..),
    newAlarmIdentifier,

    -- * AliasTarget
    AliasTarget (..),
    newAliasTarget,

    -- * Change
    Change (..),
    newChange,

    -- * ChangeBatch
    ChangeBatch (..),
    newChangeBatch,

    -- * ChangeInfo
    ChangeInfo (..),
    newChangeInfo,

    -- * CloudWatchAlarmConfiguration
    CloudWatchAlarmConfiguration (..),
    newCloudWatchAlarmConfiguration,

    -- * DNSSECStatus
    DNSSECStatus (..),
    newDNSSECStatus,

    -- * DelegationSet
    DelegationSet (..),
    newDelegationSet,

    -- * Dimension
    Dimension (..),
    newDimension,

    -- * GeoLocation
    GeoLocation (..),
    newGeoLocation,

    -- * GeoLocationDetails
    GeoLocationDetails (..),
    newGeoLocationDetails,

    -- * HealthCheck
    HealthCheck (..),
    newHealthCheck,

    -- * HealthCheckConfig
    HealthCheckConfig (..),
    newHealthCheckConfig,

    -- * HealthCheckObservation
    HealthCheckObservation (..),
    newHealthCheckObservation,

    -- * HostedZone
    HostedZone (..),
    newHostedZone,

    -- * HostedZoneConfig
    HostedZoneConfig (..),
    newHostedZoneConfig,

    -- * HostedZoneLimit
    HostedZoneLimit (..),
    newHostedZoneLimit,

    -- * HostedZoneOwner
    HostedZoneOwner (..),
    newHostedZoneOwner,

    -- * HostedZoneSummary
    HostedZoneSummary (..),
    newHostedZoneSummary,

    -- * KeySigningKey
    KeySigningKey (..),
    newKeySigningKey,

    -- * LinkedService
    LinkedService (..),
    newLinkedService,

    -- * QueryLoggingConfig
    QueryLoggingConfig (..),
    newQueryLoggingConfig,

    -- * ResourceRecord
    ResourceRecord (..),
    newResourceRecord,

    -- * ResourceRecordSet
    ResourceRecordSet (..),
    newResourceRecordSet,

    -- * ResourceTagSet
    ResourceTagSet (..),
    newResourceTagSet,

    -- * ReusableDelegationSetLimit
    ReusableDelegationSetLimit (..),
    newReusableDelegationSetLimit,

    -- * StatusReport
    StatusReport (..),
    newStatusReport,

    -- * Tag
    Tag (..),
    newTag,

    -- * TrafficPolicy
    TrafficPolicy (..),
    newTrafficPolicy,

    -- * TrafficPolicyInstance
    TrafficPolicyInstance (..),
    newTrafficPolicyInstance,

    -- * TrafficPolicySummary
    TrafficPolicySummary (..),
    newTrafficPolicySummary,

    -- * VPC
    VPC (..),
    newVPC,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Route53.Internal
import Network.AWS.Route53.Types.AccountLimit
import Network.AWS.Route53.Types.AccountLimitType
import Network.AWS.Route53.Types.AlarmIdentifier
import Network.AWS.Route53.Types.AliasTarget
import Network.AWS.Route53.Types.Change
import Network.AWS.Route53.Types.ChangeAction
import Network.AWS.Route53.Types.ChangeBatch
import Network.AWS.Route53.Types.ChangeInfo
import Network.AWS.Route53.Types.ChangeStatus
import Network.AWS.Route53.Types.CloudWatchAlarmConfiguration
import Network.AWS.Route53.Types.CloudWatchRegion
import Network.AWS.Route53.Types.ComparisonOperator
import Network.AWS.Route53.Types.DNSSECStatus
import Network.AWS.Route53.Types.DelegationSet
import Network.AWS.Route53.Types.Dimension
import Network.AWS.Route53.Types.Failover
import Network.AWS.Route53.Types.GeoLocation
import Network.AWS.Route53.Types.GeoLocationDetails
import Network.AWS.Route53.Types.HealthCheck
import Network.AWS.Route53.Types.HealthCheckConfig
import Network.AWS.Route53.Types.HealthCheckObservation
import Network.AWS.Route53.Types.HealthCheckRegion
import Network.AWS.Route53.Types.HealthCheckType
import Network.AWS.Route53.Types.HostedZone
import Network.AWS.Route53.Types.HostedZoneConfig
import Network.AWS.Route53.Types.HostedZoneLimit
import Network.AWS.Route53.Types.HostedZoneLimitType
import Network.AWS.Route53.Types.HostedZoneOwner
import Network.AWS.Route53.Types.HostedZoneSummary
import Network.AWS.Route53.Types.InsufficientDataHealthStatus
import Network.AWS.Route53.Types.KeySigningKey
import Network.AWS.Route53.Types.LinkedService
import Network.AWS.Route53.Types.QueryLoggingConfig
import Network.AWS.Route53.Types.RecordType
import Network.AWS.Route53.Types.ResettableElementName
import Network.AWS.Route53.Types.ResourceRecord
import Network.AWS.Route53.Types.ResourceRecordSet
import Network.AWS.Route53.Types.ResourceTagSet
import Network.AWS.Route53.Types.ReusableDelegationSetLimit
import Network.AWS.Route53.Types.ReusableDelegationSetLimitType
import Network.AWS.Route53.Types.Statistic
import Network.AWS.Route53.Types.StatusReport
import Network.AWS.Route53.Types.Tag
import Network.AWS.Route53.Types.TagResourceType
import Network.AWS.Route53.Types.TrafficPolicy
import Network.AWS.Route53.Types.TrafficPolicyInstance
import Network.AWS.Route53.Types.TrafficPolicySummary
import Network.AWS.Route53.Types.VPC
import Network.AWS.Route53.Types.VPCRegion
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2013-04-01@ of the Amazon Route 53 SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "Route53",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "route53",
      Prelude._svcVersion = "2013-04-01",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError = Prelude.parseXMLError "Route53",
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
      | Lens.has
          ( Prelude.hasCode "Throttling"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "request_limit_exceeded"
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
      | Lens.has
          ( Prelude.hasCode "PriorRequestNotComplete"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "still_processing"
      | Prelude.otherwise = Prelude.Nothing

-- | The key-signing key (KSK) that you specified can\'t be deactivated
-- because it\'s the only KSK for a currently-enabled DNSSEC. Disable
-- DNSSEC signing, or add or enable another KSK.
_KeySigningKeyInUse :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_KeySigningKeyInUse =
  Prelude._MatchServiceError
    defaultService
    "KeySigningKeyInUse"

-- | The specified key-signing key (KSK) doesn\'t exist.
_NoSuchKeySigningKey :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoSuchKeySigningKey =
  Prelude._MatchServiceError
    defaultService
    "NoSuchKeySigningKey"
    Prelude.. Prelude.hasStatus 404

-- | The hosted zone contains resource records that are not SOA or NS
-- records.
_HostedZoneNotEmpty :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_HostedZoneNotEmpty =
  Prelude._MatchServiceError
    defaultService
    "HostedZoneNotEmpty"
    Prelude.. Prelude.hasStatus 400

-- | There is no DNS query logging configuration with the specified ID.
_NoSuchQueryLoggingConfig :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoSuchQueryLoggingConfig =
  Prelude._MatchServiceError
    defaultService
    "NoSuchQueryLoggingConfig"
    Prelude.. Prelude.hasStatus 404

-- | The input is not valid.
_InvalidInput :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidInput =
  Prelude._MatchServiceError
    defaultService
    "InvalidInput"
    Prelude.. Prelude.hasStatus 400

-- | The specified hosted zone is a public hosted zone, not a private hosted
-- zone.
_HostedZoneNotPrivate :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_HostedZoneNotPrivate =
  Prelude._MatchServiceError
    defaultService
    "HostedZoneNotPrivate"

-- | The hosted zone doesn\'t have any DNSSEC resources.
_DNSSECNotFound :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DNSSECNotFound =
  Prelude._MatchServiceError
    defaultService
    "DNSSECNotFound"
    Prelude.. Prelude.hasStatus 400

-- | A reusable delegation set with the specified ID does not exist.
_NoSuchDelegationSet :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoSuchDelegationSet =
  Prelude._MatchServiceError
    defaultService
    "NoSuchDelegationSet"

-- | The VPC that you specified is not authorized to be associated with the
-- hosted zone.
_VPCAssociationAuthorizationNotFound :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_VPCAssociationAuthorizationNotFound =
  Prelude._MatchServiceError
    defaultService
    "VPCAssociationAuthorizationNotFound"
    Prelude.. Prelude.hasStatus 404

-- | Amazon Route 53 doesn\'t support the specified geographic location. For
-- a list of supported geolocation codes, see the
-- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_GeoLocation.html GeoLocation>
-- data type.
_NoSuchGeoLocation :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoSuchGeoLocation =
  Prelude._MatchServiceError
    defaultService
    "NoSuchGeoLocation"
    Prelude.. Prelude.hasStatus 404

-- | You can create a hosted zone that has the same name as an existing
-- hosted zone (example.com is common), but there is a limit to the number
-- of hosted zones that have the same name. If you get this error, Amazon
-- Route 53 has reached that limit. If you own the domain name and Route 53
-- generates this error, contact Customer Support.
_DelegationSetNotAvailable :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DelegationSetNotAvailable =
  Prelude._MatchServiceError
    defaultService
    "DelegationSetNotAvailable"

-- | The value of @HealthCheckVersion@ in the request doesn\'t match the
-- value of @HealthCheckVersion@ in the health check.
_HealthCheckVersionMismatch :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_HealthCheckVersionMismatch =
  Prelude._MatchServiceError
    defaultService
    "HealthCheckVersionMismatch"
    Prelude.. Prelude.hasStatus 409

-- | The hosted zone you\'re trying to create already exists. Amazon Route 53
-- returns this error when a hosted zone has already been created with the
-- specified @CallerReference@.
_HostedZoneAlreadyExists :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_HostedZoneAlreadyExists =
  Prelude._MatchServiceError
    defaultService
    "HostedZoneAlreadyExists"
    Prelude.. Prelude.hasStatus 409

-- | The KeyManagementServiceArn that you specified isn\'t valid to use with
-- DNSSEC signing.
_InvalidKMSArn :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidKMSArn =
  Prelude._MatchServiceError
    defaultService
    "InvalidKMSArn"

-- | The specified domain name is not valid.
_InvalidDomainName :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidDomainName =
  Prelude._MatchServiceError
    defaultService
    "InvalidDomainName"
    Prelude.. Prelude.hasStatus 400

-- | The key-signing key (KSK) status isn\'t valid or another KSK has the
-- status @INTERNAL_FAILURE@.
_InvalidKeySigningKeyStatus :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidKeySigningKeyStatus =
  Prelude._MatchServiceError
    defaultService
    "InvalidKeySigningKeyStatus"
    Prelude.. Prelude.hasStatus 400

-- | The VPC that you\'re trying to disassociate from the private hosted zone
-- is the last VPC that is associated with the hosted zone. Amazon Route 53
-- doesn\'t support disassociating the last VPC from a hosted zone.
_LastVPCAssociation :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LastVPCAssociation =
  Prelude._MatchServiceError
    defaultService
    "LastVPCAssociation"
    Prelude.. Prelude.hasStatus 400

-- | This error code is not in use.
_HealthCheckInUse :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_HealthCheckInUse =
  Prelude._MatchServiceError
    defaultService
    "HealthCheckInUse"
    Prelude.. Prelude.hasStatus 400

-- | A traffic policy that has the same value for @Name@ already exists.
_TrafficPolicyAlreadyExists :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TrafficPolicyAlreadyExists =
  Prelude._MatchServiceError
    defaultService
    "TrafficPolicyAlreadyExists"
    Prelude.. Prelude.hasStatus 409

-- | This exception contains a list of messages that might contain one or
-- more error messages. Each error message indicates one error in the
-- change batch.
_InvalidChangeBatch :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidChangeBatch =
  Prelude._MatchServiceError
    defaultService
    "InvalidChangeBatch"

-- | The resource you\'re trying to access is unsupported on this Amazon
-- Route 53 endpoint.
_IncompatibleVersion :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_IncompatibleVersion =
  Prelude._MatchServiceError
    defaultService
    "IncompatibleVersion"
    Prelude.. Prelude.hasStatus 400

-- | The format of the traffic policy document that you specified in the
-- @Document@ element is not valid.
_InvalidTrafficPolicyDocument :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidTrafficPolicyDocument =
  Prelude._MatchServiceError
    defaultService
    "InvalidTrafficPolicyDocument"
    Prelude.. Prelude.hasStatus 400

-- | There is no CloudWatch Logs log group with the specified ARN.
_NoSuchCloudWatchLogsLogGroup :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoSuchCloudWatchLogsLogGroup =
  Prelude._MatchServiceError
    defaultService
    "NoSuchCloudWatchLogsLogGroup"
    Prelude.. Prelude.hasStatus 404

-- | Amazon Route 53 doesn\'t have the permissions required to create log
-- streams and send query logs to log streams. Possible causes include the
-- following:
--
-- -   There is no resource policy that specifies the log group ARN in the
--     value for @Resource@.
--
-- -   The resource policy that includes the log group ARN in the value for
--     @Resource@ doesn\'t have the necessary permissions.
--
-- -   The resource policy hasn\'t finished propagating yet.
_InsufficientCloudWatchLogsResourcePolicy :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InsufficientCloudWatchLogsResourcePolicy =
  Prelude._MatchServiceError
    defaultService
    "InsufficientCloudWatchLogsResourcePolicy"
    Prelude.. Prelude.hasStatus 400

-- | No traffic policy instance exists with the specified ID.
_NoSuchTrafficPolicyInstance :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoSuchTrafficPolicyInstance =
  Prelude._MatchServiceError
    defaultService
    "NoSuchTrafficPolicyInstance"
    Prelude.. Prelude.hasStatus 404

-- | This traffic policy instance can\'t be created because the current
-- account has reached the limit on the number of traffic policy instances.
--
-- For information about default limits, see
-- <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html Limits>
-- in the /Amazon Route 53 Developer Guide/.
--
-- For information about how to get the current limit for an account, see
-- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetAccountLimit.html GetAccountLimit>.
--
-- To request a higher limit,
-- <http://aws.amazon.com/route53-request create a case> with the AWS
-- Support Center.
_TooManyTrafficPolicyInstances :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyTrafficPolicyInstances =
  Prelude._MatchServiceError
    defaultService
    "TooManyTrafficPolicyInstances"
    Prelude.. Prelude.hasStatus 400

-- | The key-signing key (KSK) name that you specified isn\'t a valid name.
_InvalidKeySigningKeyName :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidKeySigningKeyName =
  Prelude._MatchServiceError
    defaultService
    "InvalidKeySigningKeyName"
    Prelude.. Prelude.hasStatus 400

-- | You can create only one query logging configuration for a hosted zone,
-- and a query logging configuration already exists for this hosted zone.
_QueryLoggingConfigAlreadyExists :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_QueryLoggingConfigAlreadyExists =
  Prelude._MatchServiceError
    defaultService
    "QueryLoggingConfigAlreadyExists"
    Prelude.. Prelude.hasStatus 409

-- | This operation can\'t be completed either because the current account
-- has reached the limit on reusable delegation sets that it can create or
-- because you\'ve reached the limit on the number of Amazon VPCs that you
-- can associate with a private hosted zone. To get the current limit on
-- the number of reusable delegation sets, see
-- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetAccountLimit.html GetAccountLimit>.
-- To get the current limit on the number of Amazon VPCs that you can
-- associate with a private hosted zone, see
-- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetHostedZoneLimit.html GetHostedZoneLimit>.
-- To request a higher limit,
-- <http://aws.amazon.com/route53-request create a case> with the AWS
-- Support Center.
_LimitsExceeded :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitsExceeded =
  Prelude._MatchServiceError
    defaultService
    "LimitsExceeded"

-- | You\'ve already created a key-signing key (KSK) with this name or with
-- the same customer managed customer master key (CMK) ARN.
_KeySigningKeyAlreadyExists :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_KeySigningKeyAlreadyExists =
  Prelude._MatchServiceError
    defaultService
    "KeySigningKeyAlreadyExists"
    Prelude.. Prelude.hasStatus 409

-- | There is already a traffic policy instance with the specified ID.
_TrafficPolicyInstanceAlreadyExists :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TrafficPolicyInstanceAlreadyExists =
  Prelude._MatchServiceError
    defaultService
    "TrafficPolicyInstanceAlreadyExists"
    Prelude.. Prelude.hasStatus 409

-- | The key-signing key (KSK) is specified in a parent DS record.
_KeySigningKeyInParentDSRecord :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_KeySigningKeyInParentDSRecord =
  Prelude._MatchServiceError
    defaultService
    "KeySigningKeyInParentDSRecord"
    Prelude.. Prelude.hasStatus 400

-- | The limit on the number of requests per second was exceeded.
_ThrottlingException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ThrottlingException =
  Prelude._MatchServiceError
    defaultService
    "ThrottlingException"
    Prelude.. Prelude.hasStatus 400

-- | The specified VPC and hosted zone are not currently associated.
_VPCAssociationNotFound :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_VPCAssociationNotFound =
  Prelude._MatchServiceError
    defaultService
    "VPCAssociationNotFound"
    Prelude.. Prelude.hasStatus 404

-- | You\'ve reached the limit for the number of key-signing keys (KSKs).
-- Remove at least one KSK, and then try again.
_TooManyKeySigningKeys :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyKeySigningKeys =
  Prelude._MatchServiceError
    defaultService
    "TooManyKeySigningKeys"

-- | The specified delegation contains associated hosted zones which must be
-- deleted before the reusable delegation set can be deleted.
_DelegationSetInUse :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DelegationSetInUse =
  Prelude._MatchServiceError
    defaultService
    "DelegationSetInUse"

-- | The health check you\'re attempting to create already exists. Amazon
-- Route 53 returns this error when you submit a request that has the
-- following values:
--
-- -   The same value for @CallerReference@ as an existing health check,
--     and one or more values that differ from the existing health check
--     that has the same caller reference.
--
-- -   The same value for @CallerReference@ as a health check that you
--     created and later deleted, regardless of the other settings in the
--     request.
_HealthCheckAlreadyExists :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_HealthCheckAlreadyExists =
  Prelude._MatchServiceError
    defaultService
    "HealthCheckAlreadyExists"
    Prelude.. Prelude.hasStatus 409

-- | The specified HostedZone can\'t be found.
_HostedZoneNotFound :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_HostedZoneNotFound =
  Prelude._MatchServiceError
    defaultService
    "HostedZoneNotFound"

-- | This traffic policy can\'t be created because the current account has
-- reached the limit on the number of traffic policies.
--
-- For information about default limits, see
-- <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html Limits>
-- in the /Amazon Route 53 Developer Guide/.
--
-- To get the current limit for an account, see
-- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetAccountLimit.html GetAccountLimit>.
--
-- To request a higher limit,
-- <http://aws.amazon.com/route53-request create a case> with the AWS
-- Support Center.
_TooManyTrafficPolicies :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyTrafficPolicies =
  Prelude._MatchServiceError
    defaultService
    "TooManyTrafficPolicies"
    Prelude.. Prelude.hasStatus 400

-- | No traffic policy exists with the specified ID.
_NoSuchTrafficPolicy :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoSuchTrafficPolicy =
  Prelude._MatchServiceError
    defaultService
    "NoSuchTrafficPolicy"
    Prelude.. Prelude.hasStatus 404

-- | This traffic policy version can\'t be created because you\'ve reached
-- the limit of 1000 on the number of versions that you can create for the
-- current traffic policy.
--
-- To create more traffic policy versions, you can use
-- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetTrafficPolicy.html GetTrafficPolicy>
-- to get the traffic policy document for a specified traffic policy
-- version, and then use
-- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateTrafficPolicy.html CreateTrafficPolicy>
-- to create a new traffic policy using the traffic policy document.
_TooManyTrafficPolicyVersionsForCurrentPolicy :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyTrafficPolicyVersionsForCurrentPolicy =
  Prelude._MatchServiceError
    defaultService
    "TooManyTrafficPolicyVersionsForCurrentPolicy"
    Prelude.. Prelude.hasStatus 400

-- | The VPC ID that you specified either isn\'t a valid ID or the current
-- account is not authorized to access this VPC.
_InvalidVPCId :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidVPCId =
  Prelude._MatchServiceError
    defaultService
    "InvalidVPCId"
    Prelude.. Prelude.hasStatus 400

-- | One or more traffic policy instances were created by using the specified
-- traffic policy.
_TrafficPolicyInUse :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TrafficPolicyInUse =
  Prelude._MatchServiceError
    defaultService
    "TrafficPolicyInUse"
    Prelude.. Prelude.hasStatus 400

-- | Your hosted zone status isn\'t valid for this operation. In the hosted
-- zone, change the status to enable @DNSSEC@ or disable @DNSSEC@.
_InvalidSigningStatus :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidSigningStatus =
  Prelude._MatchServiceError
    defaultService
    "InvalidSigningStatus"

-- | A reusable delegation set with the specified ID does not exist.
_DelegationSetNotReusable :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DelegationSetNotReusable =
  Prelude._MatchServiceError
    defaultService
    "DelegationSetNotReusable"

-- | No health check exists with the specified ID.
_NoSuchHealthCheck :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoSuchHealthCheck =
  Prelude._MatchServiceError
    defaultService
    "NoSuchHealthCheck"
    Prelude.. Prelude.hasStatus 404

-- | The value that you specified to get the second or subsequent page of
-- results is invalid.
_InvalidPaginationToken :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidPaginationToken =
  Prelude._MatchServiceError
    defaultService
    "InvalidPaginationToken"
    Prelude.. Prelude.hasStatus 400

-- | The cause of this error depends on the operation that you\'re
-- performing:
--
-- -   __Create a public hosted zone:__ Two hosted zones that have the same
--     name or that have a parent\/child relationship (example.com and
--     test.example.com) can\'t have any common name servers. You tried to
--     create a hosted zone that has the same name as an existing hosted
--     zone or that\'s the parent or child of an existing hosted zone, and
--     you specified a delegation set that shares one or more name servers
--     with the existing hosted zone. For more information, see
--     <https://docs.aws.amazon.com/Route53/latest/APIReference/API_CreateReusableDelegationSet.html CreateReusableDelegationSet>.
--
-- -   __Create a private hosted zone:__ A hosted zone with the specified
--     name already exists and is already associated with the Amazon VPC
--     that you specified.
--
-- -   __Associate VPCs with a private hosted zone:__ The VPC that you
--     specified is already associated with another hosted zone that has
--     the same name.
_ConflictingDomainExists :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ConflictingDomainExists =
  Prelude._MatchServiceError
    defaultService
    "ConflictingDomainExists"

-- | This health check can\'t be created because the current account has
-- reached the limit on the number of active health checks.
--
-- For information about default limits, see
-- <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html Limits>
-- in the /Amazon Route 53 Developer Guide/.
--
-- For information about how to get the current limit for an account, see
-- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetAccountLimit.html GetAccountLimit>.
-- To request a higher limit,
-- <http://aws.amazon.com/route53-request create a case> with the AWS
-- Support Center.
--
-- You have reached the maximum number of active health checks for an AWS
-- account. To request a higher limit,
-- <http://aws.amazon.com/route53-request create a case> with the AWS
-- Support Center.
_TooManyHealthChecks :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyHealthChecks =
  Prelude._MatchServiceError
    defaultService
    "TooManyHealthChecks"

-- | A delegation set with the same owner and caller reference combination
-- has already been created.
_DelegationSetAlreadyCreated :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DelegationSetAlreadyCreated =
  Prelude._MatchServiceError
    defaultService
    "DelegationSetAlreadyCreated"

-- | You\'ve created the maximum number of authorizations that can be created
-- for the specified hosted zone. To authorize another VPC to be associated
-- with the hosted zone, submit a @DeleteVPCAssociationAuthorization@
-- request to remove an existing authorization. To get a list of existing
-- authorizations, submit a @ListVPCAssociationAuthorizations@ request.
_TooManyVPCAssociationAuthorizations :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyVPCAssociationAuthorizations =
  Prelude._MatchServiceError
    defaultService
    "TooManyVPCAssociationAuthorizations"
    Prelude.. Prelude.hasStatus 400

-- | This operation can\'t be completed either because the current account
-- has reached the limit on the number of hosted zones or because you\'ve
-- reached the limit on the number of hosted zones that can be associated
-- with a reusable delegation set.
--
-- For information about default limits, see
-- <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DNSLimitations.html Limits>
-- in the /Amazon Route 53 Developer Guide/.
--
-- To get the current limit on hosted zones that can be created by an
-- account, see
-- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetAccountLimit.html GetAccountLimit>.
--
-- To get the current limit on hosted zones that can be associated with a
-- reusable delegation set, see
-- <https://docs.aws.amazon.com/Route53/latest/APIReference/API_GetReusableDelegationSetLimit.html GetReusableDelegationSetLimit>.
--
-- To request a higher limit,
-- <http://aws.amazon.com/route53-request create a case> with the AWS
-- Support Center.
_TooManyHostedZones :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyHostedZones =
  Prelude._MatchServiceError
    defaultService
    "TooManyHostedZones"
    Prelude.. Prelude.hasStatus 400

-- | If Amazon Route 53 can\'t process a request before the next request
-- arrives, it will reject subsequent requests for the same hosted zone and
-- return an @HTTP 400 error@ (@Bad request@). If Route 53 returns this
-- error repeatedly for the same request, we recommend that you wait, in
-- intervals of increasing duration, before you try the request again.
_PriorRequestNotComplete :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_PriorRequestNotComplete =
  Prelude._MatchServiceError
    defaultService
    "PriorRequestNotComplete"
    Prelude.. Prelude.hasStatus 400

-- | No hosted zone exists with the ID that you specified.
_NoSuchHostedZone :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoSuchHostedZone =
  Prelude._MatchServiceError
    defaultService
    "NoSuchHostedZone"
    Prelude.. Prelude.hasStatus 404

-- | You\'re trying to associate a VPC with a public hosted zone. Amazon
-- Route 53 doesn\'t support associating a VPC with a public hosted zone.
_PublicZoneVPCAssociation :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_PublicZoneVPCAssociation =
  Prelude._MatchServiceError
    defaultService
    "PublicZoneVPCAssociation"
    Prelude.. Prelude.hasStatus 400

-- | You tried to update a traffic policy instance by using a traffic policy
-- version that has a different DNS type than the current type for the
-- instance. You specified the type in the JSON document in the
-- @CreateTrafficPolicy@ or @CreateTrafficPolicyVersion@request.
_ConflictingTypes :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ConflictingTypes =
  Prelude._MatchServiceError
    defaultService
    "ConflictingTypes"
    Prelude.. Prelude.hasStatus 400

-- | Associating the specified VPC with the specified hosted zone has not
-- been authorized.
_NotAuthorizedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NotAuthorizedException =
  Prelude._MatchServiceError
    defaultService
    "NotAuthorizedException"
    Prelude.. Prelude.hasStatus 401

-- | The specified delegation set has already been marked as reusable.
_DelegationSetAlreadyReusable :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DelegationSetAlreadyReusable =
  Prelude._MatchServiceError
    defaultService
    "DelegationSetAlreadyReusable"

-- | Another user submitted a request to create, update, or delete the object
-- at the same time that you did. Retry the request.
_ConcurrentModification :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ConcurrentModification =
  Prelude._MatchServiceError
    defaultService
    "ConcurrentModification"
    Prelude.. Prelude.hasStatus 400

-- | A key-signing key (KSK) with @ACTIVE@ status wasn\'t found.
_KeySigningKeyWithActiveStatusNotFound :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_KeySigningKeyWithActiveStatusNotFound =
  Prelude._MatchServiceError
    defaultService
    "KeySigningKeyWithActiveStatusNotFound"

-- | The hosted zone nameservers don\'t match the parent nameservers. The
-- hosted zone and parent must have the same nameservers.
_HostedZonePartiallyDelegated :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_HostedZonePartiallyDelegated =
  Prelude._MatchServiceError
    defaultService
    "HostedZonePartiallyDelegated"

-- | A change with the specified change ID does not exist.
_NoSuchChange :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoSuchChange =
  Prelude._MatchServiceError
    defaultService
    "NoSuchChange"
    Prelude.. Prelude.hasStatus 404

-- | Parameter name is not valid.
_InvalidArgument :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidArgument =
  Prelude._MatchServiceError
    defaultService
    "InvalidArgument"
