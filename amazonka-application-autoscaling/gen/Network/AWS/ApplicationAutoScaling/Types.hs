{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ApplicationAutoScaling.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ApplicationAutoScaling.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ObjectNotFoundException,
    _InternalServiceException,
    _InvalidNextTokenException,
    _FailedResourceAccessException,
    _ValidationException,
    _LimitExceededException,
    _ConcurrentUpdateException,

    -- * AdjustmentType
    AdjustmentType (..),

    -- * MetricAggregationType
    MetricAggregationType (..),

    -- * MetricStatistic
    MetricStatistic (..),

    -- * MetricType
    MetricType (..),

    -- * PolicyType
    PolicyType (..),

    -- * ScalableDimension
    ScalableDimension (..),

    -- * ScalingActivityStatusCode
    ScalingActivityStatusCode (..),

    -- * ServiceNamespace
    ServiceNamespace (..),

    -- * Alarm
    Alarm (..),
    newAlarm,

    -- * CustomizedMetricSpecification
    CustomizedMetricSpecification (..),
    newCustomizedMetricSpecification,

    -- * MetricDimension
    MetricDimension (..),
    newMetricDimension,

    -- * PredefinedMetricSpecification
    PredefinedMetricSpecification (..),
    newPredefinedMetricSpecification,

    -- * ScalableTarget
    ScalableTarget (..),
    newScalableTarget,

    -- * ScalableTargetAction
    ScalableTargetAction (..),
    newScalableTargetAction,

    -- * ScalingActivity
    ScalingActivity (..),
    newScalingActivity,

    -- * ScalingPolicy
    ScalingPolicy (..),
    newScalingPolicy,

    -- * ScheduledAction
    ScheduledAction (..),
    newScheduledAction,

    -- * StepAdjustment
    StepAdjustment (..),
    newStepAdjustment,

    -- * StepScalingPolicyConfiguration
    StepScalingPolicyConfiguration (..),
    newStepScalingPolicyConfiguration,

    -- * SuspendedState
    SuspendedState (..),
    newSuspendedState,

    -- * TargetTrackingScalingPolicyConfiguration
    TargetTrackingScalingPolicyConfiguration (..),
    newTargetTrackingScalingPolicyConfiguration,
  )
where

import Network.AWS.ApplicationAutoScaling.Types.AdjustmentType
import Network.AWS.ApplicationAutoScaling.Types.Alarm
import Network.AWS.ApplicationAutoScaling.Types.CustomizedMetricSpecification
import Network.AWS.ApplicationAutoScaling.Types.MetricAggregationType
import Network.AWS.ApplicationAutoScaling.Types.MetricDimension
import Network.AWS.ApplicationAutoScaling.Types.MetricStatistic
import Network.AWS.ApplicationAutoScaling.Types.MetricType
import Network.AWS.ApplicationAutoScaling.Types.PolicyType
import Network.AWS.ApplicationAutoScaling.Types.PredefinedMetricSpecification
import Network.AWS.ApplicationAutoScaling.Types.ScalableDimension
import Network.AWS.ApplicationAutoScaling.Types.ScalableTarget
import Network.AWS.ApplicationAutoScaling.Types.ScalableTargetAction
import Network.AWS.ApplicationAutoScaling.Types.ScalingActivity
import Network.AWS.ApplicationAutoScaling.Types.ScalingActivityStatusCode
import Network.AWS.ApplicationAutoScaling.Types.ScalingPolicy
import Network.AWS.ApplicationAutoScaling.Types.ScheduledAction
import Network.AWS.ApplicationAutoScaling.Types.ServiceNamespace
import Network.AWS.ApplicationAutoScaling.Types.StepAdjustment
import Network.AWS.ApplicationAutoScaling.Types.StepScalingPolicyConfiguration
import Network.AWS.ApplicationAutoScaling.Types.SuspendedState
import Network.AWS.ApplicationAutoScaling.Types.TargetTrackingScalingPolicyConfiguration
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2016-02-06@ of the Amazon Application Auto Scaling SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev =
        "ApplicationAutoScaling",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "application-autoscaling",
      Prelude._svcVersion = "2016-02-06",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseJSONError "ApplicationAutoScaling",
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

-- | The specified object could not be found. For any operation that depends
-- on the existence of a scalable target, this exception is thrown if the
-- scalable target with the specified service namespace, resource ID, and
-- scalable dimension does not exist. For any operation that deletes or
-- deregisters a resource, this exception is thrown if the resource cannot
-- be found.
_ObjectNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ObjectNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ObjectNotFoundException"

-- | The service encountered an internal error.
_InternalServiceException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InternalServiceException =
  Prelude._MatchServiceError
    defaultService
    "InternalServiceException"

-- | The next token supplied was invalid.
_InvalidNextTokenException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidNextTokenException =
  Prelude._MatchServiceError
    defaultService
    "InvalidNextTokenException"

-- | Failed access to resources caused an exception. This exception is thrown
-- when Application Auto Scaling is unable to retrieve the alarms
-- associated with a scaling policy due to a client error, for example, if
-- the role ARN specified for a scalable target does not have permission to
-- call the CloudWatch
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeAlarms.html DescribeAlarms>
-- on your behalf.
_FailedResourceAccessException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_FailedResourceAccessException =
  Prelude._MatchServiceError
    defaultService
    "FailedResourceAccessException"

-- | An exception was thrown for a validation issue. Review the available
-- parameters for the API request.
_ValidationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ValidationException =
  Prelude._MatchServiceError
    defaultService
    "ValidationException"

-- | A per-account resource limit is exceeded. For more information, see
-- <https://docs.aws.amazon.com/autoscaling/application/userguide/application-auto-scaling-limits.html Application Auto Scaling service quotas>.
_LimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "LimitExceededException"

-- | Concurrent updates caused an exception, for example, if you request an
-- update to an Application Auto Scaling resource that already has a
-- pending update.
_ConcurrentUpdateException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ConcurrentUpdateException =
  Prelude._MatchServiceError
    defaultService
    "ConcurrentUpdateException"
