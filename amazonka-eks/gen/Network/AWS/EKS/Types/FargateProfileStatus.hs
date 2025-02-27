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
-- Module      : Network.AWS.EKS.Types.FargateProfileStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EKS.Types.FargateProfileStatus
  ( FargateProfileStatus
      ( ..,
        FargateProfileStatus_ACTIVE,
        FargateProfileStatus_CREATE_FAILED,
        FargateProfileStatus_CREATING,
        FargateProfileStatus_DELETE_FAILED,
        FargateProfileStatus_DELETING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FargateProfileStatus = FargateProfileStatus'
  { fromFargateProfileStatus ::
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

pattern FargateProfileStatus_ACTIVE :: FargateProfileStatus
pattern FargateProfileStatus_ACTIVE = FargateProfileStatus' "ACTIVE"

pattern FargateProfileStatus_CREATE_FAILED :: FargateProfileStatus
pattern FargateProfileStatus_CREATE_FAILED = FargateProfileStatus' "CREATE_FAILED"

pattern FargateProfileStatus_CREATING :: FargateProfileStatus
pattern FargateProfileStatus_CREATING = FargateProfileStatus' "CREATING"

pattern FargateProfileStatus_DELETE_FAILED :: FargateProfileStatus
pattern FargateProfileStatus_DELETE_FAILED = FargateProfileStatus' "DELETE_FAILED"

pattern FargateProfileStatus_DELETING :: FargateProfileStatus
pattern FargateProfileStatus_DELETING = FargateProfileStatus' "DELETING"

{-# COMPLETE
  FargateProfileStatus_ACTIVE,
  FargateProfileStatus_CREATE_FAILED,
  FargateProfileStatus_CREATING,
  FargateProfileStatus_DELETE_FAILED,
  FargateProfileStatus_DELETING,
  FargateProfileStatus'
  #-}
