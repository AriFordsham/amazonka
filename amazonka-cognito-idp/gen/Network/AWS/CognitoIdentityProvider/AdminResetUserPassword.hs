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
-- Module      : Network.AWS.CognitoIdentityProvider.AdminResetUserPassword
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets the specified user\'s password in a user pool as an
-- administrator. Works on any user.
--
-- When a developer calls this API, the current password is invalidated, so
-- it must be changed. If a user tries to sign in after the API is called,
-- the app will get a PasswordResetRequiredException exception back and
-- should direct the user down the flow to reset the password, which is the
-- same as the forgot password flow. In addition, if the user pool has
-- phone verification selected and a verified phone number exists for the
-- user, or if email verification is selected and a verified email exists
-- for the user, calling this API will also result in sending a message to
-- the end user with the code to change their password.
--
-- Calling this action requires developer credentials.
module Network.AWS.CognitoIdentityProvider.AdminResetUserPassword
  ( -- * Creating a Request
    AdminResetUserPassword (..),
    newAdminResetUserPassword,

    -- * Request Lenses
    adminResetUserPassword_clientMetadata,
    adminResetUserPassword_userPoolId,
    adminResetUserPassword_username,

    -- * Destructuring the Response
    AdminResetUserPasswordResponse (..),
    newAdminResetUserPasswordResponse,

    -- * Response Lenses
    adminResetUserPasswordResponse_httpStatus,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the request to reset a user\'s password as an administrator.
--
-- /See:/ 'newAdminResetUserPassword' smart constructor.
data AdminResetUserPassword = AdminResetUserPassword'
  { -- | A map of custom key-value pairs that you can provide as input for any
    -- custom workflows that this action triggers.
    --
    -- You create custom workflows by assigning AWS Lambda functions to user
    -- pool triggers. When you use the AdminResetUserPassword API action,
    -- Amazon Cognito invokes the function that is assigned to the /custom
    -- message/ trigger. When Amazon Cognito invokes this function, it passes a
    -- JSON payload, which the function receives as input. This payload
    -- contains a @clientMetadata@ attribute, which provides the data that you
    -- assigned to the ClientMetadata parameter in your AdminResetUserPassword
    -- request. In your function code in AWS Lambda, you can process the
    -- @clientMetadata@ value to enhance your workflow for your specific needs.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html Customizing User Pool Workflows with Lambda Triggers>
    -- in the /Amazon Cognito Developer Guide/.
    --
    -- Take the following limitations into consideration when you use the
    -- ClientMetadata parameter:
    --
    -- -   Amazon Cognito does not store the ClientMetadata value. This data is
    --     available only to AWS Lambda triggers that are assigned to a user
    --     pool to support custom workflows. If your user pool configuration
    --     does not include triggers, the ClientMetadata parameter serves no
    --     purpose.
    --
    -- -   Amazon Cognito does not validate the ClientMetadata value.
    --
    -- -   Amazon Cognito does not encrypt the the ClientMetadata value, so
    --     don\'t use it to provide sensitive information.
    clientMetadata :: Prelude.Maybe (Prelude.Map Prelude.Text Prelude.Text),
    -- | The user pool ID for the user pool where you want to reset the user\'s
    -- password.
    userPoolId :: Prelude.Text,
    -- | The user name of the user whose password you wish to reset.
    username :: Prelude.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AdminResetUserPassword' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientMetadata', 'adminResetUserPassword_clientMetadata' - A map of custom key-value pairs that you can provide as input for any
-- custom workflows that this action triggers.
--
-- You create custom workflows by assigning AWS Lambda functions to user
-- pool triggers. When you use the AdminResetUserPassword API action,
-- Amazon Cognito invokes the function that is assigned to the /custom
-- message/ trigger. When Amazon Cognito invokes this function, it passes a
-- JSON payload, which the function receives as input. This payload
-- contains a @clientMetadata@ attribute, which provides the data that you
-- assigned to the ClientMetadata parameter in your AdminResetUserPassword
-- request. In your function code in AWS Lambda, you can process the
-- @clientMetadata@ value to enhance your workflow for your specific needs.
--
-- For more information, see
-- <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html Customizing User Pool Workflows with Lambda Triggers>
-- in the /Amazon Cognito Developer Guide/.
--
-- Take the following limitations into consideration when you use the
-- ClientMetadata parameter:
--
-- -   Amazon Cognito does not store the ClientMetadata value. This data is
--     available only to AWS Lambda triggers that are assigned to a user
--     pool to support custom workflows. If your user pool configuration
--     does not include triggers, the ClientMetadata parameter serves no
--     purpose.
--
-- -   Amazon Cognito does not validate the ClientMetadata value.
--
-- -   Amazon Cognito does not encrypt the the ClientMetadata value, so
--     don\'t use it to provide sensitive information.
--
-- 'userPoolId', 'adminResetUserPassword_userPoolId' - The user pool ID for the user pool where you want to reset the user\'s
-- password.
--
-- 'username', 'adminResetUserPassword_username' - The user name of the user whose password you wish to reset.
newAdminResetUserPassword ::
  -- | 'userPoolId'
  Prelude.Text ->
  -- | 'username'
  Prelude.Text ->
  AdminResetUserPassword
newAdminResetUserPassword pUserPoolId_ pUsername_ =
  AdminResetUserPassword'
    { clientMetadata =
        Prelude.Nothing,
      userPoolId = pUserPoolId_,
      username = Prelude._Sensitive Lens.# pUsername_
    }

-- | A map of custom key-value pairs that you can provide as input for any
-- custom workflows that this action triggers.
--
-- You create custom workflows by assigning AWS Lambda functions to user
-- pool triggers. When you use the AdminResetUserPassword API action,
-- Amazon Cognito invokes the function that is assigned to the /custom
-- message/ trigger. When Amazon Cognito invokes this function, it passes a
-- JSON payload, which the function receives as input. This payload
-- contains a @clientMetadata@ attribute, which provides the data that you
-- assigned to the ClientMetadata parameter in your AdminResetUserPassword
-- request. In your function code in AWS Lambda, you can process the
-- @clientMetadata@ value to enhance your workflow for your specific needs.
--
-- For more information, see
-- <https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html Customizing User Pool Workflows with Lambda Triggers>
-- in the /Amazon Cognito Developer Guide/.
--
-- Take the following limitations into consideration when you use the
-- ClientMetadata parameter:
--
-- -   Amazon Cognito does not store the ClientMetadata value. This data is
--     available only to AWS Lambda triggers that are assigned to a user
--     pool to support custom workflows. If your user pool configuration
--     does not include triggers, the ClientMetadata parameter serves no
--     purpose.
--
-- -   Amazon Cognito does not validate the ClientMetadata value.
--
-- -   Amazon Cognito does not encrypt the the ClientMetadata value, so
--     don\'t use it to provide sensitive information.
adminResetUserPassword_clientMetadata :: Lens.Lens' AdminResetUserPassword (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
adminResetUserPassword_clientMetadata = Lens.lens (\AdminResetUserPassword' {clientMetadata} -> clientMetadata) (\s@AdminResetUserPassword' {} a -> s {clientMetadata = a} :: AdminResetUserPassword) Prelude.. Lens.mapping Prelude._Map

-- | The user pool ID for the user pool where you want to reset the user\'s
-- password.
adminResetUserPassword_userPoolId :: Lens.Lens' AdminResetUserPassword Prelude.Text
adminResetUserPassword_userPoolId = Lens.lens (\AdminResetUserPassword' {userPoolId} -> userPoolId) (\s@AdminResetUserPassword' {} a -> s {userPoolId = a} :: AdminResetUserPassword)

-- | The user name of the user whose password you wish to reset.
adminResetUserPassword_username :: Lens.Lens' AdminResetUserPassword Prelude.Text
adminResetUserPassword_username = Lens.lens (\AdminResetUserPassword' {username} -> username) (\s@AdminResetUserPassword' {} a -> s {username = a} :: AdminResetUserPassword) Prelude.. Prelude._Sensitive

instance Prelude.AWSRequest AdminResetUserPassword where
  type
    Rs AdminResetUserPassword =
      AdminResetUserPasswordResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          AdminResetUserPasswordResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable AdminResetUserPassword

instance Prelude.NFData AdminResetUserPassword

instance Prelude.ToHeaders AdminResetUserPassword where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "AWSCognitoIdentityProviderService.AdminResetUserPassword" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON AdminResetUserPassword where
  toJSON AdminResetUserPassword' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("ClientMetadata" Prelude..=)
              Prelude.<$> clientMetadata,
            Prelude.Just ("UserPoolId" Prelude..= userPoolId),
            Prelude.Just ("Username" Prelude..= username)
          ]
      )

instance Prelude.ToPath AdminResetUserPassword where
  toPath = Prelude.const "/"

instance Prelude.ToQuery AdminResetUserPassword where
  toQuery = Prelude.const Prelude.mempty

-- | Represents the response from the server to reset a user password as an
-- administrator.
--
-- /See:/ 'newAdminResetUserPasswordResponse' smart constructor.
data AdminResetUserPasswordResponse = AdminResetUserPasswordResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AdminResetUserPasswordResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'adminResetUserPasswordResponse_httpStatus' - The response's http status code.
newAdminResetUserPasswordResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  AdminResetUserPasswordResponse
newAdminResetUserPasswordResponse pHttpStatus_ =
  AdminResetUserPasswordResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
adminResetUserPasswordResponse_httpStatus :: Lens.Lens' AdminResetUserPasswordResponse Prelude.Int
adminResetUserPasswordResponse_httpStatus = Lens.lens (\AdminResetUserPasswordResponse' {httpStatus} -> httpStatus) (\s@AdminResetUserPasswordResponse' {} a -> s {httpStatus = a} :: AdminResetUserPasswordResponse)

instance
  Prelude.NFData
    AdminResetUserPasswordResponse
