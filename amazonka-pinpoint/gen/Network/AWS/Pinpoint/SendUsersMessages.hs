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
-- Module      : Network.AWS.Pinpoint.SendUsersMessages
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates and sends a message to a list of users.
module Network.AWS.Pinpoint.SendUsersMessages
  ( -- * Creating a Request
    SendUsersMessages (..),
    newSendUsersMessages,

    -- * Request Lenses
    sendUsersMessages_applicationId,
    sendUsersMessages_sendUsersMessageRequest,

    -- * Destructuring the Response
    SendUsersMessagesResponse (..),
    newSendUsersMessagesResponse,

    -- * Response Lenses
    sendUsersMessagesResponse_httpStatus,
    sendUsersMessagesResponse_sendUsersMessageResponse,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newSendUsersMessages' smart constructor.
data SendUsersMessages = SendUsersMessages'
  { -- | The unique identifier for the application. This identifier is displayed
    -- as the __Project ID__ on the Amazon Pinpoint console.
    applicationId :: Prelude.Text,
    sendUsersMessageRequest :: SendUsersMessageRequest
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'SendUsersMessages' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationId', 'sendUsersMessages_applicationId' - The unique identifier for the application. This identifier is displayed
-- as the __Project ID__ on the Amazon Pinpoint console.
--
-- 'sendUsersMessageRequest', 'sendUsersMessages_sendUsersMessageRequest' - Undocumented member.
newSendUsersMessages ::
  -- | 'applicationId'
  Prelude.Text ->
  -- | 'sendUsersMessageRequest'
  SendUsersMessageRequest ->
  SendUsersMessages
newSendUsersMessages
  pApplicationId_
  pSendUsersMessageRequest_ =
    SendUsersMessages'
      { applicationId = pApplicationId_,
        sendUsersMessageRequest = pSendUsersMessageRequest_
      }

-- | The unique identifier for the application. This identifier is displayed
-- as the __Project ID__ on the Amazon Pinpoint console.
sendUsersMessages_applicationId :: Lens.Lens' SendUsersMessages Prelude.Text
sendUsersMessages_applicationId = Lens.lens (\SendUsersMessages' {applicationId} -> applicationId) (\s@SendUsersMessages' {} a -> s {applicationId = a} :: SendUsersMessages)

-- | Undocumented member.
sendUsersMessages_sendUsersMessageRequest :: Lens.Lens' SendUsersMessages SendUsersMessageRequest
sendUsersMessages_sendUsersMessageRequest = Lens.lens (\SendUsersMessages' {sendUsersMessageRequest} -> sendUsersMessageRequest) (\s@SendUsersMessages' {} a -> s {sendUsersMessageRequest = a} :: SendUsersMessages)

instance Prelude.AWSRequest SendUsersMessages where
  type Rs SendUsersMessages = SendUsersMessagesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          SendUsersMessagesResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (Prelude.eitherParseJSON x)
      )

instance Prelude.Hashable SendUsersMessages

instance Prelude.NFData SendUsersMessages

instance Prelude.ToHeaders SendUsersMessages where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON SendUsersMessages where
  toJSON SendUsersMessages' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "SendUsersMessageRequest"
                  Prelude..= sendUsersMessageRequest
              )
          ]
      )

instance Prelude.ToPath SendUsersMessages where
  toPath SendUsersMessages' {..} =
    Prelude.mconcat
      [ "/v1/apps/",
        Prelude.toBS applicationId,
        "/users-messages"
      ]

instance Prelude.ToQuery SendUsersMessages where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newSendUsersMessagesResponse' smart constructor.
data SendUsersMessagesResponse = SendUsersMessagesResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    sendUsersMessageResponse :: SendUsersMessageResponse
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'SendUsersMessagesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'sendUsersMessagesResponse_httpStatus' - The response's http status code.
--
-- 'sendUsersMessageResponse', 'sendUsersMessagesResponse_sendUsersMessageResponse' - Undocumented member.
newSendUsersMessagesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'sendUsersMessageResponse'
  SendUsersMessageResponse ->
  SendUsersMessagesResponse
newSendUsersMessagesResponse
  pHttpStatus_
  pSendUsersMessageResponse_ =
    SendUsersMessagesResponse'
      { httpStatus =
          pHttpStatus_,
        sendUsersMessageResponse =
          pSendUsersMessageResponse_
      }

-- | The response's http status code.
sendUsersMessagesResponse_httpStatus :: Lens.Lens' SendUsersMessagesResponse Prelude.Int
sendUsersMessagesResponse_httpStatus = Lens.lens (\SendUsersMessagesResponse' {httpStatus} -> httpStatus) (\s@SendUsersMessagesResponse' {} a -> s {httpStatus = a} :: SendUsersMessagesResponse)

-- | Undocumented member.
sendUsersMessagesResponse_sendUsersMessageResponse :: Lens.Lens' SendUsersMessagesResponse SendUsersMessageResponse
sendUsersMessagesResponse_sendUsersMessageResponse = Lens.lens (\SendUsersMessagesResponse' {sendUsersMessageResponse} -> sendUsersMessageResponse) (\s@SendUsersMessagesResponse' {} a -> s {sendUsersMessageResponse = a} :: SendUsersMessagesResponse)

instance Prelude.NFData SendUsersMessagesResponse
