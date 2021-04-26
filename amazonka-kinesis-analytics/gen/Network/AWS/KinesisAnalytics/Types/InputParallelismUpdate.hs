{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.KinesisAnalytics.Types.InputParallelismUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisAnalytics.Types.InputParallelismUpdate where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Provides updates to the parallelism count.
--
-- /See:/ 'newInputParallelismUpdate' smart constructor.
data InputParallelismUpdate = InputParallelismUpdate'
  { -- | Number of in-application streams to create for the specified streaming
    -- source.
    countUpdate :: Prelude.Maybe Prelude.Nat
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'InputParallelismUpdate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'countUpdate', 'inputParallelismUpdate_countUpdate' - Number of in-application streams to create for the specified streaming
-- source.
newInputParallelismUpdate ::
  InputParallelismUpdate
newInputParallelismUpdate =
  InputParallelismUpdate'
    { countUpdate =
        Prelude.Nothing
    }

-- | Number of in-application streams to create for the specified streaming
-- source.
inputParallelismUpdate_countUpdate :: Lens.Lens' InputParallelismUpdate (Prelude.Maybe Prelude.Natural)
inputParallelismUpdate_countUpdate = Lens.lens (\InputParallelismUpdate' {countUpdate} -> countUpdate) (\s@InputParallelismUpdate' {} a -> s {countUpdate = a} :: InputParallelismUpdate) Prelude.. Lens.mapping Prelude._Nat

instance Prelude.Hashable InputParallelismUpdate

instance Prelude.NFData InputParallelismUpdate

instance Prelude.ToJSON InputParallelismUpdate where
  toJSON InputParallelismUpdate' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [("CountUpdate" Prelude..=) Prelude.<$> countUpdate]
      )
