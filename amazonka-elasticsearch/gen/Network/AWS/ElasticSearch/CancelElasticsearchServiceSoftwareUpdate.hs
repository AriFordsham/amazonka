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
-- Module      : Network.AWS.ElasticSearch.CancelElasticsearchServiceSoftwareUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Cancels a scheduled service software update for an Amazon ES domain. You
-- can only perform this operation before the @AutomatedUpdateDate@ and
-- when the @UpdateStatus@ is in the @PENDING_UPDATE@ state.
module Network.AWS.ElasticSearch.CancelElasticsearchServiceSoftwareUpdate
  ( -- * Creating a Request
    CancelElasticsearchServiceSoftwareUpdate (..),
    newCancelElasticsearchServiceSoftwareUpdate,

    -- * Request Lenses
    cancelElasticsearchServiceSoftwareUpdate_domainName,

    -- * Destructuring the Response
    CancelElasticsearchServiceSoftwareUpdateResponse (..),
    newCancelElasticsearchServiceSoftwareUpdateResponse,

    -- * Response Lenses
    cancelElasticsearchServiceSoftwareUpdateResponse_serviceSoftwareOptions,
    cancelElasticsearchServiceSoftwareUpdateResponse_httpStatus,
  )
where

import Network.AWS.ElasticSearch.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Container for the parameters to the
-- @CancelElasticsearchServiceSoftwareUpdate@ operation. Specifies the name
-- of the Elasticsearch domain that you wish to cancel a service software
-- update on.
--
-- /See:/ 'newCancelElasticsearchServiceSoftwareUpdate' smart constructor.
data CancelElasticsearchServiceSoftwareUpdate = CancelElasticsearchServiceSoftwareUpdate'
  { -- | The name of the domain that you want to stop the latest service software
    -- update on.
    domainName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CancelElasticsearchServiceSoftwareUpdate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainName', 'cancelElasticsearchServiceSoftwareUpdate_domainName' - The name of the domain that you want to stop the latest service software
-- update on.
newCancelElasticsearchServiceSoftwareUpdate ::
  -- | 'domainName'
  Prelude.Text ->
  CancelElasticsearchServiceSoftwareUpdate
newCancelElasticsearchServiceSoftwareUpdate
  pDomainName_ =
    CancelElasticsearchServiceSoftwareUpdate'
      { domainName =
          pDomainName_
      }

-- | The name of the domain that you want to stop the latest service software
-- update on.
cancelElasticsearchServiceSoftwareUpdate_domainName :: Lens.Lens' CancelElasticsearchServiceSoftwareUpdate Prelude.Text
cancelElasticsearchServiceSoftwareUpdate_domainName = Lens.lens (\CancelElasticsearchServiceSoftwareUpdate' {domainName} -> domainName) (\s@CancelElasticsearchServiceSoftwareUpdate' {} a -> s {domainName = a} :: CancelElasticsearchServiceSoftwareUpdate)

instance
  Prelude.AWSRequest
    CancelElasticsearchServiceSoftwareUpdate
  where
  type
    Rs CancelElasticsearchServiceSoftwareUpdate =
      CancelElasticsearchServiceSoftwareUpdateResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CancelElasticsearchServiceSoftwareUpdateResponse'
            Prelude.<$> (x Prelude..?> "ServiceSoftwareOptions")
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    CancelElasticsearchServiceSoftwareUpdate

instance
  Prelude.NFData
    CancelElasticsearchServiceSoftwareUpdate

instance
  Prelude.ToHeaders
    CancelElasticsearchServiceSoftwareUpdate
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Prelude.ToJSON
    CancelElasticsearchServiceSoftwareUpdate
  where
  toJSON CancelElasticsearchServiceSoftwareUpdate' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [Prelude.Just ("DomainName" Prelude..= domainName)]
      )

instance
  Prelude.ToPath
    CancelElasticsearchServiceSoftwareUpdate
  where
  toPath =
    Prelude.const
      "/2015-01-01/es/serviceSoftwareUpdate/cancel"

instance
  Prelude.ToQuery
    CancelElasticsearchServiceSoftwareUpdate
  where
  toQuery = Prelude.const Prelude.mempty

-- | The result of a @CancelElasticsearchServiceSoftwareUpdate@ operation.
-- Contains the status of the update.
--
-- /See:/ 'newCancelElasticsearchServiceSoftwareUpdateResponse' smart constructor.
data CancelElasticsearchServiceSoftwareUpdateResponse = CancelElasticsearchServiceSoftwareUpdateResponse'
  { -- | The current status of the Elasticsearch service software update.
    serviceSoftwareOptions :: Prelude.Maybe ServiceSoftwareOptions,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CancelElasticsearchServiceSoftwareUpdateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'serviceSoftwareOptions', 'cancelElasticsearchServiceSoftwareUpdateResponse_serviceSoftwareOptions' - The current status of the Elasticsearch service software update.
--
-- 'httpStatus', 'cancelElasticsearchServiceSoftwareUpdateResponse_httpStatus' - The response's http status code.
newCancelElasticsearchServiceSoftwareUpdateResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CancelElasticsearchServiceSoftwareUpdateResponse
newCancelElasticsearchServiceSoftwareUpdateResponse
  pHttpStatus_ =
    CancelElasticsearchServiceSoftwareUpdateResponse'
      { serviceSoftwareOptions =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | The current status of the Elasticsearch service software update.
cancelElasticsearchServiceSoftwareUpdateResponse_serviceSoftwareOptions :: Lens.Lens' CancelElasticsearchServiceSoftwareUpdateResponse (Prelude.Maybe ServiceSoftwareOptions)
cancelElasticsearchServiceSoftwareUpdateResponse_serviceSoftwareOptions = Lens.lens (\CancelElasticsearchServiceSoftwareUpdateResponse' {serviceSoftwareOptions} -> serviceSoftwareOptions) (\s@CancelElasticsearchServiceSoftwareUpdateResponse' {} a -> s {serviceSoftwareOptions = a} :: CancelElasticsearchServiceSoftwareUpdateResponse)

-- | The response's http status code.
cancelElasticsearchServiceSoftwareUpdateResponse_httpStatus :: Lens.Lens' CancelElasticsearchServiceSoftwareUpdateResponse Prelude.Int
cancelElasticsearchServiceSoftwareUpdateResponse_httpStatus = Lens.lens (\CancelElasticsearchServiceSoftwareUpdateResponse' {httpStatus} -> httpStatus) (\s@CancelElasticsearchServiceSoftwareUpdateResponse' {} a -> s {httpStatus = a} :: CancelElasticsearchServiceSoftwareUpdateResponse)

instance
  Prelude.NFData
    CancelElasticsearchServiceSoftwareUpdateResponse
