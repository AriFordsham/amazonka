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
-- Module      : Network.AWS.MediaLive.Types.InputDeviceIpScheme
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputDeviceIpScheme
  ( InputDeviceIpScheme
      ( ..,
        InputDeviceIpSchemeDHCP,
        InputDeviceIpSchemeSTATIC
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specifies whether the input device has been configured (outside of
-- MediaLive) to use a dynamic IP address assignment (DHCP) or a static IP
-- address.
newtype InputDeviceIpScheme = InputDeviceIpScheme'
  { fromInputDeviceIpScheme ::
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

pattern InputDeviceIpSchemeDHCP :: InputDeviceIpScheme
pattern InputDeviceIpSchemeDHCP = InputDeviceIpScheme' "DHCP"

pattern InputDeviceIpSchemeSTATIC :: InputDeviceIpScheme
pattern InputDeviceIpSchemeSTATIC = InputDeviceIpScheme' "STATIC"

{-# COMPLETE
  InputDeviceIpSchemeDHCP,
  InputDeviceIpSchemeSTATIC,
  InputDeviceIpScheme'
  #-}

instance Prelude.FromText InputDeviceIpScheme where
  parser = InputDeviceIpScheme' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputDeviceIpScheme where
  toText (InputDeviceIpScheme' x) = x

instance Prelude.Hashable InputDeviceIpScheme

instance Prelude.NFData InputDeviceIpScheme

instance Prelude.ToByteString InputDeviceIpScheme

instance Prelude.ToQuery InputDeviceIpScheme

instance Prelude.ToHeader InputDeviceIpScheme

instance Prelude.FromJSON InputDeviceIpScheme where
  parseJSON = Prelude.parseJSONText "InputDeviceIpScheme"
