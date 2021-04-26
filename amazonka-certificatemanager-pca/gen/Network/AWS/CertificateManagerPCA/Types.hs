{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManagerPCA.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _TooManyTagsException,
    _InvalidStateException,
    _InvalidArgsException,
    _InvalidPolicyException,
    _InvalidArnException,
    _MalformedCertificateException,
    _RequestAlreadyProcessedException,
    _ConcurrentModificationException,
    _InvalidNextTokenException,
    _PermissionAlreadyExistsException,
    _InvalidRequestException,
    _InvalidTagException,
    _RequestInProgressException,
    _LimitExceededException,
    _CertificateMismatchException,
    _ResourceNotFoundException,
    _RequestFailedException,
    _LockoutPreventedException,
    _MalformedCSRException,

    -- * AccessMethodType
    AccessMethodType (..),

    -- * ActionType
    ActionType (..),

    -- * AuditReportResponseFormat
    AuditReportResponseFormat (..),

    -- * AuditReportStatus
    AuditReportStatus (..),

    -- * CertificateAuthorityStatus
    CertificateAuthorityStatus (..),

    -- * CertificateAuthorityType
    CertificateAuthorityType (..),

    -- * ExtendedKeyUsageType
    ExtendedKeyUsageType (..),

    -- * FailureReason
    FailureReason (..),

    -- * KeyAlgorithm
    KeyAlgorithm (..),

    -- * PolicyQualifierId
    PolicyQualifierId (..),

    -- * ResourceOwner
    ResourceOwner (..),

    -- * RevocationReason
    RevocationReason (..),

    -- * SigningAlgorithm
    SigningAlgorithm (..),

    -- * ValidityPeriodType
    ValidityPeriodType (..),

    -- * ASN1Subject
    ASN1Subject (..),
    newASN1Subject,

    -- * AccessDescription
    AccessDescription (..),
    newAccessDescription,

    -- * AccessMethod
    AccessMethod (..),
    newAccessMethod,

    -- * ApiPassthrough
    ApiPassthrough (..),
    newApiPassthrough,

    -- * CertificateAuthority
    CertificateAuthority (..),
    newCertificateAuthority,

    -- * CertificateAuthorityConfiguration
    CertificateAuthorityConfiguration (..),
    newCertificateAuthorityConfiguration,

    -- * CrlConfiguration
    CrlConfiguration (..),
    newCrlConfiguration,

    -- * CsrExtensions
    CsrExtensions (..),
    newCsrExtensions,

    -- * EdiPartyName
    EdiPartyName (..),
    newEdiPartyName,

    -- * ExtendedKeyUsage
    ExtendedKeyUsage (..),
    newExtendedKeyUsage,

    -- * Extensions
    Extensions (..),
    newExtensions,

    -- * GeneralName
    GeneralName (..),
    newGeneralName,

    -- * KeyUsage
    KeyUsage (..),
    newKeyUsage,

    -- * OtherName
    OtherName (..),
    newOtherName,

    -- * Permission
    Permission (..),
    newPermission,

    -- * PolicyInformation
    PolicyInformation (..),
    newPolicyInformation,

    -- * PolicyQualifierInfo
    PolicyQualifierInfo (..),
    newPolicyQualifierInfo,

    -- * Qualifier
    Qualifier (..),
    newQualifier,

    -- * RevocationConfiguration
    RevocationConfiguration (..),
    newRevocationConfiguration,

    -- * Tag
    Tag (..),
    newTag,

    -- * Validity
    Validity (..),
    newValidity,
  )
where

import Network.AWS.CertificateManagerPCA.Types.ASN1Subject
import Network.AWS.CertificateManagerPCA.Types.AccessDescription
import Network.AWS.CertificateManagerPCA.Types.AccessMethod
import Network.AWS.CertificateManagerPCA.Types.AccessMethodType
import Network.AWS.CertificateManagerPCA.Types.ActionType
import Network.AWS.CertificateManagerPCA.Types.ApiPassthrough
import Network.AWS.CertificateManagerPCA.Types.AuditReportResponseFormat
import Network.AWS.CertificateManagerPCA.Types.AuditReportStatus
import Network.AWS.CertificateManagerPCA.Types.CertificateAuthority
import Network.AWS.CertificateManagerPCA.Types.CertificateAuthorityConfiguration
import Network.AWS.CertificateManagerPCA.Types.CertificateAuthorityStatus
import Network.AWS.CertificateManagerPCA.Types.CertificateAuthorityType
import Network.AWS.CertificateManagerPCA.Types.CrlConfiguration
import Network.AWS.CertificateManagerPCA.Types.CsrExtensions
import Network.AWS.CertificateManagerPCA.Types.EdiPartyName
import Network.AWS.CertificateManagerPCA.Types.ExtendedKeyUsage
import Network.AWS.CertificateManagerPCA.Types.ExtendedKeyUsageType
import Network.AWS.CertificateManagerPCA.Types.Extensions
import Network.AWS.CertificateManagerPCA.Types.FailureReason
import Network.AWS.CertificateManagerPCA.Types.GeneralName
import Network.AWS.CertificateManagerPCA.Types.KeyAlgorithm
import Network.AWS.CertificateManagerPCA.Types.KeyUsage
import Network.AWS.CertificateManagerPCA.Types.OtherName
import Network.AWS.CertificateManagerPCA.Types.Permission
import Network.AWS.CertificateManagerPCA.Types.PolicyInformation
import Network.AWS.CertificateManagerPCA.Types.PolicyQualifierId
import Network.AWS.CertificateManagerPCA.Types.PolicyQualifierInfo
import Network.AWS.CertificateManagerPCA.Types.Qualifier
import Network.AWS.CertificateManagerPCA.Types.ResourceOwner
import Network.AWS.CertificateManagerPCA.Types.RevocationConfiguration
import Network.AWS.CertificateManagerPCA.Types.RevocationReason
import Network.AWS.CertificateManagerPCA.Types.SigningAlgorithm
import Network.AWS.CertificateManagerPCA.Types.Tag
import Network.AWS.CertificateManagerPCA.Types.Validity
import Network.AWS.CertificateManagerPCA.Types.ValidityPeriodType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2017-08-22@ of the Amazon Certificate Manager Private Certificate Authority SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev =
        "CertificateManagerPCA",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "acm-pca",
      Prelude._svcVersion = "2017-08-22",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseJSONError "CertificateManagerPCA",
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

-- | You can associate up to 50 tags with a private CA. Exception information
-- is contained in the exception message field.
_TooManyTagsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TooManyTagsException =
  Prelude._MatchServiceError
    defaultService
    "TooManyTagsException"

-- | The state of the private CA does not allow this action to occur.
_InvalidStateException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidStateException =
  Prelude._MatchServiceError
    defaultService
    "InvalidStateException"

-- | One or more of the specified arguments was not valid.
_InvalidArgsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidArgsException =
  Prelude._MatchServiceError
    defaultService
    "InvalidArgsException"

-- | The resource policy is invalid or is missing a required statement. For
-- general information about IAM policy and statement structure, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies.html#access_policies-json Overview of JSON Policies>.
_InvalidPolicyException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidPolicyException =
  Prelude._MatchServiceError
    defaultService
    "InvalidPolicyException"

-- | The requested Amazon Resource Name (ARN) does not refer to an existing
-- resource.
_InvalidArnException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidArnException =
  Prelude._MatchServiceError
    defaultService
    "InvalidArnException"

-- | One or more fields in the certificate are invalid.
_MalformedCertificateException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_MalformedCertificateException =
  Prelude._MatchServiceError
    defaultService
    "MalformedCertificateException"

-- | Your request has already been completed.
_RequestAlreadyProcessedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_RequestAlreadyProcessedException =
  Prelude._MatchServiceError
    defaultService
    "RequestAlreadyProcessedException"

-- | A previous update to your private CA is still ongoing.
_ConcurrentModificationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ConcurrentModificationException =
  Prelude._MatchServiceError
    defaultService
    "ConcurrentModificationException"

-- | The token specified in the @NextToken@ argument is not valid. Use the
-- token returned from your previous call to
-- <https://docs.aws.amazon.com/acm-pca/latest/APIReference/API_ListCertificateAuthorities.html ListCertificateAuthorities>.
_InvalidNextTokenException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidNextTokenException =
  Prelude._MatchServiceError
    defaultService
    "InvalidNextTokenException"

-- | The designated permission has already been given to the user.
_PermissionAlreadyExistsException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_PermissionAlreadyExistsException =
  Prelude._MatchServiceError
    defaultService
    "PermissionAlreadyExistsException"

-- | The request action cannot be performed or is prohibited.
_InvalidRequestException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidRequestException =
  Prelude._MatchServiceError
    defaultService
    "InvalidRequestException"

-- | The tag associated with the CA is not valid. The invalid argument is
-- contained in the message field.
_InvalidTagException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidTagException =
  Prelude._MatchServiceError
    defaultService
    "InvalidTagException"

-- | Your request is already in progress.
_RequestInProgressException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_RequestInProgressException =
  Prelude._MatchServiceError
    defaultService
    "RequestInProgressException"

-- | An ACM Private CA quota has been exceeded. See the exception message
-- returned to determine the quota that was exceeded.
_LimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "LimitExceededException"

-- | The certificate authority certificate you are importing does not comply
-- with conditions specified in the certificate that signed it.
_CertificateMismatchException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CertificateMismatchException =
  Prelude._MatchServiceError
    defaultService
    "CertificateMismatchException"

-- | A resource such as a private CA, S3 bucket, certificate, audit report,
-- or policy cannot be found.
_ResourceNotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceNotFoundException =
  Prelude._MatchServiceError
    defaultService
    "ResourceNotFoundException"

-- | The request has failed for an unspecified reason.
_RequestFailedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_RequestFailedException =
  Prelude._MatchServiceError
    defaultService
    "RequestFailedException"

-- | The current action was prevented because it would lock the caller out
-- from performing subsequent actions. Verify that the specified parameters
-- would not result in the caller being denied access to the resource.
_LockoutPreventedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LockoutPreventedException =
  Prelude._MatchServiceError
    defaultService
    "LockoutPreventedException"

-- | The certificate signing request is invalid.
_MalformedCSRException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_MalformedCSRException =
  Prelude._MatchServiceError
    defaultService
    "MalformedCSRException"
