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
-- Module      : Network.AWS.Pinpoint.Types.Duration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.Duration
  ( Duration
      ( ..,
        Duration_DAY_14,
        Duration_DAY_30,
        Duration_DAY_7,
        Duration_HR_24
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype Duration = Duration'
  { fromDuration ::
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

pattern Duration_DAY_14 :: Duration
pattern Duration_DAY_14 = Duration' "DAY_14"

pattern Duration_DAY_30 :: Duration
pattern Duration_DAY_30 = Duration' "DAY_30"

pattern Duration_DAY_7 :: Duration
pattern Duration_DAY_7 = Duration' "DAY_7"

pattern Duration_HR_24 :: Duration
pattern Duration_HR_24 = Duration' "HR_24"

{-# COMPLETE
  Duration_DAY_14,
  Duration_DAY_30,
  Duration_DAY_7,
  Duration_HR_24,
  Duration'
  #-}
