{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.MechanicalTurk.Types.ParameterMapEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MechanicalTurk.Types.ParameterMapEntry where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | This data structure is the data type for the AnswerKey parameter of the ScoreMyKnownAnswers/2011-09-01 Review Policy.
--
--
--
-- /See:/ 'parameterMapEntry' smart constructor.
data ParameterMapEntry = ParameterMapEntry'
  { _pmeKey ::
      !(Maybe Text),
    _pmeValues :: !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ParameterMapEntry' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmeKey' - The QuestionID from the HIT that is used to identify which question requires Mechanical Turk to score as part of the ScoreMyKnownAnswers/2011-09-01 Review Policy.
--
-- * 'pmeValues' - The list of answers to the question specified in the MapEntry Key element. The Worker must match all values in order for the answer to be scored correctly.
parameterMapEntry ::
  ParameterMapEntry
parameterMapEntry =
  ParameterMapEntry'
    { _pmeKey = Nothing,
      _pmeValues = Nothing
    }

-- | The QuestionID from the HIT that is used to identify which question requires Mechanical Turk to score as part of the ScoreMyKnownAnswers/2011-09-01 Review Policy.
pmeKey :: Lens' ParameterMapEntry (Maybe Text)
pmeKey = lens _pmeKey (\s a -> s {_pmeKey = a})

-- | The list of answers to the question specified in the MapEntry Key element. The Worker must match all values in order for the answer to be scored correctly.
pmeValues :: Lens' ParameterMapEntry [Text]
pmeValues = lens _pmeValues (\s a -> s {_pmeValues = a}) . _Default . _Coerce

instance FromJSON ParameterMapEntry where
  parseJSON =
    withObject
      "ParameterMapEntry"
      ( \x ->
          ParameterMapEntry'
            <$> (x .:? "Key") <*> (x .:? "Values" .!= mempty)
      )

instance Hashable ParameterMapEntry

instance NFData ParameterMapEntry

instance ToJSON ParameterMapEntry where
  toJSON ParameterMapEntry' {..} =
    object
      ( catMaybes
          [ ("Key" .=) <$> _pmeKey,
            ("Values" .=) <$> _pmeValues
          ]
      )
