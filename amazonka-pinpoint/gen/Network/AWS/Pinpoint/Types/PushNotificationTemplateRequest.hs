{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.PushNotificationTemplateRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.PushNotificationTemplateRequest where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types.APNSPushNotificationTemplate
import Network.AWS.Pinpoint.Types.AndroidPushNotificationTemplate
import Network.AWS.Pinpoint.Types.DefaultPushNotificationTemplate
import qualified Network.AWS.Prelude as Prelude

-- | Specifies the content and settings for a message template that can be
-- used in messages that are sent through a push notification channel.
--
-- /See:/ 'newPushNotificationTemplateRequest' smart constructor.
data PushNotificationTemplateRequest = PushNotificationTemplateRequest'
  { -- | A custom description of the message template.
    templateDescription :: Prelude.Maybe Prelude.Text,
    -- | The message template to use for the Baidu (Baidu Cloud Push) channel.
    -- This message template overrides the default template for push
    -- notification channels (DefaultPushNotificationTemplate).
    baidu :: Prelude.Maybe AndroidPushNotificationTemplate,
    -- | The message template to use for the ADM (Amazon Device Messaging)
    -- channel. This message template overrides the default template for push
    -- notification channels (DefaultPushNotificationTemplate).
    aDM :: Prelude.Maybe AndroidPushNotificationTemplate,
    -- | A JSON object that specifies the default values to use for message
    -- variables in the message template. This object is a set of key-value
    -- pairs. Each key defines a message variable in the template. The
    -- corresponding value defines the default value for that variable. When
    -- you create a message that\'s based on the template, you can override
    -- these defaults with message-specific and address-specific variables and
    -- values.
    defaultSubstitutions :: Prelude.Maybe Prelude.Text,
    -- | The message template to use for the APNs (Apple Push Notification
    -- service) channel. This message template overrides the default template
    -- for push notification channels (DefaultPushNotificationTemplate).
    aPNS :: Prelude.Maybe APNSPushNotificationTemplate,
    -- | The message template to use for the GCM channel, which is used to send
    -- notifications through the Firebase Cloud Messaging (FCM), formerly
    -- Google Cloud Messaging (GCM), service. This message template overrides
    -- the default template for push notification channels
    -- (DefaultPushNotificationTemplate).
    gCM :: Prelude.Maybe AndroidPushNotificationTemplate,
    -- | A string-to-string map of key-value pairs that defines the tags to
    -- associate with the message template. Each tag consists of a required tag
    -- key and an associated tag value.
    tags :: Prelude.Maybe (Prelude.Map Prelude.Text Prelude.Text),
    -- | The unique identifier for the recommender model to use for the message
    -- template. Amazon Pinpoint uses this value to determine how to retrieve
    -- and process data from a recommender model when it sends messages that
    -- use the template, if the template contains message variables for
    -- recommendation data.
    recommenderId :: Prelude.Maybe Prelude.Text,
    -- | The default message template to use for push notification channels.
    default' :: Prelude.Maybe DefaultPushNotificationTemplate
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'PushNotificationTemplateRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'templateDescription', 'pushNotificationTemplateRequest_templateDescription' - A custom description of the message template.
--
-- 'baidu', 'pushNotificationTemplateRequest_baidu' - The message template to use for the Baidu (Baidu Cloud Push) channel.
-- This message template overrides the default template for push
-- notification channels (DefaultPushNotificationTemplate).
--
-- 'aDM', 'pushNotificationTemplateRequest_aDM' - The message template to use for the ADM (Amazon Device Messaging)
-- channel. This message template overrides the default template for push
-- notification channels (DefaultPushNotificationTemplate).
--
-- 'defaultSubstitutions', 'pushNotificationTemplateRequest_defaultSubstitutions' - A JSON object that specifies the default values to use for message
-- variables in the message template. This object is a set of key-value
-- pairs. Each key defines a message variable in the template. The
-- corresponding value defines the default value for that variable. When
-- you create a message that\'s based on the template, you can override
-- these defaults with message-specific and address-specific variables and
-- values.
--
-- 'aPNS', 'pushNotificationTemplateRequest_aPNS' - The message template to use for the APNs (Apple Push Notification
-- service) channel. This message template overrides the default template
-- for push notification channels (DefaultPushNotificationTemplate).
--
-- 'gCM', 'pushNotificationTemplateRequest_gCM' - The message template to use for the GCM channel, which is used to send
-- notifications through the Firebase Cloud Messaging (FCM), formerly
-- Google Cloud Messaging (GCM), service. This message template overrides
-- the default template for push notification channels
-- (DefaultPushNotificationTemplate).
--
-- 'tags', 'pushNotificationTemplateRequest_tags' - A string-to-string map of key-value pairs that defines the tags to
-- associate with the message template. Each tag consists of a required tag
-- key and an associated tag value.
--
-- 'recommenderId', 'pushNotificationTemplateRequest_recommenderId' - The unique identifier for the recommender model to use for the message
-- template. Amazon Pinpoint uses this value to determine how to retrieve
-- and process data from a recommender model when it sends messages that
-- use the template, if the template contains message variables for
-- recommendation data.
--
-- 'default'', 'pushNotificationTemplateRequest_default' - The default message template to use for push notification channels.
newPushNotificationTemplateRequest ::
  PushNotificationTemplateRequest
newPushNotificationTemplateRequest =
  PushNotificationTemplateRequest'
    { templateDescription =
        Prelude.Nothing,
      baidu = Prelude.Nothing,
      aDM = Prelude.Nothing,
      defaultSubstitutions = Prelude.Nothing,
      aPNS = Prelude.Nothing,
      gCM = Prelude.Nothing,
      tags = Prelude.Nothing,
      recommenderId = Prelude.Nothing,
      default' = Prelude.Nothing
    }

-- | A custom description of the message template.
pushNotificationTemplateRequest_templateDescription :: Lens.Lens' PushNotificationTemplateRequest (Prelude.Maybe Prelude.Text)
pushNotificationTemplateRequest_templateDescription = Lens.lens (\PushNotificationTemplateRequest' {templateDescription} -> templateDescription) (\s@PushNotificationTemplateRequest' {} a -> s {templateDescription = a} :: PushNotificationTemplateRequest)

-- | The message template to use for the Baidu (Baidu Cloud Push) channel.
-- This message template overrides the default template for push
-- notification channels (DefaultPushNotificationTemplate).
pushNotificationTemplateRequest_baidu :: Lens.Lens' PushNotificationTemplateRequest (Prelude.Maybe AndroidPushNotificationTemplate)
pushNotificationTemplateRequest_baidu = Lens.lens (\PushNotificationTemplateRequest' {baidu} -> baidu) (\s@PushNotificationTemplateRequest' {} a -> s {baidu = a} :: PushNotificationTemplateRequest)

-- | The message template to use for the ADM (Amazon Device Messaging)
-- channel. This message template overrides the default template for push
-- notification channels (DefaultPushNotificationTemplate).
pushNotificationTemplateRequest_aDM :: Lens.Lens' PushNotificationTemplateRequest (Prelude.Maybe AndroidPushNotificationTemplate)
pushNotificationTemplateRequest_aDM = Lens.lens (\PushNotificationTemplateRequest' {aDM} -> aDM) (\s@PushNotificationTemplateRequest' {} a -> s {aDM = a} :: PushNotificationTemplateRequest)

-- | A JSON object that specifies the default values to use for message
-- variables in the message template. This object is a set of key-value
-- pairs. Each key defines a message variable in the template. The
-- corresponding value defines the default value for that variable. When
-- you create a message that\'s based on the template, you can override
-- these defaults with message-specific and address-specific variables and
-- values.
pushNotificationTemplateRequest_defaultSubstitutions :: Lens.Lens' PushNotificationTemplateRequest (Prelude.Maybe Prelude.Text)
pushNotificationTemplateRequest_defaultSubstitutions = Lens.lens (\PushNotificationTemplateRequest' {defaultSubstitutions} -> defaultSubstitutions) (\s@PushNotificationTemplateRequest' {} a -> s {defaultSubstitutions = a} :: PushNotificationTemplateRequest)

-- | The message template to use for the APNs (Apple Push Notification
-- service) channel. This message template overrides the default template
-- for push notification channels (DefaultPushNotificationTemplate).
pushNotificationTemplateRequest_aPNS :: Lens.Lens' PushNotificationTemplateRequest (Prelude.Maybe APNSPushNotificationTemplate)
pushNotificationTemplateRequest_aPNS = Lens.lens (\PushNotificationTemplateRequest' {aPNS} -> aPNS) (\s@PushNotificationTemplateRequest' {} a -> s {aPNS = a} :: PushNotificationTemplateRequest)

-- | The message template to use for the GCM channel, which is used to send
-- notifications through the Firebase Cloud Messaging (FCM), formerly
-- Google Cloud Messaging (GCM), service. This message template overrides
-- the default template for push notification channels
-- (DefaultPushNotificationTemplate).
pushNotificationTemplateRequest_gCM :: Lens.Lens' PushNotificationTemplateRequest (Prelude.Maybe AndroidPushNotificationTemplate)
pushNotificationTemplateRequest_gCM = Lens.lens (\PushNotificationTemplateRequest' {gCM} -> gCM) (\s@PushNotificationTemplateRequest' {} a -> s {gCM = a} :: PushNotificationTemplateRequest)

-- | A string-to-string map of key-value pairs that defines the tags to
-- associate with the message template. Each tag consists of a required tag
-- key and an associated tag value.
pushNotificationTemplateRequest_tags :: Lens.Lens' PushNotificationTemplateRequest (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
pushNotificationTemplateRequest_tags = Lens.lens (\PushNotificationTemplateRequest' {tags} -> tags) (\s@PushNotificationTemplateRequest' {} a -> s {tags = a} :: PushNotificationTemplateRequest) Prelude.. Lens.mapping Prelude._Map

-- | The unique identifier for the recommender model to use for the message
-- template. Amazon Pinpoint uses this value to determine how to retrieve
-- and process data from a recommender model when it sends messages that
-- use the template, if the template contains message variables for
-- recommendation data.
pushNotificationTemplateRequest_recommenderId :: Lens.Lens' PushNotificationTemplateRequest (Prelude.Maybe Prelude.Text)
pushNotificationTemplateRequest_recommenderId = Lens.lens (\PushNotificationTemplateRequest' {recommenderId} -> recommenderId) (\s@PushNotificationTemplateRequest' {} a -> s {recommenderId = a} :: PushNotificationTemplateRequest)

-- | The default message template to use for push notification channels.
pushNotificationTemplateRequest_default :: Lens.Lens' PushNotificationTemplateRequest (Prelude.Maybe DefaultPushNotificationTemplate)
pushNotificationTemplateRequest_default = Lens.lens (\PushNotificationTemplateRequest' {default'} -> default') (\s@PushNotificationTemplateRequest' {} a -> s {default' = a} :: PushNotificationTemplateRequest)

instance
  Prelude.Hashable
    PushNotificationTemplateRequest

instance
  Prelude.NFData
    PushNotificationTemplateRequest

instance
  Prelude.ToJSON
    PushNotificationTemplateRequest
  where
  toJSON PushNotificationTemplateRequest' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("TemplateDescription" Prelude..=)
              Prelude.<$> templateDescription,
            ("Baidu" Prelude..=) Prelude.<$> baidu,
            ("ADM" Prelude..=) Prelude.<$> aDM,
            ("DefaultSubstitutions" Prelude..=)
              Prelude.<$> defaultSubstitutions,
            ("APNS" Prelude..=) Prelude.<$> aPNS,
            ("GCM" Prelude..=) Prelude.<$> gCM,
            ("tags" Prelude..=) Prelude.<$> tags,
            ("RecommenderId" Prelude..=)
              Prelude.<$> recommenderId,
            ("Default" Prelude..=) Prelude.<$> default'
          ]
      )
