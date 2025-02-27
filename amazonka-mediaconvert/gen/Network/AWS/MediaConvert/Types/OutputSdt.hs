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
-- Module      : Network.AWS.MediaConvert.Types.OutputSdt
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.OutputSdt
  ( OutputSdt
      ( ..,
        OutputSdt_SDT_FOLLOW,
        OutputSdt_SDT_FOLLOW_IF_PRESENT,
        OutputSdt_SDT_MANUAL,
        OutputSdt_SDT_NONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Selects method of inserting SDT information into output stream. \"Follow
-- input SDT\" copies SDT information from input stream to output stream.
-- \"Follow input SDT if present\" copies SDT information from input stream
-- to output stream if SDT information is present in the input, otherwise
-- it will fall back on the user-defined values. Enter \"SDT Manually\"
-- means user will enter the SDT information. \"No SDT\" means output
-- stream will not contain SDT information.
newtype OutputSdt = OutputSdt'
  { fromOutputSdt ::
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

pattern OutputSdt_SDT_FOLLOW :: OutputSdt
pattern OutputSdt_SDT_FOLLOW = OutputSdt' "SDT_FOLLOW"

pattern OutputSdt_SDT_FOLLOW_IF_PRESENT :: OutputSdt
pattern OutputSdt_SDT_FOLLOW_IF_PRESENT = OutputSdt' "SDT_FOLLOW_IF_PRESENT"

pattern OutputSdt_SDT_MANUAL :: OutputSdt
pattern OutputSdt_SDT_MANUAL = OutputSdt' "SDT_MANUAL"

pattern OutputSdt_SDT_NONE :: OutputSdt
pattern OutputSdt_SDT_NONE = OutputSdt' "SDT_NONE"

{-# COMPLETE
  OutputSdt_SDT_FOLLOW,
  OutputSdt_SDT_FOLLOW_IF_PRESENT,
  OutputSdt_SDT_MANUAL,
  OutputSdt_SDT_NONE,
  OutputSdt'
  #-}
