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
-- Module      : Network.AWS.WorkMail.Types.FolderName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkMail.Types.FolderName
  ( FolderName
      ( ..,
        FolderName_DELETED_ITEMS,
        FolderName_DRAFTS,
        FolderName_INBOX,
        FolderName_JUNK_EMAIL,
        FolderName_SENT_ITEMS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FolderName = FolderName'
  { fromFolderName ::
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

pattern FolderName_DELETED_ITEMS :: FolderName
pattern FolderName_DELETED_ITEMS = FolderName' "DELETED_ITEMS"

pattern FolderName_DRAFTS :: FolderName
pattern FolderName_DRAFTS = FolderName' "DRAFTS"

pattern FolderName_INBOX :: FolderName
pattern FolderName_INBOX = FolderName' "INBOX"

pattern FolderName_JUNK_EMAIL :: FolderName
pattern FolderName_JUNK_EMAIL = FolderName' "JUNK_EMAIL"

pattern FolderName_SENT_ITEMS :: FolderName
pattern FolderName_SENT_ITEMS = FolderName' "SENT_ITEMS"

{-# COMPLETE
  FolderName_DELETED_ITEMS,
  FolderName_DRAFTS,
  FolderName_INBOX,
  FolderName_JUNK_EMAIL,
  FolderName_SENT_ITEMS,
  FolderName'
  #-}
