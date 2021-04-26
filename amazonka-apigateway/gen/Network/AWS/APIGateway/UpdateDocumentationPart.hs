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
-- Module      : Network.AWS.APIGateway.UpdateDocumentationPart
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- -- | Undocumented operation.
module Network.AWS.APIGateway.UpdateDocumentationPart
  ( -- * Creating a Request
    UpdateDocumentationPart (..),
    newUpdateDocumentationPart,

    -- * Request Lenses
    updateDocumentationPart_patchOperations,
    updateDocumentationPart_restApiId,
    updateDocumentationPart_documentationPartId,

    -- * Destructuring the Response
    DocumentationPart (..),
    newDocumentationPart,

    -- * Response Lenses
    documentationPart_id,
    documentationPart_properties,
    documentationPart_location,
  )
where

import Network.AWS.APIGateway.Types
import Network.AWS.APIGateway.Types.DocumentationPart
import Network.AWS.APIGateway.Types.DocumentationPartLocation
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Updates an existing documentation part of a given API.
--
-- /See:/ 'newUpdateDocumentationPart' smart constructor.
data UpdateDocumentationPart = UpdateDocumentationPart'
  { -- | A list of update operations to be applied to the specified resource and
    -- in the order specified in this list.
    patchOperations :: Prelude.Maybe [PatchOperation],
    -- | [Required] The string identifier of the associated RestApi.
    restApiId :: Prelude.Text,
    -- | [Required] The identifier of the to-be-updated documentation part.
    documentationPartId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'UpdateDocumentationPart' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'patchOperations', 'updateDocumentationPart_patchOperations' - A list of update operations to be applied to the specified resource and
-- in the order specified in this list.
--
-- 'restApiId', 'updateDocumentationPart_restApiId' - [Required] The string identifier of the associated RestApi.
--
-- 'documentationPartId', 'updateDocumentationPart_documentationPartId' - [Required] The identifier of the to-be-updated documentation part.
newUpdateDocumentationPart ::
  -- | 'restApiId'
  Prelude.Text ->
  -- | 'documentationPartId'
  Prelude.Text ->
  UpdateDocumentationPart
newUpdateDocumentationPart
  pRestApiId_
  pDocumentationPartId_ =
    UpdateDocumentationPart'
      { patchOperations =
          Prelude.Nothing,
        restApiId = pRestApiId_,
        documentationPartId = pDocumentationPartId_
      }

-- | A list of update operations to be applied to the specified resource and
-- in the order specified in this list.
updateDocumentationPart_patchOperations :: Lens.Lens' UpdateDocumentationPart (Prelude.Maybe [PatchOperation])
updateDocumentationPart_patchOperations = Lens.lens (\UpdateDocumentationPart' {patchOperations} -> patchOperations) (\s@UpdateDocumentationPart' {} a -> s {patchOperations = a} :: UpdateDocumentationPart) Prelude.. Lens.mapping Prelude._Coerce

-- | [Required] The string identifier of the associated RestApi.
updateDocumentationPart_restApiId :: Lens.Lens' UpdateDocumentationPart Prelude.Text
updateDocumentationPart_restApiId = Lens.lens (\UpdateDocumentationPart' {restApiId} -> restApiId) (\s@UpdateDocumentationPart' {} a -> s {restApiId = a} :: UpdateDocumentationPart)

-- | [Required] The identifier of the to-be-updated documentation part.
updateDocumentationPart_documentationPartId :: Lens.Lens' UpdateDocumentationPart Prelude.Text
updateDocumentationPart_documentationPartId = Lens.lens (\UpdateDocumentationPart' {documentationPartId} -> documentationPartId) (\s@UpdateDocumentationPart' {} a -> s {documentationPartId = a} :: UpdateDocumentationPart)

instance Prelude.AWSRequest UpdateDocumentationPart where
  type Rs UpdateDocumentationPart = DocumentationPart
  request = Request.patchJSON defaultService
  response =
    Response.receiveJSON
      (\s h x -> Prelude.eitherParseJSON x)

instance Prelude.Hashable UpdateDocumentationPart

instance Prelude.NFData UpdateDocumentationPart

instance Prelude.ToHeaders UpdateDocumentationPart where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Accept"
              Prelude.=# ("application/json" :: Prelude.ByteString)
          ]
      )

instance Prelude.ToJSON UpdateDocumentationPart where
  toJSON UpdateDocumentationPart' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("patchOperations" Prelude..=)
              Prelude.<$> patchOperations
          ]
      )

instance Prelude.ToPath UpdateDocumentationPart where
  toPath UpdateDocumentationPart' {..} =
    Prelude.mconcat
      [ "/restapis/",
        Prelude.toBS restApiId,
        "/documentation/parts/",
        Prelude.toBS documentationPartId
      ]

instance Prelude.ToQuery UpdateDocumentationPart where
  toQuery = Prelude.const Prelude.mempty
