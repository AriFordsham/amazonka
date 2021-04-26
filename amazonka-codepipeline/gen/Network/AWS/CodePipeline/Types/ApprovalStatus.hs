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
-- Module      : Network.AWS.CodePipeline.Types.ApprovalStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ApprovalStatus
  ( ApprovalStatus
      ( ..,
        ApprovalStatusApproved,
        ApprovalStatusRejected
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ApprovalStatus = ApprovalStatus'
  { fromApprovalStatus ::
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

pattern ApprovalStatusApproved :: ApprovalStatus
pattern ApprovalStatusApproved = ApprovalStatus' "Approved"

pattern ApprovalStatusRejected :: ApprovalStatus
pattern ApprovalStatusRejected = ApprovalStatus' "Rejected"

{-# COMPLETE
  ApprovalStatusApproved,
  ApprovalStatusRejected,
  ApprovalStatus'
  #-}

instance Prelude.FromText ApprovalStatus where
  parser = ApprovalStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ApprovalStatus where
  toText (ApprovalStatus' x) = x

instance Prelude.Hashable ApprovalStatus

instance Prelude.NFData ApprovalStatus

instance Prelude.ToByteString ApprovalStatus

instance Prelude.ToQuery ApprovalStatus

instance Prelude.ToHeader ApprovalStatus

instance Prelude.ToJSON ApprovalStatus where
  toJSON = Prelude.toJSONText
