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
-- Module      : Network.AWS.Glue.GetPartition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a specified partition.
module Network.AWS.Glue.GetPartition
  ( -- * Creating a Request
    GetPartition (..),
    newGetPartition,

    -- * Request Lenses
    getPartition_catalogId,
    getPartition_databaseName,
    getPartition_tableName,
    getPartition_partitionValues,

    -- * Destructuring the Response
    GetPartitionResponse (..),
    newGetPartitionResponse,

    -- * Response Lenses
    getPartitionResponse_partition,
    getPartitionResponse_httpStatus,
  )
where

import Network.AWS.Glue.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetPartition' smart constructor.
data GetPartition = GetPartition'
  { -- | The ID of the Data Catalog where the partition in question resides. If
    -- none is provided, the AWS account ID is used by default.
    catalogId :: Prelude.Maybe Prelude.Text,
    -- | The name of the catalog database where the partition resides.
    databaseName :: Prelude.Text,
    -- | The name of the partition\'s table.
    tableName :: Prelude.Text,
    -- | The values that define the partition.
    partitionValues :: [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetPartition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'catalogId', 'getPartition_catalogId' - The ID of the Data Catalog where the partition in question resides. If
-- none is provided, the AWS account ID is used by default.
--
-- 'databaseName', 'getPartition_databaseName' - The name of the catalog database where the partition resides.
--
-- 'tableName', 'getPartition_tableName' - The name of the partition\'s table.
--
-- 'partitionValues', 'getPartition_partitionValues' - The values that define the partition.
newGetPartition ::
  -- | 'databaseName'
  Prelude.Text ->
  -- | 'tableName'
  Prelude.Text ->
  GetPartition
newGetPartition pDatabaseName_ pTableName_ =
  GetPartition'
    { catalogId = Prelude.Nothing,
      databaseName = pDatabaseName_,
      tableName = pTableName_,
      partitionValues = Prelude.mempty
    }

-- | The ID of the Data Catalog where the partition in question resides. If
-- none is provided, the AWS account ID is used by default.
getPartition_catalogId :: Lens.Lens' GetPartition (Prelude.Maybe Prelude.Text)
getPartition_catalogId = Lens.lens (\GetPartition' {catalogId} -> catalogId) (\s@GetPartition' {} a -> s {catalogId = a} :: GetPartition)

-- | The name of the catalog database where the partition resides.
getPartition_databaseName :: Lens.Lens' GetPartition Prelude.Text
getPartition_databaseName = Lens.lens (\GetPartition' {databaseName} -> databaseName) (\s@GetPartition' {} a -> s {databaseName = a} :: GetPartition)

-- | The name of the partition\'s table.
getPartition_tableName :: Lens.Lens' GetPartition Prelude.Text
getPartition_tableName = Lens.lens (\GetPartition' {tableName} -> tableName) (\s@GetPartition' {} a -> s {tableName = a} :: GetPartition)

-- | The values that define the partition.
getPartition_partitionValues :: Lens.Lens' GetPartition [Prelude.Text]
getPartition_partitionValues = Lens.lens (\GetPartition' {partitionValues} -> partitionValues) (\s@GetPartition' {} a -> s {partitionValues = a} :: GetPartition) Prelude.. Prelude._Coerce

instance Prelude.AWSRequest GetPartition where
  type Rs GetPartition = GetPartitionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetPartitionResponse'
            Prelude.<$> (x Prelude..?> "Partition")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetPartition

instance Prelude.NFData GetPartition

instance Prelude.ToHeaders GetPartition where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ("AWSGlue.GetPartition" :: Prelude.ByteString),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON GetPartition where
  toJSON GetPartition' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("CatalogId" Prelude..=) Prelude.<$> catalogId,
            Prelude.Just
              ("DatabaseName" Prelude..= databaseName),
            Prelude.Just ("TableName" Prelude..= tableName),
            Prelude.Just
              ("PartitionValues" Prelude..= partitionValues)
          ]
      )

instance Prelude.ToPath GetPartition where
  toPath = Prelude.const "/"

instance Prelude.ToQuery GetPartition where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetPartitionResponse' smart constructor.
data GetPartitionResponse = GetPartitionResponse'
  { -- | The requested information, in the form of a @Partition@ object.
    partition :: Prelude.Maybe Partition,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetPartitionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'partition', 'getPartitionResponse_partition' - The requested information, in the form of a @Partition@ object.
--
-- 'httpStatus', 'getPartitionResponse_httpStatus' - The response's http status code.
newGetPartitionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetPartitionResponse
newGetPartitionResponse pHttpStatus_ =
  GetPartitionResponse'
    { partition = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The requested information, in the form of a @Partition@ object.
getPartitionResponse_partition :: Lens.Lens' GetPartitionResponse (Prelude.Maybe Partition)
getPartitionResponse_partition = Lens.lens (\GetPartitionResponse' {partition} -> partition) (\s@GetPartitionResponse' {} a -> s {partition = a} :: GetPartitionResponse)

-- | The response's http status code.
getPartitionResponse_httpStatus :: Lens.Lens' GetPartitionResponse Prelude.Int
getPartitionResponse_httpStatus = Lens.lens (\GetPartitionResponse' {httpStatus} -> httpStatus) (\s@GetPartitionResponse' {} a -> s {httpStatus = a} :: GetPartitionResponse)

instance Prelude.NFData GetPartitionResponse
