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
-- Module      : Network.AWS.LexModels.Types.LexStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.LexStatus
  ( LexStatus
      ( ..,
        LexStatus_BUILDING,
        LexStatus_FAILED,
        LexStatus_NOT_BUILT,
        LexStatus_READY,
        LexStatus_READY_BASIC_TESTING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LexStatus = LexStatus'
  { fromLexStatus ::
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

pattern LexStatus_BUILDING :: LexStatus
pattern LexStatus_BUILDING = LexStatus' "BUILDING"

pattern LexStatus_FAILED :: LexStatus
pattern LexStatus_FAILED = LexStatus' "FAILED"

pattern LexStatus_NOT_BUILT :: LexStatus
pattern LexStatus_NOT_BUILT = LexStatus' "NOT_BUILT"

pattern LexStatus_READY :: LexStatus
pattern LexStatus_READY = LexStatus' "READY"

pattern LexStatus_READY_BASIC_TESTING :: LexStatus
pattern LexStatus_READY_BASIC_TESTING = LexStatus' "READY_BASIC_TESTING"

{-# COMPLETE
  LexStatus_BUILDING,
  LexStatus_FAILED,
  LexStatus_NOT_BUILT,
  LexStatus_READY,
  LexStatus_READY_BASIC_TESTING,
  LexStatus'
  #-}
