{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Shield.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Shield.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _OptimisticLockException,
    _InvalidResourceException,
    _InvalidPaginationTokenException,
    _InvalidOperationException,
    _ResourceAlreadyExistsException,
    _InternalErrorException,
    _NoAssociatedRoleException,
    _InvalidParameterException,
    _AccessDeniedException,
    _LockedSubscriptionException,
    _ResourceNotFoundException,
    _AccessDeniedForDependencyException,
    _LimitsExceededException,

    -- * AttackLayer
    AttackLayer (..),

    -- * AttackPropertyIdentifier
    AttackPropertyIdentifier (..),

    -- * AutoRenew
    AutoRenew (..),

    -- * ProactiveEngagementStatus
    ProactiveEngagementStatus (..),

    -- * ProtectedResourceType
    ProtectedResourceType (..),

    -- * ProtectionGroupAggregation
    ProtectionGroupAggregation (..),

    -- * ProtectionGroupPattern
    ProtectionGroupPattern (..),

    -- * SubResourceType
    SubResourceType (..),

    -- * SubscriptionState
    SubscriptionState (..),

    -- * Unit
    Unit (..),

    -- * AttackDetail
    AttackDetail (..),
    newAttackDetail,

    -- * AttackProperty
    AttackProperty (..),
    newAttackProperty,

    -- * AttackStatisticsDataItem
    AttackStatisticsDataItem (..),
    newAttackStatisticsDataItem,

    -- * AttackSummary
    AttackSummary (..),
    newAttackSummary,

    -- * AttackVectorDescription
    AttackVectorDescription (..),
    newAttackVectorDescription,

    -- * AttackVolume
    AttackVolume (..),
    newAttackVolume,

    -- * AttackVolumeStatistics
    AttackVolumeStatistics (..),
    newAttackVolumeStatistics,

    -- * Contributor
    Contributor (..),
    newContributor,

    -- * EmergencyContact
    EmergencyContact (..),
    newEmergencyContact,

    -- * Limit
    Limit (..),
    newLimit,

    -- * Mitigation
    Mitigation (..),
    newMitigation,

    -- * Protection
    Protection (..),
    newProtection,

    -- * ProtectionGroup
    ProtectionGroup (..),
    newProtectionGroup,

    -- * ProtectionGroupArbitraryPatternLimits
    ProtectionGroupArbitraryPatternLimits (..),
    newProtectionGroupArbitraryPatternLimits,

    -- * ProtectionGroupLimits
    ProtectionGroupLimits (..),
    newProtectionGroupLimits,

    -- * ProtectionGroupPatternTypeLimits
    ProtectionGroupPatternTypeLimits (..),
    newProtectionGroupPatternTypeLimits,

    -- * ProtectionLimits
    ProtectionLimits (..),
    newProtectionLimits,

    -- * SubResourceSummary
    SubResourceSummary (..),
    newSubResourceSummary,

    -- * Subscription
    Subscription (..),
    newSubscription,

    -- * SubscriptionLimits
    SubscriptionLimits (..),
    newSubscriptionLimits,

    -- * SummarizedAttackVector
    SummarizedAttackVector (..),
    newSummarizedAttackVector,

    -- * SummarizedCounter
    SummarizedCounter (..),
    newSummarizedCounter,

    -- * TimeRange
    TimeRange (..),
    newTimeRange,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Shield.Types.AttackDetail
import Network.AWS.Shield.Types.AttackLayer
import Network.AWS.Shield.Types.AttackProperty
import Network.AWS.Shield.Types.AttackPropertyIdentifier
import Network.AWS.Shield.Types.AttackStatisticsDataItem
import Network.AWS.Shield.Types.AttackSummary
import Network.AWS.Shield.Types.AttackVectorDescription
import Network.AWS.Shield.Types.AttackVolume
import Network.AWS.Shield.Types.AttackVolumeStatistics
import Network.AWS.Shield.Types.AutoRenew
import Network.AWS.Shield.Types.Contributor
import Network.AWS.Shield.Types.EmergencyContact
import Network.AWS.Shield.Types.Limit
import Network.AWS.Shield.Types.Mitigation
import Network.AWS.Shield.Types.ProactiveEngagementStatus
import Network.AWS.Shield.Types.ProtectedResourceType
import Network.AWS.Shield.Types.Protection
import Network.AWS.Shield.Types.ProtectionGroup
import Network.AWS.Shield.Types.ProtectionGroupAggregation
import Network.AWS.Shield.Types.ProtectionGroupArbitraryPatternLimits
import Network.AWS.Shield.Types.ProtectionGroupLimits
import Network.AWS.Shield.Types.ProtectionGroupPattern
import Network.AWS.Shield.Types.ProtectionGroupPatternTypeLimits
import Network.AWS.Shield.Types.ProtectionLimits
import Network.AWS.Shield.Types.SubResourceSummary
import Network.AWS.Shield.Types.SubResourceType
import Network.AWS.Shield.Types.Subscription
import Network.AWS.Shield.Types.SubscriptionLimits
import Network.AWS.Shield.Types.SubscriptionState
import Network.AWS.Shield.Types.SummarizedAttackVector
import Network.AWS.Shield.Types.SummarizedCounter
import Network.AWS.Shield.Types.TimeRange
import Network.AWS.Shield.Types.Unit
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2016-06-02@ of the Amazon Shield SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "Shield",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "shield",
      Prelude._svcVersion = "2016-06-02",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError = Prelude.parseJSONError "Shield",
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

-- | Exception that indicates that the resource state has been modified by
-- another client. Retrieve the resource and then retry your request.
_OptimisticLockException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OptimisticLockException =
  Prelude._MatchServiceError
    defaultService
    "OptimisticLockException"

-- | Exception that indicates that the resource is invalid. You might not
-- have access to the resource, or the resource might not exist.
_InvalidResourceException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidResourceException =
  Prelude._MatchServiceError
    defaultService
    "InvalidResourceException"

-- | Exception that indicates that the NextToken specified in the request is
-- invalid. Submit the request using the NextToken value that was returned
-- in the response.
_InvalidPaginationTokenException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidPaginationTokenException =
  Prelude._MatchServiceError
    defaultService
    "InvalidPaginationTokenException"

-- | Exception that indicates that the operation would not cause any change
-- to occur.
_InvalidOperationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidOperationException =
  Prelude._MatchServiceError
    defaultService
    "InvalidOperationException"

-- | Exception indicating the specified resource already exists. If
-- available, this exception includes details in additional properties.
_ResourceAlreadyExistsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceAlreadyExistsException =
  Prelude._MatchServiceError
    defaultService
    "ResourceAlreadyExistsException"

-- | Exception that indicates that a problem occurred with the service
-- infrastructure. You can retry the request.
_InternalErrorException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InternalErrorException =
  Prelude._MatchServiceError
    defaultService
    "InternalErrorException"

-- | The ARN of the role that you specifed does not exist.
_NoAssociatedRoleException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoAssociatedRoleException =
  Prelude._MatchServiceError
    defaultService
    "NoAssociatedRoleException"

-- | Exception that indicates that the parameters passed to the API are
-- invalid. If available, this exception includes details in additional
-- properties.
_InvalidParameterException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidParameterException =
  Prelude._MatchServiceError
    defaultService
    "InvalidParameterException"

-- | Exception that indicates the specified @AttackId@ does not exist, or the
-- requester does not have the appropriate permissions to access the
-- @AttackId@.
_AccessDeniedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AccessDeniedException =
  Prelude._MatchServiceError
    defaultService
    "AccessDeniedException"

-- | You are trying to update a subscription that has not yet completed the
-- 1-year commitment. You can change the @AutoRenew@ parameter during the
-- last 30 days of your subscription. This exception indicates that you are
-- attempting to change @AutoRenew@ prior to that period.
_LockedSubscriptionException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LockedSubscriptionException =
  Prelude._MatchServiceError
    defaultService
    "LockedSubscriptionException"

-- | Exception indicating the specified resource does not exist. If
-- available, this exception includes details in additional properties.
_ResourceNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ResourceNotFoundException"

-- | In order to grant the necessary access to the DDoS Response Team (DRT),
-- the user submitting the request must have the @iam:PassRole@ permission.
-- This error indicates the user did not have the appropriate permissions.
-- For more information, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_use_passrole.html Granting a User Permissions to Pass a Role to an AWS Service>.
_AccessDeniedForDependencyException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AccessDeniedForDependencyException =
  Prelude._MatchServiceError
    defaultService
    "AccessDeniedForDependencyException"

-- | Exception that indicates that the operation would exceed a limit.
--
-- @Type@ is the type of limit that would be exceeded.
--
-- @Limit@ is the threshold that would be exceeded.
_LimitsExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitsExceededException =
  Prelude._MatchServiceError
    defaultService
    "LimitsExceededException"
