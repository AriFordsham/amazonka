{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.TrialComponentSimpleSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.TrialComponentSimpleSummary where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.SageMaker.Types.TrialComponentSource
import Network.AWS.SageMaker.Types.UserContext

-- | A short summary of a trial component.
--
--
--
-- /See:/ 'trialComponentSimpleSummary' smart constructor.
data TrialComponentSimpleSummary = TrialComponentSimpleSummary'
  { _tcssCreationTime ::
      !(Maybe POSIX),
    _tcssTrialComponentARN ::
      !(Maybe Text),
    _tcssCreatedBy ::
      !( Maybe
           UserContext
       ),
    _tcssTrialComponentSource ::
      !( Maybe
           TrialComponentSource
       ),
    _tcssTrialComponentName ::
      !(Maybe Text)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'TrialComponentSimpleSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tcssCreationTime' - When the component was created.
--
-- * 'tcssTrialComponentARN' - The Amazon Resource Name (ARN) of the trial component.
--
-- * 'tcssCreatedBy' - Undocumented member.
--
-- * 'tcssTrialComponentSource' - Undocumented member.
--
-- * 'tcssTrialComponentName' - The name of the trial component.
trialComponentSimpleSummary ::
  TrialComponentSimpleSummary
trialComponentSimpleSummary =
  TrialComponentSimpleSummary'
    { _tcssCreationTime =
        Nothing,
      _tcssTrialComponentARN = Nothing,
      _tcssCreatedBy = Nothing,
      _tcssTrialComponentSource = Nothing,
      _tcssTrialComponentName = Nothing
    }

-- | When the component was created.
tcssCreationTime :: Lens' TrialComponentSimpleSummary (Maybe UTCTime)
tcssCreationTime = lens _tcssCreationTime (\s a -> s {_tcssCreationTime = a}) . mapping _Time

-- | The Amazon Resource Name (ARN) of the trial component.
tcssTrialComponentARN :: Lens' TrialComponentSimpleSummary (Maybe Text)
tcssTrialComponentARN = lens _tcssTrialComponentARN (\s a -> s {_tcssTrialComponentARN = a})

-- | Undocumented member.
tcssCreatedBy :: Lens' TrialComponentSimpleSummary (Maybe UserContext)
tcssCreatedBy = lens _tcssCreatedBy (\s a -> s {_tcssCreatedBy = a})

-- | Undocumented member.
tcssTrialComponentSource :: Lens' TrialComponentSimpleSummary (Maybe TrialComponentSource)
tcssTrialComponentSource = lens _tcssTrialComponentSource (\s a -> s {_tcssTrialComponentSource = a})

-- | The name of the trial component.
tcssTrialComponentName :: Lens' TrialComponentSimpleSummary (Maybe Text)
tcssTrialComponentName = lens _tcssTrialComponentName (\s a -> s {_tcssTrialComponentName = a})

instance FromJSON TrialComponentSimpleSummary where
  parseJSON =
    withObject
      "TrialComponentSimpleSummary"
      ( \x ->
          TrialComponentSimpleSummary'
            <$> (x .:? "CreationTime")
            <*> (x .:? "TrialComponentArn")
            <*> (x .:? "CreatedBy")
            <*> (x .:? "TrialComponentSource")
            <*> (x .:? "TrialComponentName")
      )

instance Hashable TrialComponentSimpleSummary

instance NFData TrialComponentSimpleSummary
