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
-- Module      : Network.AWS.DynamoDB.Types.Update
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.Update where

import Network.AWS.DynamoDB.Types.AttributeValue
import Network.AWS.DynamoDB.Types.ReturnValuesOnConditionCheckFailure
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Represents a request to perform an @UpdateItem@ operation.
--
-- /See:/ 'newUpdate' smart constructor.
data Update = Update'
  { -- | One or more values that can be substituted in an expression.
    expressionAttributeValues :: Prelude.Maybe (Prelude.HashMap Prelude.Text AttributeValue),
    -- | Use @ReturnValuesOnConditionCheckFailure@ to get the item attributes if
    -- the @Update@ condition fails. For @ReturnValuesOnConditionCheckFailure@,
    -- the valid values are: NONE, ALL_OLD, UPDATED_OLD, ALL_NEW, UPDATED_NEW.
    returnValuesOnConditionCheckFailure :: Prelude.Maybe ReturnValuesOnConditionCheckFailure,
    -- | One or more substitution tokens for attribute names in an expression.
    expressionAttributeNames :: Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text),
    -- | A condition that must be satisfied in order for a conditional update to
    -- succeed.
    conditionExpression :: Prelude.Maybe Prelude.Text,
    -- | The primary key of the item to be updated. Each element consists of an
    -- attribute name and a value for that attribute.
    key :: Prelude.HashMap Prelude.Text AttributeValue,
    -- | An expression that defines one or more attributes to be updated, the
    -- action to be performed on them, and new value(s) for them.
    updateExpression :: Prelude.Text,
    -- | Name of the table for the @UpdateItem@ request.
    tableName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'Update' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'expressionAttributeValues', 'update_expressionAttributeValues' - One or more values that can be substituted in an expression.
--
-- 'returnValuesOnConditionCheckFailure', 'update_returnValuesOnConditionCheckFailure' - Use @ReturnValuesOnConditionCheckFailure@ to get the item attributes if
-- the @Update@ condition fails. For @ReturnValuesOnConditionCheckFailure@,
-- the valid values are: NONE, ALL_OLD, UPDATED_OLD, ALL_NEW, UPDATED_NEW.
--
-- 'expressionAttributeNames', 'update_expressionAttributeNames' - One or more substitution tokens for attribute names in an expression.
--
-- 'conditionExpression', 'update_conditionExpression' - A condition that must be satisfied in order for a conditional update to
-- succeed.
--
-- 'key', 'update_key' - The primary key of the item to be updated. Each element consists of an
-- attribute name and a value for that attribute.
--
-- 'updateExpression', 'update_updateExpression' - An expression that defines one or more attributes to be updated, the
-- action to be performed on them, and new value(s) for them.
--
-- 'tableName', 'update_tableName' - Name of the table for the @UpdateItem@ request.
newUpdate ::
  -- | 'updateExpression'
  Prelude.Text ->
  -- | 'tableName'
  Prelude.Text ->
  Update
newUpdate pUpdateExpression_ pTableName_ =
  Update'
    { expressionAttributeValues =
        Prelude.Nothing,
      returnValuesOnConditionCheckFailure =
        Prelude.Nothing,
      expressionAttributeNames = Prelude.Nothing,
      conditionExpression = Prelude.Nothing,
      key = Prelude.mempty,
      updateExpression = pUpdateExpression_,
      tableName = pTableName_
    }

-- | One or more values that can be substituted in an expression.
update_expressionAttributeValues :: Lens.Lens' Update (Prelude.Maybe (Prelude.HashMap Prelude.Text AttributeValue))
update_expressionAttributeValues = Lens.lens (\Update' {expressionAttributeValues} -> expressionAttributeValues) (\s@Update' {} a -> s {expressionAttributeValues = a} :: Update) Prelude.. Lens.mapping Prelude._Coerce

-- | Use @ReturnValuesOnConditionCheckFailure@ to get the item attributes if
-- the @Update@ condition fails. For @ReturnValuesOnConditionCheckFailure@,
-- the valid values are: NONE, ALL_OLD, UPDATED_OLD, ALL_NEW, UPDATED_NEW.
update_returnValuesOnConditionCheckFailure :: Lens.Lens' Update (Prelude.Maybe ReturnValuesOnConditionCheckFailure)
update_returnValuesOnConditionCheckFailure = Lens.lens (\Update' {returnValuesOnConditionCheckFailure} -> returnValuesOnConditionCheckFailure) (\s@Update' {} a -> s {returnValuesOnConditionCheckFailure = a} :: Update)

-- | One or more substitution tokens for attribute names in an expression.
update_expressionAttributeNames :: Lens.Lens' Update (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
update_expressionAttributeNames = Lens.lens (\Update' {expressionAttributeNames} -> expressionAttributeNames) (\s@Update' {} a -> s {expressionAttributeNames = a} :: Update) Prelude.. Lens.mapping Prelude._Coerce

-- | A condition that must be satisfied in order for a conditional update to
-- succeed.
update_conditionExpression :: Lens.Lens' Update (Prelude.Maybe Prelude.Text)
update_conditionExpression = Lens.lens (\Update' {conditionExpression} -> conditionExpression) (\s@Update' {} a -> s {conditionExpression = a} :: Update)

-- | The primary key of the item to be updated. Each element consists of an
-- attribute name and a value for that attribute.
update_key :: Lens.Lens' Update (Prelude.HashMap Prelude.Text AttributeValue)
update_key = Lens.lens (\Update' {key} -> key) (\s@Update' {} a -> s {key = a} :: Update) Prelude.. Prelude._Coerce

-- | An expression that defines one or more attributes to be updated, the
-- action to be performed on them, and new value(s) for them.
update_updateExpression :: Lens.Lens' Update Prelude.Text
update_updateExpression = Lens.lens (\Update' {updateExpression} -> updateExpression) (\s@Update' {} a -> s {updateExpression = a} :: Update)

-- | Name of the table for the @UpdateItem@ request.
update_tableName :: Lens.Lens' Update Prelude.Text
update_tableName = Lens.lens (\Update' {tableName} -> tableName) (\s@Update' {} a -> s {tableName = a} :: Update)

instance Prelude.Hashable Update

instance Prelude.NFData Update

instance Prelude.ToJSON Update where
  toJSON Update' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("ExpressionAttributeValues" Prelude..=)
              Prelude.<$> expressionAttributeValues,
            ("ReturnValuesOnConditionCheckFailure" Prelude..=)
              Prelude.<$> returnValuesOnConditionCheckFailure,
            ("ExpressionAttributeNames" Prelude..=)
              Prelude.<$> expressionAttributeNames,
            ("ConditionExpression" Prelude..=)
              Prelude.<$> conditionExpression,
            Prelude.Just ("Key" Prelude..= key),
            Prelude.Just
              ("UpdateExpression" Prelude..= updateExpression),
            Prelude.Just ("TableName" Prelude..= tableName)
          ]
      )
