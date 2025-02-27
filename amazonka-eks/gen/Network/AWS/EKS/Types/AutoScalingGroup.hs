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
-- Module      : Network.AWS.EKS.Types.AutoScalingGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EKS.Types.AutoScalingGroup where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An Auto Scaling group that is associated with an Amazon EKS managed node
-- group.
--
-- /See:/ 'newAutoScalingGroup' smart constructor.
data AutoScalingGroup = AutoScalingGroup'
  { -- | The name of the Auto Scaling group associated with an Amazon EKS managed
    -- node group.
    name :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AutoScalingGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'name', 'autoScalingGroup_name' - The name of the Auto Scaling group associated with an Amazon EKS managed
-- node group.
newAutoScalingGroup ::
  AutoScalingGroup
newAutoScalingGroup =
  AutoScalingGroup' {name = Prelude.Nothing}

-- | The name of the Auto Scaling group associated with an Amazon EKS managed
-- node group.
autoScalingGroup_name :: Lens.Lens' AutoScalingGroup (Prelude.Maybe Prelude.Text)
autoScalingGroup_name = Lens.lens (\AutoScalingGroup' {name} -> name) (\s@AutoScalingGroup' {} a -> s {name = a} :: AutoScalingGroup)

instance Prelude.FromJSON AutoScalingGroup where
  parseJSON =
    Prelude.withObject
      "AutoScalingGroup"
      ( \x ->
          AutoScalingGroup' Prelude.<$> (x Prelude..:? "name")
      )

instance Prelude.Hashable AutoScalingGroup

instance Prelude.NFData AutoScalingGroup
