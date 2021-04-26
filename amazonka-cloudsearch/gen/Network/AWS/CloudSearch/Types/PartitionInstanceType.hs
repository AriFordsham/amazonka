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
-- Module      : Network.AWS.CloudSearch.Types.PartitionInstanceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudSearch.Types.PartitionInstanceType
  ( PartitionInstanceType
      ( ..,
        PartitionInstanceTypeSearch_2xlarge,
        PartitionInstanceTypeSearch_Large,
        PartitionInstanceTypeSearch_M1_Large,
        PartitionInstanceTypeSearch_M1_Small,
        PartitionInstanceTypeSearch_M2_2xlarge,
        PartitionInstanceTypeSearch_M2_Xlarge,
        PartitionInstanceTypeSearch_M3_2xlarge,
        PartitionInstanceTypeSearch_M3_Large,
        PartitionInstanceTypeSearch_M3_Medium,
        PartitionInstanceTypeSearch_M3_Xlarge,
        PartitionInstanceTypeSearch_Medium,
        PartitionInstanceTypeSearch_Small,
        PartitionInstanceTypeSearch_Xlarge
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The instance type (such as @search.m1.small@) on which an index
-- partition is hosted.
newtype PartitionInstanceType = PartitionInstanceType'
  { fromPartitionInstanceType ::
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

pattern PartitionInstanceTypeSearch_2xlarge :: PartitionInstanceType
pattern PartitionInstanceTypeSearch_2xlarge = PartitionInstanceType' "search.2xlarge"

pattern PartitionInstanceTypeSearch_Large :: PartitionInstanceType
pattern PartitionInstanceTypeSearch_Large = PartitionInstanceType' "search.large"

pattern PartitionInstanceTypeSearch_M1_Large :: PartitionInstanceType
pattern PartitionInstanceTypeSearch_M1_Large = PartitionInstanceType' "search.m1.large"

pattern PartitionInstanceTypeSearch_M1_Small :: PartitionInstanceType
pattern PartitionInstanceTypeSearch_M1_Small = PartitionInstanceType' "search.m1.small"

pattern PartitionInstanceTypeSearch_M2_2xlarge :: PartitionInstanceType
pattern PartitionInstanceTypeSearch_M2_2xlarge = PartitionInstanceType' "search.m2.2xlarge"

pattern PartitionInstanceTypeSearch_M2_Xlarge :: PartitionInstanceType
pattern PartitionInstanceTypeSearch_M2_Xlarge = PartitionInstanceType' "search.m2.xlarge"

pattern PartitionInstanceTypeSearch_M3_2xlarge :: PartitionInstanceType
pattern PartitionInstanceTypeSearch_M3_2xlarge = PartitionInstanceType' "search.m3.2xlarge"

pattern PartitionInstanceTypeSearch_M3_Large :: PartitionInstanceType
pattern PartitionInstanceTypeSearch_M3_Large = PartitionInstanceType' "search.m3.large"

pattern PartitionInstanceTypeSearch_M3_Medium :: PartitionInstanceType
pattern PartitionInstanceTypeSearch_M3_Medium = PartitionInstanceType' "search.m3.medium"

pattern PartitionInstanceTypeSearch_M3_Xlarge :: PartitionInstanceType
pattern PartitionInstanceTypeSearch_M3_Xlarge = PartitionInstanceType' "search.m3.xlarge"

pattern PartitionInstanceTypeSearch_Medium :: PartitionInstanceType
pattern PartitionInstanceTypeSearch_Medium = PartitionInstanceType' "search.medium"

pattern PartitionInstanceTypeSearch_Small :: PartitionInstanceType
pattern PartitionInstanceTypeSearch_Small = PartitionInstanceType' "search.small"

pattern PartitionInstanceTypeSearch_Xlarge :: PartitionInstanceType
pattern PartitionInstanceTypeSearch_Xlarge = PartitionInstanceType' "search.xlarge"

{-# COMPLETE
  PartitionInstanceTypeSearch_2xlarge,
  PartitionInstanceTypeSearch_Large,
  PartitionInstanceTypeSearch_M1_Large,
  PartitionInstanceTypeSearch_M1_Small,
  PartitionInstanceTypeSearch_M2_2xlarge,
  PartitionInstanceTypeSearch_M2_Xlarge,
  PartitionInstanceTypeSearch_M3_2xlarge,
  PartitionInstanceTypeSearch_M3_Large,
  PartitionInstanceTypeSearch_M3_Medium,
  PartitionInstanceTypeSearch_M3_Xlarge,
  PartitionInstanceTypeSearch_Medium,
  PartitionInstanceTypeSearch_Small,
  PartitionInstanceTypeSearch_Xlarge,
  PartitionInstanceType'
  #-}

instance Prelude.FromText PartitionInstanceType where
  parser = PartitionInstanceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText PartitionInstanceType where
  toText (PartitionInstanceType' x) = x

instance Prelude.Hashable PartitionInstanceType

instance Prelude.NFData PartitionInstanceType

instance Prelude.ToByteString PartitionInstanceType

instance Prelude.ToQuery PartitionInstanceType

instance Prelude.ToHeader PartitionInstanceType

instance Prelude.FromXML PartitionInstanceType where
  parseXML = Prelude.parseXMLText "PartitionInstanceType"
