{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Route53Domains.CheckDomainAvailability
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation checks the availability of one domain name. Note that if
-- the availability status of a domain is pending, you must submit another
-- request to determine the availability of the domain name.
module Network.AWS.Route53Domains.CheckDomainAvailability
  ( -- * Creating a Request
    CheckDomainAvailability (..),
    newCheckDomainAvailability,

    -- * Request Lenses
    checkDomainAvailability_idnLangCode,
    checkDomainAvailability_domainName,

    -- * Destructuring the Response
    CheckDomainAvailabilityResponse (..),
    newCheckDomainAvailabilityResponse,

    -- * Response Lenses
    checkDomainAvailabilityResponse_httpStatus,
    checkDomainAvailabilityResponse_availability,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.Route53Domains.Types

-- | The CheckDomainAvailability request contains the following elements.
--
-- /See:/ 'newCheckDomainAvailability' smart constructor.
data CheckDomainAvailability = CheckDomainAvailability'
  { -- | Reserved for future use.
    idnLangCode :: Prelude.Maybe Prelude.Text,
    -- | The name of the domain that you want to get availability for. The
    -- top-level domain (TLD), such as .com, must be a TLD that Route 53
    -- supports. For a list of supported TLDs, see
    -- <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html Domains that You Can Register with Amazon Route 53>
    -- in the /Amazon Route 53 Developer Guide/.
    --
    -- The domain name can contain only the following characters:
    --
    -- -   Letters a through z. Domain names are not case sensitive.
    --
    -- -   Numbers 0 through 9.
    --
    -- -   Hyphen (-). You can\'t specify a hyphen at the beginning or end of a
    --     label.
    --
    -- -   Period (.) to separate the labels in the name, such as the @.@ in
    --     @example.com@.
    --
    -- Internationalized domain names are not supported for some top-level
    -- domains. To determine whether the TLD that you want to use supports
    -- internationalized domain names, see
    -- <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html Domains that You Can Register with Amazon Route 53>.
    -- For more information, see
    -- <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html#domain-name-format-idns Formatting Internationalized Domain Names>.
    domainName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CheckDomainAvailability' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'idnLangCode', 'checkDomainAvailability_idnLangCode' - Reserved for future use.
--
-- 'domainName', 'checkDomainAvailability_domainName' - The name of the domain that you want to get availability for. The
-- top-level domain (TLD), such as .com, must be a TLD that Route 53
-- supports. For a list of supported TLDs, see
-- <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html Domains that You Can Register with Amazon Route 53>
-- in the /Amazon Route 53 Developer Guide/.
--
-- The domain name can contain only the following characters:
--
-- -   Letters a through z. Domain names are not case sensitive.
--
-- -   Numbers 0 through 9.
--
-- -   Hyphen (-). You can\'t specify a hyphen at the beginning or end of a
--     label.
--
-- -   Period (.) to separate the labels in the name, such as the @.@ in
--     @example.com@.
--
-- Internationalized domain names are not supported for some top-level
-- domains. To determine whether the TLD that you want to use supports
-- internationalized domain names, see
-- <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html Domains that You Can Register with Amazon Route 53>.
-- For more information, see
-- <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html#domain-name-format-idns Formatting Internationalized Domain Names>.
newCheckDomainAvailability ::
  -- | 'domainName'
  Prelude.Text ->
  CheckDomainAvailability
newCheckDomainAvailability pDomainName_ =
  CheckDomainAvailability'
    { idnLangCode =
        Prelude.Nothing,
      domainName = pDomainName_
    }

-- | Reserved for future use.
checkDomainAvailability_idnLangCode :: Lens.Lens' CheckDomainAvailability (Prelude.Maybe Prelude.Text)
checkDomainAvailability_idnLangCode = Lens.lens (\CheckDomainAvailability' {idnLangCode} -> idnLangCode) (\s@CheckDomainAvailability' {} a -> s {idnLangCode = a} :: CheckDomainAvailability)

-- | The name of the domain that you want to get availability for. The
-- top-level domain (TLD), such as .com, must be a TLD that Route 53
-- supports. For a list of supported TLDs, see
-- <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html Domains that You Can Register with Amazon Route 53>
-- in the /Amazon Route 53 Developer Guide/.
--
-- The domain name can contain only the following characters:
--
-- -   Letters a through z. Domain names are not case sensitive.
--
-- -   Numbers 0 through 9.
--
-- -   Hyphen (-). You can\'t specify a hyphen at the beginning or end of a
--     label.
--
-- -   Period (.) to separate the labels in the name, such as the @.@ in
--     @example.com@.
--
-- Internationalized domain names are not supported for some top-level
-- domains. To determine whether the TLD that you want to use supports
-- internationalized domain names, see
-- <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/registrar-tld-list.html Domains that You Can Register with Amazon Route 53>.
-- For more information, see
-- <https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/DomainNameFormat.html#domain-name-format-idns Formatting Internationalized Domain Names>.
checkDomainAvailability_domainName :: Lens.Lens' CheckDomainAvailability Prelude.Text
checkDomainAvailability_domainName = Lens.lens (\CheckDomainAvailability' {domainName} -> domainName) (\s@CheckDomainAvailability' {} a -> s {domainName = a} :: CheckDomainAvailability)

instance Prelude.AWSRequest CheckDomainAvailability where
  type
    Rs CheckDomainAvailability =
      CheckDomainAvailabilityResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CheckDomainAvailabilityResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Prelude..:> "Availability")
      )

instance Prelude.Hashable CheckDomainAvailability

instance Prelude.NFData CheckDomainAvailability

instance Prelude.ToHeaders CheckDomainAvailability where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "Route53Domains_v20140515.CheckDomainAvailability" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON CheckDomainAvailability where
  toJSON CheckDomainAvailability' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("IdnLangCode" Prelude..=) Prelude.<$> idnLangCode,
            Prelude.Just ("DomainName" Prelude..= domainName)
          ]
      )

instance Prelude.ToPath CheckDomainAvailability where
  toPath = Prelude.const "/"

instance Prelude.ToQuery CheckDomainAvailability where
  toQuery = Prelude.const Prelude.mempty

-- | The CheckDomainAvailability response includes the following elements.
--
-- /See:/ 'newCheckDomainAvailabilityResponse' smart constructor.
data CheckDomainAvailabilityResponse = CheckDomainAvailabilityResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | Whether the domain name is available for registering.
    --
    -- You can register only domains designated as @AVAILABLE@.
    --
    -- Valid values:
    --
    -- [AVAILABLE]
    --     The domain name is available.
    --
    -- [AVAILABLE_RESERVED]
    --     The domain name is reserved under specific conditions.
    --
    -- [AVAILABLE_PREORDER]
    --     The domain name is available and can be preordered.
    --
    -- [DONT_KNOW]
    --     The TLD registry didn\'t reply with a definitive answer about
    --     whether the domain name is available. Route 53 can return this
    --     response for a variety of reasons, for example, the registry is
    --     performing maintenance. Try again later.
    --
    -- [PENDING]
    --     The TLD registry didn\'t return a response in the expected amount of
    --     time. When the response is delayed, it usually takes just a few
    --     extra seconds. You can resubmit the request immediately.
    --
    -- [RESERVED]
    --     The domain name has been reserved for another person or
    --     organization.
    --
    -- [UNAVAILABLE]
    --     The domain name is not available.
    --
    -- [UNAVAILABLE_PREMIUM]
    --     The domain name is not available.
    --
    -- [UNAVAILABLE_RESTRICTED]
    --     The domain name is forbidden.
    availability :: DomainAvailability
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CheckDomainAvailabilityResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'checkDomainAvailabilityResponse_httpStatus' - The response's http status code.
--
-- 'availability', 'checkDomainAvailabilityResponse_availability' - Whether the domain name is available for registering.
--
-- You can register only domains designated as @AVAILABLE@.
--
-- Valid values:
--
-- [AVAILABLE]
--     The domain name is available.
--
-- [AVAILABLE_RESERVED]
--     The domain name is reserved under specific conditions.
--
-- [AVAILABLE_PREORDER]
--     The domain name is available and can be preordered.
--
-- [DONT_KNOW]
--     The TLD registry didn\'t reply with a definitive answer about
--     whether the domain name is available. Route 53 can return this
--     response for a variety of reasons, for example, the registry is
--     performing maintenance. Try again later.
--
-- [PENDING]
--     The TLD registry didn\'t return a response in the expected amount of
--     time. When the response is delayed, it usually takes just a few
--     extra seconds. You can resubmit the request immediately.
--
-- [RESERVED]
--     The domain name has been reserved for another person or
--     organization.
--
-- [UNAVAILABLE]
--     The domain name is not available.
--
-- [UNAVAILABLE_PREMIUM]
--     The domain name is not available.
--
-- [UNAVAILABLE_RESTRICTED]
--     The domain name is forbidden.
newCheckDomainAvailabilityResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'availability'
  DomainAvailability ->
  CheckDomainAvailabilityResponse
newCheckDomainAvailabilityResponse
  pHttpStatus_
  pAvailability_ =
    CheckDomainAvailabilityResponse'
      { httpStatus =
          pHttpStatus_,
        availability = pAvailability_
      }

-- | The response's http status code.
checkDomainAvailabilityResponse_httpStatus :: Lens.Lens' CheckDomainAvailabilityResponse Prelude.Int
checkDomainAvailabilityResponse_httpStatus = Lens.lens (\CheckDomainAvailabilityResponse' {httpStatus} -> httpStatus) (\s@CheckDomainAvailabilityResponse' {} a -> s {httpStatus = a} :: CheckDomainAvailabilityResponse)

-- | Whether the domain name is available for registering.
--
-- You can register only domains designated as @AVAILABLE@.
--
-- Valid values:
--
-- [AVAILABLE]
--     The domain name is available.
--
-- [AVAILABLE_RESERVED]
--     The domain name is reserved under specific conditions.
--
-- [AVAILABLE_PREORDER]
--     The domain name is available and can be preordered.
--
-- [DONT_KNOW]
--     The TLD registry didn\'t reply with a definitive answer about
--     whether the domain name is available. Route 53 can return this
--     response for a variety of reasons, for example, the registry is
--     performing maintenance. Try again later.
--
-- [PENDING]
--     The TLD registry didn\'t return a response in the expected amount of
--     time. When the response is delayed, it usually takes just a few
--     extra seconds. You can resubmit the request immediately.
--
-- [RESERVED]
--     The domain name has been reserved for another person or
--     organization.
--
-- [UNAVAILABLE]
--     The domain name is not available.
--
-- [UNAVAILABLE_PREMIUM]
--     The domain name is not available.
--
-- [UNAVAILABLE_RESTRICTED]
--     The domain name is forbidden.
checkDomainAvailabilityResponse_availability :: Lens.Lens' CheckDomainAvailabilityResponse DomainAvailability
checkDomainAvailabilityResponse_availability = Lens.lens (\CheckDomainAvailabilityResponse' {availability} -> availability) (\s@CheckDomainAvailabilityResponse' {} a -> s {availability = a} :: CheckDomainAvailabilityResponse)

instance
  Prelude.NFData
    CheckDomainAvailabilityResponse
