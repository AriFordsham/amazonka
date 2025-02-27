{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MediaConvert.Types.HlsStreamInfResolution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsStreamInfResolution
  ( HlsStreamInfResolution
      ( ..,
        HlsStreamInfResolution_EXCLUDE,
        HlsStreamInfResolution_INCLUDE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Include or exclude RESOLUTION attribute for video in EXT-X-STREAM-INF
-- tag of variant manifest.
newtype HlsStreamInfResolution = HlsStreamInfResolution'
  { fromHlsStreamInfResolution ::
      Prelude.Text
  }
  deriving
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic,
      Prelude.Hashable,
      Prelude.NFData,
      Prelude.FromText,
      Prelude.ToText,
      Prelude.ToByteString,
      Prelude.ToLog,
      Prelude.ToHeader,
      Prelude.ToQuery,
      Prelude.FromJSON,
      Prelude.FromJSONKey,
      Prelude.ToJSON,
      Prelude.ToJSONKey,
      Prelude.FromXML,
      Prelude.ToXML
    )

pattern HlsStreamInfResolution_EXCLUDE :: HlsStreamInfResolution
pattern HlsStreamInfResolution_EXCLUDE = HlsStreamInfResolution' "EXCLUDE"

pattern HlsStreamInfResolution_INCLUDE :: HlsStreamInfResolution
pattern HlsStreamInfResolution_INCLUDE = HlsStreamInfResolution' "INCLUDE"

{-# COMPLETE
  HlsStreamInfResolution_EXCLUDE,
  HlsStreamInfResolution_INCLUDE,
  HlsStreamInfResolution'
  #-}
