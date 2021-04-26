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
-- Module      : Network.AWS.SageMaker.Types.ModelExplainabilityAppSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ModelExplainabilityAppSpecification where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Docker container image configuration object for the model explainability
-- job.
--
-- /See:/ 'newModelExplainabilityAppSpecification' smart constructor.
data ModelExplainabilityAppSpecification = ModelExplainabilityAppSpecification'
  { -- | Sets the environment variables in the Docker container.
    environment :: Prelude.Maybe (Prelude.Map Prelude.Text Prelude.Text),
    -- | The container image to be run by the model explainability job.
    imageUri :: Prelude.Text,
    -- | JSON formatted S3 file that defines explainability parameters. For more
    -- information on this JSON configuration file, see
    -- <https://docs.aws.amazon.com/sagemaker/latest/json-model-explainability-parameter-config.html Configure model explainability parameters>.
    configUri :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ModelExplainabilityAppSpecification' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'environment', 'modelExplainabilityAppSpecification_environment' - Sets the environment variables in the Docker container.
--
-- 'imageUri', 'modelExplainabilityAppSpecification_imageUri' - The container image to be run by the model explainability job.
--
-- 'configUri', 'modelExplainabilityAppSpecification_configUri' - JSON formatted S3 file that defines explainability parameters. For more
-- information on this JSON configuration file, see
-- <https://docs.aws.amazon.com/sagemaker/latest/json-model-explainability-parameter-config.html Configure model explainability parameters>.
newModelExplainabilityAppSpecification ::
  -- | 'imageUri'
  Prelude.Text ->
  -- | 'configUri'
  Prelude.Text ->
  ModelExplainabilityAppSpecification
newModelExplainabilityAppSpecification
  pImageUri_
  pConfigUri_ =
    ModelExplainabilityAppSpecification'
      { environment =
          Prelude.Nothing,
        imageUri = pImageUri_,
        configUri = pConfigUri_
      }

-- | Sets the environment variables in the Docker container.
modelExplainabilityAppSpecification_environment :: Lens.Lens' ModelExplainabilityAppSpecification (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
modelExplainabilityAppSpecification_environment = Lens.lens (\ModelExplainabilityAppSpecification' {environment} -> environment) (\s@ModelExplainabilityAppSpecification' {} a -> s {environment = a} :: ModelExplainabilityAppSpecification) Prelude.. Lens.mapping Prelude._Map

-- | The container image to be run by the model explainability job.
modelExplainabilityAppSpecification_imageUri :: Lens.Lens' ModelExplainabilityAppSpecification Prelude.Text
modelExplainabilityAppSpecification_imageUri = Lens.lens (\ModelExplainabilityAppSpecification' {imageUri} -> imageUri) (\s@ModelExplainabilityAppSpecification' {} a -> s {imageUri = a} :: ModelExplainabilityAppSpecification)

-- | JSON formatted S3 file that defines explainability parameters. For more
-- information on this JSON configuration file, see
-- <https://docs.aws.amazon.com/sagemaker/latest/json-model-explainability-parameter-config.html Configure model explainability parameters>.
modelExplainabilityAppSpecification_configUri :: Lens.Lens' ModelExplainabilityAppSpecification Prelude.Text
modelExplainabilityAppSpecification_configUri = Lens.lens (\ModelExplainabilityAppSpecification' {configUri} -> configUri) (\s@ModelExplainabilityAppSpecification' {} a -> s {configUri = a} :: ModelExplainabilityAppSpecification)

instance
  Prelude.FromJSON
    ModelExplainabilityAppSpecification
  where
  parseJSON =
    Prelude.withObject
      "ModelExplainabilityAppSpecification"
      ( \x ->
          ModelExplainabilityAppSpecification'
            Prelude.<$> ( x Prelude..:? "Environment"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> (x Prelude..: "ImageUri")
            Prelude.<*> (x Prelude..: "ConfigUri")
      )

instance
  Prelude.Hashable
    ModelExplainabilityAppSpecification

instance
  Prelude.NFData
    ModelExplainabilityAppSpecification

instance
  Prelude.ToJSON
    ModelExplainabilityAppSpecification
  where
  toJSON ModelExplainabilityAppSpecification' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("Environment" Prelude..=) Prelude.<$> environment,
            Prelude.Just ("ImageUri" Prelude..= imageUri),
            Prelude.Just ("ConfigUri" Prelude..= configUri)
          ]
      )
