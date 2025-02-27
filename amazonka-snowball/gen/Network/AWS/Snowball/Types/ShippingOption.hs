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
-- Module      : Network.AWS.Snowball.Types.ShippingOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Snowball.Types.ShippingOption
  ( ShippingOption
      ( ..,
        ShippingOption_EXPRESS,
        ShippingOption_NEXT_DAY,
        ShippingOption_SECOND_DAY,
        ShippingOption_STANDARD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ShippingOption = ShippingOption'
  { fromShippingOption ::
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

pattern ShippingOption_EXPRESS :: ShippingOption
pattern ShippingOption_EXPRESS = ShippingOption' "EXPRESS"

pattern ShippingOption_NEXT_DAY :: ShippingOption
pattern ShippingOption_NEXT_DAY = ShippingOption' "NEXT_DAY"

pattern ShippingOption_SECOND_DAY :: ShippingOption
pattern ShippingOption_SECOND_DAY = ShippingOption' "SECOND_DAY"

pattern ShippingOption_STANDARD :: ShippingOption
pattern ShippingOption_STANDARD = ShippingOption' "STANDARD"

{-# COMPLETE
  ShippingOption_EXPRESS,
  ShippingOption_NEXT_DAY,
  ShippingOption_SECOND_DAY,
  ShippingOption_STANDARD,
  ShippingOption'
  #-}
