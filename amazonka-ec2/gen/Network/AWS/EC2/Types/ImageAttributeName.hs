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
-- Module      : Network.AWS.EC2.Types.ImageAttributeName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ImageAttributeName
  ( ImageAttributeName
      ( ..,
        ImageAttributeName_BlockDeviceMapping,
        ImageAttributeName_Description,
        ImageAttributeName_Kernel,
        ImageAttributeName_LaunchPermission,
        ImageAttributeName_ProductCodes,
        ImageAttributeName_Ramdisk,
        ImageAttributeName_SriovNetSupport
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ImageAttributeName = ImageAttributeName'
  { fromImageAttributeName ::
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

pattern ImageAttributeName_BlockDeviceMapping :: ImageAttributeName
pattern ImageAttributeName_BlockDeviceMapping = ImageAttributeName' "blockDeviceMapping"

pattern ImageAttributeName_Description :: ImageAttributeName
pattern ImageAttributeName_Description = ImageAttributeName' "description"

pattern ImageAttributeName_Kernel :: ImageAttributeName
pattern ImageAttributeName_Kernel = ImageAttributeName' "kernel"

pattern ImageAttributeName_LaunchPermission :: ImageAttributeName
pattern ImageAttributeName_LaunchPermission = ImageAttributeName' "launchPermission"

pattern ImageAttributeName_ProductCodes :: ImageAttributeName
pattern ImageAttributeName_ProductCodes = ImageAttributeName' "productCodes"

pattern ImageAttributeName_Ramdisk :: ImageAttributeName
pattern ImageAttributeName_Ramdisk = ImageAttributeName' "ramdisk"

pattern ImageAttributeName_SriovNetSupport :: ImageAttributeName
pattern ImageAttributeName_SriovNetSupport = ImageAttributeName' "sriovNetSupport"

{-# COMPLETE
  ImageAttributeName_BlockDeviceMapping,
  ImageAttributeName_Description,
  ImageAttributeName_Kernel,
  ImageAttributeName_LaunchPermission,
  ImageAttributeName_ProductCodes,
  ImageAttributeName_Ramdisk,
  ImageAttributeName_SriovNetSupport,
  ImageAttributeName'
  #-}
