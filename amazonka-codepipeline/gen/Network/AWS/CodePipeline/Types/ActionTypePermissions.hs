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
-- Module      : Network.AWS.CodePipeline.Types.ActionTypePermissions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ActionTypePermissions where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Details identifying the users with permissions to use the action type.
--
-- /See:/ 'newActionTypePermissions' smart constructor.
data ActionTypePermissions = ActionTypePermissions'
  { -- | A list of AWS account IDs with access to use the action type in their
    -- pipelines.
    allowedAccounts :: Prelude.List1 Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ActionTypePermissions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'allowedAccounts', 'actionTypePermissions_allowedAccounts' - A list of AWS account IDs with access to use the action type in their
-- pipelines.
newActionTypePermissions ::
  -- | 'allowedAccounts'
  Prelude.NonEmpty Prelude.Text ->
  ActionTypePermissions
newActionTypePermissions pAllowedAccounts_ =
  ActionTypePermissions'
    { allowedAccounts =
        Prelude._List1 Lens.# pAllowedAccounts_
    }

-- | A list of AWS account IDs with access to use the action type in their
-- pipelines.
actionTypePermissions_allowedAccounts :: Lens.Lens' ActionTypePermissions (Prelude.NonEmpty Prelude.Text)
actionTypePermissions_allowedAccounts = Lens.lens (\ActionTypePermissions' {allowedAccounts} -> allowedAccounts) (\s@ActionTypePermissions' {} a -> s {allowedAccounts = a} :: ActionTypePermissions) Prelude.. Prelude._List1

instance Prelude.FromJSON ActionTypePermissions where
  parseJSON =
    Prelude.withObject
      "ActionTypePermissions"
      ( \x ->
          ActionTypePermissions'
            Prelude.<$> (x Prelude..: "allowedAccounts")
      )

instance Prelude.Hashable ActionTypePermissions

instance Prelude.NFData ActionTypePermissions

instance Prelude.ToJSON ActionTypePermissions where
  toJSON ActionTypePermissions' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("allowedAccounts" Prelude..= allowedAccounts)
          ]
      )
