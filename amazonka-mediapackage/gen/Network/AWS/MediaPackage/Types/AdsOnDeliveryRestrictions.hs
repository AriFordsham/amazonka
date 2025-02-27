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
-- Module      : Network.AWS.MediaPackage.Types.AdsOnDeliveryRestrictions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.AdsOnDeliveryRestrictions
  ( AdsOnDeliveryRestrictions
      ( ..,
        AdsOnDeliveryRestrictions_BOTH,
        AdsOnDeliveryRestrictions_NONE,
        AdsOnDeliveryRestrictions_RESTRICTED,
        AdsOnDeliveryRestrictions_UNRESTRICTED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | This setting allows the delivery restriction flags on SCTE-35
-- segmentation descriptors to determine whether a message signals an ad.
-- Choosing \"NONE\" means no SCTE-35 messages become ads. Choosing
-- \"RESTRICTED\" means SCTE-35 messages of the types specified in
-- AdTriggers that contain delivery restrictions will be treated as ads.
-- Choosing \"UNRESTRICTED\" means SCTE-35 messages of the types specified
-- in AdTriggers that do not contain delivery restrictions will be treated
-- as ads. Choosing \"BOTH\" means all SCTE-35 messages of the types
-- specified in AdTriggers will be treated as ads. Note that Splice Insert
-- messages do not have these flags and are always treated as ads if
-- specified in AdTriggers.
newtype AdsOnDeliveryRestrictions = AdsOnDeliveryRestrictions'
  { fromAdsOnDeliveryRestrictions ::
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

pattern AdsOnDeliveryRestrictions_BOTH :: AdsOnDeliveryRestrictions
pattern AdsOnDeliveryRestrictions_BOTH = AdsOnDeliveryRestrictions' "BOTH"

pattern AdsOnDeliveryRestrictions_NONE :: AdsOnDeliveryRestrictions
pattern AdsOnDeliveryRestrictions_NONE = AdsOnDeliveryRestrictions' "NONE"

pattern AdsOnDeliveryRestrictions_RESTRICTED :: AdsOnDeliveryRestrictions
pattern AdsOnDeliveryRestrictions_RESTRICTED = AdsOnDeliveryRestrictions' "RESTRICTED"

pattern AdsOnDeliveryRestrictions_UNRESTRICTED :: AdsOnDeliveryRestrictions
pattern AdsOnDeliveryRestrictions_UNRESTRICTED = AdsOnDeliveryRestrictions' "UNRESTRICTED"

{-# COMPLETE
  AdsOnDeliveryRestrictions_BOTH,
  AdsOnDeliveryRestrictions_NONE,
  AdsOnDeliveryRestrictions_RESTRICTED,
  AdsOnDeliveryRestrictions_UNRESTRICTED,
  AdsOnDeliveryRestrictions'
  #-}
