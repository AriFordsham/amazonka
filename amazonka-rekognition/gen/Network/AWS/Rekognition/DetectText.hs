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
-- Module      : Network.AWS.Rekognition.DetectText
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Detects text in the input image and converts it into machine-readable
-- text.
--
-- Pass the input image as base64-encoded image bytes or as a reference to
-- an image in an Amazon S3 bucket. If you use the AWS CLI to call Amazon
-- Rekognition operations, you must pass it as a reference to an image in
-- an Amazon S3 bucket. For the AWS CLI, passing image bytes is not
-- supported. The image must be either a .png or .jpeg formatted file.
--
-- The @DetectText@ operation returns text in an array of TextDetection
-- elements, @TextDetections@. Each @TextDetection@ element provides
-- information about a single word or line of text that was detected in the
-- image.
--
-- A word is one or more ISO basic latin script characters that are not
-- separated by spaces. @DetectText@ can detect up to 50 words in an image.
--
-- A line is a string of equally spaced words. A line isn\'t necessarily a
-- complete sentence. For example, a driver\'s license number is detected
-- as a line. A line ends when there is no aligned text after it. Also, a
-- line ends when there is a large gap between words, relative to the
-- length of the words. This means, depending on the gap between words,
-- Amazon Rekognition may detect multiple lines in text aligned in the same
-- direction. Periods don\'t represent the end of a line. If a sentence
-- spans multiple lines, the @DetectText@ operation returns multiple lines.
--
-- To determine whether a @TextDetection@ element is a line of text or a
-- word, use the @TextDetection@ object @Type@ field.
--
-- To be detected, text must be within +\/- 90 degrees orientation of the
-- horizontal axis.
--
-- For more information, see DetectText in the Amazon Rekognition Developer
-- Guide.
module Network.AWS.Rekognition.DetectText
  ( -- * Creating a Request
    DetectText (..),
    newDetectText,

    -- * Request Lenses
    detectText_filters,
    detectText_image,

    -- * Destructuring the Response
    DetectTextResponse (..),
    newDetectTextResponse,

    -- * Response Lenses
    detectTextResponse_textDetections,
    detectTextResponse_textModelVersion,
    detectTextResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Rekognition.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDetectText' smart constructor.
data DetectText = DetectText'
  { -- | Optional parameters that let you set the criteria that the text must
    -- meet to be included in your response.
    filters :: Prelude.Maybe DetectTextFilters,
    -- | The input image as base64-encoded bytes or an Amazon S3 object. If you
    -- use the AWS CLI to call Amazon Rekognition operations, you can\'t pass
    -- image bytes.
    --
    -- If you are using an AWS SDK to call Amazon Rekognition, you might not
    -- need to base64-encode image bytes passed using the @Bytes@ field. For
    -- more information, see Images in the Amazon Rekognition developer guide.
    image :: Image
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DetectText' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'filters', 'detectText_filters' - Optional parameters that let you set the criteria that the text must
-- meet to be included in your response.
--
-- 'image', 'detectText_image' - The input image as base64-encoded bytes or an Amazon S3 object. If you
-- use the AWS CLI to call Amazon Rekognition operations, you can\'t pass
-- image bytes.
--
-- If you are using an AWS SDK to call Amazon Rekognition, you might not
-- need to base64-encode image bytes passed using the @Bytes@ field. For
-- more information, see Images in the Amazon Rekognition developer guide.
newDetectText ::
  -- | 'image'
  Image ->
  DetectText
newDetectText pImage_ =
  DetectText'
    { filters = Prelude.Nothing,
      image = pImage_
    }

-- | Optional parameters that let you set the criteria that the text must
-- meet to be included in your response.
detectText_filters :: Lens.Lens' DetectText (Prelude.Maybe DetectTextFilters)
detectText_filters = Lens.lens (\DetectText' {filters} -> filters) (\s@DetectText' {} a -> s {filters = a} :: DetectText)

-- | The input image as base64-encoded bytes or an Amazon S3 object. If you
-- use the AWS CLI to call Amazon Rekognition operations, you can\'t pass
-- image bytes.
--
-- If you are using an AWS SDK to call Amazon Rekognition, you might not
-- need to base64-encode image bytes passed using the @Bytes@ field. For
-- more information, see Images in the Amazon Rekognition developer guide.
detectText_image :: Lens.Lens' DetectText Image
detectText_image = Lens.lens (\DetectText' {image} -> image) (\s@DetectText' {} a -> s {image = a} :: DetectText)

instance Prelude.AWSRequest DetectText where
  type Rs DetectText = DetectTextResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DetectTextResponse'
            Prelude.<$> ( x Prelude..?> "TextDetections"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (x Prelude..?> "TextModelVersion")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DetectText

instance Prelude.NFData DetectText

instance Prelude.ToHeaders DetectText where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "RekognitionService.DetectText" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON DetectText where
  toJSON DetectText' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("Filters" Prelude..=) Prelude.<$> filters,
            Prelude.Just ("Image" Prelude..= image)
          ]
      )

instance Prelude.ToPath DetectText where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DetectText where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDetectTextResponse' smart constructor.
data DetectTextResponse = DetectTextResponse'
  { -- | An array of text that was detected in the input image.
    textDetections :: Prelude.Maybe [TextDetection],
    -- | The model version used to detect text.
    textModelVersion :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DetectTextResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'textDetections', 'detectTextResponse_textDetections' - An array of text that was detected in the input image.
--
-- 'textModelVersion', 'detectTextResponse_textModelVersion' - The model version used to detect text.
--
-- 'httpStatus', 'detectTextResponse_httpStatus' - The response's http status code.
newDetectTextResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DetectTextResponse
newDetectTextResponse pHttpStatus_ =
  DetectTextResponse'
    { textDetections =
        Prelude.Nothing,
      textModelVersion = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array of text that was detected in the input image.
detectTextResponse_textDetections :: Lens.Lens' DetectTextResponse (Prelude.Maybe [TextDetection])
detectTextResponse_textDetections = Lens.lens (\DetectTextResponse' {textDetections} -> textDetections) (\s@DetectTextResponse' {} a -> s {textDetections = a} :: DetectTextResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The model version used to detect text.
detectTextResponse_textModelVersion :: Lens.Lens' DetectTextResponse (Prelude.Maybe Prelude.Text)
detectTextResponse_textModelVersion = Lens.lens (\DetectTextResponse' {textModelVersion} -> textModelVersion) (\s@DetectTextResponse' {} a -> s {textModelVersion = a} :: DetectTextResponse)

-- | The response's http status code.
detectTextResponse_httpStatus :: Lens.Lens' DetectTextResponse Prelude.Int
detectTextResponse_httpStatus = Lens.lens (\DetectTextResponse' {httpStatus} -> httpStatus) (\s@DetectTextResponse' {} a -> s {httpStatus = a} :: DetectTextResponse)

instance Prelude.NFData DetectTextResponse
