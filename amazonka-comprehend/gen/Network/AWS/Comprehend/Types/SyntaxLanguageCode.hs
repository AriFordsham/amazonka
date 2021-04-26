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
-- Module      : Network.AWS.Comprehend.Types.SyntaxLanguageCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.SyntaxLanguageCode
  ( SyntaxLanguageCode
      ( ..,
        SyntaxLanguageCodeDE,
        SyntaxLanguageCodeEN,
        SyntaxLanguageCodeES,
        SyntaxLanguageCodeFR,
        SyntaxLanguageCodeIT,
        SyntaxLanguageCodePT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SyntaxLanguageCode = SyntaxLanguageCode'
  { fromSyntaxLanguageCode ::
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

pattern SyntaxLanguageCodeDE :: SyntaxLanguageCode
pattern SyntaxLanguageCodeDE = SyntaxLanguageCode' "de"

pattern SyntaxLanguageCodeEN :: SyntaxLanguageCode
pattern SyntaxLanguageCodeEN = SyntaxLanguageCode' "en"

pattern SyntaxLanguageCodeES :: SyntaxLanguageCode
pattern SyntaxLanguageCodeES = SyntaxLanguageCode' "es"

pattern SyntaxLanguageCodeFR :: SyntaxLanguageCode
pattern SyntaxLanguageCodeFR = SyntaxLanguageCode' "fr"

pattern SyntaxLanguageCodeIT :: SyntaxLanguageCode
pattern SyntaxLanguageCodeIT = SyntaxLanguageCode' "it"

pattern SyntaxLanguageCodePT :: SyntaxLanguageCode
pattern SyntaxLanguageCodePT = SyntaxLanguageCode' "pt"

{-# COMPLETE
  SyntaxLanguageCodeDE,
  SyntaxLanguageCodeEN,
  SyntaxLanguageCodeES,
  SyntaxLanguageCodeFR,
  SyntaxLanguageCodeIT,
  SyntaxLanguageCodePT,
  SyntaxLanguageCode'
  #-}

instance Prelude.FromText SyntaxLanguageCode where
  parser = SyntaxLanguageCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText SyntaxLanguageCode where
  toText (SyntaxLanguageCode' x) = x

instance Prelude.Hashable SyntaxLanguageCode

instance Prelude.NFData SyntaxLanguageCode

instance Prelude.ToByteString SyntaxLanguageCode

instance Prelude.ToQuery SyntaxLanguageCode

instance Prelude.ToHeader SyntaxLanguageCode

instance Prelude.ToJSON SyntaxLanguageCode where
  toJSON = Prelude.toJSONText
