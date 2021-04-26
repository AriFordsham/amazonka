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
-- Module      : Network.AWS.CodeCommit.Types.ConflictResolutionStrategyTypeEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeCommit.Types.ConflictResolutionStrategyTypeEnum
  ( ConflictResolutionStrategyTypeEnum
      ( ..,
        ConflictResolutionStrategyTypeEnumACCEPTDESTINATION,
        ConflictResolutionStrategyTypeEnumACCEPTSOURCE,
        ConflictResolutionStrategyTypeEnumAUTOMERGE,
        ConflictResolutionStrategyTypeEnumNONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConflictResolutionStrategyTypeEnum = ConflictResolutionStrategyTypeEnum'
  { fromConflictResolutionStrategyTypeEnum ::
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

pattern ConflictResolutionStrategyTypeEnumACCEPTDESTINATION :: ConflictResolutionStrategyTypeEnum
pattern ConflictResolutionStrategyTypeEnumACCEPTDESTINATION = ConflictResolutionStrategyTypeEnum' "ACCEPT_DESTINATION"

pattern ConflictResolutionStrategyTypeEnumACCEPTSOURCE :: ConflictResolutionStrategyTypeEnum
pattern ConflictResolutionStrategyTypeEnumACCEPTSOURCE = ConflictResolutionStrategyTypeEnum' "ACCEPT_SOURCE"

pattern ConflictResolutionStrategyTypeEnumAUTOMERGE :: ConflictResolutionStrategyTypeEnum
pattern ConflictResolutionStrategyTypeEnumAUTOMERGE = ConflictResolutionStrategyTypeEnum' "AUTOMERGE"

pattern ConflictResolutionStrategyTypeEnumNONE :: ConflictResolutionStrategyTypeEnum
pattern ConflictResolutionStrategyTypeEnumNONE = ConflictResolutionStrategyTypeEnum' "NONE"

{-# COMPLETE
  ConflictResolutionStrategyTypeEnumACCEPTDESTINATION,
  ConflictResolutionStrategyTypeEnumACCEPTSOURCE,
  ConflictResolutionStrategyTypeEnumAUTOMERGE,
  ConflictResolutionStrategyTypeEnumNONE,
  ConflictResolutionStrategyTypeEnum'
  #-}

instance Prelude.FromText ConflictResolutionStrategyTypeEnum where
  parser = ConflictResolutionStrategyTypeEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConflictResolutionStrategyTypeEnum where
  toText (ConflictResolutionStrategyTypeEnum' x) = x

instance Prelude.Hashable ConflictResolutionStrategyTypeEnum

instance Prelude.NFData ConflictResolutionStrategyTypeEnum

instance Prelude.ToByteString ConflictResolutionStrategyTypeEnum

instance Prelude.ToQuery ConflictResolutionStrategyTypeEnum

instance Prelude.ToHeader ConflictResolutionStrategyTypeEnum

instance Prelude.ToJSON ConflictResolutionStrategyTypeEnum where
  toJSON = Prelude.toJSONText
