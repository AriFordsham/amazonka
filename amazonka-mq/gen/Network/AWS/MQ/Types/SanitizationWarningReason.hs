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
-- Module      : Network.AWS.MQ.Types.SanitizationWarningReason
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MQ.Types.SanitizationWarningReason
  ( SanitizationWarningReason
      ( ..,
        SanitizationWarningReason_DISALLOWED_ATTRIBUTE_REMOVED,
        SanitizationWarningReason_DISALLOWED_ELEMENT_REMOVED,
        SanitizationWarningReason_INVALID_ATTRIBUTE_VALUE_REMOVED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The reason for which the XML elements or attributes were sanitized.
newtype SanitizationWarningReason = SanitizationWarningReason'
  { fromSanitizationWarningReason ::
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

pattern SanitizationWarningReason_DISALLOWED_ATTRIBUTE_REMOVED :: SanitizationWarningReason
pattern SanitizationWarningReason_DISALLOWED_ATTRIBUTE_REMOVED = SanitizationWarningReason' "DISALLOWED_ATTRIBUTE_REMOVED"

pattern SanitizationWarningReason_DISALLOWED_ELEMENT_REMOVED :: SanitizationWarningReason
pattern SanitizationWarningReason_DISALLOWED_ELEMENT_REMOVED = SanitizationWarningReason' "DISALLOWED_ELEMENT_REMOVED"

pattern SanitizationWarningReason_INVALID_ATTRIBUTE_VALUE_REMOVED :: SanitizationWarningReason
pattern SanitizationWarningReason_INVALID_ATTRIBUTE_VALUE_REMOVED = SanitizationWarningReason' "INVALID_ATTRIBUTE_VALUE_REMOVED"

{-# COMPLETE
  SanitizationWarningReason_DISALLOWED_ATTRIBUTE_REMOVED,
  SanitizationWarningReason_DISALLOWED_ELEMENT_REMOVED,
  SanitizationWarningReason_INVALID_ATTRIBUTE_VALUE_REMOVED,
  SanitizationWarningReason'
  #-}
