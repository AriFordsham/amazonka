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
-- Module      : Network.AWS.CloudWatchLogs.Types.ResourcePolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchLogs.Types.ResourcePolicy where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A policy enabling one or more entities to put logs to a log group in
-- this account.
--
-- /See:/ 'newResourcePolicy' smart constructor.
data ResourcePolicy = ResourcePolicy'
  { -- | The name of the resource policy.
    policyName :: Prelude.Maybe Prelude.Text,
    -- | The details of the policy.
    policyDocument :: Prelude.Maybe Prelude.Text,
    -- | Timestamp showing when this policy was last updated, expressed as the
    -- number of milliseconds after Jan 1, 1970 00:00:00 UTC.
    lastUpdatedTime :: Prelude.Maybe Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ResourcePolicy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'policyName', 'resourcePolicy_policyName' - The name of the resource policy.
--
-- 'policyDocument', 'resourcePolicy_policyDocument' - The details of the policy.
--
-- 'lastUpdatedTime', 'resourcePolicy_lastUpdatedTime' - Timestamp showing when this policy was last updated, expressed as the
-- number of milliseconds after Jan 1, 1970 00:00:00 UTC.
newResourcePolicy ::
  ResourcePolicy
newResourcePolicy =
  ResourcePolicy'
    { policyName = Prelude.Nothing,
      policyDocument = Prelude.Nothing,
      lastUpdatedTime = Prelude.Nothing
    }

-- | The name of the resource policy.
resourcePolicy_policyName :: Lens.Lens' ResourcePolicy (Prelude.Maybe Prelude.Text)
resourcePolicy_policyName = Lens.lens (\ResourcePolicy' {policyName} -> policyName) (\s@ResourcePolicy' {} a -> s {policyName = a} :: ResourcePolicy)

-- | The details of the policy.
resourcePolicy_policyDocument :: Lens.Lens' ResourcePolicy (Prelude.Maybe Prelude.Text)
resourcePolicy_policyDocument = Lens.lens (\ResourcePolicy' {policyDocument} -> policyDocument) (\s@ResourcePolicy' {} a -> s {policyDocument = a} :: ResourcePolicy)

-- | Timestamp showing when this policy was last updated, expressed as the
-- number of milliseconds after Jan 1, 1970 00:00:00 UTC.
resourcePolicy_lastUpdatedTime :: Lens.Lens' ResourcePolicy (Prelude.Maybe Prelude.Natural)
resourcePolicy_lastUpdatedTime = Lens.lens (\ResourcePolicy' {lastUpdatedTime} -> lastUpdatedTime) (\s@ResourcePolicy' {} a -> s {lastUpdatedTime = a} :: ResourcePolicy)

instance Prelude.FromJSON ResourcePolicy where
  parseJSON =
    Prelude.withObject
      "ResourcePolicy"
      ( \x ->
          ResourcePolicy'
            Prelude.<$> (x Prelude..:? "policyName")
            Prelude.<*> (x Prelude..:? "policyDocument")
            Prelude.<*> (x Prelude..:? "lastUpdatedTime")
      )

instance Prelude.Hashable ResourcePolicy

instance Prelude.NFData ResourcePolicy
