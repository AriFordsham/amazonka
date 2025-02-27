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
-- Module      : Network.AWS.Rekognition.DetectModerationLabels
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Detects unsafe content in a specified JPEG or PNG format image. Use
-- @DetectModerationLabels@ to moderate images depending on your
-- requirements. For example, you might want to filter images that contain
-- nudity, but not images containing suggestive content.
--
-- To filter images, use the labels returned by @DetectModerationLabels@ to
-- determine which types of content are appropriate.
--
-- For information about moderation labels, see Detecting Unsafe Content in
-- the Amazon Rekognition Developer Guide.
--
-- You pass the input image either as base64-encoded image bytes or as a
-- reference to an image in an Amazon S3 bucket. If you use the AWS CLI to
-- call Amazon Rekognition operations, passing image bytes is not
-- supported. The image must be either a PNG or JPEG formatted file.
module Network.AWS.Rekognition.DetectModerationLabels
  ( -- * Creating a Request
    DetectModerationLabels (..),
    newDetectModerationLabels,

    -- * Request Lenses
    detectModerationLabels_humanLoopConfig,
    detectModerationLabels_minConfidence,
    detectModerationLabels_image,

    -- * Destructuring the Response
    DetectModerationLabelsResponse (..),
    newDetectModerationLabelsResponse,

    -- * Response Lenses
    detectModerationLabelsResponse_moderationLabels,
    detectModerationLabelsResponse_moderationModelVersion,
    detectModerationLabelsResponse_humanLoopActivationOutput,
    detectModerationLabelsResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Rekognition.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDetectModerationLabels' smart constructor.
data DetectModerationLabels = DetectModerationLabels'
  { -- | Sets up the configuration for human evaluation, including the
    -- FlowDefinition the image will be sent to.
    humanLoopConfig :: Prelude.Maybe HumanLoopConfig,
    -- | Specifies the minimum confidence level for the labels to return. Amazon
    -- Rekognition doesn\'t return any labels with a confidence level lower
    -- than this specified value.
    --
    -- If you don\'t specify @MinConfidence@, the operation returns labels with
    -- confidence values greater than or equal to 50 percent.
    minConfidence :: Prelude.Maybe Prelude.Double,
    -- | The input image as base64-encoded bytes or an S3 object. If you use the
    -- AWS CLI to call Amazon Rekognition operations, passing base64-encoded
    -- image bytes is not supported.
    --
    -- If you are using an AWS SDK to call Amazon Rekognition, you might not
    -- need to base64-encode image bytes passed using the @Bytes@ field. For
    -- more information, see Images in the Amazon Rekognition developer guide.
    image :: Image
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DetectModerationLabels' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'humanLoopConfig', 'detectModerationLabels_humanLoopConfig' - Sets up the configuration for human evaluation, including the
-- FlowDefinition the image will be sent to.
--
-- 'minConfidence', 'detectModerationLabels_minConfidence' - Specifies the minimum confidence level for the labels to return. Amazon
-- Rekognition doesn\'t return any labels with a confidence level lower
-- than this specified value.
--
-- If you don\'t specify @MinConfidence@, the operation returns labels with
-- confidence values greater than or equal to 50 percent.
--
-- 'image', 'detectModerationLabels_image' - The input image as base64-encoded bytes or an S3 object. If you use the
-- AWS CLI to call Amazon Rekognition operations, passing base64-encoded
-- image bytes is not supported.
--
-- If you are using an AWS SDK to call Amazon Rekognition, you might not
-- need to base64-encode image bytes passed using the @Bytes@ field. For
-- more information, see Images in the Amazon Rekognition developer guide.
newDetectModerationLabels ::
  -- | 'image'
  Image ->
  DetectModerationLabels
newDetectModerationLabels pImage_ =
  DetectModerationLabels'
    { humanLoopConfig =
        Prelude.Nothing,
      minConfidence = Prelude.Nothing,
      image = pImage_
    }

-- | Sets up the configuration for human evaluation, including the
-- FlowDefinition the image will be sent to.
detectModerationLabels_humanLoopConfig :: Lens.Lens' DetectModerationLabels (Prelude.Maybe HumanLoopConfig)
detectModerationLabels_humanLoopConfig = Lens.lens (\DetectModerationLabels' {humanLoopConfig} -> humanLoopConfig) (\s@DetectModerationLabels' {} a -> s {humanLoopConfig = a} :: DetectModerationLabels)

-- | Specifies the minimum confidence level for the labels to return. Amazon
-- Rekognition doesn\'t return any labels with a confidence level lower
-- than this specified value.
--
-- If you don\'t specify @MinConfidence@, the operation returns labels with
-- confidence values greater than or equal to 50 percent.
detectModerationLabels_minConfidence :: Lens.Lens' DetectModerationLabels (Prelude.Maybe Prelude.Double)
detectModerationLabels_minConfidence = Lens.lens (\DetectModerationLabels' {minConfidence} -> minConfidence) (\s@DetectModerationLabels' {} a -> s {minConfidence = a} :: DetectModerationLabels)

-- | The input image as base64-encoded bytes or an S3 object. If you use the
-- AWS CLI to call Amazon Rekognition operations, passing base64-encoded
-- image bytes is not supported.
--
-- If you are using an AWS SDK to call Amazon Rekognition, you might not
-- need to base64-encode image bytes passed using the @Bytes@ field. For
-- more information, see Images in the Amazon Rekognition developer guide.
detectModerationLabels_image :: Lens.Lens' DetectModerationLabels Image
detectModerationLabels_image = Lens.lens (\DetectModerationLabels' {image} -> image) (\s@DetectModerationLabels' {} a -> s {image = a} :: DetectModerationLabels)

instance Prelude.AWSRequest DetectModerationLabels where
  type
    Rs DetectModerationLabels =
      DetectModerationLabelsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DetectModerationLabelsResponse'
            Prelude.<$> ( x Prelude..?> "ModerationLabels"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (x Prelude..?> "ModerationModelVersion")
            Prelude.<*> (x Prelude..?> "HumanLoopActivationOutput")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DetectModerationLabels

instance Prelude.NFData DetectModerationLabels

instance Prelude.ToHeaders DetectModerationLabels where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "RekognitionService.DetectModerationLabels" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON DetectModerationLabels where
  toJSON DetectModerationLabels' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("HumanLoopConfig" Prelude..=)
              Prelude.<$> humanLoopConfig,
            ("MinConfidence" Prelude..=)
              Prelude.<$> minConfidence,
            Prelude.Just ("Image" Prelude..= image)
          ]
      )

instance Prelude.ToPath DetectModerationLabels where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DetectModerationLabels where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDetectModerationLabelsResponse' smart constructor.
data DetectModerationLabelsResponse = DetectModerationLabelsResponse'
  { -- | Array of detected Moderation labels and the time, in milliseconds from
    -- the start of the video, they were detected.
    moderationLabels :: Prelude.Maybe [ModerationLabel],
    -- | Version number of the moderation detection model that was used to detect
    -- unsafe content.
    moderationModelVersion :: Prelude.Maybe Prelude.Text,
    -- | Shows the results of the human in the loop evaluation.
    humanLoopActivationOutput :: Prelude.Maybe HumanLoopActivationOutput,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DetectModerationLabelsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'moderationLabels', 'detectModerationLabelsResponse_moderationLabels' - Array of detected Moderation labels and the time, in milliseconds from
-- the start of the video, they were detected.
--
-- 'moderationModelVersion', 'detectModerationLabelsResponse_moderationModelVersion' - Version number of the moderation detection model that was used to detect
-- unsafe content.
--
-- 'humanLoopActivationOutput', 'detectModerationLabelsResponse_humanLoopActivationOutput' - Shows the results of the human in the loop evaluation.
--
-- 'httpStatus', 'detectModerationLabelsResponse_httpStatus' - The response's http status code.
newDetectModerationLabelsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DetectModerationLabelsResponse
newDetectModerationLabelsResponse pHttpStatus_ =
  DetectModerationLabelsResponse'
    { moderationLabels =
        Prelude.Nothing,
      moderationModelVersion = Prelude.Nothing,
      humanLoopActivationOutput = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Array of detected Moderation labels and the time, in milliseconds from
-- the start of the video, they were detected.
detectModerationLabelsResponse_moderationLabels :: Lens.Lens' DetectModerationLabelsResponse (Prelude.Maybe [ModerationLabel])
detectModerationLabelsResponse_moderationLabels = Lens.lens (\DetectModerationLabelsResponse' {moderationLabels} -> moderationLabels) (\s@DetectModerationLabelsResponse' {} a -> s {moderationLabels = a} :: DetectModerationLabelsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | Version number of the moderation detection model that was used to detect
-- unsafe content.
detectModerationLabelsResponse_moderationModelVersion :: Lens.Lens' DetectModerationLabelsResponse (Prelude.Maybe Prelude.Text)
detectModerationLabelsResponse_moderationModelVersion = Lens.lens (\DetectModerationLabelsResponse' {moderationModelVersion} -> moderationModelVersion) (\s@DetectModerationLabelsResponse' {} a -> s {moderationModelVersion = a} :: DetectModerationLabelsResponse)

-- | Shows the results of the human in the loop evaluation.
detectModerationLabelsResponse_humanLoopActivationOutput :: Lens.Lens' DetectModerationLabelsResponse (Prelude.Maybe HumanLoopActivationOutput)
detectModerationLabelsResponse_humanLoopActivationOutput = Lens.lens (\DetectModerationLabelsResponse' {humanLoopActivationOutput} -> humanLoopActivationOutput) (\s@DetectModerationLabelsResponse' {} a -> s {humanLoopActivationOutput = a} :: DetectModerationLabelsResponse)

-- | The response's http status code.
detectModerationLabelsResponse_httpStatus :: Lens.Lens' DetectModerationLabelsResponse Prelude.Int
detectModerationLabelsResponse_httpStatus = Lens.lens (\DetectModerationLabelsResponse' {httpStatus} -> httpStatus) (\s@DetectModerationLabelsResponse' {} a -> s {httpStatus = a} :: DetectModerationLabelsResponse)

instance
  Prelude.NFData
    DetectModerationLabelsResponse
