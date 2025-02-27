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
-- Module      : Network.AWS.Snowball.Types.SnowballCapacity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Snowball.Types.SnowballCapacity
  ( SnowballCapacity
      ( ..,
        SnowballCapacity_NoPreference,
        SnowballCapacity_T100,
        SnowballCapacity_T42,
        SnowballCapacity_T50,
        SnowballCapacity_T8,
        SnowballCapacity_T80,
        SnowballCapacity_T98
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SnowballCapacity = SnowballCapacity'
  { fromSnowballCapacity ::
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

pattern SnowballCapacity_NoPreference :: SnowballCapacity
pattern SnowballCapacity_NoPreference = SnowballCapacity' "NoPreference"

pattern SnowballCapacity_T100 :: SnowballCapacity
pattern SnowballCapacity_T100 = SnowballCapacity' "T100"

pattern SnowballCapacity_T42 :: SnowballCapacity
pattern SnowballCapacity_T42 = SnowballCapacity' "T42"

pattern SnowballCapacity_T50 :: SnowballCapacity
pattern SnowballCapacity_T50 = SnowballCapacity' "T50"

pattern SnowballCapacity_T8 :: SnowballCapacity
pattern SnowballCapacity_T8 = SnowballCapacity' "T8"

pattern SnowballCapacity_T80 :: SnowballCapacity
pattern SnowballCapacity_T80 = SnowballCapacity' "T80"

pattern SnowballCapacity_T98 :: SnowballCapacity
pattern SnowballCapacity_T98 = SnowballCapacity' "T98"

{-# COMPLETE
  SnowballCapacity_NoPreference,
  SnowballCapacity_T100,
  SnowballCapacity_T42,
  SnowballCapacity_T50,
  SnowballCapacity_T8,
  SnowballCapacity_T80,
  SnowballCapacity_T98,
  SnowballCapacity'
  #-}
