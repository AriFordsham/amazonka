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
-- Module      : Network.AWS.MediaConvert.Types.InsertableImage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.InsertableImage where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Settings that specify how your still graphic overlay appears.
--
-- /See:/ 'newInsertableImage' smart constructor.
data InsertableImage = InsertableImage'
  { -- | Specify the height of the inserted image in pixels. If you specify a
    -- value that\'s larger than the video resolution height, the service will
    -- crop your overlaid image to fit. To use the native height of the image,
    -- keep this setting blank.
    height :: Prelude.Maybe Prelude.Natural,
    -- | Specify the distance, in pixels, between the inserted image and the left
    -- edge of the video frame. Required for any image overlay that you
    -- specify.
    imageX :: Prelude.Maybe Prelude.Natural,
    -- | Specify the distance, in pixels, between the overlaid image and the top
    -- edge of the video frame. Required for any image overlay that you
    -- specify.
    imageY :: Prelude.Maybe Prelude.Natural,
    -- | Specify the time, in milliseconds, for the image to remain on the output
    -- video. This duration includes fade-in time but not fade-out time.
    duration :: Prelude.Maybe Prelude.Natural,
    -- | Specify the width of the inserted image in pixels. If you specify a
    -- value that\'s larger than the video resolution width, the service will
    -- crop your overlaid image to fit. To use the native width of the image,
    -- keep this setting blank.
    width :: Prelude.Maybe Prelude.Natural,
    -- | Specify how overlapping inserted images appear. Images with higher
    -- values for Layer appear on top of images with lower values for Layer.
    layer :: Prelude.Maybe Prelude.Natural,
    -- | Specify the timecode of the frame that you want the overlay to first
    -- appear on. This must be in timecode (HH:MM:SS:FF or HH:MM:SS;FF) format.
    -- Remember to take into account your timecode source settings.
    startTime :: Prelude.Maybe Prelude.Text,
    -- | Use Opacity (Opacity) to specify how much of the underlying video shows
    -- through the inserted image. 0 is transparent and 100 is fully opaque.
    -- Default is 50.
    opacity :: Prelude.Maybe Prelude.Natural,
    -- | Specify the length of time, in milliseconds, between the Start time that
    -- you specify for the image insertion and the time that the image appears
    -- at full opacity. Full opacity is the level that you specify for the
    -- opacity setting. If you don\'t specify a value for Fade-in, the image
    -- will appear abruptly at the overlay start time.
    fadeIn :: Prelude.Maybe Prelude.Natural,
    -- | Specify the HTTP, HTTPS, or Amazon S3 location of the image that you
    -- want to overlay on the video. Use a PNG or TGA file.
    imageInserterInput :: Prelude.Maybe Prelude.Text,
    -- | Specify the length of time, in milliseconds, between the end of the time
    -- that you have specified for the image overlay Duration and when the
    -- overlaid image has faded to total transparency. If you don\'t specify a
    -- value for Fade-out, the image will disappear abruptly at the end of the
    -- inserted image duration.
    fadeOut :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'InsertableImage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'height', 'insertableImage_height' - Specify the height of the inserted image in pixels. If you specify a
-- value that\'s larger than the video resolution height, the service will
-- crop your overlaid image to fit. To use the native height of the image,
-- keep this setting blank.
--
-- 'imageX', 'insertableImage_imageX' - Specify the distance, in pixels, between the inserted image and the left
-- edge of the video frame. Required for any image overlay that you
-- specify.
--
-- 'imageY', 'insertableImage_imageY' - Specify the distance, in pixels, between the overlaid image and the top
-- edge of the video frame. Required for any image overlay that you
-- specify.
--
-- 'duration', 'insertableImage_duration' - Specify the time, in milliseconds, for the image to remain on the output
-- video. This duration includes fade-in time but not fade-out time.
--
-- 'width', 'insertableImage_width' - Specify the width of the inserted image in pixels. If you specify a
-- value that\'s larger than the video resolution width, the service will
-- crop your overlaid image to fit. To use the native width of the image,
-- keep this setting blank.
--
-- 'layer', 'insertableImage_layer' - Specify how overlapping inserted images appear. Images with higher
-- values for Layer appear on top of images with lower values for Layer.
--
-- 'startTime', 'insertableImage_startTime' - Specify the timecode of the frame that you want the overlay to first
-- appear on. This must be in timecode (HH:MM:SS:FF or HH:MM:SS;FF) format.
-- Remember to take into account your timecode source settings.
--
-- 'opacity', 'insertableImage_opacity' - Use Opacity (Opacity) to specify how much of the underlying video shows
-- through the inserted image. 0 is transparent and 100 is fully opaque.
-- Default is 50.
--
-- 'fadeIn', 'insertableImage_fadeIn' - Specify the length of time, in milliseconds, between the Start time that
-- you specify for the image insertion and the time that the image appears
-- at full opacity. Full opacity is the level that you specify for the
-- opacity setting. If you don\'t specify a value for Fade-in, the image
-- will appear abruptly at the overlay start time.
--
-- 'imageInserterInput', 'insertableImage_imageInserterInput' - Specify the HTTP, HTTPS, or Amazon S3 location of the image that you
-- want to overlay on the video. Use a PNG or TGA file.
--
-- 'fadeOut', 'insertableImage_fadeOut' - Specify the length of time, in milliseconds, between the end of the time
-- that you have specified for the image overlay Duration and when the
-- overlaid image has faded to total transparency. If you don\'t specify a
-- value for Fade-out, the image will disappear abruptly at the end of the
-- inserted image duration.
newInsertableImage ::
  InsertableImage
newInsertableImage =
  InsertableImage'
    { height = Prelude.Nothing,
      imageX = Prelude.Nothing,
      imageY = Prelude.Nothing,
      duration = Prelude.Nothing,
      width = Prelude.Nothing,
      layer = Prelude.Nothing,
      startTime = Prelude.Nothing,
      opacity = Prelude.Nothing,
      fadeIn = Prelude.Nothing,
      imageInserterInput = Prelude.Nothing,
      fadeOut = Prelude.Nothing
    }

-- | Specify the height of the inserted image in pixels. If you specify a
-- value that\'s larger than the video resolution height, the service will
-- crop your overlaid image to fit. To use the native height of the image,
-- keep this setting blank.
insertableImage_height :: Lens.Lens' InsertableImage (Prelude.Maybe Prelude.Natural)
insertableImage_height = Lens.lens (\InsertableImage' {height} -> height) (\s@InsertableImage' {} a -> s {height = a} :: InsertableImage)

-- | Specify the distance, in pixels, between the inserted image and the left
-- edge of the video frame. Required for any image overlay that you
-- specify.
insertableImage_imageX :: Lens.Lens' InsertableImage (Prelude.Maybe Prelude.Natural)
insertableImage_imageX = Lens.lens (\InsertableImage' {imageX} -> imageX) (\s@InsertableImage' {} a -> s {imageX = a} :: InsertableImage)

-- | Specify the distance, in pixels, between the overlaid image and the top
-- edge of the video frame. Required for any image overlay that you
-- specify.
insertableImage_imageY :: Lens.Lens' InsertableImage (Prelude.Maybe Prelude.Natural)
insertableImage_imageY = Lens.lens (\InsertableImage' {imageY} -> imageY) (\s@InsertableImage' {} a -> s {imageY = a} :: InsertableImage)

-- | Specify the time, in milliseconds, for the image to remain on the output
-- video. This duration includes fade-in time but not fade-out time.
insertableImage_duration :: Lens.Lens' InsertableImage (Prelude.Maybe Prelude.Natural)
insertableImage_duration = Lens.lens (\InsertableImage' {duration} -> duration) (\s@InsertableImage' {} a -> s {duration = a} :: InsertableImage)

-- | Specify the width of the inserted image in pixels. If you specify a
-- value that\'s larger than the video resolution width, the service will
-- crop your overlaid image to fit. To use the native width of the image,
-- keep this setting blank.
insertableImage_width :: Lens.Lens' InsertableImage (Prelude.Maybe Prelude.Natural)
insertableImage_width = Lens.lens (\InsertableImage' {width} -> width) (\s@InsertableImage' {} a -> s {width = a} :: InsertableImage)

-- | Specify how overlapping inserted images appear. Images with higher
-- values for Layer appear on top of images with lower values for Layer.
insertableImage_layer :: Lens.Lens' InsertableImage (Prelude.Maybe Prelude.Natural)
insertableImage_layer = Lens.lens (\InsertableImage' {layer} -> layer) (\s@InsertableImage' {} a -> s {layer = a} :: InsertableImage)

-- | Specify the timecode of the frame that you want the overlay to first
-- appear on. This must be in timecode (HH:MM:SS:FF or HH:MM:SS;FF) format.
-- Remember to take into account your timecode source settings.
insertableImage_startTime :: Lens.Lens' InsertableImage (Prelude.Maybe Prelude.Text)
insertableImage_startTime = Lens.lens (\InsertableImage' {startTime} -> startTime) (\s@InsertableImage' {} a -> s {startTime = a} :: InsertableImage)

-- | Use Opacity (Opacity) to specify how much of the underlying video shows
-- through the inserted image. 0 is transparent and 100 is fully opaque.
-- Default is 50.
insertableImage_opacity :: Lens.Lens' InsertableImage (Prelude.Maybe Prelude.Natural)
insertableImage_opacity = Lens.lens (\InsertableImage' {opacity} -> opacity) (\s@InsertableImage' {} a -> s {opacity = a} :: InsertableImage)

-- | Specify the length of time, in milliseconds, between the Start time that
-- you specify for the image insertion and the time that the image appears
-- at full opacity. Full opacity is the level that you specify for the
-- opacity setting. If you don\'t specify a value for Fade-in, the image
-- will appear abruptly at the overlay start time.
insertableImage_fadeIn :: Lens.Lens' InsertableImage (Prelude.Maybe Prelude.Natural)
insertableImage_fadeIn = Lens.lens (\InsertableImage' {fadeIn} -> fadeIn) (\s@InsertableImage' {} a -> s {fadeIn = a} :: InsertableImage)

-- | Specify the HTTP, HTTPS, or Amazon S3 location of the image that you
-- want to overlay on the video. Use a PNG or TGA file.
insertableImage_imageInserterInput :: Lens.Lens' InsertableImage (Prelude.Maybe Prelude.Text)
insertableImage_imageInserterInput = Lens.lens (\InsertableImage' {imageInserterInput} -> imageInserterInput) (\s@InsertableImage' {} a -> s {imageInserterInput = a} :: InsertableImage)

-- | Specify the length of time, in milliseconds, between the end of the time
-- that you have specified for the image overlay Duration and when the
-- overlaid image has faded to total transparency. If you don\'t specify a
-- value for Fade-out, the image will disappear abruptly at the end of the
-- inserted image duration.
insertableImage_fadeOut :: Lens.Lens' InsertableImage (Prelude.Maybe Prelude.Natural)
insertableImage_fadeOut = Lens.lens (\InsertableImage' {fadeOut} -> fadeOut) (\s@InsertableImage' {} a -> s {fadeOut = a} :: InsertableImage)

instance Prelude.FromJSON InsertableImage where
  parseJSON =
    Prelude.withObject
      "InsertableImage"
      ( \x ->
          InsertableImage'
            Prelude.<$> (x Prelude..:? "height")
            Prelude.<*> (x Prelude..:? "imageX")
            Prelude.<*> (x Prelude..:? "imageY")
            Prelude.<*> (x Prelude..:? "duration")
            Prelude.<*> (x Prelude..:? "width")
            Prelude.<*> (x Prelude..:? "layer")
            Prelude.<*> (x Prelude..:? "startTime")
            Prelude.<*> (x Prelude..:? "opacity")
            Prelude.<*> (x Prelude..:? "fadeIn")
            Prelude.<*> (x Prelude..:? "imageInserterInput")
            Prelude.<*> (x Prelude..:? "fadeOut")
      )

instance Prelude.Hashable InsertableImage

instance Prelude.NFData InsertableImage

instance Prelude.ToJSON InsertableImage where
  toJSON InsertableImage' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("height" Prelude..=) Prelude.<$> height,
            ("imageX" Prelude..=) Prelude.<$> imageX,
            ("imageY" Prelude..=) Prelude.<$> imageY,
            ("duration" Prelude..=) Prelude.<$> duration,
            ("width" Prelude..=) Prelude.<$> width,
            ("layer" Prelude..=) Prelude.<$> layer,
            ("startTime" Prelude..=) Prelude.<$> startTime,
            ("opacity" Prelude..=) Prelude.<$> opacity,
            ("fadeIn" Prelude..=) Prelude.<$> fadeIn,
            ("imageInserterInput" Prelude..=)
              Prelude.<$> imageInserterInput,
            ("fadeOut" Prelude..=) Prelude.<$> fadeOut
          ]
      )
