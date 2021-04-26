{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AutoScalingPlans.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScalingPlans.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ObjectNotFoundException,
    _InternalServiceException,
    _InvalidNextTokenException,
    _ValidationException,
    _LimitExceededException,
    _ConcurrentUpdateException,

    -- * ForecastDataType
    ForecastDataType (..),

    -- * LoadMetricType
    LoadMetricType (..),

    -- * MetricStatistic
    MetricStatistic (..),

    -- * PolicyType
    PolicyType (..),

    -- * PredictiveScalingMaxCapacityBehavior
    PredictiveScalingMaxCapacityBehavior (..),

    -- * PredictiveScalingMode
    PredictiveScalingMode (..),

    -- * ScalableDimension
    ScalableDimension (..),

    -- * ScalingMetricType
    ScalingMetricType (..),

    -- * ScalingPlanStatusCode
    ScalingPlanStatusCode (..),

    -- * ScalingPolicyUpdateBehavior
    ScalingPolicyUpdateBehavior (..),

    -- * ScalingStatusCode
    ScalingStatusCode (..),

    -- * ServiceNamespace
    ServiceNamespace (..),

    -- * ApplicationSource
    ApplicationSource (..),
    newApplicationSource,

    -- * CustomizedLoadMetricSpecification
    CustomizedLoadMetricSpecification (..),
    newCustomizedLoadMetricSpecification,

    -- * CustomizedScalingMetricSpecification
    CustomizedScalingMetricSpecification (..),
    newCustomizedScalingMetricSpecification,

    -- * Datapoint
    Datapoint (..),
    newDatapoint,

    -- * MetricDimension
    MetricDimension (..),
    newMetricDimension,

    -- * PredefinedLoadMetricSpecification
    PredefinedLoadMetricSpecification (..),
    newPredefinedLoadMetricSpecification,

    -- * PredefinedScalingMetricSpecification
    PredefinedScalingMetricSpecification (..),
    newPredefinedScalingMetricSpecification,

    -- * ScalingInstruction
    ScalingInstruction (..),
    newScalingInstruction,

    -- * ScalingPlan
    ScalingPlan (..),
    newScalingPlan,

    -- * ScalingPlanResource
    ScalingPlanResource (..),
    newScalingPlanResource,

    -- * ScalingPolicy
    ScalingPolicy (..),
    newScalingPolicy,

    -- * TagFilter
    TagFilter (..),
    newTagFilter,

    -- * TargetTrackingConfiguration
    TargetTrackingConfiguration (..),
    newTargetTrackingConfiguration,
  )
where

import Network.AWS.AutoScalingPlans.Types.ApplicationSource
import Network.AWS.AutoScalingPlans.Types.CustomizedLoadMetricSpecification
import Network.AWS.AutoScalingPlans.Types.CustomizedScalingMetricSpecification
import Network.AWS.AutoScalingPlans.Types.Datapoint
import Network.AWS.AutoScalingPlans.Types.ForecastDataType
import Network.AWS.AutoScalingPlans.Types.LoadMetricType
import Network.AWS.AutoScalingPlans.Types.MetricDimension
import Network.AWS.AutoScalingPlans.Types.MetricStatistic
import Network.AWS.AutoScalingPlans.Types.PolicyType
import Network.AWS.AutoScalingPlans.Types.PredefinedLoadMetricSpecification
import Network.AWS.AutoScalingPlans.Types.PredefinedScalingMetricSpecification
import Network.AWS.AutoScalingPlans.Types.PredictiveScalingMaxCapacityBehavior
import Network.AWS.AutoScalingPlans.Types.PredictiveScalingMode
import Network.AWS.AutoScalingPlans.Types.ScalableDimension
import Network.AWS.AutoScalingPlans.Types.ScalingInstruction
import Network.AWS.AutoScalingPlans.Types.ScalingMetricType
import Network.AWS.AutoScalingPlans.Types.ScalingPlan
import Network.AWS.AutoScalingPlans.Types.ScalingPlanResource
import Network.AWS.AutoScalingPlans.Types.ScalingPlanStatusCode
import Network.AWS.AutoScalingPlans.Types.ScalingPolicy
import Network.AWS.AutoScalingPlans.Types.ScalingPolicyUpdateBehavior
import Network.AWS.AutoScalingPlans.Types.ScalingStatusCode
import Network.AWS.AutoScalingPlans.Types.ServiceNamespace
import Network.AWS.AutoScalingPlans.Types.TagFilter
import Network.AWS.AutoScalingPlans.Types.TargetTrackingConfiguration
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2018-01-06@ of the Amazon Auto Scaling Plans SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev =
        "AutoScalingPlans",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "autoscaling-plans",
      Prelude._svcVersion = "2018-01-06",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseJSONError "AutoScalingPlans",
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

-- | The specified object could not be found.
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

-- | The token provided is not valid.
_InvalidNextTokenException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidNextTokenException =
  Prelude._MatchServiceError
    defaultService
    "InvalidNextTokenException"

-- | An exception was thrown for a validation issue. Review the parameters
-- provided.
_ValidationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ValidationException =
  Prelude._MatchServiceError
    defaultService
    "ValidationException"

-- | Your account exceeded a limit. This exception is thrown when a
-- per-account resource limit is exceeded.
_LimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "LimitExceededException"

-- | Concurrent updates caused an exception, for example, if you request an
-- update to a scaling plan that already has a pending update.
_ConcurrentUpdateException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ConcurrentUpdateException =
  Prelude._MatchServiceError
    defaultService
    "ConcurrentUpdateException"
