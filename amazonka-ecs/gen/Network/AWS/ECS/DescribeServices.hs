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
-- Module      : Network.AWS.ECS.DescribeServices
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the specified services running in your cluster.
module Network.AWS.ECS.DescribeServices
  ( -- * Creating a Request
    DescribeServices (..),
    newDescribeServices,

    -- * Request Lenses
    describeServices_include,
    describeServices_cluster,
    describeServices_services,

    -- * Destructuring the Response
    DescribeServicesResponse (..),
    newDescribeServicesResponse,

    -- * Response Lenses
    describeServicesResponse_services,
    describeServicesResponse_failures,
    describeServicesResponse_httpStatus,
  )
where

import Network.AWS.ECS.Types
import Network.AWS.ECS.Types.ContainerService
import Network.AWS.ECS.Types.Failure
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeServices' smart constructor.
data DescribeServices = DescribeServices'
  { -- | Specifies whether you want to see the resource tags for the service. If
    -- @TAGS@ is specified, the tags are included in the response. If this
    -- field is omitted, tags are not included in the response.
    include :: Prelude.Maybe [ServiceField],
    -- | The short name or full Amazon Resource Name (ARN)the cluster that hosts
    -- the service to describe. If you do not specify a cluster, the default
    -- cluster is assumed. This parameter is required if the service or
    -- services you are describing were launched in any cluster other than the
    -- default cluster.
    cluster :: Prelude.Maybe Prelude.Text,
    -- | A list of services to describe. You may specify up to 10 services to
    -- describe in a single operation.
    services :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeServices' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'include', 'describeServices_include' - Specifies whether you want to see the resource tags for the service. If
-- @TAGS@ is specified, the tags are included in the response. If this
-- field is omitted, tags are not included in the response.
--
-- 'cluster', 'describeServices_cluster' - The short name or full Amazon Resource Name (ARN)the cluster that hosts
-- the service to describe. If you do not specify a cluster, the default
-- cluster is assumed. This parameter is required if the service or
-- services you are describing were launched in any cluster other than the
-- default cluster.
--
-- 'services', 'describeServices_services' - A list of services to describe. You may specify up to 10 services to
-- describe in a single operation.
newDescribeServices ::
  DescribeServices
newDescribeServices =
  DescribeServices'
    { include = Prelude.Nothing,
      cluster = Prelude.Nothing,
      services = Prelude.mempty
    }

-- | Specifies whether you want to see the resource tags for the service. If
-- @TAGS@ is specified, the tags are included in the response. If this
-- field is omitted, tags are not included in the response.
describeServices_include :: Lens.Lens' DescribeServices (Prelude.Maybe [ServiceField])
describeServices_include = Lens.lens (\DescribeServices' {include} -> include) (\s@DescribeServices' {} a -> s {include = a} :: DescribeServices) Prelude.. Lens.mapping Prelude._Coerce

-- | The short name or full Amazon Resource Name (ARN)the cluster that hosts
-- the service to describe. If you do not specify a cluster, the default
-- cluster is assumed. This parameter is required if the service or
-- services you are describing were launched in any cluster other than the
-- default cluster.
describeServices_cluster :: Lens.Lens' DescribeServices (Prelude.Maybe Prelude.Text)
describeServices_cluster = Lens.lens (\DescribeServices' {cluster} -> cluster) (\s@DescribeServices' {} a -> s {cluster = a} :: DescribeServices)

-- | A list of services to describe. You may specify up to 10 services to
-- describe in a single operation.
describeServices_services :: Lens.Lens' DescribeServices [Prelude.Text]
describeServices_services = Lens.lens (\DescribeServices' {services} -> services) (\s@DescribeServices' {} a -> s {services = a} :: DescribeServices) Prelude.. Prelude._Coerce

instance Prelude.AWSRequest DescribeServices where
  type Rs DescribeServices = DescribeServicesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeServicesResponse'
            Prelude.<$> (x Prelude..?> "services" Prelude..!@ Prelude.mempty)
            Prelude.<*> (x Prelude..?> "failures" Prelude..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeServices

instance Prelude.NFData DescribeServices

instance Prelude.ToHeaders DescribeServices where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "AmazonEC2ContainerServiceV20141113.DescribeServices" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON DescribeServices where
  toJSON DescribeServices' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("include" Prelude..=) Prelude.<$> include,
            ("cluster" Prelude..=) Prelude.<$> cluster,
            Prelude.Just ("services" Prelude..= services)
          ]
      )

instance Prelude.ToPath DescribeServices where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DescribeServices where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeServicesResponse' smart constructor.
data DescribeServicesResponse = DescribeServicesResponse'
  { -- | The list of services described.
    services :: Prelude.Maybe [ContainerService],
    -- | Any failures associated with the call.
    failures :: Prelude.Maybe [Failure],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeServicesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'services', 'describeServicesResponse_services' - The list of services described.
--
-- 'failures', 'describeServicesResponse_failures' - Any failures associated with the call.
--
-- 'httpStatus', 'describeServicesResponse_httpStatus' - The response's http status code.
newDescribeServicesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeServicesResponse
newDescribeServicesResponse pHttpStatus_ =
  DescribeServicesResponse'
    { services =
        Prelude.Nothing,
      failures = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The list of services described.
describeServicesResponse_services :: Lens.Lens' DescribeServicesResponse (Prelude.Maybe [ContainerService])
describeServicesResponse_services = Lens.lens (\DescribeServicesResponse' {services} -> services) (\s@DescribeServicesResponse' {} a -> s {services = a} :: DescribeServicesResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | Any failures associated with the call.
describeServicesResponse_failures :: Lens.Lens' DescribeServicesResponse (Prelude.Maybe [Failure])
describeServicesResponse_failures = Lens.lens (\DescribeServicesResponse' {failures} -> failures) (\s@DescribeServicesResponse' {} a -> s {failures = a} :: DescribeServicesResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
describeServicesResponse_httpStatus :: Lens.Lens' DescribeServicesResponse Prelude.Int
describeServicesResponse_httpStatus = Lens.lens (\DescribeServicesResponse' {httpStatus} -> httpStatus) (\s@DescribeServicesResponse' {} a -> s {httpStatus = a} :: DescribeServicesResponse)

instance Prelude.NFData DescribeServicesResponse
