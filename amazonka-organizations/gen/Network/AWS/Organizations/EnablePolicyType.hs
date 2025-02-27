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
-- Module      : Network.AWS.Organizations.EnablePolicyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables a policy type in a root. After you enable a policy type in a
-- root, you can attach policies of that type to the root, any
-- organizational unit (OU), or account in that root. You can undo this by
-- using the DisablePolicyType operation.
--
-- This is an asynchronous request that AWS performs in the background. AWS
-- recommends that you first use ListRoots to see the status of policy
-- types for a specified root, and then use this operation.
--
-- This operation can be called only from the organization\'s management
-- account.
--
-- You can enable a policy type in a root only if that policy type is
-- available in the organization. To view the status of available policy
-- types in the organization, use DescribeOrganization.
module Network.AWS.Organizations.EnablePolicyType
  ( -- * Creating a Request
    EnablePolicyType (..),
    newEnablePolicyType,

    -- * Request Lenses
    enablePolicyType_rootId,
    enablePolicyType_policyType,

    -- * Destructuring the Response
    EnablePolicyTypeResponse (..),
    newEnablePolicyTypeResponse,

    -- * Response Lenses
    enablePolicyTypeResponse_root,
    enablePolicyTypeResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Organizations.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newEnablePolicyType' smart constructor.
data EnablePolicyType = EnablePolicyType'
  { -- | The unique identifier (ID) of the root in which you want to enable a
    -- policy type. You can get the ID from the ListRoots operation.
    --
    -- The <http://wikipedia.org/wiki/regex regex pattern> for a root ID string
    -- requires \"r-\" followed by from 4 to 32 lowercase letters or digits.
    rootId :: Prelude.Text,
    -- | The policy type that you want to enable. You can specify one of the
    -- following values:
    --
    -- -   <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html AISERVICES_OPT_OUT_POLICY>
    --
    -- -   <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html BACKUP_POLICY>
    --
    -- -   <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html SERVICE_CONTROL_POLICY>
    --
    -- -   <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html TAG_POLICY>
    policyType :: PolicyType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'EnablePolicyType' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'rootId', 'enablePolicyType_rootId' - The unique identifier (ID) of the root in which you want to enable a
-- policy type. You can get the ID from the ListRoots operation.
--
-- The <http://wikipedia.org/wiki/regex regex pattern> for a root ID string
-- requires \"r-\" followed by from 4 to 32 lowercase letters or digits.
--
-- 'policyType', 'enablePolicyType_policyType' - The policy type that you want to enable. You can specify one of the
-- following values:
--
-- -   <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html AISERVICES_OPT_OUT_POLICY>
--
-- -   <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html BACKUP_POLICY>
--
-- -   <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html SERVICE_CONTROL_POLICY>
--
-- -   <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html TAG_POLICY>
newEnablePolicyType ::
  -- | 'rootId'
  Prelude.Text ->
  -- | 'policyType'
  PolicyType ->
  EnablePolicyType
newEnablePolicyType pRootId_ pPolicyType_ =
  EnablePolicyType'
    { rootId = pRootId_,
      policyType = pPolicyType_
    }

-- | The unique identifier (ID) of the root in which you want to enable a
-- policy type. You can get the ID from the ListRoots operation.
--
-- The <http://wikipedia.org/wiki/regex regex pattern> for a root ID string
-- requires \"r-\" followed by from 4 to 32 lowercase letters or digits.
enablePolicyType_rootId :: Lens.Lens' EnablePolicyType Prelude.Text
enablePolicyType_rootId = Lens.lens (\EnablePolicyType' {rootId} -> rootId) (\s@EnablePolicyType' {} a -> s {rootId = a} :: EnablePolicyType)

-- | The policy type that you want to enable. You can specify one of the
-- following values:
--
-- -   <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_ai-opt-out.html AISERVICES_OPT_OUT_POLICY>
--
-- -   <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_backup.html BACKUP_POLICY>
--
-- -   <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_scp.html SERVICE_CONTROL_POLICY>
--
-- -   <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html TAG_POLICY>
enablePolicyType_policyType :: Lens.Lens' EnablePolicyType PolicyType
enablePolicyType_policyType = Lens.lens (\EnablePolicyType' {policyType} -> policyType) (\s@EnablePolicyType' {} a -> s {policyType = a} :: EnablePolicyType)

instance Prelude.AWSRequest EnablePolicyType where
  type Rs EnablePolicyType = EnablePolicyTypeResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          EnablePolicyTypeResponse'
            Prelude.<$> (x Prelude..?> "Root")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable EnablePolicyType

instance Prelude.NFData EnablePolicyType

instance Prelude.ToHeaders EnablePolicyType where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "AWSOrganizationsV20161128.EnablePolicyType" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON EnablePolicyType where
  toJSON EnablePolicyType' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just ("RootId" Prelude..= rootId),
            Prelude.Just ("PolicyType" Prelude..= policyType)
          ]
      )

instance Prelude.ToPath EnablePolicyType where
  toPath = Prelude.const "/"

instance Prelude.ToQuery EnablePolicyType where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newEnablePolicyTypeResponse' smart constructor.
data EnablePolicyTypeResponse = EnablePolicyTypeResponse'
  { -- | A structure that shows the root with the updated list of enabled policy
    -- types.
    root :: Prelude.Maybe Root,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'EnablePolicyTypeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'root', 'enablePolicyTypeResponse_root' - A structure that shows the root with the updated list of enabled policy
-- types.
--
-- 'httpStatus', 'enablePolicyTypeResponse_httpStatus' - The response's http status code.
newEnablePolicyTypeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  EnablePolicyTypeResponse
newEnablePolicyTypeResponse pHttpStatus_ =
  EnablePolicyTypeResponse'
    { root = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A structure that shows the root with the updated list of enabled policy
-- types.
enablePolicyTypeResponse_root :: Lens.Lens' EnablePolicyTypeResponse (Prelude.Maybe Root)
enablePolicyTypeResponse_root = Lens.lens (\EnablePolicyTypeResponse' {root} -> root) (\s@EnablePolicyTypeResponse' {} a -> s {root = a} :: EnablePolicyTypeResponse)

-- | The response's http status code.
enablePolicyTypeResponse_httpStatus :: Lens.Lens' EnablePolicyTypeResponse Prelude.Int
enablePolicyTypeResponse_httpStatus = Lens.lens (\EnablePolicyTypeResponse' {httpStatus} -> httpStatus) (\s@EnablePolicyTypeResponse' {} a -> s {httpStatus = a} :: EnablePolicyTypeResponse)

instance Prelude.NFData EnablePolicyTypeResponse
