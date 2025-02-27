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
-- Module      : Network.AWS.EC2.CreateTrafficMirrorFilterRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Traffic Mirror filter rule.
--
-- A Traffic Mirror rule defines the Traffic Mirror source traffic to
-- mirror.
--
-- You need the Traffic Mirror filter ID when you create the rule.
module Network.AWS.EC2.CreateTrafficMirrorFilterRule
  ( -- * Creating a Request
    CreateTrafficMirrorFilterRule (..),
    newCreateTrafficMirrorFilterRule,

    -- * Request Lenses
    createTrafficMirrorFilterRule_dryRun,
    createTrafficMirrorFilterRule_sourcePortRange,
    createTrafficMirrorFilterRule_protocol,
    createTrafficMirrorFilterRule_description,
    createTrafficMirrorFilterRule_clientToken,
    createTrafficMirrorFilterRule_destinationPortRange,
    createTrafficMirrorFilterRule_trafficMirrorFilterId,
    createTrafficMirrorFilterRule_trafficDirection,
    createTrafficMirrorFilterRule_ruleNumber,
    createTrafficMirrorFilterRule_ruleAction,
    createTrafficMirrorFilterRule_destinationCidrBlock,
    createTrafficMirrorFilterRule_sourceCidrBlock,

    -- * Destructuring the Response
    CreateTrafficMirrorFilterRuleResponse (..),
    newCreateTrafficMirrorFilterRuleResponse,

    -- * Response Lenses
    createTrafficMirrorFilterRuleResponse_clientToken,
    createTrafficMirrorFilterRuleResponse_trafficMirrorFilterRule,
    createTrafficMirrorFilterRuleResponse_httpStatus,
  )
where

import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateTrafficMirrorFilterRule' smart constructor.
data CreateTrafficMirrorFilterRule = CreateTrafficMirrorFilterRule'
  { -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The source port range.
    sourcePortRange :: Prelude.Maybe TrafficMirrorPortRangeRequest,
    -- | The protocol, for example UDP, to assign to the Traffic Mirror rule.
    --
    -- For information about the protocol value, see
    -- <https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml Protocol Numbers>
    -- on the Internet Assigned Numbers Authority (IANA) website.
    protocol :: Prelude.Maybe Prelude.Int,
    -- | The description of the Traffic Mirror rule.
    description :: Prelude.Maybe Prelude.Text,
    -- | Unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request. For more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency>.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The destination port range.
    destinationPortRange :: Prelude.Maybe TrafficMirrorPortRangeRequest,
    -- | The ID of the filter that this rule is associated with.
    trafficMirrorFilterId :: Prelude.Text,
    -- | The type of traffic (@ingress@ | @egress@).
    trafficDirection :: TrafficDirection,
    -- | The number of the Traffic Mirror rule. This number must be unique for
    -- each Traffic Mirror rule in a given direction. The rules are processed
    -- in ascending order by rule number.
    ruleNumber :: Prelude.Int,
    -- | The action to take (@accept@ | @reject@) on the filtered traffic.
    ruleAction :: TrafficMirrorRuleAction,
    -- | The destination CIDR block to assign to the Traffic Mirror rule.
    destinationCidrBlock :: Prelude.Text,
    -- | The source CIDR block to assign to the Traffic Mirror rule.
    sourceCidrBlock :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateTrafficMirrorFilterRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dryRun', 'createTrafficMirrorFilterRule_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'sourcePortRange', 'createTrafficMirrorFilterRule_sourcePortRange' - The source port range.
--
-- 'protocol', 'createTrafficMirrorFilterRule_protocol' - The protocol, for example UDP, to assign to the Traffic Mirror rule.
--
-- For information about the protocol value, see
-- <https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml Protocol Numbers>
-- on the Internet Assigned Numbers Authority (IANA) website.
--
-- 'description', 'createTrafficMirrorFilterRule_description' - The description of the Traffic Mirror rule.
--
-- 'clientToken', 'createTrafficMirrorFilterRule_clientToken' - Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency>.
--
-- 'destinationPortRange', 'createTrafficMirrorFilterRule_destinationPortRange' - The destination port range.
--
-- 'trafficMirrorFilterId', 'createTrafficMirrorFilterRule_trafficMirrorFilterId' - The ID of the filter that this rule is associated with.
--
-- 'trafficDirection', 'createTrafficMirrorFilterRule_trafficDirection' - The type of traffic (@ingress@ | @egress@).
--
-- 'ruleNumber', 'createTrafficMirrorFilterRule_ruleNumber' - The number of the Traffic Mirror rule. This number must be unique for
-- each Traffic Mirror rule in a given direction. The rules are processed
-- in ascending order by rule number.
--
-- 'ruleAction', 'createTrafficMirrorFilterRule_ruleAction' - The action to take (@accept@ | @reject@) on the filtered traffic.
--
-- 'destinationCidrBlock', 'createTrafficMirrorFilterRule_destinationCidrBlock' - The destination CIDR block to assign to the Traffic Mirror rule.
--
-- 'sourceCidrBlock', 'createTrafficMirrorFilterRule_sourceCidrBlock' - The source CIDR block to assign to the Traffic Mirror rule.
newCreateTrafficMirrorFilterRule ::
  -- | 'trafficMirrorFilterId'
  Prelude.Text ->
  -- | 'trafficDirection'
  TrafficDirection ->
  -- | 'ruleNumber'
  Prelude.Int ->
  -- | 'ruleAction'
  TrafficMirrorRuleAction ->
  -- | 'destinationCidrBlock'
  Prelude.Text ->
  -- | 'sourceCidrBlock'
  Prelude.Text ->
  CreateTrafficMirrorFilterRule
newCreateTrafficMirrorFilterRule
  pTrafficMirrorFilterId_
  pTrafficDirection_
  pRuleNumber_
  pRuleAction_
  pDestinationCidrBlock_
  pSourceCidrBlock_ =
    CreateTrafficMirrorFilterRule'
      { dryRun =
          Prelude.Nothing,
        sourcePortRange = Prelude.Nothing,
        protocol = Prelude.Nothing,
        description = Prelude.Nothing,
        clientToken = Prelude.Nothing,
        destinationPortRange = Prelude.Nothing,
        trafficMirrorFilterId =
          pTrafficMirrorFilterId_,
        trafficDirection = pTrafficDirection_,
        ruleNumber = pRuleNumber_,
        ruleAction = pRuleAction_,
        destinationCidrBlock =
          pDestinationCidrBlock_,
        sourceCidrBlock = pSourceCidrBlock_
      }

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
createTrafficMirrorFilterRule_dryRun :: Lens.Lens' CreateTrafficMirrorFilterRule (Prelude.Maybe Prelude.Bool)
createTrafficMirrorFilterRule_dryRun = Lens.lens (\CreateTrafficMirrorFilterRule' {dryRun} -> dryRun) (\s@CreateTrafficMirrorFilterRule' {} a -> s {dryRun = a} :: CreateTrafficMirrorFilterRule)

-- | The source port range.
createTrafficMirrorFilterRule_sourcePortRange :: Lens.Lens' CreateTrafficMirrorFilterRule (Prelude.Maybe TrafficMirrorPortRangeRequest)
createTrafficMirrorFilterRule_sourcePortRange = Lens.lens (\CreateTrafficMirrorFilterRule' {sourcePortRange} -> sourcePortRange) (\s@CreateTrafficMirrorFilterRule' {} a -> s {sourcePortRange = a} :: CreateTrafficMirrorFilterRule)

-- | The protocol, for example UDP, to assign to the Traffic Mirror rule.
--
-- For information about the protocol value, see
-- <https://www.iana.org/assignments/protocol-numbers/protocol-numbers.xhtml Protocol Numbers>
-- on the Internet Assigned Numbers Authority (IANA) website.
createTrafficMirrorFilterRule_protocol :: Lens.Lens' CreateTrafficMirrorFilterRule (Prelude.Maybe Prelude.Int)
createTrafficMirrorFilterRule_protocol = Lens.lens (\CreateTrafficMirrorFilterRule' {protocol} -> protocol) (\s@CreateTrafficMirrorFilterRule' {} a -> s {protocol = a} :: CreateTrafficMirrorFilterRule)

-- | The description of the Traffic Mirror rule.
createTrafficMirrorFilterRule_description :: Lens.Lens' CreateTrafficMirrorFilterRule (Prelude.Maybe Prelude.Text)
createTrafficMirrorFilterRule_description = Lens.lens (\CreateTrafficMirrorFilterRule' {description} -> description) (\s@CreateTrafficMirrorFilterRule' {} a -> s {description = a} :: CreateTrafficMirrorFilterRule)

-- | Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency>.
createTrafficMirrorFilterRule_clientToken :: Lens.Lens' CreateTrafficMirrorFilterRule (Prelude.Maybe Prelude.Text)
createTrafficMirrorFilterRule_clientToken = Lens.lens (\CreateTrafficMirrorFilterRule' {clientToken} -> clientToken) (\s@CreateTrafficMirrorFilterRule' {} a -> s {clientToken = a} :: CreateTrafficMirrorFilterRule)

-- | The destination port range.
createTrafficMirrorFilterRule_destinationPortRange :: Lens.Lens' CreateTrafficMirrorFilterRule (Prelude.Maybe TrafficMirrorPortRangeRequest)
createTrafficMirrorFilterRule_destinationPortRange = Lens.lens (\CreateTrafficMirrorFilterRule' {destinationPortRange} -> destinationPortRange) (\s@CreateTrafficMirrorFilterRule' {} a -> s {destinationPortRange = a} :: CreateTrafficMirrorFilterRule)

-- | The ID of the filter that this rule is associated with.
createTrafficMirrorFilterRule_trafficMirrorFilterId :: Lens.Lens' CreateTrafficMirrorFilterRule Prelude.Text
createTrafficMirrorFilterRule_trafficMirrorFilterId = Lens.lens (\CreateTrafficMirrorFilterRule' {trafficMirrorFilterId} -> trafficMirrorFilterId) (\s@CreateTrafficMirrorFilterRule' {} a -> s {trafficMirrorFilterId = a} :: CreateTrafficMirrorFilterRule)

-- | The type of traffic (@ingress@ | @egress@).
createTrafficMirrorFilterRule_trafficDirection :: Lens.Lens' CreateTrafficMirrorFilterRule TrafficDirection
createTrafficMirrorFilterRule_trafficDirection = Lens.lens (\CreateTrafficMirrorFilterRule' {trafficDirection} -> trafficDirection) (\s@CreateTrafficMirrorFilterRule' {} a -> s {trafficDirection = a} :: CreateTrafficMirrorFilterRule)

-- | The number of the Traffic Mirror rule. This number must be unique for
-- each Traffic Mirror rule in a given direction. The rules are processed
-- in ascending order by rule number.
createTrafficMirrorFilterRule_ruleNumber :: Lens.Lens' CreateTrafficMirrorFilterRule Prelude.Int
createTrafficMirrorFilterRule_ruleNumber = Lens.lens (\CreateTrafficMirrorFilterRule' {ruleNumber} -> ruleNumber) (\s@CreateTrafficMirrorFilterRule' {} a -> s {ruleNumber = a} :: CreateTrafficMirrorFilterRule)

-- | The action to take (@accept@ | @reject@) on the filtered traffic.
createTrafficMirrorFilterRule_ruleAction :: Lens.Lens' CreateTrafficMirrorFilterRule TrafficMirrorRuleAction
createTrafficMirrorFilterRule_ruleAction = Lens.lens (\CreateTrafficMirrorFilterRule' {ruleAction} -> ruleAction) (\s@CreateTrafficMirrorFilterRule' {} a -> s {ruleAction = a} :: CreateTrafficMirrorFilterRule)

-- | The destination CIDR block to assign to the Traffic Mirror rule.
createTrafficMirrorFilterRule_destinationCidrBlock :: Lens.Lens' CreateTrafficMirrorFilterRule Prelude.Text
createTrafficMirrorFilterRule_destinationCidrBlock = Lens.lens (\CreateTrafficMirrorFilterRule' {destinationCidrBlock} -> destinationCidrBlock) (\s@CreateTrafficMirrorFilterRule' {} a -> s {destinationCidrBlock = a} :: CreateTrafficMirrorFilterRule)

-- | The source CIDR block to assign to the Traffic Mirror rule.
createTrafficMirrorFilterRule_sourceCidrBlock :: Lens.Lens' CreateTrafficMirrorFilterRule Prelude.Text
createTrafficMirrorFilterRule_sourceCidrBlock = Lens.lens (\CreateTrafficMirrorFilterRule' {sourceCidrBlock} -> sourceCidrBlock) (\s@CreateTrafficMirrorFilterRule' {} a -> s {sourceCidrBlock = a} :: CreateTrafficMirrorFilterRule)

instance
  Prelude.AWSRequest
    CreateTrafficMirrorFilterRule
  where
  type
    Rs CreateTrafficMirrorFilterRule =
      CreateTrafficMirrorFilterRuleResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          CreateTrafficMirrorFilterRuleResponse'
            Prelude.<$> (x Prelude..@? "clientToken")
            Prelude.<*> (x Prelude..@? "trafficMirrorFilterRule")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    CreateTrafficMirrorFilterRule

instance Prelude.NFData CreateTrafficMirrorFilterRule

instance
  Prelude.ToHeaders
    CreateTrafficMirrorFilterRule
  where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath CreateTrafficMirrorFilterRule where
  toPath = Prelude.const "/"

instance
  Prelude.ToQuery
    CreateTrafficMirrorFilterRule
  where
  toQuery CreateTrafficMirrorFilterRule' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ( "CreateTrafficMirrorFilterRule" ::
                         Prelude.ByteString
                     ),
        "Version"
          Prelude.=: ("2016-11-15" :: Prelude.ByteString),
        "DryRun" Prelude.=: dryRun,
        "SourcePortRange" Prelude.=: sourcePortRange,
        "Protocol" Prelude.=: protocol,
        "Description" Prelude.=: description,
        "ClientToken" Prelude.=: clientToken,
        "DestinationPortRange"
          Prelude.=: destinationPortRange,
        "TrafficMirrorFilterId"
          Prelude.=: trafficMirrorFilterId,
        "TrafficDirection" Prelude.=: trafficDirection,
        "RuleNumber" Prelude.=: ruleNumber,
        "RuleAction" Prelude.=: ruleAction,
        "DestinationCidrBlock"
          Prelude.=: destinationCidrBlock,
        "SourceCidrBlock" Prelude.=: sourceCidrBlock
      ]

-- | /See:/ 'newCreateTrafficMirrorFilterRuleResponse' smart constructor.
data CreateTrafficMirrorFilterRuleResponse = CreateTrafficMirrorFilterRuleResponse'
  { -- | Unique, case-sensitive identifier that you provide to ensure the
    -- idempotency of the request. For more information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency>.
    clientToken :: Prelude.Maybe Prelude.Text,
    -- | The Traffic Mirror rule.
    trafficMirrorFilterRule :: Prelude.Maybe TrafficMirrorFilterRule,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateTrafficMirrorFilterRuleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'createTrafficMirrorFilterRuleResponse_clientToken' - Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency>.
--
-- 'trafficMirrorFilterRule', 'createTrafficMirrorFilterRuleResponse_trafficMirrorFilterRule' - The Traffic Mirror rule.
--
-- 'httpStatus', 'createTrafficMirrorFilterRuleResponse_httpStatus' - The response's http status code.
newCreateTrafficMirrorFilterRuleResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateTrafficMirrorFilterRuleResponse
newCreateTrafficMirrorFilterRuleResponse pHttpStatus_ =
  CreateTrafficMirrorFilterRuleResponse'
    { clientToken =
        Prelude.Nothing,
      trafficMirrorFilterRule =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Unique, case-sensitive identifier that you provide to ensure the
-- idempotency of the request. For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html How to Ensure Idempotency>.
createTrafficMirrorFilterRuleResponse_clientToken :: Lens.Lens' CreateTrafficMirrorFilterRuleResponse (Prelude.Maybe Prelude.Text)
createTrafficMirrorFilterRuleResponse_clientToken = Lens.lens (\CreateTrafficMirrorFilterRuleResponse' {clientToken} -> clientToken) (\s@CreateTrafficMirrorFilterRuleResponse' {} a -> s {clientToken = a} :: CreateTrafficMirrorFilterRuleResponse)

-- | The Traffic Mirror rule.
createTrafficMirrorFilterRuleResponse_trafficMirrorFilterRule :: Lens.Lens' CreateTrafficMirrorFilterRuleResponse (Prelude.Maybe TrafficMirrorFilterRule)
createTrafficMirrorFilterRuleResponse_trafficMirrorFilterRule = Lens.lens (\CreateTrafficMirrorFilterRuleResponse' {trafficMirrorFilterRule} -> trafficMirrorFilterRule) (\s@CreateTrafficMirrorFilterRuleResponse' {} a -> s {trafficMirrorFilterRule = a} :: CreateTrafficMirrorFilterRuleResponse)

-- | The response's http status code.
createTrafficMirrorFilterRuleResponse_httpStatus :: Lens.Lens' CreateTrafficMirrorFilterRuleResponse Prelude.Int
createTrafficMirrorFilterRuleResponse_httpStatus = Lens.lens (\CreateTrafficMirrorFilterRuleResponse' {httpStatus} -> httpStatus) (\s@CreateTrafficMirrorFilterRuleResponse' {} a -> s {httpStatus = a} :: CreateTrafficMirrorFilterRuleResponse)

instance
  Prelude.NFData
    CreateTrafficMirrorFilterRuleResponse
