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
-- Module      : Network.AWS.GuardDuty.Types.IpSetFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.IpSetFormat
  ( IpSetFormat
      ( ..,
        IpSetFormat_ALIEN_VAULT,
        IpSetFormat_FIRE_EYE,
        IpSetFormat_OTX_CSV,
        IpSetFormat_PROOF_POINT,
        IpSetFormat_STIX,
        IpSetFormat_TXT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype IpSetFormat = IpSetFormat'
  { fromIpSetFormat ::
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

pattern IpSetFormat_ALIEN_VAULT :: IpSetFormat
pattern IpSetFormat_ALIEN_VAULT = IpSetFormat' "ALIEN_VAULT"

pattern IpSetFormat_FIRE_EYE :: IpSetFormat
pattern IpSetFormat_FIRE_EYE = IpSetFormat' "FIRE_EYE"

pattern IpSetFormat_OTX_CSV :: IpSetFormat
pattern IpSetFormat_OTX_CSV = IpSetFormat' "OTX_CSV"

pattern IpSetFormat_PROOF_POINT :: IpSetFormat
pattern IpSetFormat_PROOF_POINT = IpSetFormat' "PROOF_POINT"

pattern IpSetFormat_STIX :: IpSetFormat
pattern IpSetFormat_STIX = IpSetFormat' "STIX"

pattern IpSetFormat_TXT :: IpSetFormat
pattern IpSetFormat_TXT = IpSetFormat' "TXT"

{-# COMPLETE
  IpSetFormat_ALIEN_VAULT,
  IpSetFormat_FIRE_EYE,
  IpSetFormat_OTX_CSV,
  IpSetFormat_PROOF_POINT,
  IpSetFormat_STIX,
  IpSetFormat_TXT,
  IpSetFormat'
  #-}
