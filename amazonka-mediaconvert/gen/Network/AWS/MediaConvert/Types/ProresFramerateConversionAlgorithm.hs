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
-- Module      : Network.AWS.MediaConvert.Types.ProresFramerateConversionAlgorithm
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.ProresFramerateConversionAlgorithm
  ( ProresFramerateConversionAlgorithm
      ( ..,
        ProresFramerateConversionAlgorithmDUPLICATEDROP,
        ProresFramerateConversionAlgorithmFRAMEFORMER,
        ProresFramerateConversionAlgorithmINTERPOLATE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Choose the method that you want MediaConvert to use when increasing or
-- decreasing the frame rate. We recommend using drop duplicate
-- (DUPLICATE_DROP) for numerically simple conversions, such as 60 fps to
-- 30 fps. For numerically complex conversions, you can use interpolate
-- (INTERPOLATE) to avoid stutter. This results in a smooth picture, but
-- might introduce undesirable video artifacts. For complex frame rate
-- conversions, especially if your source video has already been converted
-- from its original cadence, use FrameFormer (FRAMEFORMER) to do
-- motion-compensated interpolation. FrameFormer chooses the best
-- conversion method frame by frame. Note that using FrameFormer increases
-- the transcoding time and incurs a significant add-on cost.
newtype ProresFramerateConversionAlgorithm = ProresFramerateConversionAlgorithm'
  { fromProresFramerateConversionAlgorithm ::
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

pattern ProresFramerateConversionAlgorithmDUPLICATEDROP :: ProresFramerateConversionAlgorithm
pattern ProresFramerateConversionAlgorithmDUPLICATEDROP = ProresFramerateConversionAlgorithm' "DUPLICATE_DROP"

pattern ProresFramerateConversionAlgorithmFRAMEFORMER :: ProresFramerateConversionAlgorithm
pattern ProresFramerateConversionAlgorithmFRAMEFORMER = ProresFramerateConversionAlgorithm' "FRAMEFORMER"

pattern ProresFramerateConversionAlgorithmINTERPOLATE :: ProresFramerateConversionAlgorithm
pattern ProresFramerateConversionAlgorithmINTERPOLATE = ProresFramerateConversionAlgorithm' "INTERPOLATE"

{-# COMPLETE
  ProresFramerateConversionAlgorithmDUPLICATEDROP,
  ProresFramerateConversionAlgorithmFRAMEFORMER,
  ProresFramerateConversionAlgorithmINTERPOLATE,
  ProresFramerateConversionAlgorithm'
  #-}

instance Prelude.FromText ProresFramerateConversionAlgorithm where
  parser = ProresFramerateConversionAlgorithm' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProresFramerateConversionAlgorithm where
  toText (ProresFramerateConversionAlgorithm' x) = x

instance Prelude.Hashable ProresFramerateConversionAlgorithm

instance Prelude.NFData ProresFramerateConversionAlgorithm

instance Prelude.ToByteString ProresFramerateConversionAlgorithm

instance Prelude.ToQuery ProresFramerateConversionAlgorithm

instance Prelude.ToHeader ProresFramerateConversionAlgorithm

instance Prelude.ToJSON ProresFramerateConversionAlgorithm where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ProresFramerateConversionAlgorithm where
  parseJSON = Prelude.parseJSONText "ProresFramerateConversionAlgorithm"
