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
-- Module      : Network.AWS.DynamoDB.DescribeEndpoints
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the regional endpoint information.
module Network.AWS.DynamoDB.DescribeEndpoints
  ( -- * Creating a Request
    DescribeEndpoints (..),
    newDescribeEndpoints,

    -- * Destructuring the Response
    DescribeEndpointsResponse (..),
    newDescribeEndpointsResponse,

    -- * Response Lenses
    describeEndpointsResponse_httpStatus,
    describeEndpointsResponse_endpoints,
  )
where

import Network.AWS.DynamoDB.Types
import Network.AWS.DynamoDB.Types.Endpoint
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeEndpoints' smart constructor.
data DescribeEndpoints = DescribeEndpoints'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeEndpoints' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDescribeEndpoints ::
  DescribeEndpoints
newDescribeEndpoints = DescribeEndpoints'

instance Prelude.AWSRequest DescribeEndpoints where
  type Rs DescribeEndpoints = DescribeEndpointsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeEndpointsResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Prelude..?> "Endpoints"
                            Prelude..!@ Prelude.mempty
                        )
      )

instance Prelude.Hashable DescribeEndpoints

instance Prelude.NFData DescribeEndpoints

instance Prelude.ToHeaders DescribeEndpoints where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "DynamoDB_20120810.DescribeEndpoints" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.0" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON DescribeEndpoints where
  toJSON =
    Prelude.const (Prelude.Object Prelude.mempty)

instance Prelude.ToPath DescribeEndpoints where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DescribeEndpoints where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeEndpointsResponse' smart constructor.
data DescribeEndpointsResponse = DescribeEndpointsResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | List of endpoints.
    endpoints :: [Endpoint]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeEndpointsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'describeEndpointsResponse_httpStatus' - The response's http status code.
--
-- 'endpoints', 'describeEndpointsResponse_endpoints' - List of endpoints.
newDescribeEndpointsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeEndpointsResponse
newDescribeEndpointsResponse pHttpStatus_ =
  DescribeEndpointsResponse'
    { httpStatus =
        pHttpStatus_,
      endpoints = Prelude.mempty
    }

-- | The response's http status code.
describeEndpointsResponse_httpStatus :: Lens.Lens' DescribeEndpointsResponse Prelude.Int
describeEndpointsResponse_httpStatus = Lens.lens (\DescribeEndpointsResponse' {httpStatus} -> httpStatus) (\s@DescribeEndpointsResponse' {} a -> s {httpStatus = a} :: DescribeEndpointsResponse)

-- | List of endpoints.
describeEndpointsResponse_endpoints :: Lens.Lens' DescribeEndpointsResponse [Endpoint]
describeEndpointsResponse_endpoints = Lens.lens (\DescribeEndpointsResponse' {endpoints} -> endpoints) (\s@DescribeEndpointsResponse' {} a -> s {endpoints = a} :: DescribeEndpointsResponse) Prelude.. Prelude._Coerce

instance Prelude.NFData DescribeEndpointsResponse
