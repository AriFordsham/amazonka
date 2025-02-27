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
-- Module      : Network.AWS.ElasticSearch.Types.ReservedElasticsearchInstancePaymentOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.ReservedElasticsearchInstancePaymentOption
  ( ReservedElasticsearchInstancePaymentOption
      ( ..,
        ReservedElasticsearchInstancePaymentOption_ALL_UPFRONT,
        ReservedElasticsearchInstancePaymentOption_NO_UPFRONT,
        ReservedElasticsearchInstancePaymentOption_PARTIAL_UPFRONT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReservedElasticsearchInstancePaymentOption = ReservedElasticsearchInstancePaymentOption'
  { fromReservedElasticsearchInstancePaymentOption ::
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

pattern ReservedElasticsearchInstancePaymentOption_ALL_UPFRONT :: ReservedElasticsearchInstancePaymentOption
pattern ReservedElasticsearchInstancePaymentOption_ALL_UPFRONT = ReservedElasticsearchInstancePaymentOption' "ALL_UPFRONT"

pattern ReservedElasticsearchInstancePaymentOption_NO_UPFRONT :: ReservedElasticsearchInstancePaymentOption
pattern ReservedElasticsearchInstancePaymentOption_NO_UPFRONT = ReservedElasticsearchInstancePaymentOption' "NO_UPFRONT"

pattern ReservedElasticsearchInstancePaymentOption_PARTIAL_UPFRONT :: ReservedElasticsearchInstancePaymentOption
pattern ReservedElasticsearchInstancePaymentOption_PARTIAL_UPFRONT = ReservedElasticsearchInstancePaymentOption' "PARTIAL_UPFRONT"

{-# COMPLETE
  ReservedElasticsearchInstancePaymentOption_ALL_UPFRONT,
  ReservedElasticsearchInstancePaymentOption_NO_UPFRONT,
  ReservedElasticsearchInstancePaymentOption_PARTIAL_UPFRONT,
  ReservedElasticsearchInstancePaymentOption'
  #-}
