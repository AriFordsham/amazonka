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
-- Module      : Network.AWS.Organizations.CreateGovCloudAccount
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This action is available if all of the following are true:
--
-- -   You\'re authorized to create accounts in the AWS GovCloud (US)
--     Region. For more information on the AWS GovCloud (US) Region, see
--     the
--     <http://docs.aws.amazon.com/govcloud-us/latest/UserGuide/welcome.html AWS GovCloud User Guide.>
--
-- -   You already have an account in the AWS GovCloud (US) Region that is
--     paired with a management account of an organization in the
--     commercial Region.
--
-- -   You call this action from the management account of your
--     organization in the commercial Region.
--
-- -   You have the @organizations:CreateGovCloudAccount@ permission.
--
-- AWS Organizations automatically creates the required service-linked role
-- named @AWSServiceRoleForOrganizations@. For more information, see
-- <http://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html#orgs_integrate_services-using_slrs AWS Organizations and Service-Linked Roles>
-- in the /AWS Organizations User Guide./
--
-- AWS automatically enables AWS CloudTrail for AWS GovCloud (US) accounts,
-- but you should also do the following:
--
-- -   Verify that AWS CloudTrail is enabled to store logs.
--
-- -   Create an S3 bucket for AWS CloudTrail log storage.
--
--     For more information, see
--     <http://docs.aws.amazon.com/govcloud-us/latest/UserGuide/verifying-cloudtrail.html Verifying AWS CloudTrail Is Enabled>
--     in the /AWS GovCloud User Guide/.
--
-- If the request includes tags, then the requester must have the
-- @organizations:TagResource@ permission. The tags are attached to the
-- commercial account associated with the GovCloud account, rather than the
-- GovCloud account itself. To add tags to the GovCloud account, call the
-- TagResource operation in the GovCloud Region after the new GovCloud
-- account exists.
--
-- You call this action from the management account of your organization in
-- the commercial Region to create a standalone AWS account in the AWS
-- GovCloud (US) Region. After the account is created, the management
-- account of an organization in the AWS GovCloud (US) Region can invite it
-- to that organization. For more information on inviting standalone
-- accounts in the AWS GovCloud (US) to join an organization, see
-- <http://docs.aws.amazon.com/govcloud-us/latest/UserGuide/govcloud-organizations.html AWS Organizations>
-- in the /AWS GovCloud User Guide./
--
-- Calling @CreateGovCloudAccount@ is an asynchronous request that AWS
-- performs in the background. Because @CreateGovCloudAccount@ operates
-- asynchronously, it can return a successful completion message even
-- though account initialization might still be in progress. You might need
-- to wait a few minutes before you can successfully access the account. To
-- check the status of the request, do one of the following:
--
-- -   Use the @OperationId@ response element from this operation to
--     provide as a parameter to the DescribeCreateAccountStatus operation.
--
-- -   Check the AWS CloudTrail log for the @CreateAccountResult@ event.
--     For information on using AWS CloudTrail with Organizations, see
--     <http://docs.aws.amazon.com/organizations/latest/userguide/orgs_monitoring.html Monitoring the Activity in Your Organization>
--     in the /AWS Organizations User Guide./
--
-- When you call the @CreateGovCloudAccount@ action, you create two
-- accounts: a standalone account in the AWS GovCloud (US) Region and an
-- associated account in the commercial Region for billing and support
-- purposes. The account in the commercial Region is automatically a member
-- of the organization whose credentials made the request. Both accounts
-- are associated with the same email address.
--
-- A role is created in the new account in the commercial Region that
-- allows the management account in the organization in the commercial
-- Region to assume it. An AWS GovCloud (US) account is then created and
-- associated with the commercial account that you just created. A role is
-- also created in the new AWS GovCloud (US) account that can be assumed by
-- the AWS GovCloud (US) account that is associated with the management
-- account of the commercial organization. For more information and to view
-- a diagram that explains how account access works, see
-- <http://docs.aws.amazon.com/govcloud-us/latest/UserGuide/govcloud-organizations.html AWS Organizations>
-- in the /AWS GovCloud User Guide./
--
-- For more information about creating accounts, see
-- <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_create.html Creating an AWS Account in Your Organization>
-- in the /AWS Organizations User Guide./
--
-- -   When you create an account in an organization using the AWS
--     Organizations console, API, or CLI commands, the information
--     required for the account to operate as a standalone account is /not/
--     automatically collected. This includes a payment method and signing
--     the end user license agreement (EULA). If you must remove an account
--     from your organization later, you can do so only after you provide
--     the missing information. Follow the steps at
--     <http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_remove.html#leave-without-all-info To leave an organization as a member account>
--     in the /AWS Organizations User Guide./
--
-- -   If you get an exception that indicates that you exceeded your
--     account limits for the organization, contact
--     <https://console.aws.amazon.com/support/home#/ AWS Support>.
--
-- -   If you get an exception that indicates that the operation failed
--     because your organization is still initializing, wait one hour and
--     then try again. If the error persists, contact
--     <https://console.aws.amazon.com/support/home#/ AWS Support>.
--
-- -   Using @CreateGovCloudAccount@ to create multiple temporary accounts
--     isn\'t recommended. You can only close an account from the AWS
--     Billing and Cost Management console, and you must be signed in as
--     the root user. For information on the requirements and process for
--     closing an account, see
--     <http://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_close.html Closing an AWS Account>
--     in the /AWS Organizations User Guide/.
--
-- When you create a member account with this operation, you can choose
-- whether to create the account with the __IAM User and Role Access to
-- Billing Information__ switch enabled. If you enable it, IAM users and
-- roles that have appropriate permissions can view billing information for
-- the account. If you disable it, only the account root user can access
-- billing information. For information about how to disable this switch
-- for an account, see
-- <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html Granting Access to Your Billing Information and Tools>.
module Network.AWS.Organizations.CreateGovCloudAccount
  ( -- * Creating a Request
    CreateGovCloudAccount (..),
    newCreateGovCloudAccount,

    -- * Request Lenses
    createGovCloudAccount_roleName,
    createGovCloudAccount_iamUserAccessToBilling,
    createGovCloudAccount_tags,
    createGovCloudAccount_email,
    createGovCloudAccount_accountName,

    -- * Destructuring the Response
    CreateGovCloudAccountResponse (..),
    newCreateGovCloudAccountResponse,

    -- * Response Lenses
    createGovCloudAccountResponse_createAccountStatus,
    createGovCloudAccountResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Organizations.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newCreateGovCloudAccount' smart constructor.
data CreateGovCloudAccount = CreateGovCloudAccount'
  { -- | (Optional)
    --
    -- The name of an IAM role that AWS Organizations automatically
    -- preconfigures in the new member accounts in both the AWS GovCloud (US)
    -- Region and in the commercial Region. This role trusts the management
    -- account, allowing users in the management account to assume the role, as
    -- permitted by the management account administrator. The role has
    -- administrator permissions in the new member account.
    --
    -- If you don\'t specify this parameter, the role name defaults to
    -- @OrganizationAccountAccessRole@.
    --
    -- For more information about how to use this role to access the member
    -- account, see
    -- <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html#orgs_manage_accounts_create-cross-account-role Accessing and Administering the Member Accounts in Your Organization>
    -- in the /AWS Organizations User Guide/ and steps 2 and 3 in
    -- <https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html Tutorial: Delegate Access Across AWS Accounts Using IAM Roles>
    -- in the /IAM User Guide./
    --
    -- The <http://wikipedia.org/wiki/regex regex pattern> that is used to
    -- validate this parameter. The pattern can include uppercase letters,
    -- lowercase letters, digits with no spaces, and any of the following
    -- characters: =,.\@-
    roleName :: Prelude.Maybe Prelude.Text,
    -- | If set to @ALLOW@, the new linked account in the commercial Region
    -- enables IAM users to access account billing information /if/ they have
    -- the required permissions. If set to @DENY@, only the root user of the
    -- new account can access account billing information. For more
    -- information, see
    -- <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate Activating Access to the Billing and Cost Management Console>
    -- in the /AWS Billing and Cost Management User Guide./
    --
    -- If you don\'t specify this parameter, the value defaults to @ALLOW@, and
    -- IAM users and roles with the required permissions can access billing
    -- information for the new account.
    iamUserAccessToBilling :: Prelude.Maybe IAMUserAccessToBilling,
    -- | A list of tags that you want to attach to the newly created account.
    -- These tags are attached to the commercial account associated with the
    -- GovCloud account, and not to the GovCloud account itself. To add tags to
    -- the actual GovCloud account, call the TagResource operation in the
    -- GovCloud region after the new GovCloud account exists.
    --
    -- For each tag in the list, you must specify both a tag key and a value.
    -- You can set the value to an empty string, but you can\'t set it to
    -- @null@. For more information about tagging, see
    -- <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html Tagging AWS Organizations resources>
    -- in the AWS Organizations User Guide.
    --
    -- If any one of the tags is invalid or if you exceed the allowed number of
    -- tags for an account, then the entire request fails and the account is
    -- not created.
    tags :: Prelude.Maybe [Tag],
    -- | The email address of the owner to assign to the new member account in
    -- the commercial Region. This email address must not already be associated
    -- with another AWS account. You must use a valid email address to complete
    -- account creation. You can\'t access the root user of the account or
    -- remove an account that was created with an invalid email address. Like
    -- all request parameters for @CreateGovCloudAccount@, the request for the
    -- email address for the AWS GovCloud (US) account originates from the
    -- commercial Region, not from the AWS GovCloud (US) Region.
    email :: Prelude.Sensitive Prelude.Text,
    -- | The friendly name of the member account.
    accountName :: Prelude.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateGovCloudAccount' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'roleName', 'createGovCloudAccount_roleName' - (Optional)
--
-- The name of an IAM role that AWS Organizations automatically
-- preconfigures in the new member accounts in both the AWS GovCloud (US)
-- Region and in the commercial Region. This role trusts the management
-- account, allowing users in the management account to assume the role, as
-- permitted by the management account administrator. The role has
-- administrator permissions in the new member account.
--
-- If you don\'t specify this parameter, the role name defaults to
-- @OrganizationAccountAccessRole@.
--
-- For more information about how to use this role to access the member
-- account, see
-- <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html#orgs_manage_accounts_create-cross-account-role Accessing and Administering the Member Accounts in Your Organization>
-- in the /AWS Organizations User Guide/ and steps 2 and 3 in
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html Tutorial: Delegate Access Across AWS Accounts Using IAM Roles>
-- in the /IAM User Guide./
--
-- The <http://wikipedia.org/wiki/regex regex pattern> that is used to
-- validate this parameter. The pattern can include uppercase letters,
-- lowercase letters, digits with no spaces, and any of the following
-- characters: =,.\@-
--
-- 'iamUserAccessToBilling', 'createGovCloudAccount_iamUserAccessToBilling' - If set to @ALLOW@, the new linked account in the commercial Region
-- enables IAM users to access account billing information /if/ they have
-- the required permissions. If set to @DENY@, only the root user of the
-- new account can access account billing information. For more
-- information, see
-- <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate Activating Access to the Billing and Cost Management Console>
-- in the /AWS Billing and Cost Management User Guide./
--
-- If you don\'t specify this parameter, the value defaults to @ALLOW@, and
-- IAM users and roles with the required permissions can access billing
-- information for the new account.
--
-- 'tags', 'createGovCloudAccount_tags' - A list of tags that you want to attach to the newly created account.
-- These tags are attached to the commercial account associated with the
-- GovCloud account, and not to the GovCloud account itself. To add tags to
-- the actual GovCloud account, call the TagResource operation in the
-- GovCloud region after the new GovCloud account exists.
--
-- For each tag in the list, you must specify both a tag key and a value.
-- You can set the value to an empty string, but you can\'t set it to
-- @null@. For more information about tagging, see
-- <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html Tagging AWS Organizations resources>
-- in the AWS Organizations User Guide.
--
-- If any one of the tags is invalid or if you exceed the allowed number of
-- tags for an account, then the entire request fails and the account is
-- not created.
--
-- 'email', 'createGovCloudAccount_email' - The email address of the owner to assign to the new member account in
-- the commercial Region. This email address must not already be associated
-- with another AWS account. You must use a valid email address to complete
-- account creation. You can\'t access the root user of the account or
-- remove an account that was created with an invalid email address. Like
-- all request parameters for @CreateGovCloudAccount@, the request for the
-- email address for the AWS GovCloud (US) account originates from the
-- commercial Region, not from the AWS GovCloud (US) Region.
--
-- 'accountName', 'createGovCloudAccount_accountName' - The friendly name of the member account.
newCreateGovCloudAccount ::
  -- | 'email'
  Prelude.Text ->
  -- | 'accountName'
  Prelude.Text ->
  CreateGovCloudAccount
newCreateGovCloudAccount pEmail_ pAccountName_ =
  CreateGovCloudAccount'
    { roleName = Prelude.Nothing,
      iamUserAccessToBilling = Prelude.Nothing,
      tags = Prelude.Nothing,
      email = Prelude._Sensitive Lens.# pEmail_,
      accountName =
        Prelude._Sensitive Lens.# pAccountName_
    }

-- | (Optional)
--
-- The name of an IAM role that AWS Organizations automatically
-- preconfigures in the new member accounts in both the AWS GovCloud (US)
-- Region and in the commercial Region. This role trusts the management
-- account, allowing users in the management account to assume the role, as
-- permitted by the management account administrator. The role has
-- administrator permissions in the new member account.
--
-- If you don\'t specify this parameter, the role name defaults to
-- @OrganizationAccountAccessRole@.
--
-- For more information about how to use this role to access the member
-- account, see
-- <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html#orgs_manage_accounts_create-cross-account-role Accessing and Administering the Member Accounts in Your Organization>
-- in the /AWS Organizations User Guide/ and steps 2 and 3 in
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html Tutorial: Delegate Access Across AWS Accounts Using IAM Roles>
-- in the /IAM User Guide./
--
-- The <http://wikipedia.org/wiki/regex regex pattern> that is used to
-- validate this parameter. The pattern can include uppercase letters,
-- lowercase letters, digits with no spaces, and any of the following
-- characters: =,.\@-
createGovCloudAccount_roleName :: Lens.Lens' CreateGovCloudAccount (Prelude.Maybe Prelude.Text)
createGovCloudAccount_roleName = Lens.lens (\CreateGovCloudAccount' {roleName} -> roleName) (\s@CreateGovCloudAccount' {} a -> s {roleName = a} :: CreateGovCloudAccount)

-- | If set to @ALLOW@, the new linked account in the commercial Region
-- enables IAM users to access account billing information /if/ they have
-- the required permissions. If set to @DENY@, only the root user of the
-- new account can access account billing information. For more
-- information, see
-- <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate Activating Access to the Billing and Cost Management Console>
-- in the /AWS Billing and Cost Management User Guide./
--
-- If you don\'t specify this parameter, the value defaults to @ALLOW@, and
-- IAM users and roles with the required permissions can access billing
-- information for the new account.
createGovCloudAccount_iamUserAccessToBilling :: Lens.Lens' CreateGovCloudAccount (Prelude.Maybe IAMUserAccessToBilling)
createGovCloudAccount_iamUserAccessToBilling = Lens.lens (\CreateGovCloudAccount' {iamUserAccessToBilling} -> iamUserAccessToBilling) (\s@CreateGovCloudAccount' {} a -> s {iamUserAccessToBilling = a} :: CreateGovCloudAccount)

-- | A list of tags that you want to attach to the newly created account.
-- These tags are attached to the commercial account associated with the
-- GovCloud account, and not to the GovCloud account itself. To add tags to
-- the actual GovCloud account, call the TagResource operation in the
-- GovCloud region after the new GovCloud account exists.
--
-- For each tag in the list, you must specify both a tag key and a value.
-- You can set the value to an empty string, but you can\'t set it to
-- @null@. For more information about tagging, see
-- <https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html Tagging AWS Organizations resources>
-- in the AWS Organizations User Guide.
--
-- If any one of the tags is invalid or if you exceed the allowed number of
-- tags for an account, then the entire request fails and the account is
-- not created.
createGovCloudAccount_tags :: Lens.Lens' CreateGovCloudAccount (Prelude.Maybe [Tag])
createGovCloudAccount_tags = Lens.lens (\CreateGovCloudAccount' {tags} -> tags) (\s@CreateGovCloudAccount' {} a -> s {tags = a} :: CreateGovCloudAccount) Prelude.. Lens.mapping Prelude._Coerce

-- | The email address of the owner to assign to the new member account in
-- the commercial Region. This email address must not already be associated
-- with another AWS account. You must use a valid email address to complete
-- account creation. You can\'t access the root user of the account or
-- remove an account that was created with an invalid email address. Like
-- all request parameters for @CreateGovCloudAccount@, the request for the
-- email address for the AWS GovCloud (US) account originates from the
-- commercial Region, not from the AWS GovCloud (US) Region.
createGovCloudAccount_email :: Lens.Lens' CreateGovCloudAccount Prelude.Text
createGovCloudAccount_email = Lens.lens (\CreateGovCloudAccount' {email} -> email) (\s@CreateGovCloudAccount' {} a -> s {email = a} :: CreateGovCloudAccount) Prelude.. Prelude._Sensitive

-- | The friendly name of the member account.
createGovCloudAccount_accountName :: Lens.Lens' CreateGovCloudAccount Prelude.Text
createGovCloudAccount_accountName = Lens.lens (\CreateGovCloudAccount' {accountName} -> accountName) (\s@CreateGovCloudAccount' {} a -> s {accountName = a} :: CreateGovCloudAccount) Prelude.. Prelude._Sensitive

instance Prelude.AWSRequest CreateGovCloudAccount where
  type
    Rs CreateGovCloudAccount =
      CreateGovCloudAccountResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateGovCloudAccountResponse'
            Prelude.<$> (x Prelude..?> "CreateAccountStatus")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateGovCloudAccount

instance Prelude.NFData CreateGovCloudAccount

instance Prelude.ToHeaders CreateGovCloudAccount where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "AWSOrganizationsV20161128.CreateGovCloudAccount" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON CreateGovCloudAccount where
  toJSON CreateGovCloudAccount' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("RoleName" Prelude..=) Prelude.<$> roleName,
            ("IamUserAccessToBilling" Prelude..=)
              Prelude.<$> iamUserAccessToBilling,
            ("Tags" Prelude..=) Prelude.<$> tags,
            Prelude.Just ("Email" Prelude..= email),
            Prelude.Just ("AccountName" Prelude..= accountName)
          ]
      )

instance Prelude.ToPath CreateGovCloudAccount where
  toPath = Prelude.const "/"

instance Prelude.ToQuery CreateGovCloudAccount where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newCreateGovCloudAccountResponse' smart constructor.
data CreateGovCloudAccountResponse = CreateGovCloudAccountResponse'
  { createAccountStatus :: Prelude.Maybe CreateAccountStatus,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateGovCloudAccountResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'createAccountStatus', 'createGovCloudAccountResponse_createAccountStatus' - Undocumented member.
--
-- 'httpStatus', 'createGovCloudAccountResponse_httpStatus' - The response's http status code.
newCreateGovCloudAccountResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateGovCloudAccountResponse
newCreateGovCloudAccountResponse pHttpStatus_ =
  CreateGovCloudAccountResponse'
    { createAccountStatus =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
createGovCloudAccountResponse_createAccountStatus :: Lens.Lens' CreateGovCloudAccountResponse (Prelude.Maybe CreateAccountStatus)
createGovCloudAccountResponse_createAccountStatus = Lens.lens (\CreateGovCloudAccountResponse' {createAccountStatus} -> createAccountStatus) (\s@CreateGovCloudAccountResponse' {} a -> s {createAccountStatus = a} :: CreateGovCloudAccountResponse)

-- | The response's http status code.
createGovCloudAccountResponse_httpStatus :: Lens.Lens' CreateGovCloudAccountResponse Prelude.Int
createGovCloudAccountResponse_httpStatus = Lens.lens (\CreateGovCloudAccountResponse' {httpStatus} -> httpStatus) (\s@CreateGovCloudAccountResponse' {} a -> s {httpStatus = a} :: CreateGovCloudAccountResponse)

instance Prelude.NFData CreateGovCloudAccountResponse
