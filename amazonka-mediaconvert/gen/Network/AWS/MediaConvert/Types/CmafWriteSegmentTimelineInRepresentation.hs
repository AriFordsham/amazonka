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
-- Module      : Network.AWS.MediaConvert.Types.CmafWriteSegmentTimelineInRepresentation
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.CmafWriteSegmentTimelineInRepresentation
  ( CmafWriteSegmentTimelineInRepresentation
      ( ..,
        CmafWriteSegmentTimelineInRepresentation_DISABLED,
        CmafWriteSegmentTimelineInRepresentation_ENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | When you enable Precise segment duration in DASH manifests
-- (writeSegmentTimelineInRepresentation), your DASH manifest shows precise
-- segment durations. The segment duration information appears inside the
-- SegmentTimeline element, inside SegmentTemplate at the Representation
-- level. When this feature isn\'t enabled, the segment durations in your
-- DASH manifest are approximate. The segment duration information appears
-- in the duration attribute of the SegmentTemplate element.
newtype CmafWriteSegmentTimelineInRepresentation = CmafWriteSegmentTimelineInRepresentation'
  { fromCmafWriteSegmentTimelineInRepresentation ::
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

pattern CmafWriteSegmentTimelineInRepresentation_DISABLED :: CmafWriteSegmentTimelineInRepresentation
pattern CmafWriteSegmentTimelineInRepresentation_DISABLED = CmafWriteSegmentTimelineInRepresentation' "DISABLED"

pattern CmafWriteSegmentTimelineInRepresentation_ENABLED :: CmafWriteSegmentTimelineInRepresentation
pattern CmafWriteSegmentTimelineInRepresentation_ENABLED = CmafWriteSegmentTimelineInRepresentation' "ENABLED"

{-# COMPLETE
  CmafWriteSegmentTimelineInRepresentation_DISABLED,
  CmafWriteSegmentTimelineInRepresentation_ENABLED,
  CmafWriteSegmentTimelineInRepresentation'
  #-}
