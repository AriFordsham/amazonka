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
-- Module      : Network.AWS.Glacier.Types.CannedACL
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glacier.Types.CannedACL
  ( CannedACL
      ( ..,
        CannedACL_Authenticated_read,
        CannedACL_Aws_exec_read,
        CannedACL_Bucket_owner_full_control,
        CannedACL_Bucket_owner_read,
        CannedACL_Private,
        CannedACL_Public_read,
        CannedACL_Public_read_write
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype CannedACL = CannedACL'
  { fromCannedACL ::
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

pattern CannedACL_Authenticated_read :: CannedACL
pattern CannedACL_Authenticated_read = CannedACL' "authenticated-read"

pattern CannedACL_Aws_exec_read :: CannedACL
pattern CannedACL_Aws_exec_read = CannedACL' "aws-exec-read"

pattern CannedACL_Bucket_owner_full_control :: CannedACL
pattern CannedACL_Bucket_owner_full_control = CannedACL' "bucket-owner-full-control"

pattern CannedACL_Bucket_owner_read :: CannedACL
pattern CannedACL_Bucket_owner_read = CannedACL' "bucket-owner-read"

pattern CannedACL_Private :: CannedACL
pattern CannedACL_Private = CannedACL' "private"

pattern CannedACL_Public_read :: CannedACL
pattern CannedACL_Public_read = CannedACL' "public-read"

pattern CannedACL_Public_read_write :: CannedACL
pattern CannedACL_Public_read_write = CannedACL' "public-read-write"

{-# COMPLETE
  CannedACL_Authenticated_read,
  CannedACL_Aws_exec_read,
  CannedACL_Bucket_owner_full_control,
  CannedACL_Bucket_owner_read,
  CannedACL_Private,
  CannedACL_Public_read,
  CannedACL_Public_read_write,
  CannedACL'
  #-}
