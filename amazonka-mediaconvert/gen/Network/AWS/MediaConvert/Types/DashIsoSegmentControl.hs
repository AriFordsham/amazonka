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
-- Module      : Network.AWS.MediaConvert.Types.DashIsoSegmentControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.DashIsoSegmentControl
  ( DashIsoSegmentControl
      ( ..,
        DashIsoSegmentControl_SEGMENTED_FILES,
        DashIsoSegmentControl_SINGLE_FILE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | When set to SINGLE_FILE, a single output file is generated, which is
-- internally segmented using the Fragment Length and Segment Length. When
-- set to SEGMENTED_FILES, separate segment files will be created.
newtype DashIsoSegmentControl = DashIsoSegmentControl'
  { fromDashIsoSegmentControl ::
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

pattern DashIsoSegmentControl_SEGMENTED_FILES :: DashIsoSegmentControl
pattern DashIsoSegmentControl_SEGMENTED_FILES = DashIsoSegmentControl' "SEGMENTED_FILES"

pattern DashIsoSegmentControl_SINGLE_FILE :: DashIsoSegmentControl
pattern DashIsoSegmentControl_SINGLE_FILE = DashIsoSegmentControl' "SINGLE_FILE"

{-# COMPLETE
  DashIsoSegmentControl_SEGMENTED_FILES,
  DashIsoSegmentControl_SINGLE_FILE,
  DashIsoSegmentControl'
  #-}
