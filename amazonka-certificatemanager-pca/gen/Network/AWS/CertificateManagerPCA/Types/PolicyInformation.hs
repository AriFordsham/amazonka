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
-- Module      : Network.AWS.CertificateManagerPCA.Types.PolicyInformation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CertificateManagerPCA.Types.PolicyInformation where

import Network.AWS.CertificateManagerPCA.Types.PolicyQualifierInfo
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Defines the X.509 @CertificatePolicies@ extension.
--
-- /See:/ 'newPolicyInformation' smart constructor.
data PolicyInformation = PolicyInformation'
  { -- | Modifies the given @CertPolicyId@ with a qualifier. ACM Private CA
    -- supports the certification practice statement (CPS) qualifier.
    policyQualifiers :: Prelude.Maybe (Prelude.NonEmpty PolicyQualifierInfo),
    -- | Specifies the object identifier (OID) of the certificate policy under
    -- which the certificate was issued. For more information, see NIST\'s
    -- definition of
    -- <https://csrc.nist.gov/glossary/term/Object_Identifier Object Identifier (OID)>.
    certPolicyId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'PolicyInformation' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'policyQualifiers', 'policyInformation_policyQualifiers' - Modifies the given @CertPolicyId@ with a qualifier. ACM Private CA
-- supports the certification practice statement (CPS) qualifier.
--
-- 'certPolicyId', 'policyInformation_certPolicyId' - Specifies the object identifier (OID) of the certificate policy under
-- which the certificate was issued. For more information, see NIST\'s
-- definition of
-- <https://csrc.nist.gov/glossary/term/Object_Identifier Object Identifier (OID)>.
newPolicyInformation ::
  -- | 'certPolicyId'
  Prelude.Text ->
  PolicyInformation
newPolicyInformation pCertPolicyId_ =
  PolicyInformation'
    { policyQualifiers =
        Prelude.Nothing,
      certPolicyId = pCertPolicyId_
    }

-- | Modifies the given @CertPolicyId@ with a qualifier. ACM Private CA
-- supports the certification practice statement (CPS) qualifier.
policyInformation_policyQualifiers :: Lens.Lens' PolicyInformation (Prelude.Maybe (Prelude.NonEmpty PolicyQualifierInfo))
policyInformation_policyQualifiers = Lens.lens (\PolicyInformation' {policyQualifiers} -> policyQualifiers) (\s@PolicyInformation' {} a -> s {policyQualifiers = a} :: PolicyInformation) Prelude.. Lens.mapping Prelude._Coerce

-- | Specifies the object identifier (OID) of the certificate policy under
-- which the certificate was issued. For more information, see NIST\'s
-- definition of
-- <https://csrc.nist.gov/glossary/term/Object_Identifier Object Identifier (OID)>.
policyInformation_certPolicyId :: Lens.Lens' PolicyInformation Prelude.Text
policyInformation_certPolicyId = Lens.lens (\PolicyInformation' {certPolicyId} -> certPolicyId) (\s@PolicyInformation' {} a -> s {certPolicyId = a} :: PolicyInformation)

instance Prelude.Hashable PolicyInformation

instance Prelude.NFData PolicyInformation

instance Prelude.ToJSON PolicyInformation where
  toJSON PolicyInformation' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("PolicyQualifiers" Prelude..=)
              Prelude.<$> policyQualifiers,
            Prelude.Just
              ("CertPolicyId" Prelude..= certPolicyId)
          ]
      )
