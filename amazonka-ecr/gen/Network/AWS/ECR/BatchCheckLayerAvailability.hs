{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECR.BatchCheckLayerAvailability
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Checks the availability of one or more image layers in a repository.
--
-- When an image is pushed to a repository, each image layer is checked to
-- verify if it has been uploaded before. If it has been uploaded, then the
-- image layer is skipped.
--
-- This operation is used by the Amazon ECR proxy and is not generally used
-- by customers for pulling and pushing images. In most cases, you should
-- use the @docker@ CLI to pull, tag, and push images.
module Network.AWS.ECR.BatchCheckLayerAvailability
  ( -- * Creating a Request
    BatchCheckLayerAvailability (..),
    newBatchCheckLayerAvailability,

    -- * Request Lenses
    batchCheckLayerAvailability_registryId,
    batchCheckLayerAvailability_repositoryName,
    batchCheckLayerAvailability_layerDigests,

    -- * Destructuring the Response
    BatchCheckLayerAvailabilityResponse (..),
    newBatchCheckLayerAvailabilityResponse,

    -- * Response Lenses
    batchCheckLayerAvailabilityResponse_failures,
    batchCheckLayerAvailabilityResponse_layers,
    batchCheckLayerAvailabilityResponse_httpStatus,
  )
where

import Network.AWS.ECR.Types
import Network.AWS.ECR.Types.Layer
import Network.AWS.ECR.Types.LayerFailure
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newBatchCheckLayerAvailability' smart constructor.
data BatchCheckLayerAvailability = BatchCheckLayerAvailability'
  { -- | The AWS account ID associated with the registry that contains the image
    -- layers to check. If you do not specify a registry, the default registry
    -- is assumed.
    registryId :: Prelude.Maybe Prelude.Text,
    -- | The name of the repository that is associated with the image layers to
    -- check.
    repositoryName :: Prelude.Text,
    -- | The digests of the image layers to check.
    layerDigests :: Prelude.List1 Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'BatchCheckLayerAvailability' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'registryId', 'batchCheckLayerAvailability_registryId' - The AWS account ID associated with the registry that contains the image
-- layers to check. If you do not specify a registry, the default registry
-- is assumed.
--
-- 'repositoryName', 'batchCheckLayerAvailability_repositoryName' - The name of the repository that is associated with the image layers to
-- check.
--
-- 'layerDigests', 'batchCheckLayerAvailability_layerDigests' - The digests of the image layers to check.
newBatchCheckLayerAvailability ::
  -- | 'repositoryName'
  Prelude.Text ->
  -- | 'layerDigests'
  Prelude.NonEmpty Prelude.Text ->
  BatchCheckLayerAvailability
newBatchCheckLayerAvailability
  pRepositoryName_
  pLayerDigests_ =
    BatchCheckLayerAvailability'
      { registryId =
          Prelude.Nothing,
        repositoryName = pRepositoryName_,
        layerDigests =
          Prelude._List1 Lens.# pLayerDigests_
      }

-- | The AWS account ID associated with the registry that contains the image
-- layers to check. If you do not specify a registry, the default registry
-- is assumed.
batchCheckLayerAvailability_registryId :: Lens.Lens' BatchCheckLayerAvailability (Prelude.Maybe Prelude.Text)
batchCheckLayerAvailability_registryId = Lens.lens (\BatchCheckLayerAvailability' {registryId} -> registryId) (\s@BatchCheckLayerAvailability' {} a -> s {registryId = a} :: BatchCheckLayerAvailability)

-- | The name of the repository that is associated with the image layers to
-- check.
batchCheckLayerAvailability_repositoryName :: Lens.Lens' BatchCheckLayerAvailability Prelude.Text
batchCheckLayerAvailability_repositoryName = Lens.lens (\BatchCheckLayerAvailability' {repositoryName} -> repositoryName) (\s@BatchCheckLayerAvailability' {} a -> s {repositoryName = a} :: BatchCheckLayerAvailability)

-- | The digests of the image layers to check.
batchCheckLayerAvailability_layerDigests :: Lens.Lens' BatchCheckLayerAvailability (Prelude.NonEmpty Prelude.Text)
batchCheckLayerAvailability_layerDigests = Lens.lens (\BatchCheckLayerAvailability' {layerDigests} -> layerDigests) (\s@BatchCheckLayerAvailability' {} a -> s {layerDigests = a} :: BatchCheckLayerAvailability) Prelude.. Prelude._List1

instance
  Prelude.AWSRequest
    BatchCheckLayerAvailability
  where
  type
    Rs BatchCheckLayerAvailability =
      BatchCheckLayerAvailabilityResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          BatchCheckLayerAvailabilityResponse'
            Prelude.<$> (x Prelude..?> "failures" Prelude..!@ Prelude.mempty)
            Prelude.<*> (x Prelude..?> "layers" Prelude..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable BatchCheckLayerAvailability

instance Prelude.NFData BatchCheckLayerAvailability

instance
  Prelude.ToHeaders
    BatchCheckLayerAvailability
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "AmazonEC2ContainerRegistry_V20150921.BatchCheckLayerAvailability" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON BatchCheckLayerAvailability where
  toJSON BatchCheckLayerAvailability' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("registryId" Prelude..=) Prelude.<$> registryId,
            Prelude.Just
              ("repositoryName" Prelude..= repositoryName),
            Prelude.Just
              ("layerDigests" Prelude..= layerDigests)
          ]
      )

instance Prelude.ToPath BatchCheckLayerAvailability where
  toPath = Prelude.const "/"

instance Prelude.ToQuery BatchCheckLayerAvailability where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newBatchCheckLayerAvailabilityResponse' smart constructor.
data BatchCheckLayerAvailabilityResponse = BatchCheckLayerAvailabilityResponse'
  { -- | Any failures associated with the call.
    failures :: Prelude.Maybe [LayerFailure],
    -- | A list of image layer objects corresponding to the image layer
    -- references in the request.
    layers :: Prelude.Maybe [Layer],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'BatchCheckLayerAvailabilityResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'failures', 'batchCheckLayerAvailabilityResponse_failures' - Any failures associated with the call.
--
-- 'layers', 'batchCheckLayerAvailabilityResponse_layers' - A list of image layer objects corresponding to the image layer
-- references in the request.
--
-- 'httpStatus', 'batchCheckLayerAvailabilityResponse_httpStatus' - The response's http status code.
newBatchCheckLayerAvailabilityResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BatchCheckLayerAvailabilityResponse
newBatchCheckLayerAvailabilityResponse pHttpStatus_ =
  BatchCheckLayerAvailabilityResponse'
    { failures =
        Prelude.Nothing,
      layers = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Any failures associated with the call.
batchCheckLayerAvailabilityResponse_failures :: Lens.Lens' BatchCheckLayerAvailabilityResponse (Prelude.Maybe [LayerFailure])
batchCheckLayerAvailabilityResponse_failures = Lens.lens (\BatchCheckLayerAvailabilityResponse' {failures} -> failures) (\s@BatchCheckLayerAvailabilityResponse' {} a -> s {failures = a} :: BatchCheckLayerAvailabilityResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | A list of image layer objects corresponding to the image layer
-- references in the request.
batchCheckLayerAvailabilityResponse_layers :: Lens.Lens' BatchCheckLayerAvailabilityResponse (Prelude.Maybe [Layer])
batchCheckLayerAvailabilityResponse_layers = Lens.lens (\BatchCheckLayerAvailabilityResponse' {layers} -> layers) (\s@BatchCheckLayerAvailabilityResponse' {} a -> s {layers = a} :: BatchCheckLayerAvailabilityResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
batchCheckLayerAvailabilityResponse_httpStatus :: Lens.Lens' BatchCheckLayerAvailabilityResponse Prelude.Int
batchCheckLayerAvailabilityResponse_httpStatus = Lens.lens (\BatchCheckLayerAvailabilityResponse' {httpStatus} -> httpStatus) (\s@BatchCheckLayerAvailabilityResponse' {} a -> s {httpStatus = a} :: BatchCheckLayerAvailabilityResponse)

instance
  Prelude.NFData
    BatchCheckLayerAvailabilityResponse
