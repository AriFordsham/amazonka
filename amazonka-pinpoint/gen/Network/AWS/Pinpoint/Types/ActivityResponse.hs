{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.ActivityResponse
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.ActivityResponse where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Provides information about an activity that was performed by a campaign.
--
--
--
-- /See:/ 'activityResponse' smart constructor.
data ActivityResponse = ActivityResponse'
  { _aEnd ::
      !(Maybe Text),
    _aSuccessfulEndpointCount ::
      !(Maybe Int),
    _aResult :: !(Maybe Text),
    _aTimezonesCompletedCount ::
      !(Maybe Int),
    _aState :: !(Maybe Text),
    _aTimezonesTotalCount :: !(Maybe Int),
    _aTreatmentId :: !(Maybe Text),
    _aScheduledStart :: !(Maybe Text),
    _aStart :: !(Maybe Text),
    _aTotalEndpointCount :: !(Maybe Int),
    _aCampaignId :: !Text,
    _aId :: !Text,
    _aApplicationId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ActivityResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aEnd' - The actual time, in ISO 8601 format, when the activity was marked CANCELLED or COMPLETED.
--
-- * 'aSuccessfulEndpointCount' - The total number of endpoints that the campaign successfully delivered messages to.
--
-- * 'aResult' - Specifies whether the activity succeeded. Possible values are SUCCESS and FAIL.
--
-- * 'aTimezonesCompletedCount' - The total number of time zones that were completed.
--
-- * 'aState' - The current status of the activity. Possible values are: PENDING, INITIALIZING, RUNNING, PAUSED, CANCELLED, and COMPLETED.
--
-- * 'aTimezonesTotalCount' - The total number of unique time zones that are in the segment for the campaign.
--
-- * 'aTreatmentId' - The unique identifier for the campaign treatment that the activity applies to. A treatment is a variation of a campaign that's used for A/B testing of a campaign.
--
-- * 'aScheduledStart' - The scheduled start time, in ISO 8601 format, for the activity.
--
-- * 'aStart' - The actual start time, in ISO 8601 format, of the activity.
--
-- * 'aTotalEndpointCount' - The total number of endpoints that the campaign attempted to deliver messages to.
--
-- * 'aCampaignId' - The unique identifier for the campaign that the activity applies to.
--
-- * 'aId' - The unique identifier for the activity.
--
-- * 'aApplicationId' - The unique identifier for the application that the campaign applies to.
activityResponse ::
  -- | 'aCampaignId'
  Text ->
  -- | 'aId'
  Text ->
  -- | 'aApplicationId'
  Text ->
  ActivityResponse
activityResponse pCampaignId_ pId_ pApplicationId_ =
  ActivityResponse'
    { _aEnd = Nothing,
      _aSuccessfulEndpointCount = Nothing,
      _aResult = Nothing,
      _aTimezonesCompletedCount = Nothing,
      _aState = Nothing,
      _aTimezonesTotalCount = Nothing,
      _aTreatmentId = Nothing,
      _aScheduledStart = Nothing,
      _aStart = Nothing,
      _aTotalEndpointCount = Nothing,
      _aCampaignId = pCampaignId_,
      _aId = pId_,
      _aApplicationId = pApplicationId_
    }

-- | The actual time, in ISO 8601 format, when the activity was marked CANCELLED or COMPLETED.
aEnd :: Lens' ActivityResponse (Maybe Text)
aEnd = lens _aEnd (\s a -> s {_aEnd = a})

-- | The total number of endpoints that the campaign successfully delivered messages to.
aSuccessfulEndpointCount :: Lens' ActivityResponse (Maybe Int)
aSuccessfulEndpointCount = lens _aSuccessfulEndpointCount (\s a -> s {_aSuccessfulEndpointCount = a})

-- | Specifies whether the activity succeeded. Possible values are SUCCESS and FAIL.
aResult :: Lens' ActivityResponse (Maybe Text)
aResult = lens _aResult (\s a -> s {_aResult = a})

-- | The total number of time zones that were completed.
aTimezonesCompletedCount :: Lens' ActivityResponse (Maybe Int)
aTimezonesCompletedCount = lens _aTimezonesCompletedCount (\s a -> s {_aTimezonesCompletedCount = a})

-- | The current status of the activity. Possible values are: PENDING, INITIALIZING, RUNNING, PAUSED, CANCELLED, and COMPLETED.
aState :: Lens' ActivityResponse (Maybe Text)
aState = lens _aState (\s a -> s {_aState = a})

-- | The total number of unique time zones that are in the segment for the campaign.
aTimezonesTotalCount :: Lens' ActivityResponse (Maybe Int)
aTimezonesTotalCount = lens _aTimezonesTotalCount (\s a -> s {_aTimezonesTotalCount = a})

-- | The unique identifier for the campaign treatment that the activity applies to. A treatment is a variation of a campaign that's used for A/B testing of a campaign.
aTreatmentId :: Lens' ActivityResponse (Maybe Text)
aTreatmentId = lens _aTreatmentId (\s a -> s {_aTreatmentId = a})

-- | The scheduled start time, in ISO 8601 format, for the activity.
aScheduledStart :: Lens' ActivityResponse (Maybe Text)
aScheduledStart = lens _aScheduledStart (\s a -> s {_aScheduledStart = a})

-- | The actual start time, in ISO 8601 format, of the activity.
aStart :: Lens' ActivityResponse (Maybe Text)
aStart = lens _aStart (\s a -> s {_aStart = a})

-- | The total number of endpoints that the campaign attempted to deliver messages to.
aTotalEndpointCount :: Lens' ActivityResponse (Maybe Int)
aTotalEndpointCount = lens _aTotalEndpointCount (\s a -> s {_aTotalEndpointCount = a})

-- | The unique identifier for the campaign that the activity applies to.
aCampaignId :: Lens' ActivityResponse Text
aCampaignId = lens _aCampaignId (\s a -> s {_aCampaignId = a})

-- | The unique identifier for the activity.
aId :: Lens' ActivityResponse Text
aId = lens _aId (\s a -> s {_aId = a})

-- | The unique identifier for the application that the campaign applies to.
aApplicationId :: Lens' ActivityResponse Text
aApplicationId = lens _aApplicationId (\s a -> s {_aApplicationId = a})

instance FromJSON ActivityResponse where
  parseJSON =
    withObject
      "ActivityResponse"
      ( \x ->
          ActivityResponse'
            <$> (x .:? "End")
            <*> (x .:? "SuccessfulEndpointCount")
            <*> (x .:? "Result")
            <*> (x .:? "TimezonesCompletedCount")
            <*> (x .:? "State")
            <*> (x .:? "TimezonesTotalCount")
            <*> (x .:? "TreatmentId")
            <*> (x .:? "ScheduledStart")
            <*> (x .:? "Start")
            <*> (x .:? "TotalEndpointCount")
            <*> (x .: "CampaignId")
            <*> (x .: "Id")
            <*> (x .: "ApplicationId")
      )

instance Hashable ActivityResponse

instance NFData ActivityResponse
