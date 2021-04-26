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
-- Module      : Network.AWS.MediaPackage.Types.AdsOnDeliveryRestrictions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.AdsOnDeliveryRestrictions
  ( AdsOnDeliveryRestrictions
      ( ..,
        AdsOnDeliveryRestrictionsBOTH,
        AdsOnDeliveryRestrictionsNONE,
        AdsOnDeliveryRestrictionsRESTRICTED,
        AdsOnDeliveryRestrictionsUNRESTRICTED
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
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern AdsOnDeliveryRestrictionsBOTH :: AdsOnDeliveryRestrictions
pattern AdsOnDeliveryRestrictionsBOTH = AdsOnDeliveryRestrictions' "BOTH"

pattern AdsOnDeliveryRestrictionsNONE :: AdsOnDeliveryRestrictions
pattern AdsOnDeliveryRestrictionsNONE = AdsOnDeliveryRestrictions' "NONE"

pattern AdsOnDeliveryRestrictionsRESTRICTED :: AdsOnDeliveryRestrictions
pattern AdsOnDeliveryRestrictionsRESTRICTED = AdsOnDeliveryRestrictions' "RESTRICTED"

pattern AdsOnDeliveryRestrictionsUNRESTRICTED :: AdsOnDeliveryRestrictions
pattern AdsOnDeliveryRestrictionsUNRESTRICTED = AdsOnDeliveryRestrictions' "UNRESTRICTED"

{-# COMPLETE
  AdsOnDeliveryRestrictionsBOTH,
  AdsOnDeliveryRestrictionsNONE,
  AdsOnDeliveryRestrictionsRESTRICTED,
  AdsOnDeliveryRestrictionsUNRESTRICTED,
  AdsOnDeliveryRestrictions'
  #-}

instance Prelude.FromText AdsOnDeliveryRestrictions where
  parser = AdsOnDeliveryRestrictions' Prelude.<$> Prelude.takeText

instance Prelude.ToText AdsOnDeliveryRestrictions where
  toText (AdsOnDeliveryRestrictions' x) = x

instance Prelude.Hashable AdsOnDeliveryRestrictions

instance Prelude.NFData AdsOnDeliveryRestrictions

instance Prelude.ToByteString AdsOnDeliveryRestrictions

instance Prelude.ToQuery AdsOnDeliveryRestrictions

instance Prelude.ToHeader AdsOnDeliveryRestrictions

instance Prelude.ToJSON AdsOnDeliveryRestrictions where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AdsOnDeliveryRestrictions where
  parseJSON = Prelude.parseJSONText "AdsOnDeliveryRestrictions"
