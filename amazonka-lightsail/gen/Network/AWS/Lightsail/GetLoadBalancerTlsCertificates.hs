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
-- Module      : Network.AWS.Lightsail.GetLoadBalancerTlsCertificates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the TLS certificates that are associated with
-- the specified Lightsail load balancer.
--
-- TLS is just an updated, more secure version of Secure Socket Layer
-- (SSL).
--
-- You can have a maximum of 2 certificates associated with a Lightsail
-- load balancer. One is active and the other is inactive.
module Network.AWS.Lightsail.GetLoadBalancerTlsCertificates
  ( -- * Creating a Request
    GetLoadBalancerTlsCertificates (..),
    newGetLoadBalancerTlsCertificates,

    -- * Request Lenses
    getLoadBalancerTlsCertificates_loadBalancerName,

    -- * Destructuring the Response
    GetLoadBalancerTlsCertificatesResponse (..),
    newGetLoadBalancerTlsCertificatesResponse,

    -- * Response Lenses
    getLoadBalancerTlsCertificatesResponse_tlsCertificates,
    getLoadBalancerTlsCertificatesResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Lightsail.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetLoadBalancerTlsCertificates' smart constructor.
data GetLoadBalancerTlsCertificates = GetLoadBalancerTlsCertificates'
  { -- | The name of the load balancer you associated with your SSL\/TLS
    -- certificate.
    loadBalancerName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetLoadBalancerTlsCertificates' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'loadBalancerName', 'getLoadBalancerTlsCertificates_loadBalancerName' - The name of the load balancer you associated with your SSL\/TLS
-- certificate.
newGetLoadBalancerTlsCertificates ::
  -- | 'loadBalancerName'
  Prelude.Text ->
  GetLoadBalancerTlsCertificates
newGetLoadBalancerTlsCertificates pLoadBalancerName_ =
  GetLoadBalancerTlsCertificates'
    { loadBalancerName =
        pLoadBalancerName_
    }

-- | The name of the load balancer you associated with your SSL\/TLS
-- certificate.
getLoadBalancerTlsCertificates_loadBalancerName :: Lens.Lens' GetLoadBalancerTlsCertificates Prelude.Text
getLoadBalancerTlsCertificates_loadBalancerName = Lens.lens (\GetLoadBalancerTlsCertificates' {loadBalancerName} -> loadBalancerName) (\s@GetLoadBalancerTlsCertificates' {} a -> s {loadBalancerName = a} :: GetLoadBalancerTlsCertificates)

instance
  Prelude.AWSRequest
    GetLoadBalancerTlsCertificates
  where
  type
    Rs GetLoadBalancerTlsCertificates =
      GetLoadBalancerTlsCertificatesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetLoadBalancerTlsCertificatesResponse'
            Prelude.<$> ( x Prelude..?> "tlsCertificates"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetLoadBalancerTlsCertificates

instance
  Prelude.NFData
    GetLoadBalancerTlsCertificates

instance
  Prelude.ToHeaders
    GetLoadBalancerTlsCertificates
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "Lightsail_20161128.GetLoadBalancerTlsCertificates" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance
  Prelude.ToJSON
    GetLoadBalancerTlsCertificates
  where
  toJSON GetLoadBalancerTlsCertificates' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("loadBalancerName" Prelude..= loadBalancerName)
          ]
      )

instance
  Prelude.ToPath
    GetLoadBalancerTlsCertificates
  where
  toPath = Prelude.const "/"

instance
  Prelude.ToQuery
    GetLoadBalancerTlsCertificates
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetLoadBalancerTlsCertificatesResponse' smart constructor.
data GetLoadBalancerTlsCertificatesResponse = GetLoadBalancerTlsCertificatesResponse'
  { -- | An array of LoadBalancerTlsCertificate objects describing your SSL\/TLS
    -- certificates.
    tlsCertificates :: Prelude.Maybe [LoadBalancerTlsCertificate],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetLoadBalancerTlsCertificatesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tlsCertificates', 'getLoadBalancerTlsCertificatesResponse_tlsCertificates' - An array of LoadBalancerTlsCertificate objects describing your SSL\/TLS
-- certificates.
--
-- 'httpStatus', 'getLoadBalancerTlsCertificatesResponse_httpStatus' - The response's http status code.
newGetLoadBalancerTlsCertificatesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetLoadBalancerTlsCertificatesResponse
newGetLoadBalancerTlsCertificatesResponse
  pHttpStatus_ =
    GetLoadBalancerTlsCertificatesResponse'
      { tlsCertificates =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | An array of LoadBalancerTlsCertificate objects describing your SSL\/TLS
-- certificates.
getLoadBalancerTlsCertificatesResponse_tlsCertificates :: Lens.Lens' GetLoadBalancerTlsCertificatesResponse (Prelude.Maybe [LoadBalancerTlsCertificate])
getLoadBalancerTlsCertificatesResponse_tlsCertificates = Lens.lens (\GetLoadBalancerTlsCertificatesResponse' {tlsCertificates} -> tlsCertificates) (\s@GetLoadBalancerTlsCertificatesResponse' {} a -> s {tlsCertificates = a} :: GetLoadBalancerTlsCertificatesResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
getLoadBalancerTlsCertificatesResponse_httpStatus :: Lens.Lens' GetLoadBalancerTlsCertificatesResponse Prelude.Int
getLoadBalancerTlsCertificatesResponse_httpStatus = Lens.lens (\GetLoadBalancerTlsCertificatesResponse' {httpStatus} -> httpStatus) (\s@GetLoadBalancerTlsCertificatesResponse' {} a -> s {httpStatus = a} :: GetLoadBalancerTlsCertificatesResponse)

instance
  Prelude.NFData
    GetLoadBalancerTlsCertificatesResponse
