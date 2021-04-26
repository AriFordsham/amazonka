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
-- Module      : Network.AWS.SageMaker.Types.ConditionOutcome
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ConditionOutcome
  ( ConditionOutcome
      ( ..,
        ConditionOutcomeFalse,
        ConditionOutcomeTrue
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConditionOutcome = ConditionOutcome'
  { fromConditionOutcome ::
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

pattern ConditionOutcomeFalse :: ConditionOutcome
pattern ConditionOutcomeFalse = ConditionOutcome' "False"

pattern ConditionOutcomeTrue :: ConditionOutcome
pattern ConditionOutcomeTrue = ConditionOutcome' "True"

{-# COMPLETE
  ConditionOutcomeFalse,
  ConditionOutcomeTrue,
  ConditionOutcome'
  #-}

instance Prelude.FromText ConditionOutcome where
  parser = ConditionOutcome' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConditionOutcome where
  toText (ConditionOutcome' x) = x

instance Prelude.Hashable ConditionOutcome

instance Prelude.NFData ConditionOutcome

instance Prelude.ToByteString ConditionOutcome

instance Prelude.ToQuery ConditionOutcome

instance Prelude.ToHeader ConditionOutcome

instance Prelude.FromJSON ConditionOutcome where
  parseJSON = Prelude.parseJSONText "ConditionOutcome"
