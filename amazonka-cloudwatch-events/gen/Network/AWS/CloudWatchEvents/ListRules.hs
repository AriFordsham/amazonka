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
-- Module      : Network.AWS.CloudWatchEvents.ListRules
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists your Amazon EventBridge rules. You can either list all the rules or you can provide a prefix to match to the rule names.
--
--
-- ListRules does not list the targets of a rule. To see the targets associated with a rule, use 'ListTargetsByRule' .
--
--
-- This operation returns paginated results.
module Network.AWS.CloudWatchEvents.ListRules
  ( -- * Creating a Request
    listRules,
    ListRules,

    -- * Request Lenses
    lrNextToken,
    lrEventBusName,
    lrNamePrefix,
    lrLimit,

    -- * Destructuring the Response
    listRulesResponse,
    ListRulesResponse,

    -- * Response Lenses
    lrrrsNextToken,
    lrrrsRules,
    lrrrsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listRules' smart constructor.
data ListRules = ListRules'
  { _lrNextToken ::
      !(Maybe Text),
    _lrEventBusName :: !(Maybe Text),
    _lrNamePrefix :: !(Maybe Text),
    _lrLimit :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListRules' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrNextToken' - The token returned by a previous call to retrieve the next set of results.
--
-- * 'lrEventBusName' - The name or ARN of the event bus to list the rules for. If you omit this, the default event bus is used.
--
-- * 'lrNamePrefix' - The prefix matching the rule name.
--
-- * 'lrLimit' - The maximum number of results to return.
listRules ::
  ListRules
listRules =
  ListRules'
    { _lrNextToken = Nothing,
      _lrEventBusName = Nothing,
      _lrNamePrefix = Nothing,
      _lrLimit = Nothing
    }

-- | The token returned by a previous call to retrieve the next set of results.
lrNextToken :: Lens' ListRules (Maybe Text)
lrNextToken = lens _lrNextToken (\s a -> s {_lrNextToken = a})

-- | The name or ARN of the event bus to list the rules for. If you omit this, the default event bus is used.
lrEventBusName :: Lens' ListRules (Maybe Text)
lrEventBusName = lens _lrEventBusName (\s a -> s {_lrEventBusName = a})

-- | The prefix matching the rule name.
lrNamePrefix :: Lens' ListRules (Maybe Text)
lrNamePrefix = lens _lrNamePrefix (\s a -> s {_lrNamePrefix = a})

-- | The maximum number of results to return.
lrLimit :: Lens' ListRules (Maybe Natural)
lrLimit = lens _lrLimit (\s a -> s {_lrLimit = a}) . mapping _Nat

instance AWSPager ListRules where
  page rq rs
    | stop (rs ^. lrrrsNextToken) = Nothing
    | stop (rs ^. lrrrsRules) = Nothing
    | otherwise =
      Just $ rq & lrNextToken .~ rs ^. lrrrsNextToken

instance AWSRequest ListRules where
  type Rs ListRules = ListRulesResponse
  request = postJSON cloudWatchEvents
  response =
    receiveJSON
      ( \s h x ->
          ListRulesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Rules" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListRules

instance NFData ListRules

instance ToHeaders ListRules where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.ListRules" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListRules where
  toJSON ListRules' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lrNextToken,
            ("EventBusName" .=) <$> _lrEventBusName,
            ("NamePrefix" .=) <$> _lrNamePrefix,
            ("Limit" .=) <$> _lrLimit
          ]
      )

instance ToPath ListRules where
  toPath = const "/"

instance ToQuery ListRules where
  toQuery = const mempty

-- | /See:/ 'listRulesResponse' smart constructor.
data ListRulesResponse = ListRulesResponse'
  { _lrrrsNextToken ::
      !(Maybe Text),
    _lrrrsRules :: !(Maybe [Rule]),
    _lrrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListRulesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrrrsNextToken' - Indicates whether there are additional results to retrieve. If there are no more results, the value is null.
--
-- * 'lrrrsRules' - The rules that match the specified criteria.
--
-- * 'lrrrsResponseStatus' - -- | The response status code.
listRulesResponse ::
  -- | 'lrrrsResponseStatus'
  Int ->
  ListRulesResponse
listRulesResponse pResponseStatus_ =
  ListRulesResponse'
    { _lrrrsNextToken = Nothing,
      _lrrrsRules = Nothing,
      _lrrrsResponseStatus = pResponseStatus_
    }

-- | Indicates whether there are additional results to retrieve. If there are no more results, the value is null.
lrrrsNextToken :: Lens' ListRulesResponse (Maybe Text)
lrrrsNextToken = lens _lrrrsNextToken (\s a -> s {_lrrrsNextToken = a})

-- | The rules that match the specified criteria.
lrrrsRules :: Lens' ListRulesResponse [Rule]
lrrrsRules = lens _lrrrsRules (\s a -> s {_lrrrsRules = a}) . _Default . _Coerce

-- | -- | The response status code.
lrrrsResponseStatus :: Lens' ListRulesResponse Int
lrrrsResponseStatus = lens _lrrrsResponseStatus (\s a -> s {_lrrrsResponseStatus = a})

instance NFData ListRulesResponse
