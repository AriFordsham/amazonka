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
-- Module      : Network.AWS.DynamoDB.Types.ParameterizedStatement
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ParameterizedStatement where

import Network.AWS.DynamoDB.Types.AttributeValue
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Represents a PartiQL statment that uses parameters.
--
-- /See:/ 'newParameterizedStatement' smart constructor.
data ParameterizedStatement = ParameterizedStatement'
  { -- | The parameter values.
    parameters :: Prelude.Maybe (Prelude.NonEmpty AttributeValue),
    -- | A PartiQL statment that uses parameters.
    statement :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ParameterizedStatement' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'parameters', 'parameterizedStatement_parameters' - The parameter values.
--
-- 'statement', 'parameterizedStatement_statement' - A PartiQL statment that uses parameters.
newParameterizedStatement ::
  -- | 'statement'
  Prelude.Text ->
  ParameterizedStatement
newParameterizedStatement pStatement_ =
  ParameterizedStatement'
    { parameters =
        Prelude.Nothing,
      statement = pStatement_
    }

-- | The parameter values.
parameterizedStatement_parameters :: Lens.Lens' ParameterizedStatement (Prelude.Maybe (Prelude.NonEmpty AttributeValue))
parameterizedStatement_parameters = Lens.lens (\ParameterizedStatement' {parameters} -> parameters) (\s@ParameterizedStatement' {} a -> s {parameters = a} :: ParameterizedStatement) Prelude.. Lens.mapping Prelude._Coerce

-- | A PartiQL statment that uses parameters.
parameterizedStatement_statement :: Lens.Lens' ParameterizedStatement Prelude.Text
parameterizedStatement_statement = Lens.lens (\ParameterizedStatement' {statement} -> statement) (\s@ParameterizedStatement' {} a -> s {statement = a} :: ParameterizedStatement)

instance Prelude.Hashable ParameterizedStatement

instance Prelude.NFData ParameterizedStatement

instance Prelude.ToJSON ParameterizedStatement where
  toJSON ParameterizedStatement' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("Parameters" Prelude..=) Prelude.<$> parameters,
            Prelude.Just ("Statement" Prelude..= statement)
          ]
      )
