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
-- Module      : Network.AWS.DynamoDB.Types.CreateGlobalSecondaryIndexAction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.CreateGlobalSecondaryIndexAction where

import Network.AWS.DynamoDB.Types.KeySchemaElement
import Network.AWS.DynamoDB.Types.Projection
import Network.AWS.DynamoDB.Types.ProvisionedThroughput
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Represents a new global secondary index to be added to an existing
-- table.
--
-- /See:/ 'newCreateGlobalSecondaryIndexAction' smart constructor.
data CreateGlobalSecondaryIndexAction = CreateGlobalSecondaryIndexAction'
  { -- | Represents the provisioned throughput settings for the specified global
    -- secondary index.
    --
    -- For current minimum and maximum provisioned throughput values, see
    -- <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html Service, Account, and Table Quotas>
    -- in the /Amazon DynamoDB Developer Guide/.
    provisionedThroughput :: Prelude.Maybe ProvisionedThroughput,
    -- | The name of the global secondary index to be created.
    indexName :: Prelude.Text,
    -- | The key schema for the global secondary index.
    keySchema :: Prelude.NonEmpty KeySchemaElement,
    -- | Represents attributes that are copied (projected) from the table into an
    -- index. These are in addition to the primary key attributes and index key
    -- attributes, which are automatically projected.
    projection :: Projection
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateGlobalSecondaryIndexAction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'provisionedThroughput', 'createGlobalSecondaryIndexAction_provisionedThroughput' - Represents the provisioned throughput settings for the specified global
-- secondary index.
--
-- For current minimum and maximum provisioned throughput values, see
-- <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html Service, Account, and Table Quotas>
-- in the /Amazon DynamoDB Developer Guide/.
--
-- 'indexName', 'createGlobalSecondaryIndexAction_indexName' - The name of the global secondary index to be created.
--
-- 'keySchema', 'createGlobalSecondaryIndexAction_keySchema' - The key schema for the global secondary index.
--
-- 'projection', 'createGlobalSecondaryIndexAction_projection' - Represents attributes that are copied (projected) from the table into an
-- index. These are in addition to the primary key attributes and index key
-- attributes, which are automatically projected.
newCreateGlobalSecondaryIndexAction ::
  -- | 'indexName'
  Prelude.Text ->
  -- | 'keySchema'
  Prelude.NonEmpty KeySchemaElement ->
  -- | 'projection'
  Projection ->
  CreateGlobalSecondaryIndexAction
newCreateGlobalSecondaryIndexAction
  pIndexName_
  pKeySchema_
  pProjection_ =
    CreateGlobalSecondaryIndexAction'
      { provisionedThroughput =
          Prelude.Nothing,
        indexName = pIndexName_,
        keySchema =
          Prelude._Coerce Lens.# pKeySchema_,
        projection = pProjection_
      }

-- | Represents the provisioned throughput settings for the specified global
-- secondary index.
--
-- For current minimum and maximum provisioned throughput values, see
-- <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Limits.html Service, Account, and Table Quotas>
-- in the /Amazon DynamoDB Developer Guide/.
createGlobalSecondaryIndexAction_provisionedThroughput :: Lens.Lens' CreateGlobalSecondaryIndexAction (Prelude.Maybe ProvisionedThroughput)
createGlobalSecondaryIndexAction_provisionedThroughput = Lens.lens (\CreateGlobalSecondaryIndexAction' {provisionedThroughput} -> provisionedThroughput) (\s@CreateGlobalSecondaryIndexAction' {} a -> s {provisionedThroughput = a} :: CreateGlobalSecondaryIndexAction)

-- | The name of the global secondary index to be created.
createGlobalSecondaryIndexAction_indexName :: Lens.Lens' CreateGlobalSecondaryIndexAction Prelude.Text
createGlobalSecondaryIndexAction_indexName = Lens.lens (\CreateGlobalSecondaryIndexAction' {indexName} -> indexName) (\s@CreateGlobalSecondaryIndexAction' {} a -> s {indexName = a} :: CreateGlobalSecondaryIndexAction)

-- | The key schema for the global secondary index.
createGlobalSecondaryIndexAction_keySchema :: Lens.Lens' CreateGlobalSecondaryIndexAction (Prelude.NonEmpty KeySchemaElement)
createGlobalSecondaryIndexAction_keySchema = Lens.lens (\CreateGlobalSecondaryIndexAction' {keySchema} -> keySchema) (\s@CreateGlobalSecondaryIndexAction' {} a -> s {keySchema = a} :: CreateGlobalSecondaryIndexAction) Prelude.. Prelude._Coerce

-- | Represents attributes that are copied (projected) from the table into an
-- index. These are in addition to the primary key attributes and index key
-- attributes, which are automatically projected.
createGlobalSecondaryIndexAction_projection :: Lens.Lens' CreateGlobalSecondaryIndexAction Projection
createGlobalSecondaryIndexAction_projection = Lens.lens (\CreateGlobalSecondaryIndexAction' {projection} -> projection) (\s@CreateGlobalSecondaryIndexAction' {} a -> s {projection = a} :: CreateGlobalSecondaryIndexAction)

instance
  Prelude.Hashable
    CreateGlobalSecondaryIndexAction

instance
  Prelude.NFData
    CreateGlobalSecondaryIndexAction

instance
  Prelude.ToJSON
    CreateGlobalSecondaryIndexAction
  where
  toJSON CreateGlobalSecondaryIndexAction' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("ProvisionedThroughput" Prelude..=)
              Prelude.<$> provisionedThroughput,
            Prelude.Just ("IndexName" Prelude..= indexName),
            Prelude.Just ("KeySchema" Prelude..= keySchema),
            Prelude.Just ("Projection" Prelude..= projection)
          ]
      )
