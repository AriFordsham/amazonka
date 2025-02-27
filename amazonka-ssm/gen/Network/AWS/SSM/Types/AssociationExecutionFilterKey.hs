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
-- Module      : Network.AWS.SSM.Types.AssociationExecutionFilterKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.AssociationExecutionFilterKey
  ( AssociationExecutionFilterKey
      ( ..,
        AssociationExecutionFilterKey_CreatedTime,
        AssociationExecutionFilterKey_ExecutionId,
        AssociationExecutionFilterKey_Status
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AssociationExecutionFilterKey = AssociationExecutionFilterKey'
  { fromAssociationExecutionFilterKey ::
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

pattern AssociationExecutionFilterKey_CreatedTime :: AssociationExecutionFilterKey
pattern AssociationExecutionFilterKey_CreatedTime = AssociationExecutionFilterKey' "CreatedTime"

pattern AssociationExecutionFilterKey_ExecutionId :: AssociationExecutionFilterKey
pattern AssociationExecutionFilterKey_ExecutionId = AssociationExecutionFilterKey' "ExecutionId"

pattern AssociationExecutionFilterKey_Status :: AssociationExecutionFilterKey
pattern AssociationExecutionFilterKey_Status = AssociationExecutionFilterKey' "Status"

{-# COMPLETE
  AssociationExecutionFilterKey_CreatedTime,
  AssociationExecutionFilterKey_ExecutionId,
  AssociationExecutionFilterKey_Status,
  AssociationExecutionFilterKey'
  #-}
