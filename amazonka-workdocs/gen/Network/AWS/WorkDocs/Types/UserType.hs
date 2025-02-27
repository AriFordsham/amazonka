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
-- Module      : Network.AWS.WorkDocs.Types.UserType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.UserType
  ( UserType
      ( ..,
        UserType_ADMIN,
        UserType_MINIMALUSER,
        UserType_POWERUSER,
        UserType_USER,
        UserType_WORKSPACESUSER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype UserType = UserType'
  { fromUserType ::
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

pattern UserType_ADMIN :: UserType
pattern UserType_ADMIN = UserType' "ADMIN"

pattern UserType_MINIMALUSER :: UserType
pattern UserType_MINIMALUSER = UserType' "MINIMALUSER"

pattern UserType_POWERUSER :: UserType
pattern UserType_POWERUSER = UserType' "POWERUSER"

pattern UserType_USER :: UserType
pattern UserType_USER = UserType' "USER"

pattern UserType_WORKSPACESUSER :: UserType
pattern UserType_WORKSPACESUSER = UserType' "WORKSPACESUSER"

{-# COMPLETE
  UserType_ADMIN,
  UserType_MINIMALUSER,
  UserType_POWERUSER,
  UserType_USER,
  UserType_WORKSPACESUSER,
  UserType'
  #-}
