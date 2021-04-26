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
-- Module      : Network.AWS.SageMaker.Types.CategoricalParameterRangeSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.CategoricalParameterRangeSpecification where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Defines the possible values for a categorical hyperparameter.
--
-- /See:/ 'newCategoricalParameterRangeSpecification' smart constructor.
data CategoricalParameterRangeSpecification = CategoricalParameterRangeSpecification'
  { -- | The allowed categories for the hyperparameter.
    values :: Prelude.List1 Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CategoricalParameterRangeSpecification' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'values', 'categoricalParameterRangeSpecification_values' - The allowed categories for the hyperparameter.
newCategoricalParameterRangeSpecification ::
  -- | 'values'
  Prelude.NonEmpty Prelude.Text ->
  CategoricalParameterRangeSpecification
newCategoricalParameterRangeSpecification pValues_ =
  CategoricalParameterRangeSpecification'
    { values =
        Prelude._List1 Lens.# pValues_
    }

-- | The allowed categories for the hyperparameter.
categoricalParameterRangeSpecification_values :: Lens.Lens' CategoricalParameterRangeSpecification (Prelude.NonEmpty Prelude.Text)
categoricalParameterRangeSpecification_values = Lens.lens (\CategoricalParameterRangeSpecification' {values} -> values) (\s@CategoricalParameterRangeSpecification' {} a -> s {values = a} :: CategoricalParameterRangeSpecification) Prelude.. Prelude._List1

instance
  Prelude.FromJSON
    CategoricalParameterRangeSpecification
  where
  parseJSON =
    Prelude.withObject
      "CategoricalParameterRangeSpecification"
      ( \x ->
          CategoricalParameterRangeSpecification'
            Prelude.<$> (x Prelude..: "Values")
      )

instance
  Prelude.Hashable
    CategoricalParameterRangeSpecification

instance
  Prelude.NFData
    CategoricalParameterRangeSpecification

instance
  Prelude.ToJSON
    CategoricalParameterRangeSpecification
  where
  toJSON CategoricalParameterRangeSpecification' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [Prelude.Just ("Values" Prelude..= values)]
      )
