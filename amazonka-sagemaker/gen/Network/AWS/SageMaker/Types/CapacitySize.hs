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
-- Module      : Network.AWS.SageMaker.Types.CapacitySize
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.CapacitySize where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SageMaker.Types.CapacitySizeType

-- | Currently, the @CapacitySize@ API is not supported.
--
-- /See:/ 'newCapacitySize' smart constructor.
data CapacitySize = CapacitySize'
  { -- | This API is not supported.
    type' :: CapacitySizeType,
    value :: Prelude.Nat
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CapacitySize' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'type'', 'capacitySize_type' - This API is not supported.
--
-- 'value', 'capacitySize_value' -
newCapacitySize ::
  -- | 'type''
  CapacitySizeType ->
  -- | 'value'
  Prelude.Natural ->
  CapacitySize
newCapacitySize pType_ pValue_ =
  CapacitySize'
    { type' = pType_,
      value = Prelude._Nat Lens.# pValue_
    }

-- | This API is not supported.
capacitySize_type :: Lens.Lens' CapacitySize CapacitySizeType
capacitySize_type = Lens.lens (\CapacitySize' {type'} -> type') (\s@CapacitySize' {} a -> s {type' = a} :: CapacitySize)

-- |
capacitySize_value :: Lens.Lens' CapacitySize Prelude.Natural
capacitySize_value = Lens.lens (\CapacitySize' {value} -> value) (\s@CapacitySize' {} a -> s {value = a} :: CapacitySize) Prelude.. Prelude._Nat

instance Prelude.FromJSON CapacitySize where
  parseJSON =
    Prelude.withObject
      "CapacitySize"
      ( \x ->
          CapacitySize'
            Prelude.<$> (x Prelude..: "Type")
            Prelude.<*> (x Prelude..: "Value")
      )

instance Prelude.Hashable CapacitySize

instance Prelude.NFData CapacitySize

instance Prelude.ToJSON CapacitySize where
  toJSON CapacitySize' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Type" Prelude..= type'),
            Prelude.Just ("Value" Prelude..= value)
          ]
      )
