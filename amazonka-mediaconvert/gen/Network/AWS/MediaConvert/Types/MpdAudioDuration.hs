{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.MpdAudioDuration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.MpdAudioDuration
  ( MpdAudioDuration
      ( ..,
        MpdAudioDurationDEFAULTCODECDURATION,
        MpdAudioDurationMATCHVIDEODURATION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify this setting only when your output will be consumed by a
-- downstream repackaging workflow that is sensitive to very small duration
-- differences between video and audio. For this situation, choose Match
-- video duration (MATCH_VIDEO_DURATION). In all other cases, keep the
-- default value, Default codec duration (DEFAULT_CODEC_DURATION). When you
-- choose Match video duration, MediaConvert pads the output audio streams
-- with silence or trims them to ensure that the total duration of each
-- audio stream is at least as long as the total duration of the video
-- stream. After padding or trimming, the audio stream duration is no more
-- than one frame longer than the video stream. MediaConvert applies audio
-- padding or trimming only to the end of the last segment of the output.
-- For unsegmented outputs, MediaConvert adds padding only to the end of
-- the file. When you keep the default value, any minor discrepancies
-- between audio and video duration will depend on your output audio codec.
newtype MpdAudioDuration = MpdAudioDuration'
  { fromMpdAudioDuration ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern MpdAudioDurationDEFAULTCODECDURATION :: MpdAudioDuration
pattern MpdAudioDurationDEFAULTCODECDURATION = MpdAudioDuration' "DEFAULT_CODEC_DURATION"

pattern MpdAudioDurationMATCHVIDEODURATION :: MpdAudioDuration
pattern MpdAudioDurationMATCHVIDEODURATION = MpdAudioDuration' "MATCH_VIDEO_DURATION"

{-# COMPLETE
  MpdAudioDurationDEFAULTCODECDURATION,
  MpdAudioDurationMATCHVIDEODURATION,
  MpdAudioDuration'
  #-}

instance Prelude.FromText MpdAudioDuration where
  parser = MpdAudioDuration' Prelude.<$> Prelude.takeText

instance Prelude.ToText MpdAudioDuration where
  toText (MpdAudioDuration' x) = x

instance Prelude.Hashable MpdAudioDuration

instance Prelude.NFData MpdAudioDuration

instance Prelude.ToByteString MpdAudioDuration

instance Prelude.ToQuery MpdAudioDuration

instance Prelude.ToHeader MpdAudioDuration

instance Prelude.ToJSON MpdAudioDuration where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MpdAudioDuration where
  parseJSON = Prelude.parseJSONText "MpdAudioDuration"
