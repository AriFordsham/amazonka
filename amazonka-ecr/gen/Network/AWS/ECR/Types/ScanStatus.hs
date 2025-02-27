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
-- Module      : Network.AWS.ECR.Types.ScanStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECR.Types.ScanStatus
  ( ScanStatus
      ( ..,
        ScanStatus_COMPLETE,
        ScanStatus_FAILED,
        ScanStatus_IN_PROGRESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ScanStatus = ScanStatus'
  { fromScanStatus ::
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

pattern ScanStatus_COMPLETE :: ScanStatus
pattern ScanStatus_COMPLETE = ScanStatus' "COMPLETE"

pattern ScanStatus_FAILED :: ScanStatus
pattern ScanStatus_FAILED = ScanStatus' "FAILED"

pattern ScanStatus_IN_PROGRESS :: ScanStatus
pattern ScanStatus_IN_PROGRESS = ScanStatus' "IN_PROGRESS"

{-# COMPLETE
  ScanStatus_COMPLETE,
  ScanStatus_FAILED,
  ScanStatus_IN_PROGRESS,
  ScanStatus'
  #-}
