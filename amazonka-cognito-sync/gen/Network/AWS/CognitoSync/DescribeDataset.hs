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
-- Module      : Network.AWS.CognitoSync.DescribeDataset
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets meta data about a dataset by identity and dataset name. With Amazon
-- Cognito Sync, each identity has access only to its own data. Thus, the
-- credentials used to make this API call need to have access to the
-- identity data.
--
-- This API can be called with temporary user credentials provided by
-- Cognito Identity or with developer credentials. You should use Cognito
-- Identity credentials to make this API call.
module Network.AWS.CognitoSync.DescribeDataset
  ( -- * Creating a Request
    DescribeDataset (..),
    newDescribeDataset,

    -- * Request Lenses
    describeDataset_identityPoolId,
    describeDataset_identityId,
    describeDataset_datasetName,

    -- * Destructuring the Response
    DescribeDatasetResponse (..),
    newDescribeDatasetResponse,

    -- * Response Lenses
    describeDatasetResponse_dataset,
    describeDatasetResponse_httpStatus,
  )
where

import Network.AWS.CognitoSync.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | A request for meta data about a dataset (creation date, number of
-- records, size) by owner and dataset name.
--
-- /See:/ 'newDescribeDataset' smart constructor.
data DescribeDataset = DescribeDataset'
  { -- | A name-spaced GUID (for example,
    -- us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
    -- Cognito. GUID generation is unique within a region.
    identityPoolId :: Prelude.Text,
    -- | A name-spaced GUID (for example,
    -- us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
    -- Cognito. GUID generation is unique within a region.
    identityId :: Prelude.Text,
    -- | A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9,
    -- \'_\' (underscore), \'-\' (dash), and \'.\' (dot).
    datasetName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeDataset' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'identityPoolId', 'describeDataset_identityPoolId' - A name-spaced GUID (for example,
-- us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
-- Cognito. GUID generation is unique within a region.
--
-- 'identityId', 'describeDataset_identityId' - A name-spaced GUID (for example,
-- us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
-- Cognito. GUID generation is unique within a region.
--
-- 'datasetName', 'describeDataset_datasetName' - A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9,
-- \'_\' (underscore), \'-\' (dash), and \'.\' (dot).
newDescribeDataset ::
  -- | 'identityPoolId'
  Prelude.Text ->
  -- | 'identityId'
  Prelude.Text ->
  -- | 'datasetName'
  Prelude.Text ->
  DescribeDataset
newDescribeDataset
  pIdentityPoolId_
  pIdentityId_
  pDatasetName_ =
    DescribeDataset'
      { identityPoolId = pIdentityPoolId_,
        identityId = pIdentityId_,
        datasetName = pDatasetName_
      }

-- | A name-spaced GUID (for example,
-- us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
-- Cognito. GUID generation is unique within a region.
describeDataset_identityPoolId :: Lens.Lens' DescribeDataset Prelude.Text
describeDataset_identityPoolId = Lens.lens (\DescribeDataset' {identityPoolId} -> identityPoolId) (\s@DescribeDataset' {} a -> s {identityPoolId = a} :: DescribeDataset)

-- | A name-spaced GUID (for example,
-- us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon
-- Cognito. GUID generation is unique within a region.
describeDataset_identityId :: Lens.Lens' DescribeDataset Prelude.Text
describeDataset_identityId = Lens.lens (\DescribeDataset' {identityId} -> identityId) (\s@DescribeDataset' {} a -> s {identityId = a} :: DescribeDataset)

-- | A string of up to 128 characters. Allowed characters are a-z, A-Z, 0-9,
-- \'_\' (underscore), \'-\' (dash), and \'.\' (dot).
describeDataset_datasetName :: Lens.Lens' DescribeDataset Prelude.Text
describeDataset_datasetName = Lens.lens (\DescribeDataset' {datasetName} -> datasetName) (\s@DescribeDataset' {} a -> s {datasetName = a} :: DescribeDataset)

instance Prelude.AWSRequest DescribeDataset where
  type Rs DescribeDataset = DescribeDatasetResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeDatasetResponse'
            Prelude.<$> (x Prelude..?> "Dataset")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeDataset

instance Prelude.NFData DescribeDataset

instance Prelude.ToHeaders DescribeDataset where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToPath DescribeDataset where
  toPath DescribeDataset' {..} =
    Prelude.mconcat
      [ "/identitypools/",
        Prelude.toBS identityPoolId,
        "/identities/",
        Prelude.toBS identityId,
        "/datasets/",
        Prelude.toBS datasetName
      ]

instance Prelude.ToQuery DescribeDataset where
  toQuery = Prelude.const Prelude.mempty

-- | Response to a successful DescribeDataset request.
--
-- /See:/ 'newDescribeDatasetResponse' smart constructor.
data DescribeDatasetResponse = DescribeDatasetResponse'
  { -- | Meta data for a collection of data for an identity. An identity can have
    -- multiple datasets. A dataset can be general or associated with a
    -- particular entity in an application (like a saved game). Datasets are
    -- automatically created if they don\'t exist. Data is synced by dataset,
    -- and a dataset can hold up to 1MB of key-value pairs.
    dataset :: Prelude.Maybe Dataset,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeDatasetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dataset', 'describeDatasetResponse_dataset' - Meta data for a collection of data for an identity. An identity can have
-- multiple datasets. A dataset can be general or associated with a
-- particular entity in an application (like a saved game). Datasets are
-- automatically created if they don\'t exist. Data is synced by dataset,
-- and a dataset can hold up to 1MB of key-value pairs.
--
-- 'httpStatus', 'describeDatasetResponse_httpStatus' - The response's http status code.
newDescribeDatasetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeDatasetResponse
newDescribeDatasetResponse pHttpStatus_ =
  DescribeDatasetResponse'
    { dataset = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Meta data for a collection of data for an identity. An identity can have
-- multiple datasets. A dataset can be general or associated with a
-- particular entity in an application (like a saved game). Datasets are
-- automatically created if they don\'t exist. Data is synced by dataset,
-- and a dataset can hold up to 1MB of key-value pairs.
describeDatasetResponse_dataset :: Lens.Lens' DescribeDatasetResponse (Prelude.Maybe Dataset)
describeDatasetResponse_dataset = Lens.lens (\DescribeDatasetResponse' {dataset} -> dataset) (\s@DescribeDatasetResponse' {} a -> s {dataset = a} :: DescribeDatasetResponse)

-- | The response's http status code.
describeDatasetResponse_httpStatus :: Lens.Lens' DescribeDatasetResponse Prelude.Int
describeDatasetResponse_httpStatus = Lens.lens (\DescribeDatasetResponse' {httpStatus} -> httpStatus) (\s@DescribeDatasetResponse' {} a -> s {httpStatus = a} :: DescribeDatasetResponse)

instance Prelude.NFData DescribeDatasetResponse
