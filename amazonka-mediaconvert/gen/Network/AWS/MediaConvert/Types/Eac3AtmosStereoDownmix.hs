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
-- Module      : Network.AWS.MediaConvert.Types.Eac3AtmosStereoDownmix
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Eac3AtmosStereoDownmix
  ( Eac3AtmosStereoDownmix
      ( ..,
        Eac3AtmosStereoDownmix_DPL2,
        Eac3AtmosStereoDownmix_NOT_INDICATED,
        Eac3AtmosStereoDownmix_STEREO,
        Eac3AtmosStereoDownmix_SURROUND
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Choose how the service does stereo downmixing.
newtype Eac3AtmosStereoDownmix = Eac3AtmosStereoDownmix'
  { fromEac3AtmosStereoDownmix ::
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

pattern Eac3AtmosStereoDownmix_DPL2 :: Eac3AtmosStereoDownmix
pattern Eac3AtmosStereoDownmix_DPL2 = Eac3AtmosStereoDownmix' "DPL2"

pattern Eac3AtmosStereoDownmix_NOT_INDICATED :: Eac3AtmosStereoDownmix
pattern Eac3AtmosStereoDownmix_NOT_INDICATED = Eac3AtmosStereoDownmix' "NOT_INDICATED"

pattern Eac3AtmosStereoDownmix_STEREO :: Eac3AtmosStereoDownmix
pattern Eac3AtmosStereoDownmix_STEREO = Eac3AtmosStereoDownmix' "STEREO"

pattern Eac3AtmosStereoDownmix_SURROUND :: Eac3AtmosStereoDownmix
pattern Eac3AtmosStereoDownmix_SURROUND = Eac3AtmosStereoDownmix' "SURROUND"

{-# COMPLETE
  Eac3AtmosStereoDownmix_DPL2,
  Eac3AtmosStereoDownmix_NOT_INDICATED,
  Eac3AtmosStereoDownmix_STEREO,
  Eac3AtmosStereoDownmix_SURROUND,
  Eac3AtmosStereoDownmix'
  #-}
