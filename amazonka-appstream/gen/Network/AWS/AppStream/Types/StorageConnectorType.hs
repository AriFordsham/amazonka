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
-- Module      : Network.AWS.AppStream.Types.StorageConnectorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.StorageConnectorType
  ( StorageConnectorType
      ( ..,
        StorageConnectorType_GOOGLE_DRIVE,
        StorageConnectorType_HOMEFOLDERS,
        StorageConnectorType_ONE_DRIVE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The type of storage connector.
newtype StorageConnectorType = StorageConnectorType'
  { fromStorageConnectorType ::
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

pattern StorageConnectorType_GOOGLE_DRIVE :: StorageConnectorType
pattern StorageConnectorType_GOOGLE_DRIVE = StorageConnectorType' "GOOGLE_DRIVE"

pattern StorageConnectorType_HOMEFOLDERS :: StorageConnectorType
pattern StorageConnectorType_HOMEFOLDERS = StorageConnectorType' "HOMEFOLDERS"

pattern StorageConnectorType_ONE_DRIVE :: StorageConnectorType
pattern StorageConnectorType_ONE_DRIVE = StorageConnectorType' "ONE_DRIVE"

{-# COMPLETE
  StorageConnectorType_GOOGLE_DRIVE,
  StorageConnectorType_HOMEFOLDERS,
  StorageConnectorType_ONE_DRIVE,
  StorageConnectorType'
  #-}
