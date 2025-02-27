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
-- Module      : Network.AWS.GuardDuty.Types.ThreatIntelSetFormat
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.ThreatIntelSetFormat
  ( ThreatIntelSetFormat
      ( ..,
        ThreatIntelSetFormat_ALIEN_VAULT,
        ThreatIntelSetFormat_FIRE_EYE,
        ThreatIntelSetFormat_OTX_CSV,
        ThreatIntelSetFormat_PROOF_POINT,
        ThreatIntelSetFormat_STIX,
        ThreatIntelSetFormat_TXT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ThreatIntelSetFormat = ThreatIntelSetFormat'
  { fromThreatIntelSetFormat ::
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

pattern ThreatIntelSetFormat_ALIEN_VAULT :: ThreatIntelSetFormat
pattern ThreatIntelSetFormat_ALIEN_VAULT = ThreatIntelSetFormat' "ALIEN_VAULT"

pattern ThreatIntelSetFormat_FIRE_EYE :: ThreatIntelSetFormat
pattern ThreatIntelSetFormat_FIRE_EYE = ThreatIntelSetFormat' "FIRE_EYE"

pattern ThreatIntelSetFormat_OTX_CSV :: ThreatIntelSetFormat
pattern ThreatIntelSetFormat_OTX_CSV = ThreatIntelSetFormat' "OTX_CSV"

pattern ThreatIntelSetFormat_PROOF_POINT :: ThreatIntelSetFormat
pattern ThreatIntelSetFormat_PROOF_POINT = ThreatIntelSetFormat' "PROOF_POINT"

pattern ThreatIntelSetFormat_STIX :: ThreatIntelSetFormat
pattern ThreatIntelSetFormat_STIX = ThreatIntelSetFormat' "STIX"

pattern ThreatIntelSetFormat_TXT :: ThreatIntelSetFormat
pattern ThreatIntelSetFormat_TXT = ThreatIntelSetFormat' "TXT"

{-# COMPLETE
  ThreatIntelSetFormat_ALIEN_VAULT,
  ThreatIntelSetFormat_FIRE_EYE,
  ThreatIntelSetFormat_OTX_CSV,
  ThreatIntelSetFormat_PROOF_POINT,
  ThreatIntelSetFormat_STIX,
  ThreatIntelSetFormat_TXT,
  ThreatIntelSetFormat'
  #-}
