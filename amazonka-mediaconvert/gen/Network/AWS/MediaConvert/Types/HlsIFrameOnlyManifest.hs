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
-- Module      : Network.AWS.MediaConvert.Types.HlsIFrameOnlyManifest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsIFrameOnlyManifest
  ( HlsIFrameOnlyManifest
      ( ..,
        HlsIFrameOnlyManifestEXCLUDE,
        HlsIFrameOnlyManifestINCLUDE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Choose Include (INCLUDE) to have MediaConvert generate a child manifest
-- that lists only the I-frames for this rendition, in addition to your
-- regular manifest for this rendition. You might use this manifest as part
-- of a workflow that creates preview functions for your video.
-- MediaConvert adds both the I-frame only child manifest and the regular
-- child manifest to the parent manifest. When you don\'t need the I-frame
-- only child manifest, keep the default value Exclude (EXCLUDE).
newtype HlsIFrameOnlyManifest = HlsIFrameOnlyManifest'
  { fromHlsIFrameOnlyManifest ::
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

pattern HlsIFrameOnlyManifestEXCLUDE :: HlsIFrameOnlyManifest
pattern HlsIFrameOnlyManifestEXCLUDE = HlsIFrameOnlyManifest' "EXCLUDE"

pattern HlsIFrameOnlyManifestINCLUDE :: HlsIFrameOnlyManifest
pattern HlsIFrameOnlyManifestINCLUDE = HlsIFrameOnlyManifest' "INCLUDE"

{-# COMPLETE
  HlsIFrameOnlyManifestEXCLUDE,
  HlsIFrameOnlyManifestINCLUDE,
  HlsIFrameOnlyManifest'
  #-}

instance Prelude.FromText HlsIFrameOnlyManifest where
  parser = HlsIFrameOnlyManifest' Prelude.<$> Prelude.takeText

instance Prelude.ToText HlsIFrameOnlyManifest where
  toText (HlsIFrameOnlyManifest' x) = x

instance Prelude.Hashable HlsIFrameOnlyManifest

instance Prelude.NFData HlsIFrameOnlyManifest

instance Prelude.ToByteString HlsIFrameOnlyManifest

instance Prelude.ToQuery HlsIFrameOnlyManifest

instance Prelude.ToHeader HlsIFrameOnlyManifest

instance Prelude.ToJSON HlsIFrameOnlyManifest where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON HlsIFrameOnlyManifest where
  parseJSON = Prelude.parseJSONText "HlsIFrameOnlyManifest"
