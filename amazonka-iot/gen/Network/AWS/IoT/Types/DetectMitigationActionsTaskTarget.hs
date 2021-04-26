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
-- Module      : Network.AWS.IoT.Types.DetectMitigationActionsTaskTarget
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.DetectMitigationActionsTaskTarget where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The target of a mitigation action task.
--
-- /See:/ 'newDetectMitigationActionsTaskTarget' smart constructor.
data DetectMitigationActionsTaskTarget = DetectMitigationActionsTaskTarget'
  { -- | The unique identifiers of the violations.
    violationIds :: Prelude.Maybe (Prelude.List1 Prelude.Text),
    -- | The name of the behavior.
    behaviorName :: Prelude.Maybe Prelude.Text,
    -- | The name of the security profile.
    securityProfileName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DetectMitigationActionsTaskTarget' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'violationIds', 'detectMitigationActionsTaskTarget_violationIds' - The unique identifiers of the violations.
--
-- 'behaviorName', 'detectMitigationActionsTaskTarget_behaviorName' - The name of the behavior.
--
-- 'securityProfileName', 'detectMitigationActionsTaskTarget_securityProfileName' - The name of the security profile.
newDetectMitigationActionsTaskTarget ::
  DetectMitigationActionsTaskTarget
newDetectMitigationActionsTaskTarget =
  DetectMitigationActionsTaskTarget'
    { violationIds =
        Prelude.Nothing,
      behaviorName = Prelude.Nothing,
      securityProfileName = Prelude.Nothing
    }

-- | The unique identifiers of the violations.
detectMitigationActionsTaskTarget_violationIds :: Lens.Lens' DetectMitigationActionsTaskTarget (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
detectMitigationActionsTaskTarget_violationIds = Lens.lens (\DetectMitigationActionsTaskTarget' {violationIds} -> violationIds) (\s@DetectMitigationActionsTaskTarget' {} a -> s {violationIds = a} :: DetectMitigationActionsTaskTarget) Prelude.. Lens.mapping Prelude._List1

-- | The name of the behavior.
detectMitigationActionsTaskTarget_behaviorName :: Lens.Lens' DetectMitigationActionsTaskTarget (Prelude.Maybe Prelude.Text)
detectMitigationActionsTaskTarget_behaviorName = Lens.lens (\DetectMitigationActionsTaskTarget' {behaviorName} -> behaviorName) (\s@DetectMitigationActionsTaskTarget' {} a -> s {behaviorName = a} :: DetectMitigationActionsTaskTarget)

-- | The name of the security profile.
detectMitigationActionsTaskTarget_securityProfileName :: Lens.Lens' DetectMitigationActionsTaskTarget (Prelude.Maybe Prelude.Text)
detectMitigationActionsTaskTarget_securityProfileName = Lens.lens (\DetectMitigationActionsTaskTarget' {securityProfileName} -> securityProfileName) (\s@DetectMitigationActionsTaskTarget' {} a -> s {securityProfileName = a} :: DetectMitigationActionsTaskTarget)

instance
  Prelude.FromJSON
    DetectMitigationActionsTaskTarget
  where
  parseJSON =
    Prelude.withObject
      "DetectMitigationActionsTaskTarget"
      ( \x ->
          DetectMitigationActionsTaskTarget'
            Prelude.<$> (x Prelude..:? "violationIds")
            Prelude.<*> (x Prelude..:? "behaviorName")
            Prelude.<*> (x Prelude..:? "securityProfileName")
      )

instance
  Prelude.Hashable
    DetectMitigationActionsTaskTarget

instance
  Prelude.NFData
    DetectMitigationActionsTaskTarget

instance
  Prelude.ToJSON
    DetectMitigationActionsTaskTarget
  where
  toJSON DetectMitigationActionsTaskTarget' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("violationIds" Prelude..=)
              Prelude.<$> violationIds,
            ("behaviorName" Prelude..=) Prelude.<$> behaviorName,
            ("securityProfileName" Prelude..=)
              Prelude.<$> securityProfileName
          ]
      )
