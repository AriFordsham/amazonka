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
-- Module      : Network.AWS.Glue.Types.DoubleColumnStatisticsData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.DoubleColumnStatisticsData where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Defines column statistics supported for floating-point number data
-- columns.
--
-- /See:/ 'newDoubleColumnStatisticsData' smart constructor.
data DoubleColumnStatisticsData = DoubleColumnStatisticsData'
  { -- | The highest value in the column.
    maximumValue :: Prelude.Maybe Prelude.Double,
    -- | The lowest value in the column.
    minimumValue :: Prelude.Maybe Prelude.Double,
    -- | The number of null values in the column.
    numberOfNulls :: Prelude.Nat,
    -- | The number of distinct values in a column.
    numberOfDistinctValues :: Prelude.Nat
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DoubleColumnStatisticsData' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'maximumValue', 'doubleColumnStatisticsData_maximumValue' - The highest value in the column.
--
-- 'minimumValue', 'doubleColumnStatisticsData_minimumValue' - The lowest value in the column.
--
-- 'numberOfNulls', 'doubleColumnStatisticsData_numberOfNulls' - The number of null values in the column.
--
-- 'numberOfDistinctValues', 'doubleColumnStatisticsData_numberOfDistinctValues' - The number of distinct values in a column.
newDoubleColumnStatisticsData ::
  -- | 'numberOfNulls'
  Prelude.Natural ->
  -- | 'numberOfDistinctValues'
  Prelude.Natural ->
  DoubleColumnStatisticsData
newDoubleColumnStatisticsData
  pNumberOfNulls_
  pNumberOfDistinctValues_ =
    DoubleColumnStatisticsData'
      { maximumValue =
          Prelude.Nothing,
        minimumValue = Prelude.Nothing,
        numberOfNulls =
          Prelude._Nat Lens.# pNumberOfNulls_,
        numberOfDistinctValues =
          Prelude._Nat Lens.# pNumberOfDistinctValues_
      }

-- | The highest value in the column.
doubleColumnStatisticsData_maximumValue :: Lens.Lens' DoubleColumnStatisticsData (Prelude.Maybe Prelude.Double)
doubleColumnStatisticsData_maximumValue = Lens.lens (\DoubleColumnStatisticsData' {maximumValue} -> maximumValue) (\s@DoubleColumnStatisticsData' {} a -> s {maximumValue = a} :: DoubleColumnStatisticsData)

-- | The lowest value in the column.
doubleColumnStatisticsData_minimumValue :: Lens.Lens' DoubleColumnStatisticsData (Prelude.Maybe Prelude.Double)
doubleColumnStatisticsData_minimumValue = Lens.lens (\DoubleColumnStatisticsData' {minimumValue} -> minimumValue) (\s@DoubleColumnStatisticsData' {} a -> s {minimumValue = a} :: DoubleColumnStatisticsData)

-- | The number of null values in the column.
doubleColumnStatisticsData_numberOfNulls :: Lens.Lens' DoubleColumnStatisticsData Prelude.Natural
doubleColumnStatisticsData_numberOfNulls = Lens.lens (\DoubleColumnStatisticsData' {numberOfNulls} -> numberOfNulls) (\s@DoubleColumnStatisticsData' {} a -> s {numberOfNulls = a} :: DoubleColumnStatisticsData) Prelude.. Prelude._Nat

-- | The number of distinct values in a column.
doubleColumnStatisticsData_numberOfDistinctValues :: Lens.Lens' DoubleColumnStatisticsData Prelude.Natural
doubleColumnStatisticsData_numberOfDistinctValues = Lens.lens (\DoubleColumnStatisticsData' {numberOfDistinctValues} -> numberOfDistinctValues) (\s@DoubleColumnStatisticsData' {} a -> s {numberOfDistinctValues = a} :: DoubleColumnStatisticsData) Prelude.. Prelude._Nat

instance Prelude.FromJSON DoubleColumnStatisticsData where
  parseJSON =
    Prelude.withObject
      "DoubleColumnStatisticsData"
      ( \x ->
          DoubleColumnStatisticsData'
            Prelude.<$> (x Prelude..:? "MaximumValue")
            Prelude.<*> (x Prelude..:? "MinimumValue")
            Prelude.<*> (x Prelude..: "NumberOfNulls")
            Prelude.<*> (x Prelude..: "NumberOfDistinctValues")
      )

instance Prelude.Hashable DoubleColumnStatisticsData

instance Prelude.NFData DoubleColumnStatisticsData

instance Prelude.ToJSON DoubleColumnStatisticsData where
  toJSON DoubleColumnStatisticsData' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("MaximumValue" Prelude..=)
              Prelude.<$> maximumValue,
            ("MinimumValue" Prelude..=) Prelude.<$> minimumValue,
            Prelude.Just
              ("NumberOfNulls" Prelude..= numberOfNulls),
            Prelude.Just
              ( "NumberOfDistinctValues"
                  Prelude..= numberOfDistinctValues
              )
          ]
      )
