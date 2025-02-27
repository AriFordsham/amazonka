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
-- Module      : Network.AWS.CloudDirectory.Types.FacetAttributeType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.FacetAttributeType
  ( FacetAttributeType
      ( ..,
        FacetAttributeType_BINARY,
        FacetAttributeType_BOOLEAN,
        FacetAttributeType_DATETIME,
        FacetAttributeType_NUMBER,
        FacetAttributeType_STRING,
        FacetAttributeType_VARIANT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FacetAttributeType = FacetAttributeType'
  { fromFacetAttributeType ::
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

pattern FacetAttributeType_BINARY :: FacetAttributeType
pattern FacetAttributeType_BINARY = FacetAttributeType' "BINARY"

pattern FacetAttributeType_BOOLEAN :: FacetAttributeType
pattern FacetAttributeType_BOOLEAN = FacetAttributeType' "BOOLEAN"

pattern FacetAttributeType_DATETIME :: FacetAttributeType
pattern FacetAttributeType_DATETIME = FacetAttributeType' "DATETIME"

pattern FacetAttributeType_NUMBER :: FacetAttributeType
pattern FacetAttributeType_NUMBER = FacetAttributeType' "NUMBER"

pattern FacetAttributeType_STRING :: FacetAttributeType
pattern FacetAttributeType_STRING = FacetAttributeType' "STRING"

pattern FacetAttributeType_VARIANT :: FacetAttributeType
pattern FacetAttributeType_VARIANT = FacetAttributeType' "VARIANT"

{-# COMPLETE
  FacetAttributeType_BINARY,
  FacetAttributeType_BOOLEAN,
  FacetAttributeType_DATETIME,
  FacetAttributeType_NUMBER,
  FacetAttributeType_STRING,
  FacetAttributeType_VARIANT,
  FacetAttributeType'
  #-}
