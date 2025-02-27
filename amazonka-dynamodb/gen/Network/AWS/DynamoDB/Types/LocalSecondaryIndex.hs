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
-- Module      : Network.AWS.DynamoDB.Types.LocalSecondaryIndex
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.LocalSecondaryIndex where

import Network.AWS.DynamoDB.Types.KeySchemaElement
import Network.AWS.DynamoDB.Types.Projection
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Represents the properties of a local secondary index.
--
-- /See:/ 'newLocalSecondaryIndex' smart constructor.
data LocalSecondaryIndex = LocalSecondaryIndex'
  { -- | The name of the local secondary index. The name must be unique among all
    -- other indexes on this table.
    indexName :: Prelude.Text,
    -- | The complete key schema for the local secondary index, consisting of one
    -- or more pairs of attribute names and key types:
    --
    -- -   @HASH@ - partition key
    --
    -- -   @RANGE@ - sort key
    --
    -- The partition key of an item is also known as its /hash attribute/. The
    -- term \"hash attribute\" derives from DynamoDB\'s usage of an internal
    -- hash function to evenly distribute data items across partitions, based
    -- on their partition key values.
    --
    -- The sort key of an item is also known as its /range attribute/. The term
    -- \"range attribute\" derives from the way DynamoDB stores items with the
    -- same partition key physically close together, in sorted order by the
    -- sort key value.
    keySchema :: Prelude.NonEmpty KeySchemaElement,
    -- | Represents attributes that are copied (projected) from the table into
    -- the local secondary index. These are in addition to the primary key
    -- attributes and index key attributes, which are automatically projected.
    projection :: Projection
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'LocalSecondaryIndex' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'indexName', 'localSecondaryIndex_indexName' - The name of the local secondary index. The name must be unique among all
-- other indexes on this table.
--
-- 'keySchema', 'localSecondaryIndex_keySchema' - The complete key schema for the local secondary index, consisting of one
-- or more pairs of attribute names and key types:
--
-- -   @HASH@ - partition key
--
-- -   @RANGE@ - sort key
--
-- The partition key of an item is also known as its /hash attribute/. The
-- term \"hash attribute\" derives from DynamoDB\'s usage of an internal
-- hash function to evenly distribute data items across partitions, based
-- on their partition key values.
--
-- The sort key of an item is also known as its /range attribute/. The term
-- \"range attribute\" derives from the way DynamoDB stores items with the
-- same partition key physically close together, in sorted order by the
-- sort key value.
--
-- 'projection', 'localSecondaryIndex_projection' - Represents attributes that are copied (projected) from the table into
-- the local secondary index. These are in addition to the primary key
-- attributes and index key attributes, which are automatically projected.
newLocalSecondaryIndex ::
  -- | 'indexName'
  Prelude.Text ->
  -- | 'keySchema'
  Prelude.NonEmpty KeySchemaElement ->
  -- | 'projection'
  Projection ->
  LocalSecondaryIndex
newLocalSecondaryIndex
  pIndexName_
  pKeySchema_
  pProjection_ =
    LocalSecondaryIndex'
      { indexName = pIndexName_,
        keySchema = Prelude._Coerce Lens.# pKeySchema_,
        projection = pProjection_
      }

-- | The name of the local secondary index. The name must be unique among all
-- other indexes on this table.
localSecondaryIndex_indexName :: Lens.Lens' LocalSecondaryIndex Prelude.Text
localSecondaryIndex_indexName = Lens.lens (\LocalSecondaryIndex' {indexName} -> indexName) (\s@LocalSecondaryIndex' {} a -> s {indexName = a} :: LocalSecondaryIndex)

-- | The complete key schema for the local secondary index, consisting of one
-- or more pairs of attribute names and key types:
--
-- -   @HASH@ - partition key
--
-- -   @RANGE@ - sort key
--
-- The partition key of an item is also known as its /hash attribute/. The
-- term \"hash attribute\" derives from DynamoDB\'s usage of an internal
-- hash function to evenly distribute data items across partitions, based
-- on their partition key values.
--
-- The sort key of an item is also known as its /range attribute/. The term
-- \"range attribute\" derives from the way DynamoDB stores items with the
-- same partition key physically close together, in sorted order by the
-- sort key value.
localSecondaryIndex_keySchema :: Lens.Lens' LocalSecondaryIndex (Prelude.NonEmpty KeySchemaElement)
localSecondaryIndex_keySchema = Lens.lens (\LocalSecondaryIndex' {keySchema} -> keySchema) (\s@LocalSecondaryIndex' {} a -> s {keySchema = a} :: LocalSecondaryIndex) Prelude.. Prelude._Coerce

-- | Represents attributes that are copied (projected) from the table into
-- the local secondary index. These are in addition to the primary key
-- attributes and index key attributes, which are automatically projected.
localSecondaryIndex_projection :: Lens.Lens' LocalSecondaryIndex Projection
localSecondaryIndex_projection = Lens.lens (\LocalSecondaryIndex' {projection} -> projection) (\s@LocalSecondaryIndex' {} a -> s {projection = a} :: LocalSecondaryIndex)

instance Prelude.Hashable LocalSecondaryIndex

instance Prelude.NFData LocalSecondaryIndex

instance Prelude.ToJSON LocalSecondaryIndex where
  toJSON LocalSecondaryIndex' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just ("IndexName" Prelude..= indexName),
            Prelude.Just ("KeySchema" Prelude..= keySchema),
            Prelude.Just ("Projection" Prelude..= projection)
          ]
      )
