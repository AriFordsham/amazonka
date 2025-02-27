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
-- Module      : Network.AWS.MediaLive.Types.H265Settings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H265Settings where

import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaLive.Types.AfdSignaling
import Network.AWS.MediaLive.Types.FixedAfd
import Network.AWS.MediaLive.Types.H265AdaptiveQuantization
import Network.AWS.MediaLive.Types.H265AlternativeTransferFunction
import Network.AWS.MediaLive.Types.H265ColorMetadata
import Network.AWS.MediaLive.Types.H265ColorSpaceSettings
import Network.AWS.MediaLive.Types.H265FilterSettings
import Network.AWS.MediaLive.Types.H265FlickerAq
import Network.AWS.MediaLive.Types.H265GopSizeUnits
import Network.AWS.MediaLive.Types.H265Level
import Network.AWS.MediaLive.Types.H265LookAheadRateControl
import Network.AWS.MediaLive.Types.H265Profile
import Network.AWS.MediaLive.Types.H265RateControlMode
import Network.AWS.MediaLive.Types.H265ScanType
import Network.AWS.MediaLive.Types.H265SceneChangeDetect
import Network.AWS.MediaLive.Types.H265Tier
import Network.AWS.MediaLive.Types.H265TimecodeInsertionBehavior
import qualified Network.AWS.Prelude as Prelude

-- | H265 Settings
--
-- /See:/ 'newH265Settings' smart constructor.
data H265Settings = H265Settings'
  { -- | Sets the scan type of the output to progressive or top-field-first
    -- interlaced.
    scanType :: Prelude.Maybe H265ScanType,
    -- | Size of buffer (HRD buffer model) in bits.
    bufSize :: Prelude.Maybe Prelude.Natural,
    -- | If set to enabled, adjust quantization within each frame to reduce
    -- flicker or \'pop\' on I-frames.
    flickerAq :: Prelude.Maybe H265FlickerAq,
    -- | Whether or not EML should insert an Alternative Transfer Function SEI
    -- message to support backwards compatibility with non-HDR decoders and
    -- displays.
    alternativeTransferFunction :: Prelude.Maybe H265AlternativeTransferFunction,
    -- | Rate control mode. QVBR: Quality will match the specified quality level
    -- except when it is constrained by the maximum bitrate. Recommended if you
    -- or your viewers pay for bandwidth. CBR: Quality varies, depending on the
    -- video complexity. Recommended only if you distribute your assets to
    -- devices that cannot handle variable bitrates. Multiplex: This rate
    -- control mode is only supported (and is required) when the video is being
    -- delivered to a MediaLive Multiplex in which case the rate control
    -- configuration is controlled by the properties within the Multiplex
    -- Program.
    rateControlMode :: Prelude.Maybe H265RateControlMode,
    -- | Number of slices per picture. Must be less than or equal to the number
    -- of macroblock rows for progressive pictures, and less than or equal to
    -- half the number of macroblock rows for interlaced pictures. This field
    -- is optional; when no value is specified the encoder will choose the
    -- number of slices based on encode resolution.
    slices :: Prelude.Maybe Prelude.Natural,
    -- | Includes colorspace metadata in the output.
    colorMetadata :: Prelude.Maybe H265ColorMetadata,
    -- | Indicates if the gopSize is specified in frames or seconds. If seconds
    -- the system will convert the gopSize into a frame count at run time.
    gopSizeUnits :: Prelude.Maybe H265GopSizeUnits,
    -- | GOP size (keyframe interval) in units of either frames or seconds per
    -- gopSizeUnits. If gopSizeUnits is frames, gopSize must be an integer and
    -- must be greater than or equal to 1. If gopSizeUnits is seconds, gopSize
    -- must be greater than 0, but need not be an integer.
    gopSize :: Prelude.Maybe Prelude.Double,
    -- | Four bit AFD value to write on all frames of video in the output stream.
    -- Only valid when afdSignaling is set to \'Fixed\'.
    fixedAfd :: Prelude.Maybe FixedAfd,
    -- | Optional filters that you can apply to an encode.
    filterSettings :: Prelude.Maybe H265FilterSettings,
    -- | Pixel Aspect Ratio numerator.
    parNumerator :: Prelude.Maybe Prelude.Natural,
    -- | Scene change detection.
    sceneChangeDetect :: Prelude.Maybe H265SceneChangeDetect,
    -- | Determines how timecodes should be inserted into the video elementary
    -- stream. - \'disabled\': Do not include timecodes - \'picTimingSei\':
    -- Pass through picture timing SEI messages from the source specified in
    -- Timecode Config
    timecodeInsertion :: Prelude.Maybe H265TimecodeInsertionBehavior,
    -- | Color Space settings
    colorSpaceSettings :: Prelude.Maybe H265ColorSpaceSettings,
    -- | Only meaningful if sceneChangeDetect is set to enabled. Defaults to 5 if
    -- multiplex rate control is used. Enforces separation between repeated
    -- (cadence) I-frames and I-frames inserted by Scene Change Detection. If a
    -- scene change I-frame is within I-interval frames of a cadence I-frame,
    -- the GOP is shrunk and\/or stretched to the scene change I-frame. GOP
    -- stretch requires enabling lookahead as well as setting I-interval. The
    -- normal cadence resumes for the next GOP. Note: Maximum GOP stretch = GOP
    -- size + Min-I-interval - 1
    minIInterval :: Prelude.Maybe Prelude.Natural,
    -- | Controls the target quality for the video encode. Applies only when the
    -- rate control mode is QVBR. Set values for the QVBR quality level field
    -- and Max bitrate field that suit your most important viewing devices.
    -- Recommended values are: - Primary screen: Quality level: 8 to 10. Max
    -- bitrate: 4M - PC or tablet: Quality level: 7. Max bitrate: 1.5M to 3M -
    -- Smartphone: Quality level: 6. Max bitrate: 1M to 1.5M
    qvbrQualityLevel :: Prelude.Maybe Prelude.Natural,
    -- | Frequency of closed GOPs. In streaming applications, it is recommended
    -- that this be set to 1 so a decoder joining mid-stream will receive an
    -- IDR frame as quickly as possible. Setting this value to 0 will break
    -- output segmenting.
    gopClosedCadence :: Prelude.Maybe Prelude.Natural,
    -- | Pixel Aspect Ratio denominator.
    parDenominator :: Prelude.Maybe Prelude.Natural,
    -- | For QVBR: See the tooltip for Quality level
    maxBitrate :: Prelude.Maybe Prelude.Natural,
    -- | H.265 Level.
    level :: Prelude.Maybe H265Level,
    -- | H.265 Profile.
    profile :: Prelude.Maybe H265Profile,
    -- | Adaptive quantization. Allows intra-frame quantizers to vary to improve
    -- visual quality.
    adaptiveQuantization :: Prelude.Maybe H265AdaptiveQuantization,
    -- | Amount of lookahead. A value of low can decrease latency and memory
    -- usage, while high can produce better quality for certain content.
    lookAheadRateControl :: Prelude.Maybe H265LookAheadRateControl,
    -- | Average bitrate in bits\/second. Required when the rate control mode is
    -- VBR or CBR. Not used for QVBR. In an MS Smooth output group, each output
    -- must have a unique value when its bitrate is rounded down to the nearest
    -- multiple of 1000.
    bitrate :: Prelude.Maybe Prelude.Natural,
    -- | Indicates that AFD values will be written into the output stream. If
    -- afdSignaling is \"auto\", the system will try to preserve the input AFD
    -- value (in cases where multiple AFD values are valid). If set to
    -- \"fixed\", the AFD value will be the value configured in the fixedAfd
    -- parameter.
    afdSignaling :: Prelude.Maybe AfdSignaling,
    -- | H.265 Tier.
    tier :: Prelude.Maybe H265Tier,
    -- | Framerate numerator - framerate is a fraction, e.g. 24000 \/ 1001 =
    -- 23.976 fps.
    framerateNumerator :: Prelude.Natural,
    -- | Framerate denominator.
    framerateDenominator :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'H265Settings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'scanType', 'h265Settings_scanType' - Sets the scan type of the output to progressive or top-field-first
-- interlaced.
--
-- 'bufSize', 'h265Settings_bufSize' - Size of buffer (HRD buffer model) in bits.
--
-- 'flickerAq', 'h265Settings_flickerAq' - If set to enabled, adjust quantization within each frame to reduce
-- flicker or \'pop\' on I-frames.
--
-- 'alternativeTransferFunction', 'h265Settings_alternativeTransferFunction' - Whether or not EML should insert an Alternative Transfer Function SEI
-- message to support backwards compatibility with non-HDR decoders and
-- displays.
--
-- 'rateControlMode', 'h265Settings_rateControlMode' - Rate control mode. QVBR: Quality will match the specified quality level
-- except when it is constrained by the maximum bitrate. Recommended if you
-- or your viewers pay for bandwidth. CBR: Quality varies, depending on the
-- video complexity. Recommended only if you distribute your assets to
-- devices that cannot handle variable bitrates. Multiplex: This rate
-- control mode is only supported (and is required) when the video is being
-- delivered to a MediaLive Multiplex in which case the rate control
-- configuration is controlled by the properties within the Multiplex
-- Program.
--
-- 'slices', 'h265Settings_slices' - Number of slices per picture. Must be less than or equal to the number
-- of macroblock rows for progressive pictures, and less than or equal to
-- half the number of macroblock rows for interlaced pictures. This field
-- is optional; when no value is specified the encoder will choose the
-- number of slices based on encode resolution.
--
-- 'colorMetadata', 'h265Settings_colorMetadata' - Includes colorspace metadata in the output.
--
-- 'gopSizeUnits', 'h265Settings_gopSizeUnits' - Indicates if the gopSize is specified in frames or seconds. If seconds
-- the system will convert the gopSize into a frame count at run time.
--
-- 'gopSize', 'h265Settings_gopSize' - GOP size (keyframe interval) in units of either frames or seconds per
-- gopSizeUnits. If gopSizeUnits is frames, gopSize must be an integer and
-- must be greater than or equal to 1. If gopSizeUnits is seconds, gopSize
-- must be greater than 0, but need not be an integer.
--
-- 'fixedAfd', 'h265Settings_fixedAfd' - Four bit AFD value to write on all frames of video in the output stream.
-- Only valid when afdSignaling is set to \'Fixed\'.
--
-- 'filterSettings', 'h265Settings_filterSettings' - Optional filters that you can apply to an encode.
--
-- 'parNumerator', 'h265Settings_parNumerator' - Pixel Aspect Ratio numerator.
--
-- 'sceneChangeDetect', 'h265Settings_sceneChangeDetect' - Scene change detection.
--
-- 'timecodeInsertion', 'h265Settings_timecodeInsertion' - Determines how timecodes should be inserted into the video elementary
-- stream. - \'disabled\': Do not include timecodes - \'picTimingSei\':
-- Pass through picture timing SEI messages from the source specified in
-- Timecode Config
--
-- 'colorSpaceSettings', 'h265Settings_colorSpaceSettings' - Color Space settings
--
-- 'minIInterval', 'h265Settings_minIInterval' - Only meaningful if sceneChangeDetect is set to enabled. Defaults to 5 if
-- multiplex rate control is used. Enforces separation between repeated
-- (cadence) I-frames and I-frames inserted by Scene Change Detection. If a
-- scene change I-frame is within I-interval frames of a cadence I-frame,
-- the GOP is shrunk and\/or stretched to the scene change I-frame. GOP
-- stretch requires enabling lookahead as well as setting I-interval. The
-- normal cadence resumes for the next GOP. Note: Maximum GOP stretch = GOP
-- size + Min-I-interval - 1
--
-- 'qvbrQualityLevel', 'h265Settings_qvbrQualityLevel' - Controls the target quality for the video encode. Applies only when the
-- rate control mode is QVBR. Set values for the QVBR quality level field
-- and Max bitrate field that suit your most important viewing devices.
-- Recommended values are: - Primary screen: Quality level: 8 to 10. Max
-- bitrate: 4M - PC or tablet: Quality level: 7. Max bitrate: 1.5M to 3M -
-- Smartphone: Quality level: 6. Max bitrate: 1M to 1.5M
--
-- 'gopClosedCadence', 'h265Settings_gopClosedCadence' - Frequency of closed GOPs. In streaming applications, it is recommended
-- that this be set to 1 so a decoder joining mid-stream will receive an
-- IDR frame as quickly as possible. Setting this value to 0 will break
-- output segmenting.
--
-- 'parDenominator', 'h265Settings_parDenominator' - Pixel Aspect Ratio denominator.
--
-- 'maxBitrate', 'h265Settings_maxBitrate' - For QVBR: See the tooltip for Quality level
--
-- 'level', 'h265Settings_level' - H.265 Level.
--
-- 'profile', 'h265Settings_profile' - H.265 Profile.
--
-- 'adaptiveQuantization', 'h265Settings_adaptiveQuantization' - Adaptive quantization. Allows intra-frame quantizers to vary to improve
-- visual quality.
--
-- 'lookAheadRateControl', 'h265Settings_lookAheadRateControl' - Amount of lookahead. A value of low can decrease latency and memory
-- usage, while high can produce better quality for certain content.
--
-- 'bitrate', 'h265Settings_bitrate' - Average bitrate in bits\/second. Required when the rate control mode is
-- VBR or CBR. Not used for QVBR. In an MS Smooth output group, each output
-- must have a unique value when its bitrate is rounded down to the nearest
-- multiple of 1000.
--
-- 'afdSignaling', 'h265Settings_afdSignaling' - Indicates that AFD values will be written into the output stream. If
-- afdSignaling is \"auto\", the system will try to preserve the input AFD
-- value (in cases where multiple AFD values are valid). If set to
-- \"fixed\", the AFD value will be the value configured in the fixedAfd
-- parameter.
--
-- 'tier', 'h265Settings_tier' - H.265 Tier.
--
-- 'framerateNumerator', 'h265Settings_framerateNumerator' - Framerate numerator - framerate is a fraction, e.g. 24000 \/ 1001 =
-- 23.976 fps.
--
-- 'framerateDenominator', 'h265Settings_framerateDenominator' - Framerate denominator.
newH265Settings ::
  -- | 'framerateNumerator'
  Prelude.Natural ->
  -- | 'framerateDenominator'
  Prelude.Natural ->
  H265Settings
newH265Settings
  pFramerateNumerator_
  pFramerateDenominator_ =
    H265Settings'
      { scanType = Prelude.Nothing,
        bufSize = Prelude.Nothing,
        flickerAq = Prelude.Nothing,
        alternativeTransferFunction = Prelude.Nothing,
        rateControlMode = Prelude.Nothing,
        slices = Prelude.Nothing,
        colorMetadata = Prelude.Nothing,
        gopSizeUnits = Prelude.Nothing,
        gopSize = Prelude.Nothing,
        fixedAfd = Prelude.Nothing,
        filterSettings = Prelude.Nothing,
        parNumerator = Prelude.Nothing,
        sceneChangeDetect = Prelude.Nothing,
        timecodeInsertion = Prelude.Nothing,
        colorSpaceSettings = Prelude.Nothing,
        minIInterval = Prelude.Nothing,
        qvbrQualityLevel = Prelude.Nothing,
        gopClosedCadence = Prelude.Nothing,
        parDenominator = Prelude.Nothing,
        maxBitrate = Prelude.Nothing,
        level = Prelude.Nothing,
        profile = Prelude.Nothing,
        adaptiveQuantization = Prelude.Nothing,
        lookAheadRateControl = Prelude.Nothing,
        bitrate = Prelude.Nothing,
        afdSignaling = Prelude.Nothing,
        tier = Prelude.Nothing,
        framerateNumerator = pFramerateNumerator_,
        framerateDenominator = pFramerateDenominator_
      }

-- | Sets the scan type of the output to progressive or top-field-first
-- interlaced.
h265Settings_scanType :: Lens.Lens' H265Settings (Prelude.Maybe H265ScanType)
h265Settings_scanType = Lens.lens (\H265Settings' {scanType} -> scanType) (\s@H265Settings' {} a -> s {scanType = a} :: H265Settings)

-- | Size of buffer (HRD buffer model) in bits.
h265Settings_bufSize :: Lens.Lens' H265Settings (Prelude.Maybe Prelude.Natural)
h265Settings_bufSize = Lens.lens (\H265Settings' {bufSize} -> bufSize) (\s@H265Settings' {} a -> s {bufSize = a} :: H265Settings)

-- | If set to enabled, adjust quantization within each frame to reduce
-- flicker or \'pop\' on I-frames.
h265Settings_flickerAq :: Lens.Lens' H265Settings (Prelude.Maybe H265FlickerAq)
h265Settings_flickerAq = Lens.lens (\H265Settings' {flickerAq} -> flickerAq) (\s@H265Settings' {} a -> s {flickerAq = a} :: H265Settings)

-- | Whether or not EML should insert an Alternative Transfer Function SEI
-- message to support backwards compatibility with non-HDR decoders and
-- displays.
h265Settings_alternativeTransferFunction :: Lens.Lens' H265Settings (Prelude.Maybe H265AlternativeTransferFunction)
h265Settings_alternativeTransferFunction = Lens.lens (\H265Settings' {alternativeTransferFunction} -> alternativeTransferFunction) (\s@H265Settings' {} a -> s {alternativeTransferFunction = a} :: H265Settings)

-- | Rate control mode. QVBR: Quality will match the specified quality level
-- except when it is constrained by the maximum bitrate. Recommended if you
-- or your viewers pay for bandwidth. CBR: Quality varies, depending on the
-- video complexity. Recommended only if you distribute your assets to
-- devices that cannot handle variable bitrates. Multiplex: This rate
-- control mode is only supported (and is required) when the video is being
-- delivered to a MediaLive Multiplex in which case the rate control
-- configuration is controlled by the properties within the Multiplex
-- Program.
h265Settings_rateControlMode :: Lens.Lens' H265Settings (Prelude.Maybe H265RateControlMode)
h265Settings_rateControlMode = Lens.lens (\H265Settings' {rateControlMode} -> rateControlMode) (\s@H265Settings' {} a -> s {rateControlMode = a} :: H265Settings)

-- | Number of slices per picture. Must be less than or equal to the number
-- of macroblock rows for progressive pictures, and less than or equal to
-- half the number of macroblock rows for interlaced pictures. This field
-- is optional; when no value is specified the encoder will choose the
-- number of slices based on encode resolution.
h265Settings_slices :: Lens.Lens' H265Settings (Prelude.Maybe Prelude.Natural)
h265Settings_slices = Lens.lens (\H265Settings' {slices} -> slices) (\s@H265Settings' {} a -> s {slices = a} :: H265Settings)

-- | Includes colorspace metadata in the output.
h265Settings_colorMetadata :: Lens.Lens' H265Settings (Prelude.Maybe H265ColorMetadata)
h265Settings_colorMetadata = Lens.lens (\H265Settings' {colorMetadata} -> colorMetadata) (\s@H265Settings' {} a -> s {colorMetadata = a} :: H265Settings)

-- | Indicates if the gopSize is specified in frames or seconds. If seconds
-- the system will convert the gopSize into a frame count at run time.
h265Settings_gopSizeUnits :: Lens.Lens' H265Settings (Prelude.Maybe H265GopSizeUnits)
h265Settings_gopSizeUnits = Lens.lens (\H265Settings' {gopSizeUnits} -> gopSizeUnits) (\s@H265Settings' {} a -> s {gopSizeUnits = a} :: H265Settings)

-- | GOP size (keyframe interval) in units of either frames or seconds per
-- gopSizeUnits. If gopSizeUnits is frames, gopSize must be an integer and
-- must be greater than or equal to 1. If gopSizeUnits is seconds, gopSize
-- must be greater than 0, but need not be an integer.
h265Settings_gopSize :: Lens.Lens' H265Settings (Prelude.Maybe Prelude.Double)
h265Settings_gopSize = Lens.lens (\H265Settings' {gopSize} -> gopSize) (\s@H265Settings' {} a -> s {gopSize = a} :: H265Settings)

-- | Four bit AFD value to write on all frames of video in the output stream.
-- Only valid when afdSignaling is set to \'Fixed\'.
h265Settings_fixedAfd :: Lens.Lens' H265Settings (Prelude.Maybe FixedAfd)
h265Settings_fixedAfd = Lens.lens (\H265Settings' {fixedAfd} -> fixedAfd) (\s@H265Settings' {} a -> s {fixedAfd = a} :: H265Settings)

-- | Optional filters that you can apply to an encode.
h265Settings_filterSettings :: Lens.Lens' H265Settings (Prelude.Maybe H265FilterSettings)
h265Settings_filterSettings = Lens.lens (\H265Settings' {filterSettings} -> filterSettings) (\s@H265Settings' {} a -> s {filterSettings = a} :: H265Settings)

-- | Pixel Aspect Ratio numerator.
h265Settings_parNumerator :: Lens.Lens' H265Settings (Prelude.Maybe Prelude.Natural)
h265Settings_parNumerator = Lens.lens (\H265Settings' {parNumerator} -> parNumerator) (\s@H265Settings' {} a -> s {parNumerator = a} :: H265Settings)

-- | Scene change detection.
h265Settings_sceneChangeDetect :: Lens.Lens' H265Settings (Prelude.Maybe H265SceneChangeDetect)
h265Settings_sceneChangeDetect = Lens.lens (\H265Settings' {sceneChangeDetect} -> sceneChangeDetect) (\s@H265Settings' {} a -> s {sceneChangeDetect = a} :: H265Settings)

-- | Determines how timecodes should be inserted into the video elementary
-- stream. - \'disabled\': Do not include timecodes - \'picTimingSei\':
-- Pass through picture timing SEI messages from the source specified in
-- Timecode Config
h265Settings_timecodeInsertion :: Lens.Lens' H265Settings (Prelude.Maybe H265TimecodeInsertionBehavior)
h265Settings_timecodeInsertion = Lens.lens (\H265Settings' {timecodeInsertion} -> timecodeInsertion) (\s@H265Settings' {} a -> s {timecodeInsertion = a} :: H265Settings)

-- | Color Space settings
h265Settings_colorSpaceSettings :: Lens.Lens' H265Settings (Prelude.Maybe H265ColorSpaceSettings)
h265Settings_colorSpaceSettings = Lens.lens (\H265Settings' {colorSpaceSettings} -> colorSpaceSettings) (\s@H265Settings' {} a -> s {colorSpaceSettings = a} :: H265Settings)

-- | Only meaningful if sceneChangeDetect is set to enabled. Defaults to 5 if
-- multiplex rate control is used. Enforces separation between repeated
-- (cadence) I-frames and I-frames inserted by Scene Change Detection. If a
-- scene change I-frame is within I-interval frames of a cadence I-frame,
-- the GOP is shrunk and\/or stretched to the scene change I-frame. GOP
-- stretch requires enabling lookahead as well as setting I-interval. The
-- normal cadence resumes for the next GOP. Note: Maximum GOP stretch = GOP
-- size + Min-I-interval - 1
h265Settings_minIInterval :: Lens.Lens' H265Settings (Prelude.Maybe Prelude.Natural)
h265Settings_minIInterval = Lens.lens (\H265Settings' {minIInterval} -> minIInterval) (\s@H265Settings' {} a -> s {minIInterval = a} :: H265Settings)

-- | Controls the target quality for the video encode. Applies only when the
-- rate control mode is QVBR. Set values for the QVBR quality level field
-- and Max bitrate field that suit your most important viewing devices.
-- Recommended values are: - Primary screen: Quality level: 8 to 10. Max
-- bitrate: 4M - PC or tablet: Quality level: 7. Max bitrate: 1.5M to 3M -
-- Smartphone: Quality level: 6. Max bitrate: 1M to 1.5M
h265Settings_qvbrQualityLevel :: Lens.Lens' H265Settings (Prelude.Maybe Prelude.Natural)
h265Settings_qvbrQualityLevel = Lens.lens (\H265Settings' {qvbrQualityLevel} -> qvbrQualityLevel) (\s@H265Settings' {} a -> s {qvbrQualityLevel = a} :: H265Settings)

-- | Frequency of closed GOPs. In streaming applications, it is recommended
-- that this be set to 1 so a decoder joining mid-stream will receive an
-- IDR frame as quickly as possible. Setting this value to 0 will break
-- output segmenting.
h265Settings_gopClosedCadence :: Lens.Lens' H265Settings (Prelude.Maybe Prelude.Natural)
h265Settings_gopClosedCadence = Lens.lens (\H265Settings' {gopClosedCadence} -> gopClosedCadence) (\s@H265Settings' {} a -> s {gopClosedCadence = a} :: H265Settings)

-- | Pixel Aspect Ratio denominator.
h265Settings_parDenominator :: Lens.Lens' H265Settings (Prelude.Maybe Prelude.Natural)
h265Settings_parDenominator = Lens.lens (\H265Settings' {parDenominator} -> parDenominator) (\s@H265Settings' {} a -> s {parDenominator = a} :: H265Settings)

-- | For QVBR: See the tooltip for Quality level
h265Settings_maxBitrate :: Lens.Lens' H265Settings (Prelude.Maybe Prelude.Natural)
h265Settings_maxBitrate = Lens.lens (\H265Settings' {maxBitrate} -> maxBitrate) (\s@H265Settings' {} a -> s {maxBitrate = a} :: H265Settings)

-- | H.265 Level.
h265Settings_level :: Lens.Lens' H265Settings (Prelude.Maybe H265Level)
h265Settings_level = Lens.lens (\H265Settings' {level} -> level) (\s@H265Settings' {} a -> s {level = a} :: H265Settings)

-- | H.265 Profile.
h265Settings_profile :: Lens.Lens' H265Settings (Prelude.Maybe H265Profile)
h265Settings_profile = Lens.lens (\H265Settings' {profile} -> profile) (\s@H265Settings' {} a -> s {profile = a} :: H265Settings)

-- | Adaptive quantization. Allows intra-frame quantizers to vary to improve
-- visual quality.
h265Settings_adaptiveQuantization :: Lens.Lens' H265Settings (Prelude.Maybe H265AdaptiveQuantization)
h265Settings_adaptiveQuantization = Lens.lens (\H265Settings' {adaptiveQuantization} -> adaptiveQuantization) (\s@H265Settings' {} a -> s {adaptiveQuantization = a} :: H265Settings)

-- | Amount of lookahead. A value of low can decrease latency and memory
-- usage, while high can produce better quality for certain content.
h265Settings_lookAheadRateControl :: Lens.Lens' H265Settings (Prelude.Maybe H265LookAheadRateControl)
h265Settings_lookAheadRateControl = Lens.lens (\H265Settings' {lookAheadRateControl} -> lookAheadRateControl) (\s@H265Settings' {} a -> s {lookAheadRateControl = a} :: H265Settings)

-- | Average bitrate in bits\/second. Required when the rate control mode is
-- VBR or CBR. Not used for QVBR. In an MS Smooth output group, each output
-- must have a unique value when its bitrate is rounded down to the nearest
-- multiple of 1000.
h265Settings_bitrate :: Lens.Lens' H265Settings (Prelude.Maybe Prelude.Natural)
h265Settings_bitrate = Lens.lens (\H265Settings' {bitrate} -> bitrate) (\s@H265Settings' {} a -> s {bitrate = a} :: H265Settings)

-- | Indicates that AFD values will be written into the output stream. If
-- afdSignaling is \"auto\", the system will try to preserve the input AFD
-- value (in cases where multiple AFD values are valid). If set to
-- \"fixed\", the AFD value will be the value configured in the fixedAfd
-- parameter.
h265Settings_afdSignaling :: Lens.Lens' H265Settings (Prelude.Maybe AfdSignaling)
h265Settings_afdSignaling = Lens.lens (\H265Settings' {afdSignaling} -> afdSignaling) (\s@H265Settings' {} a -> s {afdSignaling = a} :: H265Settings)

-- | H.265 Tier.
h265Settings_tier :: Lens.Lens' H265Settings (Prelude.Maybe H265Tier)
h265Settings_tier = Lens.lens (\H265Settings' {tier} -> tier) (\s@H265Settings' {} a -> s {tier = a} :: H265Settings)

-- | Framerate numerator - framerate is a fraction, e.g. 24000 \/ 1001 =
-- 23.976 fps.
h265Settings_framerateNumerator :: Lens.Lens' H265Settings Prelude.Natural
h265Settings_framerateNumerator = Lens.lens (\H265Settings' {framerateNumerator} -> framerateNumerator) (\s@H265Settings' {} a -> s {framerateNumerator = a} :: H265Settings)

-- | Framerate denominator.
h265Settings_framerateDenominator :: Lens.Lens' H265Settings Prelude.Natural
h265Settings_framerateDenominator = Lens.lens (\H265Settings' {framerateDenominator} -> framerateDenominator) (\s@H265Settings' {} a -> s {framerateDenominator = a} :: H265Settings)

instance Prelude.FromJSON H265Settings where
  parseJSON =
    Prelude.withObject
      "H265Settings"
      ( \x ->
          H265Settings'
            Prelude.<$> (x Prelude..:? "scanType")
            Prelude.<*> (x Prelude..:? "bufSize")
            Prelude.<*> (x Prelude..:? "flickerAq")
            Prelude.<*> (x Prelude..:? "alternativeTransferFunction")
            Prelude.<*> (x Prelude..:? "rateControlMode")
            Prelude.<*> (x Prelude..:? "slices")
            Prelude.<*> (x Prelude..:? "colorMetadata")
            Prelude.<*> (x Prelude..:? "gopSizeUnits")
            Prelude.<*> (x Prelude..:? "gopSize")
            Prelude.<*> (x Prelude..:? "fixedAfd")
            Prelude.<*> (x Prelude..:? "filterSettings")
            Prelude.<*> (x Prelude..:? "parNumerator")
            Prelude.<*> (x Prelude..:? "sceneChangeDetect")
            Prelude.<*> (x Prelude..:? "timecodeInsertion")
            Prelude.<*> (x Prelude..:? "colorSpaceSettings")
            Prelude.<*> (x Prelude..:? "minIInterval")
            Prelude.<*> (x Prelude..:? "qvbrQualityLevel")
            Prelude.<*> (x Prelude..:? "gopClosedCadence")
            Prelude.<*> (x Prelude..:? "parDenominator")
            Prelude.<*> (x Prelude..:? "maxBitrate")
            Prelude.<*> (x Prelude..:? "level")
            Prelude.<*> (x Prelude..:? "profile")
            Prelude.<*> (x Prelude..:? "adaptiveQuantization")
            Prelude.<*> (x Prelude..:? "lookAheadRateControl")
            Prelude.<*> (x Prelude..:? "bitrate")
            Prelude.<*> (x Prelude..:? "afdSignaling")
            Prelude.<*> (x Prelude..:? "tier")
            Prelude.<*> (x Prelude..: "framerateNumerator")
            Prelude.<*> (x Prelude..: "framerateDenominator")
      )

instance Prelude.Hashable H265Settings

instance Prelude.NFData H265Settings

instance Prelude.ToJSON H265Settings where
  toJSON H265Settings' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("scanType" Prelude..=) Prelude.<$> scanType,
            ("bufSize" Prelude..=) Prelude.<$> bufSize,
            ("flickerAq" Prelude..=) Prelude.<$> flickerAq,
            ("alternativeTransferFunction" Prelude..=)
              Prelude.<$> alternativeTransferFunction,
            ("rateControlMode" Prelude..=)
              Prelude.<$> rateControlMode,
            ("slices" Prelude..=) Prelude.<$> slices,
            ("colorMetadata" Prelude..=)
              Prelude.<$> colorMetadata,
            ("gopSizeUnits" Prelude..=) Prelude.<$> gopSizeUnits,
            ("gopSize" Prelude..=) Prelude.<$> gopSize,
            ("fixedAfd" Prelude..=) Prelude.<$> fixedAfd,
            ("filterSettings" Prelude..=)
              Prelude.<$> filterSettings,
            ("parNumerator" Prelude..=) Prelude.<$> parNumerator,
            ("sceneChangeDetect" Prelude..=)
              Prelude.<$> sceneChangeDetect,
            ("timecodeInsertion" Prelude..=)
              Prelude.<$> timecodeInsertion,
            ("colorSpaceSettings" Prelude..=)
              Prelude.<$> colorSpaceSettings,
            ("minIInterval" Prelude..=) Prelude.<$> minIInterval,
            ("qvbrQualityLevel" Prelude..=)
              Prelude.<$> qvbrQualityLevel,
            ("gopClosedCadence" Prelude..=)
              Prelude.<$> gopClosedCadence,
            ("parDenominator" Prelude..=)
              Prelude.<$> parDenominator,
            ("maxBitrate" Prelude..=) Prelude.<$> maxBitrate,
            ("level" Prelude..=) Prelude.<$> level,
            ("profile" Prelude..=) Prelude.<$> profile,
            ("adaptiveQuantization" Prelude..=)
              Prelude.<$> adaptiveQuantization,
            ("lookAheadRateControl" Prelude..=)
              Prelude.<$> lookAheadRateControl,
            ("bitrate" Prelude..=) Prelude.<$> bitrate,
            ("afdSignaling" Prelude..=) Prelude.<$> afdSignaling,
            ("tier" Prelude..=) Prelude.<$> tier,
            Prelude.Just
              ("framerateNumerator" Prelude..= framerateNumerator),
            Prelude.Just
              ( "framerateDenominator"
                  Prelude..= framerateDenominator
              )
          ]
      )
