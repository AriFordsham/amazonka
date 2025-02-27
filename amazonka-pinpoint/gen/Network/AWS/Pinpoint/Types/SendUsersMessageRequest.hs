{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.SendUsersMessageRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.SendUsersMessageRequest where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types.DirectMessageConfiguration
import Network.AWS.Pinpoint.Types.EndpointSendConfiguration
import Network.AWS.Pinpoint.Types.TemplateConfiguration
import qualified Network.AWS.Prelude as Prelude

-- | Specifies the configuration and other settings for a message to send to
-- all the endpoints that are associated with a list of users.
--
-- /See:/ 'newSendUsersMessageRequest' smart constructor.
data SendUsersMessageRequest = SendUsersMessageRequest'
  { -- | A map of custom attribute-value pairs. For a push notification, Amazon
    -- Pinpoint adds these attributes to the data.pinpoint object in the body
    -- of the notification payload. Amazon Pinpoint also provides these
    -- attributes in the events that it generates for users-messages
    -- deliveries.
    context :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | The unique identifier for tracing the message. This identifier is
    -- visible to message recipients.
    traceId :: Prelude.Maybe Prelude.Text,
    -- | The message template to use for the message.
    templateConfiguration :: Prelude.Maybe TemplateConfiguration,
    -- | The settings and content for the default message and any default
    -- messages that you defined for specific channels.
    messageConfiguration :: DirectMessageConfiguration,
    -- | A map that associates user IDs with
    -- <https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-messages.html#apps-application-id-messages-model-endpointsendconfiguration EndpointSendConfiguration>
    -- objects. You can use an
    -- <https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-messages.html#apps-application-id-messages-model-endpointsendconfiguration EndpointSendConfiguration>
    -- object to tailor the message for a user by specifying settings such as
    -- content overrides and message variables.
    users :: Prelude.HashMap Prelude.Text EndpointSendConfiguration
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'SendUsersMessageRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'context', 'sendUsersMessageRequest_context' - A map of custom attribute-value pairs. For a push notification, Amazon
-- Pinpoint adds these attributes to the data.pinpoint object in the body
-- of the notification payload. Amazon Pinpoint also provides these
-- attributes in the events that it generates for users-messages
-- deliveries.
--
-- 'traceId', 'sendUsersMessageRequest_traceId' - The unique identifier for tracing the message. This identifier is
-- visible to message recipients.
--
-- 'templateConfiguration', 'sendUsersMessageRequest_templateConfiguration' - The message template to use for the message.
--
-- 'messageConfiguration', 'sendUsersMessageRequest_messageConfiguration' - The settings and content for the default message and any default
-- messages that you defined for specific channels.
--
-- 'users', 'sendUsersMessageRequest_users' - A map that associates user IDs with
-- <https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-messages.html#apps-application-id-messages-model-endpointsendconfiguration EndpointSendConfiguration>
-- objects. You can use an
-- <https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-messages.html#apps-application-id-messages-model-endpointsendconfiguration EndpointSendConfiguration>
-- object to tailor the message for a user by specifying settings such as
-- content overrides and message variables.
newSendUsersMessageRequest ::
  -- | 'messageConfiguration'
  DirectMessageConfiguration ->
  SendUsersMessageRequest
newSendUsersMessageRequest pMessageConfiguration_ =
  SendUsersMessageRequest'
    { context = Prelude.Nothing,
      traceId = Prelude.Nothing,
      templateConfiguration = Prelude.Nothing,
      messageConfiguration = pMessageConfiguration_,
      users = Prelude.mempty
    }

-- | A map of custom attribute-value pairs. For a push notification, Amazon
-- Pinpoint adds these attributes to the data.pinpoint object in the body
-- of the notification payload. Amazon Pinpoint also provides these
-- attributes in the events that it generates for users-messages
-- deliveries.
sendUsersMessageRequest_context :: Lens.Lens' SendUsersMessageRequest (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
sendUsersMessageRequest_context = Lens.lens (\SendUsersMessageRequest' {context} -> context) (\s@SendUsersMessageRequest' {} a -> s {context = a} :: SendUsersMessageRequest) Prelude.. Lens.mapping Prelude._Coerce

-- | The unique identifier for tracing the message. This identifier is
-- visible to message recipients.
sendUsersMessageRequest_traceId :: Lens.Lens' SendUsersMessageRequest (Prelude.Maybe Prelude.Text)
sendUsersMessageRequest_traceId = Lens.lens (\SendUsersMessageRequest' {traceId} -> traceId) (\s@SendUsersMessageRequest' {} a -> s {traceId = a} :: SendUsersMessageRequest)

-- | The message template to use for the message.
sendUsersMessageRequest_templateConfiguration :: Lens.Lens' SendUsersMessageRequest (Prelude.Maybe TemplateConfiguration)
sendUsersMessageRequest_templateConfiguration = Lens.lens (\SendUsersMessageRequest' {templateConfiguration} -> templateConfiguration) (\s@SendUsersMessageRequest' {} a -> s {templateConfiguration = a} :: SendUsersMessageRequest)

-- | The settings and content for the default message and any default
-- messages that you defined for specific channels.
sendUsersMessageRequest_messageConfiguration :: Lens.Lens' SendUsersMessageRequest DirectMessageConfiguration
sendUsersMessageRequest_messageConfiguration = Lens.lens (\SendUsersMessageRequest' {messageConfiguration} -> messageConfiguration) (\s@SendUsersMessageRequest' {} a -> s {messageConfiguration = a} :: SendUsersMessageRequest)

-- | A map that associates user IDs with
-- <https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-messages.html#apps-application-id-messages-model-endpointsendconfiguration EndpointSendConfiguration>
-- objects. You can use an
-- <https://docs.aws.amazon.com/pinpoint/latest/apireference/apps-application-id-messages.html#apps-application-id-messages-model-endpointsendconfiguration EndpointSendConfiguration>
-- object to tailor the message for a user by specifying settings such as
-- content overrides and message variables.
sendUsersMessageRequest_users :: Lens.Lens' SendUsersMessageRequest (Prelude.HashMap Prelude.Text EndpointSendConfiguration)
sendUsersMessageRequest_users = Lens.lens (\SendUsersMessageRequest' {users} -> users) (\s@SendUsersMessageRequest' {} a -> s {users = a} :: SendUsersMessageRequest) Prelude.. Prelude._Coerce

instance Prelude.Hashable SendUsersMessageRequest

instance Prelude.NFData SendUsersMessageRequest

instance Prelude.ToJSON SendUsersMessageRequest where
  toJSON SendUsersMessageRequest' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("Context" Prelude..=) Prelude.<$> context,
            ("TraceId" Prelude..=) Prelude.<$> traceId,
            ("TemplateConfiguration" Prelude..=)
              Prelude.<$> templateConfiguration,
            Prelude.Just
              ( "MessageConfiguration"
                  Prelude..= messageConfiguration
              ),
            Prelude.Just ("Users" Prelude..= users)
          ]
      )
