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
-- Module      : Network.AWS.AutoScaling.Types.InstanceMetadataEndpointState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AutoScaling.Types.InstanceMetadataEndpointState
  ( InstanceMetadataEndpointState
      ( ..,
        InstanceMetadataEndpointState_Disabled,
        InstanceMetadataEndpointState_Enabled
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InstanceMetadataEndpointState = InstanceMetadataEndpointState'
  { fromInstanceMetadataEndpointState ::
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

pattern InstanceMetadataEndpointState_Disabled :: InstanceMetadataEndpointState
pattern InstanceMetadataEndpointState_Disabled = InstanceMetadataEndpointState' "disabled"

pattern InstanceMetadataEndpointState_Enabled :: InstanceMetadataEndpointState
pattern InstanceMetadataEndpointState_Enabled = InstanceMetadataEndpointState' "enabled"

{-# COMPLETE
  InstanceMetadataEndpointState_Disabled,
  InstanceMetadataEndpointState_Enabled,
  InstanceMetadataEndpointState'
  #-}
