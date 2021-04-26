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
-- Module      : Network.AWS.SageMaker.Types.AutoMLJobCompletionCriteria
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AutoMLJobCompletionCriteria where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | How long a job is allowed to run, or how many candidates a job is
-- allowed to generate.
--
-- /See:/ 'newAutoMLJobCompletionCriteria' smart constructor.
data AutoMLJobCompletionCriteria = AutoMLJobCompletionCriteria'
  { -- | The maximum time, in seconds, a job is allowed to run.
    maxRuntimePerTrainingJobInSeconds :: Prelude.Maybe Prelude.Nat,
    -- | The maximum time, in seconds, an AutoML job is allowed to wait for a
    -- trial to complete. It must be equal to or greater than
    -- MaxRuntimePerTrainingJobInSeconds.
    maxAutoMLJobRuntimeInSeconds :: Prelude.Maybe Prelude.Nat,
    -- | The maximum number of times a training job is allowed to run.
    maxCandidates :: Prelude.Maybe Prelude.Nat
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AutoMLJobCompletionCriteria' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'maxRuntimePerTrainingJobInSeconds', 'autoMLJobCompletionCriteria_maxRuntimePerTrainingJobInSeconds' - The maximum time, in seconds, a job is allowed to run.
--
-- 'maxAutoMLJobRuntimeInSeconds', 'autoMLJobCompletionCriteria_maxAutoMLJobRuntimeInSeconds' - The maximum time, in seconds, an AutoML job is allowed to wait for a
-- trial to complete. It must be equal to or greater than
-- MaxRuntimePerTrainingJobInSeconds.
--
-- 'maxCandidates', 'autoMLJobCompletionCriteria_maxCandidates' - The maximum number of times a training job is allowed to run.
newAutoMLJobCompletionCriteria ::
  AutoMLJobCompletionCriteria
newAutoMLJobCompletionCriteria =
  AutoMLJobCompletionCriteria'
    { maxRuntimePerTrainingJobInSeconds =
        Prelude.Nothing,
      maxAutoMLJobRuntimeInSeconds = Prelude.Nothing,
      maxCandidates = Prelude.Nothing
    }

-- | The maximum time, in seconds, a job is allowed to run.
autoMLJobCompletionCriteria_maxRuntimePerTrainingJobInSeconds :: Lens.Lens' AutoMLJobCompletionCriteria (Prelude.Maybe Prelude.Natural)
autoMLJobCompletionCriteria_maxRuntimePerTrainingJobInSeconds = Lens.lens (\AutoMLJobCompletionCriteria' {maxRuntimePerTrainingJobInSeconds} -> maxRuntimePerTrainingJobInSeconds) (\s@AutoMLJobCompletionCriteria' {} a -> s {maxRuntimePerTrainingJobInSeconds = a} :: AutoMLJobCompletionCriteria) Prelude.. Lens.mapping Prelude._Nat

-- | The maximum time, in seconds, an AutoML job is allowed to wait for a
-- trial to complete. It must be equal to or greater than
-- MaxRuntimePerTrainingJobInSeconds.
autoMLJobCompletionCriteria_maxAutoMLJobRuntimeInSeconds :: Lens.Lens' AutoMLJobCompletionCriteria (Prelude.Maybe Prelude.Natural)
autoMLJobCompletionCriteria_maxAutoMLJobRuntimeInSeconds = Lens.lens (\AutoMLJobCompletionCriteria' {maxAutoMLJobRuntimeInSeconds} -> maxAutoMLJobRuntimeInSeconds) (\s@AutoMLJobCompletionCriteria' {} a -> s {maxAutoMLJobRuntimeInSeconds = a} :: AutoMLJobCompletionCriteria) Prelude.. Lens.mapping Prelude._Nat

-- | The maximum number of times a training job is allowed to run.
autoMLJobCompletionCriteria_maxCandidates :: Lens.Lens' AutoMLJobCompletionCriteria (Prelude.Maybe Prelude.Natural)
autoMLJobCompletionCriteria_maxCandidates = Lens.lens (\AutoMLJobCompletionCriteria' {maxCandidates} -> maxCandidates) (\s@AutoMLJobCompletionCriteria' {} a -> s {maxCandidates = a} :: AutoMLJobCompletionCriteria) Prelude.. Lens.mapping Prelude._Nat

instance Prelude.FromJSON AutoMLJobCompletionCriteria where
  parseJSON =
    Prelude.withObject
      "AutoMLJobCompletionCriteria"
      ( \x ->
          AutoMLJobCompletionCriteria'
            Prelude.<$> (x Prelude..:? "MaxRuntimePerTrainingJobInSeconds")
            Prelude.<*> (x Prelude..:? "MaxAutoMLJobRuntimeInSeconds")
            Prelude.<*> (x Prelude..:? "MaxCandidates")
      )

instance Prelude.Hashable AutoMLJobCompletionCriteria

instance Prelude.NFData AutoMLJobCompletionCriteria

instance Prelude.ToJSON AutoMLJobCompletionCriteria where
  toJSON AutoMLJobCompletionCriteria' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("MaxRuntimePerTrainingJobInSeconds" Prelude..=)
              Prelude.<$> maxRuntimePerTrainingJobInSeconds,
            ("MaxAutoMLJobRuntimeInSeconds" Prelude..=)
              Prelude.<$> maxAutoMLJobRuntimeInSeconds,
            ("MaxCandidates" Prelude..=)
              Prelude.<$> maxCandidates
          ]
      )
