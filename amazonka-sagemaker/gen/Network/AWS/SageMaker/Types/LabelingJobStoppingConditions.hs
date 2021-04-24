{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.LabelingJobStoppingConditions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.LabelingJobStoppingConditions where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | A set of conditions for stopping a labeling job. If any of the conditions are met, the job is automatically stopped. You can use these conditions to control the cost of data labeling.
--
--
--
-- /See:/ 'labelingJobStoppingConditions' smart constructor.
data LabelingJobStoppingConditions = LabelingJobStoppingConditions'
  { _ljscMaxPercentageOfInputDatasetLabeled ::
      !( Maybe
           Nat
       ),
    _ljscMaxHumanLabeledObjectCount ::
      !( Maybe
           Nat
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'LabelingJobStoppingConditions' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ljscMaxPercentageOfInputDatasetLabeled' - The maximum number of input data objects that should be labeled.
--
-- * 'ljscMaxHumanLabeledObjectCount' - The maximum number of objects that can be labeled by human workers.
labelingJobStoppingConditions ::
  LabelingJobStoppingConditions
labelingJobStoppingConditions =
  LabelingJobStoppingConditions'
    { _ljscMaxPercentageOfInputDatasetLabeled =
        Nothing,
      _ljscMaxHumanLabeledObjectCount = Nothing
    }

-- | The maximum number of input data objects that should be labeled.
ljscMaxPercentageOfInputDatasetLabeled :: Lens' LabelingJobStoppingConditions (Maybe Natural)
ljscMaxPercentageOfInputDatasetLabeled = lens _ljscMaxPercentageOfInputDatasetLabeled (\s a -> s {_ljscMaxPercentageOfInputDatasetLabeled = a}) . mapping _Nat

-- | The maximum number of objects that can be labeled by human workers.
ljscMaxHumanLabeledObjectCount :: Lens' LabelingJobStoppingConditions (Maybe Natural)
ljscMaxHumanLabeledObjectCount = lens _ljscMaxHumanLabeledObjectCount (\s a -> s {_ljscMaxHumanLabeledObjectCount = a}) . mapping _Nat

instance FromJSON LabelingJobStoppingConditions where
  parseJSON =
    withObject
      "LabelingJobStoppingConditions"
      ( \x ->
          LabelingJobStoppingConditions'
            <$> (x .:? "MaxPercentageOfInputDatasetLabeled")
            <*> (x .:? "MaxHumanLabeledObjectCount")
      )

instance Hashable LabelingJobStoppingConditions

instance NFData LabelingJobStoppingConditions

instance ToJSON LabelingJobStoppingConditions where
  toJSON LabelingJobStoppingConditions' {..} =
    object
      ( catMaybes
          [ ("MaxPercentageOfInputDatasetLabeled" .=)
              <$> _ljscMaxPercentageOfInputDatasetLabeled,
            ("MaxHumanLabeledObjectCount" .=)
              <$> _ljscMaxHumanLabeledObjectCount
          ]
      )
