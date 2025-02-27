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
-- Module      : Network.AWS.MediaLive.Types.Mpeg2DisplayRatio
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Mpeg2DisplayRatio
  ( Mpeg2DisplayRatio
      ( ..,
        Mpeg2DisplayRatio_DISPLAYRATIO16X9,
        Mpeg2DisplayRatio_DISPLAYRATIO4X3
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Mpeg2 Display Ratio
newtype Mpeg2DisplayRatio = Mpeg2DisplayRatio'
  { fromMpeg2DisplayRatio ::
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

pattern Mpeg2DisplayRatio_DISPLAYRATIO16X9 :: Mpeg2DisplayRatio
pattern Mpeg2DisplayRatio_DISPLAYRATIO16X9 = Mpeg2DisplayRatio' "DISPLAYRATIO16X9"

pattern Mpeg2DisplayRatio_DISPLAYRATIO4X3 :: Mpeg2DisplayRatio
pattern Mpeg2DisplayRatio_DISPLAYRATIO4X3 = Mpeg2DisplayRatio' "DISPLAYRATIO4X3"

{-# COMPLETE
  Mpeg2DisplayRatio_DISPLAYRATIO16X9,
  Mpeg2DisplayRatio_DISPLAYRATIO4X3,
  Mpeg2DisplayRatio'
  #-}
