{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.RemoveTargets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the specified targets from the specified rule. When the rule is triggered, those targets are no longer be invoked.
--
--
-- When you remove a target, when the associated rule triggers, removed targets might continue to be invoked. Allow a short period of time for changes to take effect.
--
-- This action can partially fail if too many requests are made at the same time. If that happens, @FailedEntryCount@ is non-zero in the response and each entry in @FailedEntries@ provides the ID of the failed target and the error code.
module Network.AWS.CloudWatchEvents.RemoveTargets
  ( -- * Creating a Request
    removeTargets,
    RemoveTargets,

    -- * Request Lenses
    rtForce,
    rtEventBusName,
    rtRule,
    rtIds,

    -- * Destructuring the Response
    removeTargetsResponse,
    RemoveTargetsResponse,

    -- * Response Lenses
    rtrrsFailedEntryCount,
    rtrrsFailedEntries,
    rtrrsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'removeTargets' smart constructor.
data RemoveTargets = RemoveTargets'
  { _rtForce ::
      !(Maybe Bool),
    _rtEventBusName :: !(Maybe Text),
    _rtRule :: !Text,
    _rtIds :: !(List1 Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RemoveTargets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtForce' - If this is a managed rule, created by an AWS service on your behalf, you must specify @Force@ as @True@ to remove targets. This parameter is ignored for rules that are not managed rules. You can check whether a rule is a managed rule by using @DescribeRule@ or @ListRules@ and checking the @ManagedBy@ field of the response.
--
-- * 'rtEventBusName' - The name or ARN of the event bus associated with the rule. If you omit this, the default event bus is used.
--
-- * 'rtRule' - The name of the rule.
--
-- * 'rtIds' - The IDs of the targets to remove from the rule.
removeTargets ::
  -- | 'rtRule'
  Text ->
  -- | 'rtIds'
  NonEmpty Text ->
  RemoveTargets
removeTargets pRule_ pIds_ =
  RemoveTargets'
    { _rtForce = Nothing,
      _rtEventBusName = Nothing,
      _rtRule = pRule_,
      _rtIds = _List1 # pIds_
    }

-- | If this is a managed rule, created by an AWS service on your behalf, you must specify @Force@ as @True@ to remove targets. This parameter is ignored for rules that are not managed rules. You can check whether a rule is a managed rule by using @DescribeRule@ or @ListRules@ and checking the @ManagedBy@ field of the response.
rtForce :: Lens' RemoveTargets (Maybe Bool)
rtForce = lens _rtForce (\s a -> s {_rtForce = a})

-- | The name or ARN of the event bus associated with the rule. If you omit this, the default event bus is used.
rtEventBusName :: Lens' RemoveTargets (Maybe Text)
rtEventBusName = lens _rtEventBusName (\s a -> s {_rtEventBusName = a})

-- | The name of the rule.
rtRule :: Lens' RemoveTargets Text
rtRule = lens _rtRule (\s a -> s {_rtRule = a})

-- | The IDs of the targets to remove from the rule.
rtIds :: Lens' RemoveTargets (NonEmpty Text)
rtIds = lens _rtIds (\s a -> s {_rtIds = a}) . _List1

instance AWSRequest RemoveTargets where
  type Rs RemoveTargets = RemoveTargetsResponse
  request = postJSON cloudWatchEvents
  response =
    receiveJSON
      ( \s h x ->
          RemoveTargetsResponse'
            <$> (x .?> "FailedEntryCount")
            <*> (x .?> "FailedEntries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable RemoveTargets

instance NFData RemoveTargets

instance ToHeaders RemoveTargets where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.RemoveTargets" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON RemoveTargets where
  toJSON RemoveTargets' {..} =
    object
      ( catMaybes
          [ ("Force" .=) <$> _rtForce,
            ("EventBusName" .=) <$> _rtEventBusName,
            Just ("Rule" .= _rtRule),
            Just ("Ids" .= _rtIds)
          ]
      )

instance ToPath RemoveTargets where
  toPath = const "/"

instance ToQuery RemoveTargets where
  toQuery = const mempty

-- | /See:/ 'removeTargetsResponse' smart constructor.
data RemoveTargetsResponse = RemoveTargetsResponse'
  { _rtrrsFailedEntryCount ::
      !(Maybe Int),
    _rtrrsFailedEntries ::
      !( Maybe
           [RemoveTargetsResultEntry]
       ),
    _rtrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'RemoveTargetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rtrrsFailedEntryCount' - The number of failed entries.
--
-- * 'rtrrsFailedEntries' - The failed target entries.
--
-- * 'rtrrsResponseStatus' - -- | The response status code.
removeTargetsResponse ::
  -- | 'rtrrsResponseStatus'
  Int ->
  RemoveTargetsResponse
removeTargetsResponse pResponseStatus_ =
  RemoveTargetsResponse'
    { _rtrrsFailedEntryCount =
        Nothing,
      _rtrrsFailedEntries = Nothing,
      _rtrrsResponseStatus = pResponseStatus_
    }

-- | The number of failed entries.
rtrrsFailedEntryCount :: Lens' RemoveTargetsResponse (Maybe Int)
rtrrsFailedEntryCount = lens _rtrrsFailedEntryCount (\s a -> s {_rtrrsFailedEntryCount = a})

-- | The failed target entries.
rtrrsFailedEntries :: Lens' RemoveTargetsResponse [RemoveTargetsResultEntry]
rtrrsFailedEntries = lens _rtrrsFailedEntries (\s a -> s {_rtrrsFailedEntries = a}) . _Default . _Coerce

-- | -- | The response status code.
rtrrsResponseStatus :: Lens' RemoveTargetsResponse Int
rtrrsResponseStatus = lens _rtrrsResponseStatus (\s a -> s {_rtrrsResponseStatus = a})

instance NFData RemoveTargetsResponse
