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
-- Module      : Network.AWS.DynamoDB.Types.BatchStatementRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.BatchStatementRequest where

import Network.AWS.DynamoDB.Types.AttributeValue
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A PartiQL batch statement request.
--
-- /See:/ 'newBatchStatementRequest' smart constructor.
data BatchStatementRequest = BatchStatementRequest'
  { -- | The read consistency of the PartiQL batch request.
    consistentRead :: Prelude.Maybe Prelude.Bool,
    -- | The parameters associated with a PartiQL statement in the batch request.
    parameters :: Prelude.Maybe (Prelude.List1 AttributeValue),
    -- | A valid PartiQL statement.
    statement :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'BatchStatementRequest' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'consistentRead', 'batchStatementRequest_consistentRead' - The read consistency of the PartiQL batch request.
--
-- 'parameters', 'batchStatementRequest_parameters' - The parameters associated with a PartiQL statement in the batch request.
--
-- 'statement', 'batchStatementRequest_statement' - A valid PartiQL statement.
newBatchStatementRequest ::
  -- | 'statement'
  Prelude.Text ->
  BatchStatementRequest
newBatchStatementRequest pStatement_ =
  BatchStatementRequest'
    { consistentRead =
        Prelude.Nothing,
      parameters = Prelude.Nothing,
      statement = pStatement_
    }

-- | The read consistency of the PartiQL batch request.
batchStatementRequest_consistentRead :: Lens.Lens' BatchStatementRequest (Prelude.Maybe Prelude.Bool)
batchStatementRequest_consistentRead = Lens.lens (\BatchStatementRequest' {consistentRead} -> consistentRead) (\s@BatchStatementRequest' {} a -> s {consistentRead = a} :: BatchStatementRequest)

-- | The parameters associated with a PartiQL statement in the batch request.
batchStatementRequest_parameters :: Lens.Lens' BatchStatementRequest (Prelude.Maybe (Prelude.NonEmpty AttributeValue))
batchStatementRequest_parameters = Lens.lens (\BatchStatementRequest' {parameters} -> parameters) (\s@BatchStatementRequest' {} a -> s {parameters = a} :: BatchStatementRequest) Prelude.. Lens.mapping Prelude._List1

-- | A valid PartiQL statement.
batchStatementRequest_statement :: Lens.Lens' BatchStatementRequest Prelude.Text
batchStatementRequest_statement = Lens.lens (\BatchStatementRequest' {statement} -> statement) (\s@BatchStatementRequest' {} a -> s {statement = a} :: BatchStatementRequest)

instance Prelude.Hashable BatchStatementRequest

instance Prelude.NFData BatchStatementRequest

instance Prelude.ToJSON BatchStatementRequest where
  toJSON BatchStatementRequest' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("ConsistentRead" Prelude..=)
              Prelude.<$> consistentRead,
            ("Parameters" Prelude..=) Prelude.<$> parameters,
            Prelude.Just ("Statement" Prelude..= statement)
          ]
      )
