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
-- Module      : Network.AWS.SES.Types.VerificationStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.VerificationStatus
  ( VerificationStatus
      ( ..,
        VerificationStatus_Failed,
        VerificationStatus_NotStarted,
        VerificationStatus_Pending,
        VerificationStatus_Success,
        VerificationStatus_TemporaryFailure
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype VerificationStatus = VerificationStatus'
  { fromVerificationStatus ::
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

pattern VerificationStatus_Failed :: VerificationStatus
pattern VerificationStatus_Failed = VerificationStatus' "Failed"

pattern VerificationStatus_NotStarted :: VerificationStatus
pattern VerificationStatus_NotStarted = VerificationStatus' "NotStarted"

pattern VerificationStatus_Pending :: VerificationStatus
pattern VerificationStatus_Pending = VerificationStatus' "Pending"

pattern VerificationStatus_Success :: VerificationStatus
pattern VerificationStatus_Success = VerificationStatus' "Success"

pattern VerificationStatus_TemporaryFailure :: VerificationStatus
pattern VerificationStatus_TemporaryFailure = VerificationStatus' "TemporaryFailure"

{-# COMPLETE
  VerificationStatus_Failed,
  VerificationStatus_NotStarted,
  VerificationStatus_Pending,
  VerificationStatus_Success,
  VerificationStatus_TemporaryFailure,
  VerificationStatus'
  #-}
