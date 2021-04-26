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
-- Module      : Network.AWS.CognitoIdentityProvider.SetUICustomization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the UI customization information for a user pool\'s built-in app
-- UI.
--
-- You can specify app UI customization settings for a single client (with
-- a specific @clientId@) or for all clients (by setting the @clientId@ to
-- @ALL@). If you specify @ALL@, the default configuration will be used for
-- every client that has no UI customization set previously. If you specify
-- UI customization settings for a particular client, it will no longer
-- fall back to the @ALL@ configuration.
--
-- To use this API, your user pool must have a domain associated with it.
-- Otherwise, there is no place to host the app\'s pages, and the service
-- will throw an error.
module Network.AWS.CognitoIdentityProvider.SetUICustomization
  ( -- * Creating a Request
    SetUICustomization (..),
    newSetUICustomization,

    -- * Request Lenses
    setUICustomization_clientId,
    setUICustomization_imageFile,
    setUICustomization_cSS,
    setUICustomization_userPoolId,

    -- * Destructuring the Response
    SetUICustomizationResponse (..),
    newSetUICustomizationResponse,

    -- * Response Lenses
    setUICustomizationResponse_httpStatus,
    setUICustomizationResponse_uICustomization,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.CognitoIdentityProvider.Types.UICustomizationType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newSetUICustomization' smart constructor.
data SetUICustomization = SetUICustomization'
  { -- | The client ID for the client app.
    clientId :: Prelude.Maybe (Prelude.Sensitive Prelude.Text),
    -- | The uploaded logo image for the UI customization.
    imageFile :: Prelude.Maybe Prelude.Base64,
    -- | The CSS values in the UI customization.
    cSS :: Prelude.Maybe Prelude.Text,
    -- | The user pool ID for the user pool.
    userPoolId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'SetUICustomization' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientId', 'setUICustomization_clientId' - The client ID for the client app.
--
-- 'imageFile', 'setUICustomization_imageFile' - The uploaded logo image for the UI customization.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
--
-- 'cSS', 'setUICustomization_cSS' - The CSS values in the UI customization.
--
-- 'userPoolId', 'setUICustomization_userPoolId' - The user pool ID for the user pool.
newSetUICustomization ::
  -- | 'userPoolId'
  Prelude.Text ->
  SetUICustomization
newSetUICustomization pUserPoolId_ =
  SetUICustomization'
    { clientId = Prelude.Nothing,
      imageFile = Prelude.Nothing,
      cSS = Prelude.Nothing,
      userPoolId = pUserPoolId_
    }

-- | The client ID for the client app.
setUICustomization_clientId :: Lens.Lens' SetUICustomization (Prelude.Maybe Prelude.Text)
setUICustomization_clientId = Lens.lens (\SetUICustomization' {clientId} -> clientId) (\s@SetUICustomization' {} a -> s {clientId = a} :: SetUICustomization) Prelude.. Lens.mapping Prelude._Sensitive

-- | The uploaded logo image for the UI customization.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
setUICustomization_imageFile :: Lens.Lens' SetUICustomization (Prelude.Maybe Prelude.ByteString)
setUICustomization_imageFile = Lens.lens (\SetUICustomization' {imageFile} -> imageFile) (\s@SetUICustomization' {} a -> s {imageFile = a} :: SetUICustomization) Prelude.. Lens.mapping Prelude._Base64

-- | The CSS values in the UI customization.
setUICustomization_cSS :: Lens.Lens' SetUICustomization (Prelude.Maybe Prelude.Text)
setUICustomization_cSS = Lens.lens (\SetUICustomization' {cSS} -> cSS) (\s@SetUICustomization' {} a -> s {cSS = a} :: SetUICustomization)

-- | The user pool ID for the user pool.
setUICustomization_userPoolId :: Lens.Lens' SetUICustomization Prelude.Text
setUICustomization_userPoolId = Lens.lens (\SetUICustomization' {userPoolId} -> userPoolId) (\s@SetUICustomization' {} a -> s {userPoolId = a} :: SetUICustomization)

instance Prelude.AWSRequest SetUICustomization where
  type
    Rs SetUICustomization =
      SetUICustomizationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          SetUICustomizationResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Prelude..:> "UICustomization")
      )

instance Prelude.Hashable SetUICustomization

instance Prelude.NFData SetUICustomization

instance Prelude.ToHeaders SetUICustomization where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "AWSCognitoIdentityProviderService.SetUICustomization" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON SetUICustomization where
  toJSON SetUICustomization' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("ClientId" Prelude..=) Prelude.<$> clientId,
            ("ImageFile" Prelude..=) Prelude.<$> imageFile,
            ("CSS" Prelude..=) Prelude.<$> cSS,
            Prelude.Just ("UserPoolId" Prelude..= userPoolId)
          ]
      )

instance Prelude.ToPath SetUICustomization where
  toPath = Prelude.const "/"

instance Prelude.ToQuery SetUICustomization where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newSetUICustomizationResponse' smart constructor.
data SetUICustomizationResponse = SetUICustomizationResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The UI customization information.
    uICustomization :: UICustomizationType
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'SetUICustomizationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'setUICustomizationResponse_httpStatus' - The response's http status code.
--
-- 'uICustomization', 'setUICustomizationResponse_uICustomization' - The UI customization information.
newSetUICustomizationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'uICustomization'
  UICustomizationType ->
  SetUICustomizationResponse
newSetUICustomizationResponse
  pHttpStatus_
  pUICustomization_ =
    SetUICustomizationResponse'
      { httpStatus =
          pHttpStatus_,
        uICustomization = pUICustomization_
      }

-- | The response's http status code.
setUICustomizationResponse_httpStatus :: Lens.Lens' SetUICustomizationResponse Prelude.Int
setUICustomizationResponse_httpStatus = Lens.lens (\SetUICustomizationResponse' {httpStatus} -> httpStatus) (\s@SetUICustomizationResponse' {} a -> s {httpStatus = a} :: SetUICustomizationResponse)

-- | The UI customization information.
setUICustomizationResponse_uICustomization :: Lens.Lens' SetUICustomizationResponse UICustomizationType
setUICustomizationResponse_uICustomization = Lens.lens (\SetUICustomizationResponse' {uICustomization} -> uICustomization) (\s@SetUICustomizationResponse' {} a -> s {uICustomization = a} :: SetUICustomizationResponse)

instance Prelude.NFData SetUICustomizationResponse
