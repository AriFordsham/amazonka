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
-- Module      : Network.AWS.CodeCommit.UpdateApprovalRuleTemplateContent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates the content of an approval rule template. You can change the
-- number of required approvals, the membership of the approval rule, and
-- whether an approval pool is defined.
module Network.AWS.CodeCommit.UpdateApprovalRuleTemplateContent
  ( -- * Creating a Request
    UpdateApprovalRuleTemplateContent (..),
    newUpdateApprovalRuleTemplateContent,

    -- * Request Lenses
    updateApprovalRuleTemplateContent_existingRuleContentSha256,
    updateApprovalRuleTemplateContent_approvalRuleTemplateName,
    updateApprovalRuleTemplateContent_newRuleContent,

    -- * Destructuring the Response
    UpdateApprovalRuleTemplateContentResponse (..),
    newUpdateApprovalRuleTemplateContentResponse,

    -- * Response Lenses
    updateApprovalRuleTemplateContentResponse_httpStatus,
    updateApprovalRuleTemplateContentResponse_approvalRuleTemplate,
  )
where

import Network.AWS.CodeCommit.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUpdateApprovalRuleTemplateContent' smart constructor.
data UpdateApprovalRuleTemplateContent = UpdateApprovalRuleTemplateContent'
  { -- | The SHA-256 hash signature for the content of the approval rule. You can
    -- retrieve this information by using GetPullRequest.
    existingRuleContentSha256 :: Prelude.Maybe Prelude.Text,
    -- | The name of the approval rule template where you want to update the
    -- content of the rule.
    approvalRuleTemplateName :: Prelude.Text,
    -- | The content that replaces the existing content of the rule. Content
    -- statements must be complete. You cannot provide only the changes.
    newRuleContent' :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'UpdateApprovalRuleTemplateContent' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'existingRuleContentSha256', 'updateApprovalRuleTemplateContent_existingRuleContentSha256' - The SHA-256 hash signature for the content of the approval rule. You can
-- retrieve this information by using GetPullRequest.
--
-- 'approvalRuleTemplateName', 'updateApprovalRuleTemplateContent_approvalRuleTemplateName' - The name of the approval rule template where you want to update the
-- content of the rule.
--
-- 'newRuleContent'', 'updateApprovalRuleTemplateContent_newRuleContent' - The content that replaces the existing content of the rule. Content
-- statements must be complete. You cannot provide only the changes.
newUpdateApprovalRuleTemplateContent ::
  -- | 'approvalRuleTemplateName'
  Prelude.Text ->
  -- | 'newRuleContent''
  Prelude.Text ->
  UpdateApprovalRuleTemplateContent
newUpdateApprovalRuleTemplateContent
  pApprovalRuleTemplateName_
  pNewRuleContent_ =
    UpdateApprovalRuleTemplateContent'
      { existingRuleContentSha256 =
          Prelude.Nothing,
        approvalRuleTemplateName =
          pApprovalRuleTemplateName_,
        newRuleContent' = pNewRuleContent_
      }

-- | The SHA-256 hash signature for the content of the approval rule. You can
-- retrieve this information by using GetPullRequest.
updateApprovalRuleTemplateContent_existingRuleContentSha256 :: Lens.Lens' UpdateApprovalRuleTemplateContent (Prelude.Maybe Prelude.Text)
updateApprovalRuleTemplateContent_existingRuleContentSha256 = Lens.lens (\UpdateApprovalRuleTemplateContent' {existingRuleContentSha256} -> existingRuleContentSha256) (\s@UpdateApprovalRuleTemplateContent' {} a -> s {existingRuleContentSha256 = a} :: UpdateApprovalRuleTemplateContent)

-- | The name of the approval rule template where you want to update the
-- content of the rule.
updateApprovalRuleTemplateContent_approvalRuleTemplateName :: Lens.Lens' UpdateApprovalRuleTemplateContent Prelude.Text
updateApprovalRuleTemplateContent_approvalRuleTemplateName = Lens.lens (\UpdateApprovalRuleTemplateContent' {approvalRuleTemplateName} -> approvalRuleTemplateName) (\s@UpdateApprovalRuleTemplateContent' {} a -> s {approvalRuleTemplateName = a} :: UpdateApprovalRuleTemplateContent)

-- | The content that replaces the existing content of the rule. Content
-- statements must be complete. You cannot provide only the changes.
updateApprovalRuleTemplateContent_newRuleContent :: Lens.Lens' UpdateApprovalRuleTemplateContent Prelude.Text
updateApprovalRuleTemplateContent_newRuleContent = Lens.lens (\UpdateApprovalRuleTemplateContent' {newRuleContent'} -> newRuleContent') (\s@UpdateApprovalRuleTemplateContent' {} a -> s {newRuleContent' = a} :: UpdateApprovalRuleTemplateContent)

instance
  Prelude.AWSRequest
    UpdateApprovalRuleTemplateContent
  where
  type
    Rs UpdateApprovalRuleTemplateContent =
      UpdateApprovalRuleTemplateContentResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateApprovalRuleTemplateContentResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
              Prelude.<*> (x Prelude..:> "approvalRuleTemplate")
      )

instance
  Prelude.Hashable
    UpdateApprovalRuleTemplateContent

instance
  Prelude.NFData
    UpdateApprovalRuleTemplateContent

instance
  Prelude.ToHeaders
    UpdateApprovalRuleTemplateContent
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "CodeCommit_20150413.UpdateApprovalRuleTemplateContent" ::
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
    UpdateApprovalRuleTemplateContent
  where
  toJSON UpdateApprovalRuleTemplateContent' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("existingRuleContentSha256" Prelude..=)
              Prelude.<$> existingRuleContentSha256,
            Prelude.Just
              ( "approvalRuleTemplateName"
                  Prelude..= approvalRuleTemplateName
              ),
            Prelude.Just
              ("newRuleContent" Prelude..= newRuleContent')
          ]
      )

instance
  Prelude.ToPath
    UpdateApprovalRuleTemplateContent
  where
  toPath = Prelude.const "/"

instance
  Prelude.ToQuery
    UpdateApprovalRuleTemplateContent
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateApprovalRuleTemplateContentResponse' smart constructor.
data UpdateApprovalRuleTemplateContentResponse = UpdateApprovalRuleTemplateContentResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    approvalRuleTemplate :: ApprovalRuleTemplate
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'UpdateApprovalRuleTemplateContentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'updateApprovalRuleTemplateContentResponse_httpStatus' - The response's http status code.
--
-- 'approvalRuleTemplate', 'updateApprovalRuleTemplateContentResponse_approvalRuleTemplate' - Undocumented member.
newUpdateApprovalRuleTemplateContentResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'approvalRuleTemplate'
  ApprovalRuleTemplate ->
  UpdateApprovalRuleTemplateContentResponse
newUpdateApprovalRuleTemplateContentResponse
  pHttpStatus_
  pApprovalRuleTemplate_ =
    UpdateApprovalRuleTemplateContentResponse'
      { httpStatus =
          pHttpStatus_,
        approvalRuleTemplate =
          pApprovalRuleTemplate_
      }

-- | The response's http status code.
updateApprovalRuleTemplateContentResponse_httpStatus :: Lens.Lens' UpdateApprovalRuleTemplateContentResponse Prelude.Int
updateApprovalRuleTemplateContentResponse_httpStatus = Lens.lens (\UpdateApprovalRuleTemplateContentResponse' {httpStatus} -> httpStatus) (\s@UpdateApprovalRuleTemplateContentResponse' {} a -> s {httpStatus = a} :: UpdateApprovalRuleTemplateContentResponse)

-- | Undocumented member.
updateApprovalRuleTemplateContentResponse_approvalRuleTemplate :: Lens.Lens' UpdateApprovalRuleTemplateContentResponse ApprovalRuleTemplate
updateApprovalRuleTemplateContentResponse_approvalRuleTemplate = Lens.lens (\UpdateApprovalRuleTemplateContentResponse' {approvalRuleTemplate} -> approvalRuleTemplate) (\s@UpdateApprovalRuleTemplateContentResponse' {} a -> s {approvalRuleTemplate = a} :: UpdateApprovalRuleTemplateContentResponse)

instance
  Prelude.NFData
    UpdateApprovalRuleTemplateContentResponse
