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
-- Module      : Network.AWS.EKS.Types.AddonIssueCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EKS.Types.AddonIssueCode
  ( AddonIssueCode
      ( ..,
        AddonIssueCode_AccessDenied,
        AddonIssueCode_AdmissionRequestDenied,
        AddonIssueCode_ClusterUnreachable,
        AddonIssueCode_ConfigurationConflict,
        AddonIssueCode_InsufficientNumberOfReplicas,
        AddonIssueCode_InternalFailure
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AddonIssueCode = AddonIssueCode'
  { fromAddonIssueCode ::
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

pattern AddonIssueCode_AccessDenied :: AddonIssueCode
pattern AddonIssueCode_AccessDenied = AddonIssueCode' "AccessDenied"

pattern AddonIssueCode_AdmissionRequestDenied :: AddonIssueCode
pattern AddonIssueCode_AdmissionRequestDenied = AddonIssueCode' "AdmissionRequestDenied"

pattern AddonIssueCode_ClusterUnreachable :: AddonIssueCode
pattern AddonIssueCode_ClusterUnreachable = AddonIssueCode' "ClusterUnreachable"

pattern AddonIssueCode_ConfigurationConflict :: AddonIssueCode
pattern AddonIssueCode_ConfigurationConflict = AddonIssueCode' "ConfigurationConflict"

pattern AddonIssueCode_InsufficientNumberOfReplicas :: AddonIssueCode
pattern AddonIssueCode_InsufficientNumberOfReplicas = AddonIssueCode' "InsufficientNumberOfReplicas"

pattern AddonIssueCode_InternalFailure :: AddonIssueCode
pattern AddonIssueCode_InternalFailure = AddonIssueCode' "InternalFailure"

{-# COMPLETE
  AddonIssueCode_AccessDenied,
  AddonIssueCode_AdmissionRequestDenied,
  AddonIssueCode_ClusterUnreachable,
  AddonIssueCode_ConfigurationConflict,
  AddonIssueCode_InsufficientNumberOfReplicas,
  AddonIssueCode_InternalFailure,
  AddonIssueCode'
  #-}
