{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.EventSource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.EventSource where

import Network.AWS.CloudWatchEvents.Types.EventSourceState
import Network.AWS.Lens
import Network.AWS.Prelude

-- | A partner event source is created by an SaaS partner. If a customer creates a partner event bus that matches this event source, that AWS account can receive events from the partner's applications or services.
--
--
--
-- /See:/ 'eventSource' smart constructor.
data EventSource = EventSource'
  { _esCreationTime ::
      !(Maybe POSIX),
    _esExpirationTime :: !(Maybe POSIX),
    _esARN :: !(Maybe Text),
    _esState :: !(Maybe EventSourceState),
    _esName :: !(Maybe Text),
    _esCreatedBy :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'EventSource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'esCreationTime' - The date and time the event source was created.
--
-- * 'esExpirationTime' - The date and time that the event source will expire, if the AWS account doesn't create a matching event bus for it.
--
-- * 'esARN' - The ARN of the event source.
--
-- * 'esState' - The state of the event source. If it is ACTIVE, you have already created a matching event bus for this event source, and that event bus is active. If it is PENDING, either you haven't yet created a matching event bus, or that event bus is deactivated. If it is DELETED, you have created a matching event bus, but the event source has since been deleted.
--
-- * 'esName' - The name of the event source.
--
-- * 'esCreatedBy' - The name of the partner that created the event source.
eventSource ::
  EventSource
eventSource =
  EventSource'
    { _esCreationTime = Nothing,
      _esExpirationTime = Nothing,
      _esARN = Nothing,
      _esState = Nothing,
      _esName = Nothing,
      _esCreatedBy = Nothing
    }

-- | The date and time the event source was created.
esCreationTime :: Lens' EventSource (Maybe UTCTime)
esCreationTime = lens _esCreationTime (\s a -> s {_esCreationTime = a}) . mapping _Time

-- | The date and time that the event source will expire, if the AWS account doesn't create a matching event bus for it.
esExpirationTime :: Lens' EventSource (Maybe UTCTime)
esExpirationTime = lens _esExpirationTime (\s a -> s {_esExpirationTime = a}) . mapping _Time

-- | The ARN of the event source.
esARN :: Lens' EventSource (Maybe Text)
esARN = lens _esARN (\s a -> s {_esARN = a})

-- | The state of the event source. If it is ACTIVE, you have already created a matching event bus for this event source, and that event bus is active. If it is PENDING, either you haven't yet created a matching event bus, or that event bus is deactivated. If it is DELETED, you have created a matching event bus, but the event source has since been deleted.
esState :: Lens' EventSource (Maybe EventSourceState)
esState = lens _esState (\s a -> s {_esState = a})

-- | The name of the event source.
esName :: Lens' EventSource (Maybe Text)
esName = lens _esName (\s a -> s {_esName = a})

-- | The name of the partner that created the event source.
esCreatedBy :: Lens' EventSource (Maybe Text)
esCreatedBy = lens _esCreatedBy (\s a -> s {_esCreatedBy = a})

instance FromJSON EventSource where
  parseJSON =
    withObject
      "EventSource"
      ( \x ->
          EventSource'
            <$> (x .:? "CreationTime")
            <*> (x .:? "ExpirationTime")
            <*> (x .:? "Arn")
            <*> (x .:? "State")
            <*> (x .:? "Name")
            <*> (x .:? "CreatedBy")
      )

instance Hashable EventSource

instance NFData EventSource
