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
-- Module      : Network.AWS.MediaConvert.Types.HlsTimedMetadataId3Frame
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.HlsTimedMetadataId3Frame
  ( HlsTimedMetadataId3Frame
      ( ..,
        HlsTimedMetadataId3Frame_NONE,
        HlsTimedMetadataId3Frame_PRIV,
        HlsTimedMetadataId3Frame_TDRL
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Indicates ID3 frame that has the timecode.
newtype HlsTimedMetadataId3Frame = HlsTimedMetadataId3Frame'
  { fromHlsTimedMetadataId3Frame ::
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

pattern HlsTimedMetadataId3Frame_NONE :: HlsTimedMetadataId3Frame
pattern HlsTimedMetadataId3Frame_NONE = HlsTimedMetadataId3Frame' "NONE"

pattern HlsTimedMetadataId3Frame_PRIV :: HlsTimedMetadataId3Frame
pattern HlsTimedMetadataId3Frame_PRIV = HlsTimedMetadataId3Frame' "PRIV"

pattern HlsTimedMetadataId3Frame_TDRL :: HlsTimedMetadataId3Frame
pattern HlsTimedMetadataId3Frame_TDRL = HlsTimedMetadataId3Frame' "TDRL"

{-# COMPLETE
  HlsTimedMetadataId3Frame_NONE,
  HlsTimedMetadataId3Frame_PRIV,
  HlsTimedMetadataId3Frame_TDRL,
  HlsTimedMetadataId3Frame'
  #-}
