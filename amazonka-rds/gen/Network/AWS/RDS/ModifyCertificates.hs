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
-- Module      : Network.AWS.RDS.ModifyCertificates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Override the system-default Secure Sockets Layer\/Transport Layer
-- Security (SSL\/TLS) certificate for Amazon RDS for new DB instances
-- temporarily, or remove the override.
--
-- By using this operation, you can specify an RDS-approved SSL\/TLS
-- certificate for new DB instances that is different from the default
-- certificate provided by RDS. You can also use this operation to remove
-- the override, so that new DB instances use the default certificate
-- provided by RDS.
--
-- You might need to override the default certificate in the following
-- situations:
--
-- -   You already migrated your applications to support the latest
--     certificate authority (CA) certificate, but the new CA certificate
--     is not yet the RDS default CA certificate for the specified AWS
--     Region.
--
-- -   RDS has already moved to a new default CA certificate for the
--     specified AWS Region, but you are still in the process of supporting
--     the new CA certificate. In this case, you temporarily need
--     additional time to finish your application changes.
--
-- For more information about rotating your SSL\/TLS certificate for RDS DB
-- engines, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/UserGuide/UsingWithRDS.SSL-certificate-rotation.html Rotating Your SSL\/TLS Certificate>
-- in the /Amazon RDS User Guide/.
--
-- For more information about rotating your SSL\/TLS certificate for Aurora
-- DB engines, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/UsingWithRDS.SSL-certificate-rotation.html Rotating Your SSL\/TLS Certificate>
-- in the /Amazon Aurora User Guide/.
module Network.AWS.RDS.ModifyCertificates
  ( -- * Creating a Request
    ModifyCertificates (..),
    newModifyCertificates,

    -- * Request Lenses
    modifyCertificates_certificateIdentifier,
    modifyCertificates_removeCustomerOverride,

    -- * Destructuring the Response
    ModifyCertificatesResponse (..),
    newModifyCertificatesResponse,

    -- * Response Lenses
    modifyCertificatesResponse_certificate,
    modifyCertificatesResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newModifyCertificates' smart constructor.
data ModifyCertificates = ModifyCertificates'
  { -- | The new default certificate identifier to override the current one with.
    --
    -- To determine the valid values, use the @describe-certificates@ AWS CLI
    -- command or the @DescribeCertificates@ API operation.
    certificateIdentifier :: Prelude.Maybe Prelude.Text,
    -- | A value that indicates whether to remove the override for the default
    -- certificate. If the override is removed, the default certificate is the
    -- system default.
    removeCustomerOverride :: Prelude.Maybe Prelude.Bool
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ModifyCertificates' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'certificateIdentifier', 'modifyCertificates_certificateIdentifier' - The new default certificate identifier to override the current one with.
--
-- To determine the valid values, use the @describe-certificates@ AWS CLI
-- command or the @DescribeCertificates@ API operation.
--
-- 'removeCustomerOverride', 'modifyCertificates_removeCustomerOverride' - A value that indicates whether to remove the override for the default
-- certificate. If the override is removed, the default certificate is the
-- system default.
newModifyCertificates ::
  ModifyCertificates
newModifyCertificates =
  ModifyCertificates'
    { certificateIdentifier =
        Prelude.Nothing,
      removeCustomerOverride = Prelude.Nothing
    }

-- | The new default certificate identifier to override the current one with.
--
-- To determine the valid values, use the @describe-certificates@ AWS CLI
-- command or the @DescribeCertificates@ API operation.
modifyCertificates_certificateIdentifier :: Lens.Lens' ModifyCertificates (Prelude.Maybe Prelude.Text)
modifyCertificates_certificateIdentifier = Lens.lens (\ModifyCertificates' {certificateIdentifier} -> certificateIdentifier) (\s@ModifyCertificates' {} a -> s {certificateIdentifier = a} :: ModifyCertificates)

-- | A value that indicates whether to remove the override for the default
-- certificate. If the override is removed, the default certificate is the
-- system default.
modifyCertificates_removeCustomerOverride :: Lens.Lens' ModifyCertificates (Prelude.Maybe Prelude.Bool)
modifyCertificates_removeCustomerOverride = Lens.lens (\ModifyCertificates' {removeCustomerOverride} -> removeCustomerOverride) (\s@ModifyCertificates' {} a -> s {removeCustomerOverride = a} :: ModifyCertificates)

instance Prelude.AWSRequest ModifyCertificates where
  type
    Rs ModifyCertificates =
      ModifyCertificatesResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "ModifyCertificatesResult"
      ( \s h x ->
          ModifyCertificatesResponse'
            Prelude.<$> (x Prelude..@? "Certificate")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ModifyCertificates

instance Prelude.NFData ModifyCertificates

instance Prelude.ToHeaders ModifyCertificates where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath ModifyCertificates where
  toPath = Prelude.const "/"

instance Prelude.ToQuery ModifyCertificates where
  toQuery ModifyCertificates' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("ModifyCertificates" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2014-10-31" :: Prelude.ByteString),
        "CertificateIdentifier"
          Prelude.=: certificateIdentifier,
        "RemoveCustomerOverride"
          Prelude.=: removeCustomerOverride
      ]

-- | /See:/ 'newModifyCertificatesResponse' smart constructor.
data ModifyCertificatesResponse = ModifyCertificatesResponse'
  { certificate :: Prelude.Maybe Certificate,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ModifyCertificatesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'certificate', 'modifyCertificatesResponse_certificate' - Undocumented member.
--
-- 'httpStatus', 'modifyCertificatesResponse_httpStatus' - The response's http status code.
newModifyCertificatesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ModifyCertificatesResponse
newModifyCertificatesResponse pHttpStatus_ =
  ModifyCertificatesResponse'
    { certificate =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
modifyCertificatesResponse_certificate :: Lens.Lens' ModifyCertificatesResponse (Prelude.Maybe Certificate)
modifyCertificatesResponse_certificate = Lens.lens (\ModifyCertificatesResponse' {certificate} -> certificate) (\s@ModifyCertificatesResponse' {} a -> s {certificate = a} :: ModifyCertificatesResponse)

-- | The response's http status code.
modifyCertificatesResponse_httpStatus :: Lens.Lens' ModifyCertificatesResponse Prelude.Int
modifyCertificatesResponse_httpStatus = Lens.lens (\ModifyCertificatesResponse' {httpStatus} -> httpStatus) (\s@ModifyCertificatesResponse' {} a -> s {httpStatus = a} :: ModifyCertificatesResponse)

instance Prelude.NFData ModifyCertificatesResponse
