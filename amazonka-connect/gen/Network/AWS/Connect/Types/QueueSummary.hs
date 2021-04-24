{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.QueueSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.QueueSummary where

import Network.AWS.Connect.Types.QueueType
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains summary information about a queue.
--
--
--
-- /See:/ 'queueSummary' smart constructor.
data QueueSummary = QueueSummary'
  { _qsQueueType ::
      !(Maybe QueueType),
    _qsARN :: !(Maybe Text),
    _qsId :: !(Maybe Text),
    _qsName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'QueueSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'qsQueueType' - The type of queue.
--
-- * 'qsARN' - The Amazon Resource Name (ARN) of the queue.
--
-- * 'qsId' - The identifier of the queue.
--
-- * 'qsName' - The name of the queue.
queueSummary ::
  QueueSummary
queueSummary =
  QueueSummary'
    { _qsQueueType = Nothing,
      _qsARN = Nothing,
      _qsId = Nothing,
      _qsName = Nothing
    }

-- | The type of queue.
qsQueueType :: Lens' QueueSummary (Maybe QueueType)
qsQueueType = lens _qsQueueType (\s a -> s {_qsQueueType = a})

-- | The Amazon Resource Name (ARN) of the queue.
qsARN :: Lens' QueueSummary (Maybe Text)
qsARN = lens _qsARN (\s a -> s {_qsARN = a})

-- | The identifier of the queue.
qsId :: Lens' QueueSummary (Maybe Text)
qsId = lens _qsId (\s a -> s {_qsId = a})

-- | The name of the queue.
qsName :: Lens' QueueSummary (Maybe Text)
qsName = lens _qsName (\s a -> s {_qsName = a})

instance FromJSON QueueSummary where
  parseJSON =
    withObject
      "QueueSummary"
      ( \x ->
          QueueSummary'
            <$> (x .:? "QueueType")
            <*> (x .:? "Arn")
            <*> (x .:? "Id")
            <*> (x .:? "Name")
      )

instance Hashable QueueSummary

instance NFData QueueSummary
