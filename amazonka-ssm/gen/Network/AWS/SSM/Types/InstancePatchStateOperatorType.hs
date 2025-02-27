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
-- Module      : Network.AWS.SSM.Types.InstancePatchStateOperatorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.InstancePatchStateOperatorType
  ( InstancePatchStateOperatorType
      ( ..,
        InstancePatchStateOperatorType_Equal,
        InstancePatchStateOperatorType_GreaterThan,
        InstancePatchStateOperatorType_LessThan,
        InstancePatchStateOperatorType_NotEqual
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype InstancePatchStateOperatorType = InstancePatchStateOperatorType'
  { fromInstancePatchStateOperatorType ::
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

pattern InstancePatchStateOperatorType_Equal :: InstancePatchStateOperatorType
pattern InstancePatchStateOperatorType_Equal = InstancePatchStateOperatorType' "Equal"

pattern InstancePatchStateOperatorType_GreaterThan :: InstancePatchStateOperatorType
pattern InstancePatchStateOperatorType_GreaterThan = InstancePatchStateOperatorType' "GreaterThan"

pattern InstancePatchStateOperatorType_LessThan :: InstancePatchStateOperatorType
pattern InstancePatchStateOperatorType_LessThan = InstancePatchStateOperatorType' "LessThan"

pattern InstancePatchStateOperatorType_NotEqual :: InstancePatchStateOperatorType
pattern InstancePatchStateOperatorType_NotEqual = InstancePatchStateOperatorType' "NotEqual"

{-# COMPLETE
  InstancePatchStateOperatorType_Equal,
  InstancePatchStateOperatorType_GreaterThan,
  InstancePatchStateOperatorType_LessThan,
  InstancePatchStateOperatorType_NotEqual,
  InstancePatchStateOperatorType'
  #-}
