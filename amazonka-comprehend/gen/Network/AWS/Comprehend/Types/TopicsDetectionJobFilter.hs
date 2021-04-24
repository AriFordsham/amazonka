{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.TopicsDetectionJobFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.TopicsDetectionJobFilter where

import Network.AWS.Comprehend.Types.JobStatus
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information for filtering topic detection jobs. For more information, see .
--
--
--
-- /See:/ 'topicsDetectionJobFilter' smart constructor.
data TopicsDetectionJobFilter = TopicsDetectionJobFilter'
  { _tdjfJobStatus ::
      !(Maybe JobStatus),
    _tdjfSubmitTimeBefore ::
      !(Maybe POSIX),
    _tdjfSubmitTimeAfter ::
      !(Maybe POSIX),
    _tdjfJobName ::
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

-- | Creates a value of 'TopicsDetectionJobFilter' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tdjfJobStatus' - Filters the list of topic detection jobs based on job status. Returns only jobs with the specified status.
--
-- * 'tdjfSubmitTimeBefore' - Filters the list of jobs based on the time that the job was submitted for processing. Only returns jobs submitted before the specified time. Jobs are returned in descending order, newest to oldest.
--
-- * 'tdjfSubmitTimeAfter' - Filters the list of jobs based on the time that the job was submitted for processing. Only returns jobs submitted after the specified time. Jobs are returned in ascending order, oldest to newest.
--
-- * 'tdjfJobName' -
topicsDetectionJobFilter ::
  TopicsDetectionJobFilter
topicsDetectionJobFilter =
  TopicsDetectionJobFilter'
    { _tdjfJobStatus = Nothing,
      _tdjfSubmitTimeBefore = Nothing,
      _tdjfSubmitTimeAfter = Nothing,
      _tdjfJobName = Nothing
    }

-- | Filters the list of topic detection jobs based on job status. Returns only jobs with the specified status.
tdjfJobStatus :: Lens' TopicsDetectionJobFilter (Maybe JobStatus)
tdjfJobStatus = lens _tdjfJobStatus (\s a -> s {_tdjfJobStatus = a})

-- | Filters the list of jobs based on the time that the job was submitted for processing. Only returns jobs submitted before the specified time. Jobs are returned in descending order, newest to oldest.
tdjfSubmitTimeBefore :: Lens' TopicsDetectionJobFilter (Maybe UTCTime)
tdjfSubmitTimeBefore = lens _tdjfSubmitTimeBefore (\s a -> s {_tdjfSubmitTimeBefore = a}) . mapping _Time

-- | Filters the list of jobs based on the time that the job was submitted for processing. Only returns jobs submitted after the specified time. Jobs are returned in ascending order, oldest to newest.
tdjfSubmitTimeAfter :: Lens' TopicsDetectionJobFilter (Maybe UTCTime)
tdjfSubmitTimeAfter = lens _tdjfSubmitTimeAfter (\s a -> s {_tdjfSubmitTimeAfter = a}) . mapping _Time

-- |
tdjfJobName :: Lens' TopicsDetectionJobFilter (Maybe Text)
tdjfJobName = lens _tdjfJobName (\s a -> s {_tdjfJobName = a})

instance Hashable TopicsDetectionJobFilter

instance NFData TopicsDetectionJobFilter

instance ToJSON TopicsDetectionJobFilter where
  toJSON TopicsDetectionJobFilter' {..} =
    object
      ( catMaybes
          [ ("JobStatus" .=) <$> _tdjfJobStatus,
            ("SubmitTimeBefore" .=) <$> _tdjfSubmitTimeBefore,
            ("SubmitTimeAfter" .=) <$> _tdjfSubmitTimeAfter,
            ("JobName" .=) <$> _tdjfJobName
          ]
      )
