{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Discovery.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Discovery.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _ConflictErrorException,
    _OperationNotPermittedException,
    _ServerInternalErrorException,
    _HomeRegionNotSetException,
    _InvalidParameterException,
    _InvalidParameterValueException,
    _AuthorizationErrorException,
    _ResourceInUseException,
    _ResourceNotFoundException,

    -- * AgentStatus
    AgentStatus (..),

    -- * BatchDeleteImportDataErrorCode
    BatchDeleteImportDataErrorCode (..),

    -- * ConfigurationItemType
    ConfigurationItemType (..),

    -- * ContinuousExportStatus
    ContinuousExportStatus (..),

    -- * DataSource
    DataSource (..),

    -- * ExportDataFormat
    ExportDataFormat (..),

    -- * ExportStatus
    ExportStatus (..),

    -- * ImportStatus
    ImportStatus (..),

    -- * ImportTaskFilterName
    ImportTaskFilterName (..),

    -- * OrderString
    OrderString (..),

    -- * AgentConfigurationStatus
    AgentConfigurationStatus (..),
    newAgentConfigurationStatus,

    -- * AgentInfo
    AgentInfo (..),
    newAgentInfo,

    -- * AgentNetworkInfo
    AgentNetworkInfo (..),
    newAgentNetworkInfo,

    -- * BatchDeleteImportDataError
    BatchDeleteImportDataError (..),
    newBatchDeleteImportDataError,

    -- * ConfigurationTag
    ConfigurationTag (..),
    newConfigurationTag,

    -- * ContinuousExportDescription
    ContinuousExportDescription (..),
    newContinuousExportDescription,

    -- * CustomerAgentInfo
    CustomerAgentInfo (..),
    newCustomerAgentInfo,

    -- * CustomerConnectorInfo
    CustomerConnectorInfo (..),
    newCustomerConnectorInfo,

    -- * ExportFilter
    ExportFilter (..),
    newExportFilter,

    -- * ExportInfo
    ExportInfo (..),
    newExportInfo,

    -- * Filter
    Filter (..),
    newFilter,

    -- * ImportTask
    ImportTask (..),
    newImportTask,

    -- * ImportTaskFilter
    ImportTaskFilter (..),
    newImportTaskFilter,

    -- * NeighborConnectionDetail
    NeighborConnectionDetail (..),
    newNeighborConnectionDetail,

    -- * OrderByElement
    OrderByElement (..),
    newOrderByElement,

    -- * Tag
    Tag (..),
    newTag,

    -- * TagFilter
    TagFilter (..),
    newTagFilter,
  )
where

import Network.AWS.Discovery.Types.AgentConfigurationStatus
import Network.AWS.Discovery.Types.AgentInfo
import Network.AWS.Discovery.Types.AgentNetworkInfo
import Network.AWS.Discovery.Types.AgentStatus
import Network.AWS.Discovery.Types.BatchDeleteImportDataError
import Network.AWS.Discovery.Types.BatchDeleteImportDataErrorCode
import Network.AWS.Discovery.Types.ConfigurationItemType
import Network.AWS.Discovery.Types.ConfigurationTag
import Network.AWS.Discovery.Types.ContinuousExportDescription
import Network.AWS.Discovery.Types.ContinuousExportStatus
import Network.AWS.Discovery.Types.CustomerAgentInfo
import Network.AWS.Discovery.Types.CustomerConnectorInfo
import Network.AWS.Discovery.Types.DataSource
import Network.AWS.Discovery.Types.ExportDataFormat
import Network.AWS.Discovery.Types.ExportFilter
import Network.AWS.Discovery.Types.ExportInfo
import Network.AWS.Discovery.Types.ExportStatus
import Network.AWS.Discovery.Types.Filter
import Network.AWS.Discovery.Types.ImportStatus
import Network.AWS.Discovery.Types.ImportTask
import Network.AWS.Discovery.Types.ImportTaskFilter
import Network.AWS.Discovery.Types.ImportTaskFilterName
import Network.AWS.Discovery.Types.NeighborConnectionDetail
import Network.AWS.Discovery.Types.OrderByElement
import Network.AWS.Discovery.Types.OrderString
import Network.AWS.Discovery.Types.Tag
import Network.AWS.Discovery.Types.TagFilter
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2015-11-01@ of the Amazon Application Discovery Service SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "Discovery",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "discovery",
      Prelude._svcVersion = "2015-11-01",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseJSONError "Discovery",
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

-- |
_ConflictErrorException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ConflictErrorException =
  Prelude._MatchServiceError
    defaultService
    "ConflictErrorException"

-- | This operation is not permitted.
_OperationNotPermittedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_OperationNotPermittedException =
  Prelude._MatchServiceError
    defaultService
    "OperationNotPermittedException"

-- | The server experienced an internal error. Try again.
_ServerInternalErrorException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ServerInternalErrorException =
  Prelude._MatchServiceError
    defaultService
    "ServerInternalErrorException"

-- | The home region is not set. Set the home region to continue.
_HomeRegionNotSetException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_HomeRegionNotSetException =
  Prelude._MatchServiceError
    defaultService
    "HomeRegionNotSetException"

-- | One or more parameters are not valid. Verify the parameters and try
-- again.
_InvalidParameterException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidParameterException =
  Prelude._MatchServiceError
    defaultService
    "InvalidParameterException"

-- | The value of one or more parameters are either invalid or out of range.
-- Verify the parameter values and try again.
_InvalidParameterValueException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidParameterValueException =
  Prelude._MatchServiceError
    defaultService
    "InvalidParameterValueException"

-- | The AWS user account does not have permission to perform the action.
-- Check the IAM policy associated with this account.
_AuthorizationErrorException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AuthorizationErrorException =
  Prelude._MatchServiceError
    defaultService
    "AuthorizationErrorException"

-- | This issue occurs when the same @clientRequestToken@ is used with the
-- @StartImportTask@ action, but with different parameters. For example,
-- you use the same request token but have two different import URLs, you
-- can encounter this issue. If the import tasks are meant to be different,
-- use a different @clientRequestToken@, and try again.
_ResourceInUseException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceInUseException =
  Prelude._MatchServiceError
    defaultService
    "ResourceInUseException"

-- | The specified configuration ID was not located. Verify the configuration
-- ID and try again.
_ResourceNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ResourceNotFoundException"
