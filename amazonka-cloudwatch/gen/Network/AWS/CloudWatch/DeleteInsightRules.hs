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
-- Module      : Network.AWS.CloudWatch.DeleteInsightRules
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Permanently deletes the specified Contributor Insights rules.
--
-- If you create a rule, delete it, and then re-create it with the same
-- name, historical data from the first time the rule was created might not
-- be available.
module Network.AWS.CloudWatch.DeleteInsightRules
  ( -- * Creating a Request
    DeleteInsightRules (..),
    newDeleteInsightRules,

    -- * Request Lenses
    deleteInsightRules_ruleNames,

    -- * Destructuring the Response
    DeleteInsightRulesResponse (..),
    newDeleteInsightRulesResponse,

    -- * Response Lenses
    deleteInsightRulesResponse_failures,
    deleteInsightRulesResponse_httpStatus,
  )
where

import Network.AWS.CloudWatch.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteInsightRules' smart constructor.
data DeleteInsightRules = DeleteInsightRules'
  { -- | An array of the rule names to delete. If you need to find out the names
    -- of your rules, use
    -- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeInsightRules.html DescribeInsightRules>.
    ruleNames :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DeleteInsightRules' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ruleNames', 'deleteInsightRules_ruleNames' - An array of the rule names to delete. If you need to find out the names
-- of your rules, use
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeInsightRules.html DescribeInsightRules>.
newDeleteInsightRules ::
  DeleteInsightRules
newDeleteInsightRules =
  DeleteInsightRules' {ruleNames = Prelude.mempty}

-- | An array of the rule names to delete. If you need to find out the names
-- of your rules, use
-- <https://docs.aws.amazon.com/AmazonCloudWatch/latest/APIReference/API_DescribeInsightRules.html DescribeInsightRules>.
deleteInsightRules_ruleNames :: Lens.Lens' DeleteInsightRules [Prelude.Text]
deleteInsightRules_ruleNames = Lens.lens (\DeleteInsightRules' {ruleNames} -> ruleNames) (\s@DeleteInsightRules' {} a -> s {ruleNames = a} :: DeleteInsightRules) Prelude.. Prelude._Coerce

instance Prelude.AWSRequest DeleteInsightRules where
  type
    Rs DeleteInsightRules =
      DeleteInsightRulesResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DeleteInsightRulesResult"
      ( \s h x ->
          DeleteInsightRulesResponse'
            Prelude.<$> ( x Prelude..@? "Failures" Prelude..!@ Prelude.mempty
                            Prelude.>>= Prelude.may (Prelude.parseXMLList "member")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteInsightRules

instance Prelude.NFData DeleteInsightRules

instance Prelude.ToHeaders DeleteInsightRules where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath DeleteInsightRules where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DeleteInsightRules where
  toQuery DeleteInsightRules' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("DeleteInsightRules" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2010-08-01" :: Prelude.ByteString),
        "RuleNames"
          Prelude.=: Prelude.toQueryList "member" ruleNames
      ]

-- | /See:/ 'newDeleteInsightRulesResponse' smart constructor.
data DeleteInsightRulesResponse = DeleteInsightRulesResponse'
  { -- | An array listing the rules that could not be deleted. You cannot delete
    -- built-in rules.
    failures :: Prelude.Maybe [PartialFailure],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DeleteInsightRulesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'failures', 'deleteInsightRulesResponse_failures' - An array listing the rules that could not be deleted. You cannot delete
-- built-in rules.
--
-- 'httpStatus', 'deleteInsightRulesResponse_httpStatus' - The response's http status code.
newDeleteInsightRulesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteInsightRulesResponse
newDeleteInsightRulesResponse pHttpStatus_ =
  DeleteInsightRulesResponse'
    { failures =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array listing the rules that could not be deleted. You cannot delete
-- built-in rules.
deleteInsightRulesResponse_failures :: Lens.Lens' DeleteInsightRulesResponse (Prelude.Maybe [PartialFailure])
deleteInsightRulesResponse_failures = Lens.lens (\DeleteInsightRulesResponse' {failures} -> failures) (\s@DeleteInsightRulesResponse' {} a -> s {failures = a} :: DeleteInsightRulesResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
deleteInsightRulesResponse_httpStatus :: Lens.Lens' DeleteInsightRulesResponse Prelude.Int
deleteInsightRulesResponse_httpStatus = Lens.lens (\DeleteInsightRulesResponse' {httpStatus} -> httpStatus) (\s@DeleteInsightRulesResponse' {} a -> s {httpStatus = a} :: DeleteInsightRulesResponse)

instance Prelude.NFData DeleteInsightRulesResponse
