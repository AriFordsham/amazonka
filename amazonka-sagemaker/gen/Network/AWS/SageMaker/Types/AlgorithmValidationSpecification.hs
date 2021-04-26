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
-- Module      : Network.AWS.SageMaker.Types.AlgorithmValidationSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AlgorithmValidationSpecification where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SageMaker.Types.AlgorithmValidationProfile

-- | Specifies configurations for one or more training jobs that Amazon
-- SageMaker runs to test the algorithm.
--
-- /See:/ 'newAlgorithmValidationSpecification' smart constructor.
data AlgorithmValidationSpecification = AlgorithmValidationSpecification'
  { -- | The IAM roles that Amazon SageMaker uses to run the training jobs.
    validationRole :: Prelude.Text,
    -- | An array of @AlgorithmValidationProfile@ objects, each of which
    -- specifies a training job and batch transform job that Amazon SageMaker
    -- runs to validate your algorithm.
    validationProfiles :: Prelude.List1 AlgorithmValidationProfile
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AlgorithmValidationSpecification' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'validationRole', 'algorithmValidationSpecification_validationRole' - The IAM roles that Amazon SageMaker uses to run the training jobs.
--
-- 'validationProfiles', 'algorithmValidationSpecification_validationProfiles' - An array of @AlgorithmValidationProfile@ objects, each of which
-- specifies a training job and batch transform job that Amazon SageMaker
-- runs to validate your algorithm.
newAlgorithmValidationSpecification ::
  -- | 'validationRole'
  Prelude.Text ->
  -- | 'validationProfiles'
  Prelude.NonEmpty AlgorithmValidationProfile ->
  AlgorithmValidationSpecification
newAlgorithmValidationSpecification
  pValidationRole_
  pValidationProfiles_ =
    AlgorithmValidationSpecification'
      { validationRole =
          pValidationRole_,
        validationProfiles =
          Prelude._List1
            Lens.# pValidationProfiles_
      }

-- | The IAM roles that Amazon SageMaker uses to run the training jobs.
algorithmValidationSpecification_validationRole :: Lens.Lens' AlgorithmValidationSpecification Prelude.Text
algorithmValidationSpecification_validationRole = Lens.lens (\AlgorithmValidationSpecification' {validationRole} -> validationRole) (\s@AlgorithmValidationSpecification' {} a -> s {validationRole = a} :: AlgorithmValidationSpecification)

-- | An array of @AlgorithmValidationProfile@ objects, each of which
-- specifies a training job and batch transform job that Amazon SageMaker
-- runs to validate your algorithm.
algorithmValidationSpecification_validationProfiles :: Lens.Lens' AlgorithmValidationSpecification (Prelude.NonEmpty AlgorithmValidationProfile)
algorithmValidationSpecification_validationProfiles = Lens.lens (\AlgorithmValidationSpecification' {validationProfiles} -> validationProfiles) (\s@AlgorithmValidationSpecification' {} a -> s {validationProfiles = a} :: AlgorithmValidationSpecification) Prelude.. Prelude._List1

instance
  Prelude.FromJSON
    AlgorithmValidationSpecification
  where
  parseJSON =
    Prelude.withObject
      "AlgorithmValidationSpecification"
      ( \x ->
          AlgorithmValidationSpecification'
            Prelude.<$> (x Prelude..: "ValidationRole")
            Prelude.<*> (x Prelude..: "ValidationProfiles")
      )

instance
  Prelude.Hashable
    AlgorithmValidationSpecification

instance
  Prelude.NFData
    AlgorithmValidationSpecification

instance
  Prelude.ToJSON
    AlgorithmValidationSpecification
  where
  toJSON AlgorithmValidationSpecification' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("ValidationRole" Prelude..= validationRole),
            Prelude.Just
              ( "ValidationProfiles"
                  Prelude..= validationProfiles
              )
          ]
      )
