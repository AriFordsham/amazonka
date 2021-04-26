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
-- Module      : Network.AWS.MediaLive.Types.LastFrameClippingBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.LastFrameClippingBehavior
  ( LastFrameClippingBehavior
      ( ..,
        LastFrameClippingBehaviorEXCLUDELASTFRAME,
        LastFrameClippingBehaviorINCLUDELASTFRAME
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | If you specify a StopTimecode in an input (in order to clip the file),
-- you can specify if you want the clip to exclude (the default) or include
-- the frame specified by the timecode.
newtype LastFrameClippingBehavior = LastFrameClippingBehavior'
  { fromLastFrameClippingBehavior ::
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

pattern LastFrameClippingBehaviorEXCLUDELASTFRAME :: LastFrameClippingBehavior
pattern LastFrameClippingBehaviorEXCLUDELASTFRAME = LastFrameClippingBehavior' "EXCLUDE_LAST_FRAME"

pattern LastFrameClippingBehaviorINCLUDELASTFRAME :: LastFrameClippingBehavior
pattern LastFrameClippingBehaviorINCLUDELASTFRAME = LastFrameClippingBehavior' "INCLUDE_LAST_FRAME"

{-# COMPLETE
  LastFrameClippingBehaviorEXCLUDELASTFRAME,
  LastFrameClippingBehaviorINCLUDELASTFRAME,
  LastFrameClippingBehavior'
  #-}

instance Prelude.FromText LastFrameClippingBehavior where
  parser = LastFrameClippingBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText LastFrameClippingBehavior where
  toText (LastFrameClippingBehavior' x) = x

instance Prelude.Hashable LastFrameClippingBehavior

instance Prelude.NFData LastFrameClippingBehavior

instance Prelude.ToByteString LastFrameClippingBehavior

instance Prelude.ToQuery LastFrameClippingBehavior

instance Prelude.ToHeader LastFrameClippingBehavior

instance Prelude.ToJSON LastFrameClippingBehavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON LastFrameClippingBehavior where
  parseJSON = Prelude.parseJSONText "LastFrameClippingBehavior"
