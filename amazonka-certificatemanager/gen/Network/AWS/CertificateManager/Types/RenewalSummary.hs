{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CertificateManager.Types.RenewalSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManager.Types.RenewalSummary where

import Network.AWS.CertificateManager.Types.DomainValidation
import Network.AWS.CertificateManager.Types.FailureReason
import Network.AWS.CertificateManager.Types.RenewalStatus
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about the status of ACM\'s
-- <https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html managed renewal>
-- for the certificate. This structure exists only when the certificate
-- type is @AMAZON_ISSUED@.
--
-- /See:/ 'newRenewalSummary' smart constructor.
data RenewalSummary = RenewalSummary'
  { -- | The reason that a renewal request was unsuccessful.
    renewalStatusReason :: Prelude.Maybe FailureReason,
    -- | The status of ACM\'s
    -- <https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html managed renewal>
    -- of the certificate.
    renewalStatus :: RenewalStatus,
    -- | Contains information about the validation of each domain name in the
    -- certificate, as it pertains to ACM\'s
    -- <https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html managed renewal>.
    -- This is different from the initial validation that occurs as a result of
    -- the RequestCertificate request. This field exists only when the
    -- certificate type is @AMAZON_ISSUED@.
    domainValidationOptions :: Prelude.NonEmpty DomainValidation,
    -- | The time at which the renewal summary was last updated.
    updatedAt :: Prelude.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'RenewalSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'renewalStatusReason', 'renewalSummary_renewalStatusReason' - The reason that a renewal request was unsuccessful.
--
-- 'renewalStatus', 'renewalSummary_renewalStatus' - The status of ACM\'s
-- <https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html managed renewal>
-- of the certificate.
--
-- 'domainValidationOptions', 'renewalSummary_domainValidationOptions' - Contains information about the validation of each domain name in the
-- certificate, as it pertains to ACM\'s
-- <https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html managed renewal>.
-- This is different from the initial validation that occurs as a result of
-- the RequestCertificate request. This field exists only when the
-- certificate type is @AMAZON_ISSUED@.
--
-- 'updatedAt', 'renewalSummary_updatedAt' - The time at which the renewal summary was last updated.
newRenewalSummary ::
  -- | 'renewalStatus'
  RenewalStatus ->
  -- | 'domainValidationOptions'
  Prelude.NonEmpty DomainValidation ->
  -- | 'updatedAt'
  Prelude.UTCTime ->
  RenewalSummary
newRenewalSummary
  pRenewalStatus_
  pDomainValidationOptions_
  pUpdatedAt_ =
    RenewalSummary'
      { renewalStatusReason =
          Prelude.Nothing,
        renewalStatus = pRenewalStatus_,
        domainValidationOptions =
          Prelude._Coerce Lens.# pDomainValidationOptions_,
        updatedAt = Prelude._Time Lens.# pUpdatedAt_
      }

-- | The reason that a renewal request was unsuccessful.
renewalSummary_renewalStatusReason :: Lens.Lens' RenewalSummary (Prelude.Maybe FailureReason)
renewalSummary_renewalStatusReason = Lens.lens (\RenewalSummary' {renewalStatusReason} -> renewalStatusReason) (\s@RenewalSummary' {} a -> s {renewalStatusReason = a} :: RenewalSummary)

-- | The status of ACM\'s
-- <https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html managed renewal>
-- of the certificate.
renewalSummary_renewalStatus :: Lens.Lens' RenewalSummary RenewalStatus
renewalSummary_renewalStatus = Lens.lens (\RenewalSummary' {renewalStatus} -> renewalStatus) (\s@RenewalSummary' {} a -> s {renewalStatus = a} :: RenewalSummary)

-- | Contains information about the validation of each domain name in the
-- certificate, as it pertains to ACM\'s
-- <https://docs.aws.amazon.com/acm/latest/userguide/acm-renewal.html managed renewal>.
-- This is different from the initial validation that occurs as a result of
-- the RequestCertificate request. This field exists only when the
-- certificate type is @AMAZON_ISSUED@.
renewalSummary_domainValidationOptions :: Lens.Lens' RenewalSummary (Prelude.NonEmpty DomainValidation)
renewalSummary_domainValidationOptions = Lens.lens (\RenewalSummary' {domainValidationOptions} -> domainValidationOptions) (\s@RenewalSummary' {} a -> s {domainValidationOptions = a} :: RenewalSummary) Prelude.. Prelude._Coerce

-- | The time at which the renewal summary was last updated.
renewalSummary_updatedAt :: Lens.Lens' RenewalSummary Prelude.UTCTime
renewalSummary_updatedAt = Lens.lens (\RenewalSummary' {updatedAt} -> updatedAt) (\s@RenewalSummary' {} a -> s {updatedAt = a} :: RenewalSummary) Prelude.. Prelude._Time

instance Prelude.FromJSON RenewalSummary where
  parseJSON =
    Prelude.withObject
      "RenewalSummary"
      ( \x ->
          RenewalSummary'
            Prelude.<$> (x Prelude..:? "RenewalStatusReason")
            Prelude.<*> (x Prelude..: "RenewalStatus")
            Prelude.<*> (x Prelude..: "DomainValidationOptions")
            Prelude.<*> (x Prelude..: "UpdatedAt")
      )

instance Prelude.Hashable RenewalSummary

instance Prelude.NFData RenewalSummary
