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
-- Module      : Network.AWS.MediaLive.Types.InputDeviceTransferType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputDeviceTransferType
  ( InputDeviceTransferType
      ( ..,
        InputDeviceTransferType_INCOMING,
        InputDeviceTransferType_OUTGOING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The type of device transfer. INCOMING for an input device that is being
-- transferred to you, OUTGOING for an input device that you are
-- transferring to another AWS account.
newtype InputDeviceTransferType = InputDeviceTransferType'
  { fromInputDeviceTransferType ::
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

pattern InputDeviceTransferType_INCOMING :: InputDeviceTransferType
pattern InputDeviceTransferType_INCOMING = InputDeviceTransferType' "INCOMING"

pattern InputDeviceTransferType_OUTGOING :: InputDeviceTransferType
pattern InputDeviceTransferType_OUTGOING = InputDeviceTransferType' "OUTGOING"

{-# COMPLETE
  InputDeviceTransferType_INCOMING,
  InputDeviceTransferType_OUTGOING,
  InputDeviceTransferType'
  #-}
