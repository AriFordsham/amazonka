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
-- Module      : Network.AWS.MediaLive.Types.Eac3DrcRf
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Eac3DrcRf
  ( Eac3DrcRf
      ( ..,
        Eac3DrcRf_FILM_LIGHT,
        Eac3DrcRf_FILM_STANDARD,
        Eac3DrcRf_MUSIC_LIGHT,
        Eac3DrcRf_MUSIC_STANDARD,
        Eac3DrcRf_NONE,
        Eac3DrcRf_SPEECH
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Eac3 Drc Rf
newtype Eac3DrcRf = Eac3DrcRf'
  { fromEac3DrcRf ::
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

pattern Eac3DrcRf_FILM_LIGHT :: Eac3DrcRf
pattern Eac3DrcRf_FILM_LIGHT = Eac3DrcRf' "FILM_LIGHT"

pattern Eac3DrcRf_FILM_STANDARD :: Eac3DrcRf
pattern Eac3DrcRf_FILM_STANDARD = Eac3DrcRf' "FILM_STANDARD"

pattern Eac3DrcRf_MUSIC_LIGHT :: Eac3DrcRf
pattern Eac3DrcRf_MUSIC_LIGHT = Eac3DrcRf' "MUSIC_LIGHT"

pattern Eac3DrcRf_MUSIC_STANDARD :: Eac3DrcRf
pattern Eac3DrcRf_MUSIC_STANDARD = Eac3DrcRf' "MUSIC_STANDARD"

pattern Eac3DrcRf_NONE :: Eac3DrcRf
pattern Eac3DrcRf_NONE = Eac3DrcRf' "NONE"

pattern Eac3DrcRf_SPEECH :: Eac3DrcRf
pattern Eac3DrcRf_SPEECH = Eac3DrcRf' "SPEECH"

{-# COMPLETE
  Eac3DrcRf_FILM_LIGHT,
  Eac3DrcRf_FILM_STANDARD,
  Eac3DrcRf_MUSIC_LIGHT,
  Eac3DrcRf_MUSIC_STANDARD,
  Eac3DrcRf_NONE,
  Eac3DrcRf_SPEECH,
  Eac3DrcRf'
  #-}
