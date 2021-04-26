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
-- Module      : Network.AWS.SageMaker.Types.TransformJobDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TransformJobDefinition where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SageMaker.Types.BatchStrategy
import Network.AWS.SageMaker.Types.TransformInput
import Network.AWS.SageMaker.Types.TransformOutput
import Network.AWS.SageMaker.Types.TransformResources

-- | Defines the input needed to run a transform job using the inference
-- specification specified in the algorithm.
--
-- /See:/ 'newTransformJobDefinition' smart constructor.
data TransformJobDefinition = TransformJobDefinition'
  { -- | The maximum number of parallel requests that can be sent to each
    -- instance in a transform job. The default value is 1.
    maxConcurrentTransforms :: Prelude.Maybe Prelude.Nat,
    -- | The environment variables to set in the Docker container. We support up
    -- to 16 key and values entries in the map.
    environment :: Prelude.Maybe (Prelude.Map Prelude.Text Prelude.Text),
    -- | The maximum payload size allowed, in MB. A payload is the data portion
    -- of a record (without metadata).
    maxPayloadInMB :: Prelude.Maybe Prelude.Nat,
    -- | A string that determines the number of records included in a single
    -- mini-batch.
    --
    -- @SingleRecord@ means only one record is used per mini-batch.
    -- @MultiRecord@ means a mini-batch is set to contain as many records that
    -- can fit within the @MaxPayloadInMB@ limit.
    batchStrategy :: Prelude.Maybe BatchStrategy,
    -- | A description of the input source and the way the transform job consumes
    -- it.
    transformInput :: TransformInput,
    -- | Identifies the Amazon S3 location where you want Amazon SageMaker to
    -- save the results from the transform job.
    transformOutput :: TransformOutput,
    -- | Identifies the ML compute instances for the transform job.
    transformResources :: TransformResources
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'TransformJobDefinition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'maxConcurrentTransforms', 'transformJobDefinition_maxConcurrentTransforms' - The maximum number of parallel requests that can be sent to each
-- instance in a transform job. The default value is 1.
--
-- 'environment', 'transformJobDefinition_environment' - The environment variables to set in the Docker container. We support up
-- to 16 key and values entries in the map.
--
-- 'maxPayloadInMB', 'transformJobDefinition_maxPayloadInMB' - The maximum payload size allowed, in MB. A payload is the data portion
-- of a record (without metadata).
--
-- 'batchStrategy', 'transformJobDefinition_batchStrategy' - A string that determines the number of records included in a single
-- mini-batch.
--
-- @SingleRecord@ means only one record is used per mini-batch.
-- @MultiRecord@ means a mini-batch is set to contain as many records that
-- can fit within the @MaxPayloadInMB@ limit.
--
-- 'transformInput', 'transformJobDefinition_transformInput' - A description of the input source and the way the transform job consumes
-- it.
--
-- 'transformOutput', 'transformJobDefinition_transformOutput' - Identifies the Amazon S3 location where you want Amazon SageMaker to
-- save the results from the transform job.
--
-- 'transformResources', 'transformJobDefinition_transformResources' - Identifies the ML compute instances for the transform job.
newTransformJobDefinition ::
  -- | 'transformInput'
  TransformInput ->
  -- | 'transformOutput'
  TransformOutput ->
  -- | 'transformResources'
  TransformResources ->
  TransformJobDefinition
newTransformJobDefinition
  pTransformInput_
  pTransformOutput_
  pTransformResources_ =
    TransformJobDefinition'
      { maxConcurrentTransforms =
          Prelude.Nothing,
        environment = Prelude.Nothing,
        maxPayloadInMB = Prelude.Nothing,
        batchStrategy = Prelude.Nothing,
        transformInput = pTransformInput_,
        transformOutput = pTransformOutput_,
        transformResources = pTransformResources_
      }

-- | The maximum number of parallel requests that can be sent to each
-- instance in a transform job. The default value is 1.
transformJobDefinition_maxConcurrentTransforms :: Lens.Lens' TransformJobDefinition (Prelude.Maybe Prelude.Natural)
transformJobDefinition_maxConcurrentTransforms = Lens.lens (\TransformJobDefinition' {maxConcurrentTransforms} -> maxConcurrentTransforms) (\s@TransformJobDefinition' {} a -> s {maxConcurrentTransforms = a} :: TransformJobDefinition) Prelude.. Lens.mapping Prelude._Nat

-- | The environment variables to set in the Docker container. We support up
-- to 16 key and values entries in the map.
transformJobDefinition_environment :: Lens.Lens' TransformJobDefinition (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
transformJobDefinition_environment = Lens.lens (\TransformJobDefinition' {environment} -> environment) (\s@TransformJobDefinition' {} a -> s {environment = a} :: TransformJobDefinition) Prelude.. Lens.mapping Prelude._Map

-- | The maximum payload size allowed, in MB. A payload is the data portion
-- of a record (without metadata).
transformJobDefinition_maxPayloadInMB :: Lens.Lens' TransformJobDefinition (Prelude.Maybe Prelude.Natural)
transformJobDefinition_maxPayloadInMB = Lens.lens (\TransformJobDefinition' {maxPayloadInMB} -> maxPayloadInMB) (\s@TransformJobDefinition' {} a -> s {maxPayloadInMB = a} :: TransformJobDefinition) Prelude.. Lens.mapping Prelude._Nat

-- | A string that determines the number of records included in a single
-- mini-batch.
--
-- @SingleRecord@ means only one record is used per mini-batch.
-- @MultiRecord@ means a mini-batch is set to contain as many records that
-- can fit within the @MaxPayloadInMB@ limit.
transformJobDefinition_batchStrategy :: Lens.Lens' TransformJobDefinition (Prelude.Maybe BatchStrategy)
transformJobDefinition_batchStrategy = Lens.lens (\TransformJobDefinition' {batchStrategy} -> batchStrategy) (\s@TransformJobDefinition' {} a -> s {batchStrategy = a} :: TransformJobDefinition)

-- | A description of the input source and the way the transform job consumes
-- it.
transformJobDefinition_transformInput :: Lens.Lens' TransformJobDefinition TransformInput
transformJobDefinition_transformInput = Lens.lens (\TransformJobDefinition' {transformInput} -> transformInput) (\s@TransformJobDefinition' {} a -> s {transformInput = a} :: TransformJobDefinition)

-- | Identifies the Amazon S3 location where you want Amazon SageMaker to
-- save the results from the transform job.
transformJobDefinition_transformOutput :: Lens.Lens' TransformJobDefinition TransformOutput
transformJobDefinition_transformOutput = Lens.lens (\TransformJobDefinition' {transformOutput} -> transformOutput) (\s@TransformJobDefinition' {} a -> s {transformOutput = a} :: TransformJobDefinition)

-- | Identifies the ML compute instances for the transform job.
transformJobDefinition_transformResources :: Lens.Lens' TransformJobDefinition TransformResources
transformJobDefinition_transformResources = Lens.lens (\TransformJobDefinition' {transformResources} -> transformResources) (\s@TransformJobDefinition' {} a -> s {transformResources = a} :: TransformJobDefinition)

instance Prelude.FromJSON TransformJobDefinition where
  parseJSON =
    Prelude.withObject
      "TransformJobDefinition"
      ( \x ->
          TransformJobDefinition'
            Prelude.<$> (x Prelude..:? "MaxConcurrentTransforms")
            Prelude.<*> ( x Prelude..:? "Environment"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> (x Prelude..:? "MaxPayloadInMB")
            Prelude.<*> (x Prelude..:? "BatchStrategy")
            Prelude.<*> (x Prelude..: "TransformInput")
            Prelude.<*> (x Prelude..: "TransformOutput")
            Prelude.<*> (x Prelude..: "TransformResources")
      )

instance Prelude.Hashable TransformJobDefinition

instance Prelude.NFData TransformJobDefinition

instance Prelude.ToJSON TransformJobDefinition where
  toJSON TransformJobDefinition' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("MaxConcurrentTransforms" Prelude..=)
              Prelude.<$> maxConcurrentTransforms,
            ("Environment" Prelude..=) Prelude.<$> environment,
            ("MaxPayloadInMB" Prelude..=)
              Prelude.<$> maxPayloadInMB,
            ("BatchStrategy" Prelude..=)
              Prelude.<$> batchStrategy,
            Prelude.Just
              ("TransformInput" Prelude..= transformInput),
            Prelude.Just
              ("TransformOutput" Prelude..= transformOutput),
            Prelude.Just
              ( "TransformResources"
                  Prelude..= transformResources
              )
          ]
      )
