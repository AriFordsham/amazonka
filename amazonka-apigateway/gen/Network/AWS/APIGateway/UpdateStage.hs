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
-- Module      : Network.AWS.APIGateway.UpdateStage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes information about a Stage resource.
module Network.AWS.APIGateway.UpdateStage
  ( -- * Creating a Request
    UpdateStage (..),
    newUpdateStage,

    -- * Request Lenses
    updateStage_patchOperations,
    updateStage_restApiId,
    updateStage_stageName,

    -- * Destructuring the Response
    Stage (..),
    newStage,

    -- * Response Lenses
    stage_deploymentId,
    stage_createdDate,
    stage_tracingEnabled,
    stage_webAclArn,
    stage_lastUpdatedDate,
    stage_cacheClusterEnabled,
    stage_stageName,
    stage_documentationVersion,
    stage_variables,
    stage_accessLogSettings,
    stage_tags,
    stage_clientCertificateId,
    stage_description,
    stage_canarySettings,
    stage_cacheClusterSize,
    stage_methodSettings,
    stage_cacheClusterStatus,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.APIGateway.Types.AccessLogSettings
import Network.AWS.APIGateway.Types.CacheClusterSize
import Network.AWS.APIGateway.Types.CacheClusterStatus
import Network.AWS.APIGateway.Types.CanarySettings
import Network.AWS.APIGateway.Types.MethodSetting
import Network.AWS.APIGateway.Types.Stage
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Requests API Gateway to change information about a Stage resource.
--
-- /See:/ 'newUpdateStage' smart constructor.
data UpdateStage = UpdateStage'
  { -- | A list of update operations to be applied to the specified resource and
    -- in the order specified in this list.
    patchOperations :: Prelude.Maybe [PatchOperation],
    -- | [Required] The string identifier of the associated RestApi.
    restApiId :: Prelude.Text,
    -- | [Required] The name of the Stage resource to change information about.
    stageName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'UpdateStage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'patchOperations', 'updateStage_patchOperations' - A list of update operations to be applied to the specified resource and
-- in the order specified in this list.
--
-- 'restApiId', 'updateStage_restApiId' - [Required] The string identifier of the associated RestApi.
--
-- 'stageName', 'updateStage_stageName' - [Required] The name of the Stage resource to change information about.
newUpdateStage ::
  -- | 'restApiId'
  Prelude.Text ->
  -- | 'stageName'
  Prelude.Text ->
  UpdateStage
newUpdateStage pRestApiId_ pStageName_ =
  UpdateStage'
    { patchOperations = Prelude.Nothing,
      restApiId = pRestApiId_,
      stageName = pStageName_
    }

-- | A list of update operations to be applied to the specified resource and
-- in the order specified in this list.
updateStage_patchOperations :: Lens.Lens' UpdateStage (Prelude.Maybe [PatchOperation])
updateStage_patchOperations = Lens.lens (\UpdateStage' {patchOperations} -> patchOperations) (\s@UpdateStage' {} a -> s {patchOperations = a} :: UpdateStage) Prelude.. Lens.mapping Prelude._Coerce

-- | [Required] The string identifier of the associated RestApi.
updateStage_restApiId :: Lens.Lens' UpdateStage Prelude.Text
updateStage_restApiId = Lens.lens (\UpdateStage' {restApiId} -> restApiId) (\s@UpdateStage' {} a -> s {restApiId = a} :: UpdateStage)

-- | [Required] The name of the Stage resource to change information about.
updateStage_stageName :: Lens.Lens' UpdateStage Prelude.Text
updateStage_stageName = Lens.lens (\UpdateStage' {stageName} -> stageName) (\s@UpdateStage' {} a -> s {stageName = a} :: UpdateStage)

instance Prelude.AWSRequest UpdateStage where
  type Rs UpdateStage = Stage
  request = Request.patchJSON defaultService
  response =
    Response.receiveJSON
      (\s h x -> Prelude.eitherParseJSON x)

instance Prelude.Hashable UpdateStage

instance Prelude.NFData UpdateStage

instance Prelude.ToHeaders UpdateStage where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Accept"
              Prelude.=# ("application/json" :: Prelude.ByteString)
          ]
      )

instance Prelude.ToJSON UpdateStage where
  toJSON UpdateStage' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("patchOperations" Prelude..=)
              Prelude.<$> patchOperations
          ]
      )

instance Prelude.ToPath UpdateStage where
  toPath UpdateStage' {..} =
    Prelude.mconcat
      [ "/restapis/",
        Prelude.toBS restApiId,
        "/stages/",
        Prelude.toBS stageName
      ]

instance Prelude.ToQuery UpdateStage where
  toQuery = Prelude.const Prelude.mempty
