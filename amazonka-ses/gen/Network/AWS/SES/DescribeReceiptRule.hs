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
-- Module      : Network.AWS.SES.DescribeReceiptRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the details of the specified receipt rule.
--
-- For information about setting up receipt rules, see the
-- <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-receipt-rules.html Amazon SES Developer Guide>.
--
-- You can execute this operation no more than once per second.
module Network.AWS.SES.DescribeReceiptRule
  ( -- * Creating a Request
    DescribeReceiptRule (..),
    newDescribeReceiptRule,

    -- * Request Lenses
    describeReceiptRule_ruleSetName,
    describeReceiptRule_ruleName,

    -- * Destructuring the Response
    DescribeReceiptRuleResponse (..),
    newDescribeReceiptRuleResponse,

    -- * Response Lenses
    describeReceiptRuleResponse_rule,
    describeReceiptRuleResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SES.Types

-- | Represents a request to return the details of a receipt rule. You use
-- receipt rules to receive email with Amazon SES. For more information,
-- see the
-- <https://docs.aws.amazon.com/ses/latest/DeveloperGuide/receiving-email-concepts.html Amazon SES Developer Guide>.
--
-- /See:/ 'newDescribeReceiptRule' smart constructor.
data DescribeReceiptRule = DescribeReceiptRule'
  { -- | The name of the receipt rule set that the receipt rule belongs to.
    ruleSetName :: Prelude.Text,
    -- | The name of the receipt rule.
    ruleName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeReceiptRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ruleSetName', 'describeReceiptRule_ruleSetName' - The name of the receipt rule set that the receipt rule belongs to.
--
-- 'ruleName', 'describeReceiptRule_ruleName' - The name of the receipt rule.
newDescribeReceiptRule ::
  -- | 'ruleSetName'
  Prelude.Text ->
  -- | 'ruleName'
  Prelude.Text ->
  DescribeReceiptRule
newDescribeReceiptRule pRuleSetName_ pRuleName_ =
  DescribeReceiptRule'
    { ruleSetName = pRuleSetName_,
      ruleName = pRuleName_
    }

-- | The name of the receipt rule set that the receipt rule belongs to.
describeReceiptRule_ruleSetName :: Lens.Lens' DescribeReceiptRule Prelude.Text
describeReceiptRule_ruleSetName = Lens.lens (\DescribeReceiptRule' {ruleSetName} -> ruleSetName) (\s@DescribeReceiptRule' {} a -> s {ruleSetName = a} :: DescribeReceiptRule)

-- | The name of the receipt rule.
describeReceiptRule_ruleName :: Lens.Lens' DescribeReceiptRule Prelude.Text
describeReceiptRule_ruleName = Lens.lens (\DescribeReceiptRule' {ruleName} -> ruleName) (\s@DescribeReceiptRule' {} a -> s {ruleName = a} :: DescribeReceiptRule)

instance Prelude.AWSRequest DescribeReceiptRule where
  type
    Rs DescribeReceiptRule =
      DescribeReceiptRuleResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DescribeReceiptRuleResult"
      ( \s h x ->
          DescribeReceiptRuleResponse'
            Prelude.<$> (x Prelude..@? "Rule")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeReceiptRule

instance Prelude.NFData DescribeReceiptRule

instance Prelude.ToHeaders DescribeReceiptRule where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath DescribeReceiptRule where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DescribeReceiptRule where
  toQuery DescribeReceiptRule' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("DescribeReceiptRule" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2010-12-01" :: Prelude.ByteString),
        "RuleSetName" Prelude.=: ruleSetName,
        "RuleName" Prelude.=: ruleName
      ]

-- | Represents the details of a receipt rule.
--
-- /See:/ 'newDescribeReceiptRuleResponse' smart constructor.
data DescribeReceiptRuleResponse = DescribeReceiptRuleResponse'
  { -- | A data structure that contains the specified receipt rule\'s name,
    -- actions, recipients, domains, enabled status, scan status, and Transport
    -- Layer Security (TLS) policy.
    rule :: Prelude.Maybe ReceiptRule,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeReceiptRuleResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'rule', 'describeReceiptRuleResponse_rule' - A data structure that contains the specified receipt rule\'s name,
-- actions, recipients, domains, enabled status, scan status, and Transport
-- Layer Security (TLS) policy.
--
-- 'httpStatus', 'describeReceiptRuleResponse_httpStatus' - The response's http status code.
newDescribeReceiptRuleResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeReceiptRuleResponse
newDescribeReceiptRuleResponse pHttpStatus_ =
  DescribeReceiptRuleResponse'
    { rule =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A data structure that contains the specified receipt rule\'s name,
-- actions, recipients, domains, enabled status, scan status, and Transport
-- Layer Security (TLS) policy.
describeReceiptRuleResponse_rule :: Lens.Lens' DescribeReceiptRuleResponse (Prelude.Maybe ReceiptRule)
describeReceiptRuleResponse_rule = Lens.lens (\DescribeReceiptRuleResponse' {rule} -> rule) (\s@DescribeReceiptRuleResponse' {} a -> s {rule = a} :: DescribeReceiptRuleResponse)

-- | The response's http status code.
describeReceiptRuleResponse_httpStatus :: Lens.Lens' DescribeReceiptRuleResponse Prelude.Int
describeReceiptRuleResponse_httpStatus = Lens.lens (\DescribeReceiptRuleResponse' {httpStatus} -> httpStatus) (\s@DescribeReceiptRuleResponse' {} a -> s {httpStatus = a} :: DescribeReceiptRuleResponse)

instance Prelude.NFData DescribeReceiptRuleResponse
