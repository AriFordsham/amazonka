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
-- Module      : Network.AWS.ELB.ModifyLoadBalancerAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the attributes of the specified load balancer.
--
-- You can modify the load balancer attributes, such as @AccessLogs@,
-- @ConnectionDraining@, and @CrossZoneLoadBalancing@ by either enabling or
-- disabling them. Or, you can modify the load balancer attribute
-- @ConnectionSettings@ by specifying an idle connection timeout value for
-- your load balancer.
--
-- For more information, see the following in the /Classic Load Balancers
-- Guide/:
--
-- -   <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/enable-disable-crosszone-lb.html Cross-Zone Load Balancing>
--
-- -   <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-conn-drain.html Connection Draining>
--
-- -   <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/access-log-collection.html Access Logs>
--
-- -   <https://docs.aws.amazon.com/elasticloadbalancing/latest/classic/config-idle-timeout.html Idle Connection Timeout>
module Network.AWS.ELB.ModifyLoadBalancerAttributes
  ( -- * Creating a Request
    ModifyLoadBalancerAttributes (..),
    newModifyLoadBalancerAttributes,

    -- * Request Lenses
    modifyLoadBalancerAttributes_loadBalancerName,
    modifyLoadBalancerAttributes_loadBalancerAttributes,

    -- * Destructuring the Response
    ModifyLoadBalancerAttributesResponse (..),
    newModifyLoadBalancerAttributesResponse,

    -- * Response Lenses
    modifyLoadBalancerAttributesResponse_loadBalancerAttributes,
    modifyLoadBalancerAttributesResponse_loadBalancerName,
    modifyLoadBalancerAttributesResponse_httpStatus,
  )
where

import Network.AWS.ELB.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Contains the parameters for ModifyLoadBalancerAttributes.
--
-- /See:/ 'newModifyLoadBalancerAttributes' smart constructor.
data ModifyLoadBalancerAttributes = ModifyLoadBalancerAttributes'
  { -- | The name of the load balancer.
    loadBalancerName :: Prelude.Text,
    -- | The attributes for the load balancer.
    loadBalancerAttributes :: LoadBalancerAttributes
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ModifyLoadBalancerAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'loadBalancerName', 'modifyLoadBalancerAttributes_loadBalancerName' - The name of the load balancer.
--
-- 'loadBalancerAttributes', 'modifyLoadBalancerAttributes_loadBalancerAttributes' - The attributes for the load balancer.
newModifyLoadBalancerAttributes ::
  -- | 'loadBalancerName'
  Prelude.Text ->
  -- | 'loadBalancerAttributes'
  LoadBalancerAttributes ->
  ModifyLoadBalancerAttributes
newModifyLoadBalancerAttributes
  pLoadBalancerName_
  pLoadBalancerAttributes_ =
    ModifyLoadBalancerAttributes'
      { loadBalancerName =
          pLoadBalancerName_,
        loadBalancerAttributes =
          pLoadBalancerAttributes_
      }

-- | The name of the load balancer.
modifyLoadBalancerAttributes_loadBalancerName :: Lens.Lens' ModifyLoadBalancerAttributes Prelude.Text
modifyLoadBalancerAttributes_loadBalancerName = Lens.lens (\ModifyLoadBalancerAttributes' {loadBalancerName} -> loadBalancerName) (\s@ModifyLoadBalancerAttributes' {} a -> s {loadBalancerName = a} :: ModifyLoadBalancerAttributes)

-- | The attributes for the load balancer.
modifyLoadBalancerAttributes_loadBalancerAttributes :: Lens.Lens' ModifyLoadBalancerAttributes LoadBalancerAttributes
modifyLoadBalancerAttributes_loadBalancerAttributes = Lens.lens (\ModifyLoadBalancerAttributes' {loadBalancerAttributes} -> loadBalancerAttributes) (\s@ModifyLoadBalancerAttributes' {} a -> s {loadBalancerAttributes = a} :: ModifyLoadBalancerAttributes)

instance
  Prelude.AWSRequest
    ModifyLoadBalancerAttributes
  where
  type
    Rs ModifyLoadBalancerAttributes =
      ModifyLoadBalancerAttributesResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "ModifyLoadBalancerAttributesResult"
      ( \s h x ->
          ModifyLoadBalancerAttributesResponse'
            Prelude.<$> (x Prelude..@? "LoadBalancerAttributes")
            Prelude.<*> (x Prelude..@? "LoadBalancerName")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    ModifyLoadBalancerAttributes

instance Prelude.NFData ModifyLoadBalancerAttributes

instance
  Prelude.ToHeaders
    ModifyLoadBalancerAttributes
  where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath ModifyLoadBalancerAttributes where
  toPath = Prelude.const "/"

instance Prelude.ToQuery ModifyLoadBalancerAttributes where
  toQuery ModifyLoadBalancerAttributes' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ( "ModifyLoadBalancerAttributes" ::
                         Prelude.ByteString
                     ),
        "Version"
          Prelude.=: ("2012-06-01" :: Prelude.ByteString),
        "LoadBalancerName" Prelude.=: loadBalancerName,
        "LoadBalancerAttributes"
          Prelude.=: loadBalancerAttributes
      ]

-- | Contains the output of ModifyLoadBalancerAttributes.
--
-- /See:/ 'newModifyLoadBalancerAttributesResponse' smart constructor.
data ModifyLoadBalancerAttributesResponse = ModifyLoadBalancerAttributesResponse'
  { -- | Information about the load balancer attributes.
    loadBalancerAttributes :: Prelude.Maybe LoadBalancerAttributes,
    -- | The name of the load balancer.
    loadBalancerName :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ModifyLoadBalancerAttributesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'loadBalancerAttributes', 'modifyLoadBalancerAttributesResponse_loadBalancerAttributes' - Information about the load balancer attributes.
--
-- 'loadBalancerName', 'modifyLoadBalancerAttributesResponse_loadBalancerName' - The name of the load balancer.
--
-- 'httpStatus', 'modifyLoadBalancerAttributesResponse_httpStatus' - The response's http status code.
newModifyLoadBalancerAttributesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ModifyLoadBalancerAttributesResponse
newModifyLoadBalancerAttributesResponse pHttpStatus_ =
  ModifyLoadBalancerAttributesResponse'
    { loadBalancerAttributes =
        Prelude.Nothing,
      loadBalancerName = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the load balancer attributes.
modifyLoadBalancerAttributesResponse_loadBalancerAttributes :: Lens.Lens' ModifyLoadBalancerAttributesResponse (Prelude.Maybe LoadBalancerAttributes)
modifyLoadBalancerAttributesResponse_loadBalancerAttributes = Lens.lens (\ModifyLoadBalancerAttributesResponse' {loadBalancerAttributes} -> loadBalancerAttributes) (\s@ModifyLoadBalancerAttributesResponse' {} a -> s {loadBalancerAttributes = a} :: ModifyLoadBalancerAttributesResponse)

-- | The name of the load balancer.
modifyLoadBalancerAttributesResponse_loadBalancerName :: Lens.Lens' ModifyLoadBalancerAttributesResponse (Prelude.Maybe Prelude.Text)
modifyLoadBalancerAttributesResponse_loadBalancerName = Lens.lens (\ModifyLoadBalancerAttributesResponse' {loadBalancerName} -> loadBalancerName) (\s@ModifyLoadBalancerAttributesResponse' {} a -> s {loadBalancerName = a} :: ModifyLoadBalancerAttributesResponse)

-- | The response's http status code.
modifyLoadBalancerAttributesResponse_httpStatus :: Lens.Lens' ModifyLoadBalancerAttributesResponse Prelude.Int
modifyLoadBalancerAttributesResponse_httpStatus = Lens.lens (\ModifyLoadBalancerAttributesResponse' {httpStatus} -> httpStatus) (\s@ModifyLoadBalancerAttributesResponse' {} a -> s {httpStatus = a} :: ModifyLoadBalancerAttributesResponse)

instance
  Prelude.NFData
    ModifyLoadBalancerAttributesResponse
