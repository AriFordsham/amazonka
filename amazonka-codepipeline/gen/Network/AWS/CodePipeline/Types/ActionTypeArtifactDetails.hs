{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.ActionTypeArtifactDetails
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ActionTypeArtifactDetails where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about parameters for artifacts associated with the action
-- type, such as the minimum and maximum artifacts allowed.
--
-- /See:/ 'newActionTypeArtifactDetails' smart constructor.
data ActionTypeArtifactDetails = ActionTypeArtifactDetails'
  { -- | The minimum number of artifacts that can be used with the action type.
    -- For example, you should specify a minimum and maximum of zero input
    -- artifacts for an action type with a category of @source@.
    minimumCount :: Prelude.Nat,
    -- | The maximum number of artifacts that can be used with the actiontype.
    -- For example, you should specify a minimum and maximum of zero input
    -- artifacts for an action type with a category of @source@.
    maximumCount :: Prelude.Nat
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ActionTypeArtifactDetails' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'minimumCount', 'actionTypeArtifactDetails_minimumCount' - The minimum number of artifacts that can be used with the action type.
-- For example, you should specify a minimum and maximum of zero input
-- artifacts for an action type with a category of @source@.
--
-- 'maximumCount', 'actionTypeArtifactDetails_maximumCount' - The maximum number of artifacts that can be used with the actiontype.
-- For example, you should specify a minimum and maximum of zero input
-- artifacts for an action type with a category of @source@.
newActionTypeArtifactDetails ::
  -- | 'minimumCount'
  Prelude.Natural ->
  -- | 'maximumCount'
  Prelude.Natural ->
  ActionTypeArtifactDetails
newActionTypeArtifactDetails
  pMinimumCount_
  pMaximumCount_ =
    ActionTypeArtifactDetails'
      { minimumCount =
          Prelude._Nat Lens.# pMinimumCount_,
        maximumCount =
          Prelude._Nat Lens.# pMaximumCount_
      }

-- | The minimum number of artifacts that can be used with the action type.
-- For example, you should specify a minimum and maximum of zero input
-- artifacts for an action type with a category of @source@.
actionTypeArtifactDetails_minimumCount :: Lens.Lens' ActionTypeArtifactDetails Prelude.Natural
actionTypeArtifactDetails_minimumCount = Lens.lens (\ActionTypeArtifactDetails' {minimumCount} -> minimumCount) (\s@ActionTypeArtifactDetails' {} a -> s {minimumCount = a} :: ActionTypeArtifactDetails) Prelude.. Prelude._Nat

-- | The maximum number of artifacts that can be used with the actiontype.
-- For example, you should specify a minimum and maximum of zero input
-- artifacts for an action type with a category of @source@.
actionTypeArtifactDetails_maximumCount :: Lens.Lens' ActionTypeArtifactDetails Prelude.Natural
actionTypeArtifactDetails_maximumCount = Lens.lens (\ActionTypeArtifactDetails' {maximumCount} -> maximumCount) (\s@ActionTypeArtifactDetails' {} a -> s {maximumCount = a} :: ActionTypeArtifactDetails) Prelude.. Prelude._Nat

instance Prelude.FromJSON ActionTypeArtifactDetails where
  parseJSON =
    Prelude.withObject
      "ActionTypeArtifactDetails"
      ( \x ->
          ActionTypeArtifactDetails'
            Prelude.<$> (x Prelude..: "minimumCount")
            Prelude.<*> (x Prelude..: "maximumCount")
      )

instance Prelude.Hashable ActionTypeArtifactDetails

instance Prelude.NFData ActionTypeArtifactDetails

instance Prelude.ToJSON ActionTypeArtifactDetails where
  toJSON ActionTypeArtifactDetails' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("minimumCount" Prelude..= minimumCount),
            Prelude.Just
              ("maximumCount" Prelude..= maximumCount)
          ]
      )
