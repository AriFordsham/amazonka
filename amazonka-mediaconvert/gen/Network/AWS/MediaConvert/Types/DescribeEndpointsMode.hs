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
-- Module      : Network.AWS.MediaConvert.Types.DescribeEndpointsMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DescribeEndpointsMode
  ( DescribeEndpointsMode
      ( ..,
        DescribeEndpointsModeDEFAULT,
        DescribeEndpointsModeGETONLY
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Optional field, defaults to DEFAULT. Specify DEFAULT for this operation
-- to return your endpoints if any exist, or to create an endpoint for you
-- and return it if one doesn\'t already exist. Specify GET_ONLY to return
-- your endpoints if any exist, or an empty list if none exist.
newtype DescribeEndpointsMode = DescribeEndpointsMode'
  { fromDescribeEndpointsMode ::
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

pattern DescribeEndpointsModeDEFAULT :: DescribeEndpointsMode
pattern DescribeEndpointsModeDEFAULT = DescribeEndpointsMode' "DEFAULT"

pattern DescribeEndpointsModeGETONLY :: DescribeEndpointsMode
pattern DescribeEndpointsModeGETONLY = DescribeEndpointsMode' "GET_ONLY"

{-# COMPLETE
  DescribeEndpointsModeDEFAULT,
  DescribeEndpointsModeGETONLY,
  DescribeEndpointsMode'
  #-}

instance Prelude.FromText DescribeEndpointsMode where
  parser = DescribeEndpointsMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText DescribeEndpointsMode where
  toText (DescribeEndpointsMode' x) = x

instance Prelude.Hashable DescribeEndpointsMode

instance Prelude.NFData DescribeEndpointsMode

instance Prelude.ToByteString DescribeEndpointsMode

instance Prelude.ToQuery DescribeEndpointsMode

instance Prelude.ToHeader DescribeEndpointsMode

instance Prelude.ToJSON DescribeEndpointsMode where
  toJSON = Prelude.toJSONText
