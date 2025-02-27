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
-- Module      : Network.AWS.ElasticTranscoder.UpdatePipelineNotifications
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- With the UpdatePipelineNotifications operation, you can update Amazon
-- Simple Notification Service (Amazon SNS) notifications for a pipeline.
--
-- When you update notifications for a pipeline, Elastic Transcoder returns
-- the values that you specified in the request.
module Network.AWS.ElasticTranscoder.UpdatePipelineNotifications
  ( -- * Creating a Request
    UpdatePipelineNotifications (..),
    newUpdatePipelineNotifications,

    -- * Request Lenses
    updatePipelineNotifications_id,
    updatePipelineNotifications_notifications,

    -- * Destructuring the Response
    UpdatePipelineNotificationsResponse (..),
    newUpdatePipelineNotificationsResponse,

    -- * Response Lenses
    updatePipelineNotificationsResponse_pipeline,
    updatePipelineNotificationsResponse_httpStatus,
  )
where

import Network.AWS.ElasticTranscoder.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The @UpdatePipelineNotificationsRequest@ structure.
--
-- /See:/ 'newUpdatePipelineNotifications' smart constructor.
data UpdatePipelineNotifications = UpdatePipelineNotifications'
  { -- | The identifier of the pipeline for which you want to change notification
    -- settings.
    id :: Prelude.Text,
    -- | The topic ARN for the Amazon Simple Notification Service (Amazon SNS)
    -- topic that you want to notify to report job status.
    --
    -- To receive notifications, you must also subscribe to the new topic in
    -- the Amazon SNS console.
    --
    -- -   __Progressing__: The topic ARN for the Amazon Simple Notification
    --     Service (Amazon SNS) topic that you want to notify when Elastic
    --     Transcoder has started to process jobs that are added to this
    --     pipeline. This is the ARN that Amazon SNS returned when you created
    --     the topic.
    --
    -- -   __Complete__: The topic ARN for the Amazon SNS topic that you want
    --     to notify when Elastic Transcoder has finished processing a job.
    --     This is the ARN that Amazon SNS returned when you created the topic.
    --
    -- -   __Warning__: The topic ARN for the Amazon SNS topic that you want to
    --     notify when Elastic Transcoder encounters a warning condition. This
    --     is the ARN that Amazon SNS returned when you created the topic.
    --
    -- -   __Error__: The topic ARN for the Amazon SNS topic that you want to
    --     notify when Elastic Transcoder encounters an error condition. This
    --     is the ARN that Amazon SNS returned when you created the topic.
    notifications :: Notifications
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'UpdatePipelineNotifications' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'id', 'updatePipelineNotifications_id' - The identifier of the pipeline for which you want to change notification
-- settings.
--
-- 'notifications', 'updatePipelineNotifications_notifications' - The topic ARN for the Amazon Simple Notification Service (Amazon SNS)
-- topic that you want to notify to report job status.
--
-- To receive notifications, you must also subscribe to the new topic in
-- the Amazon SNS console.
--
-- -   __Progressing__: The topic ARN for the Amazon Simple Notification
--     Service (Amazon SNS) topic that you want to notify when Elastic
--     Transcoder has started to process jobs that are added to this
--     pipeline. This is the ARN that Amazon SNS returned when you created
--     the topic.
--
-- -   __Complete__: The topic ARN for the Amazon SNS topic that you want
--     to notify when Elastic Transcoder has finished processing a job.
--     This is the ARN that Amazon SNS returned when you created the topic.
--
-- -   __Warning__: The topic ARN for the Amazon SNS topic that you want to
--     notify when Elastic Transcoder encounters a warning condition. This
--     is the ARN that Amazon SNS returned when you created the topic.
--
-- -   __Error__: The topic ARN for the Amazon SNS topic that you want to
--     notify when Elastic Transcoder encounters an error condition. This
--     is the ARN that Amazon SNS returned when you created the topic.
newUpdatePipelineNotifications ::
  -- | 'id'
  Prelude.Text ->
  -- | 'notifications'
  Notifications ->
  UpdatePipelineNotifications
newUpdatePipelineNotifications pId_ pNotifications_ =
  UpdatePipelineNotifications'
    { id = pId_,
      notifications = pNotifications_
    }

-- | The identifier of the pipeline for which you want to change notification
-- settings.
updatePipelineNotifications_id :: Lens.Lens' UpdatePipelineNotifications Prelude.Text
updatePipelineNotifications_id = Lens.lens (\UpdatePipelineNotifications' {id} -> id) (\s@UpdatePipelineNotifications' {} a -> s {id = a} :: UpdatePipelineNotifications)

-- | The topic ARN for the Amazon Simple Notification Service (Amazon SNS)
-- topic that you want to notify to report job status.
--
-- To receive notifications, you must also subscribe to the new topic in
-- the Amazon SNS console.
--
-- -   __Progressing__: The topic ARN for the Amazon Simple Notification
--     Service (Amazon SNS) topic that you want to notify when Elastic
--     Transcoder has started to process jobs that are added to this
--     pipeline. This is the ARN that Amazon SNS returned when you created
--     the topic.
--
-- -   __Complete__: The topic ARN for the Amazon SNS topic that you want
--     to notify when Elastic Transcoder has finished processing a job.
--     This is the ARN that Amazon SNS returned when you created the topic.
--
-- -   __Warning__: The topic ARN for the Amazon SNS topic that you want to
--     notify when Elastic Transcoder encounters a warning condition. This
--     is the ARN that Amazon SNS returned when you created the topic.
--
-- -   __Error__: The topic ARN for the Amazon SNS topic that you want to
--     notify when Elastic Transcoder encounters an error condition. This
--     is the ARN that Amazon SNS returned when you created the topic.
updatePipelineNotifications_notifications :: Lens.Lens' UpdatePipelineNotifications Notifications
updatePipelineNotifications_notifications = Lens.lens (\UpdatePipelineNotifications' {notifications} -> notifications) (\s@UpdatePipelineNotifications' {} a -> s {notifications = a} :: UpdatePipelineNotifications)

instance
  Prelude.AWSRequest
    UpdatePipelineNotifications
  where
  type
    Rs UpdatePipelineNotifications =
      UpdatePipelineNotificationsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdatePipelineNotificationsResponse'
            Prelude.<$> (x Prelude..?> "Pipeline")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdatePipelineNotifications

instance Prelude.NFData UpdatePipelineNotifications

instance
  Prelude.ToHeaders
    UpdatePipelineNotifications
  where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToJSON UpdatePipelineNotifications where
  toJSON UpdatePipelineNotifications' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("Notifications" Prelude..= notifications)
          ]
      )

instance Prelude.ToPath UpdatePipelineNotifications where
  toPath UpdatePipelineNotifications' {..} =
    Prelude.mconcat
      [ "/2012-09-25/pipelines/",
        Prelude.toBS id,
        "/notifications"
      ]

instance Prelude.ToQuery UpdatePipelineNotifications where
  toQuery = Prelude.const Prelude.mempty

-- | The @UpdatePipelineNotificationsResponse@ structure.
--
-- /See:/ 'newUpdatePipelineNotificationsResponse' smart constructor.
data UpdatePipelineNotificationsResponse = UpdatePipelineNotificationsResponse'
  { -- | A section of the response body that provides information about the
    -- pipeline associated with this notification.
    pipeline :: Prelude.Maybe Pipeline,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'UpdatePipelineNotificationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'pipeline', 'updatePipelineNotificationsResponse_pipeline' - A section of the response body that provides information about the
-- pipeline associated with this notification.
--
-- 'httpStatus', 'updatePipelineNotificationsResponse_httpStatus' - The response's http status code.
newUpdatePipelineNotificationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdatePipelineNotificationsResponse
newUpdatePipelineNotificationsResponse pHttpStatus_ =
  UpdatePipelineNotificationsResponse'
    { pipeline =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A section of the response body that provides information about the
-- pipeline associated with this notification.
updatePipelineNotificationsResponse_pipeline :: Lens.Lens' UpdatePipelineNotificationsResponse (Prelude.Maybe Pipeline)
updatePipelineNotificationsResponse_pipeline = Lens.lens (\UpdatePipelineNotificationsResponse' {pipeline} -> pipeline) (\s@UpdatePipelineNotificationsResponse' {} a -> s {pipeline = a} :: UpdatePipelineNotificationsResponse)

-- | The response's http status code.
updatePipelineNotificationsResponse_httpStatus :: Lens.Lens' UpdatePipelineNotificationsResponse Prelude.Int
updatePipelineNotificationsResponse_httpStatus = Lens.lens (\UpdatePipelineNotificationsResponse' {httpStatus} -> httpStatus) (\s@UpdatePipelineNotificationsResponse' {} a -> s {httpStatus = a} :: UpdatePipelineNotificationsResponse)

instance
  Prelude.NFData
    UpdatePipelineNotificationsResponse
