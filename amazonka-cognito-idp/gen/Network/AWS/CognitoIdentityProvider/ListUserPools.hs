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
-- Module      : Network.AWS.CognitoIdentityProvider.ListUserPools
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the user pools associated with an AWS account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CognitoIdentityProvider.ListUserPools
  ( -- * Creating a Request
    listUserPools,
    ListUserPools,

    -- * Request Lenses
    lupNextToken,
    lupMaxResults,

    -- * Destructuring the Response
    listUserPoolsResponse,
    ListUserPoolsResponse,

    -- * Response Lenses
    luprrsNextToken,
    luprrsUserPools,
    luprrsResponseStatus,
  )
where

import Network.AWS.CognitoIdentityProvider.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the request to list user pools.
--
--
--
-- /See:/ 'listUserPools' smart constructor.
data ListUserPools = ListUserPools'
  { _lupNextToken ::
      !(Maybe Text),
    _lupMaxResults :: !Nat
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListUserPools' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lupNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- * 'lupMaxResults' - The maximum number of results you want the request to return when listing the user pools.
listUserPools ::
  -- | 'lupMaxResults'
  Natural ->
  ListUserPools
listUserPools pMaxResults_ =
  ListUserPools'
    { _lupNextToken = Nothing,
      _lupMaxResults = _Nat # pMaxResults_
    }

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
lupNextToken :: Lens' ListUserPools (Maybe Text)
lupNextToken = lens _lupNextToken (\s a -> s {_lupNextToken = a})

-- | The maximum number of results you want the request to return when listing the user pools.
lupMaxResults :: Lens' ListUserPools Natural
lupMaxResults = lens _lupMaxResults (\s a -> s {_lupMaxResults = a}) . _Nat

instance AWSPager ListUserPools where
  page rq rs
    | stop (rs ^. luprrsNextToken) = Nothing
    | stop (rs ^. luprrsUserPools) = Nothing
    | otherwise =
      Just $ rq & lupNextToken .~ rs ^. luprrsNextToken

instance AWSRequest ListUserPools where
  type Rs ListUserPools = ListUserPoolsResponse
  request = postJSON cognitoIdentityProvider
  response =
    receiveJSON
      ( \s h x ->
          ListUserPoolsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "UserPools" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListUserPools

instance NFData ListUserPools

instance ToHeaders ListUserPools where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSCognitoIdentityProviderService.ListUserPools" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListUserPools where
  toJSON ListUserPools' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lupNextToken,
            Just ("MaxResults" .= _lupMaxResults)
          ]
      )

instance ToPath ListUserPools where
  toPath = const "/"

instance ToQuery ListUserPools where
  toQuery = const mempty

-- | Represents the response to list user pools.
--
--
--
-- /See:/ 'listUserPoolsResponse' smart constructor.
data ListUserPoolsResponse = ListUserPoolsResponse'
  { _luprrsNextToken ::
      !(Maybe Text),
    _luprrsUserPools ::
      !( Maybe
           [UserPoolDescriptionType]
       ),
    _luprrsResponseStatus ::
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

-- | Creates a value of 'ListUserPoolsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'luprrsNextToken' - An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
--
-- * 'luprrsUserPools' - The user pools from the response to list users.
--
-- * 'luprrsResponseStatus' - -- | The response status code.
listUserPoolsResponse ::
  -- | 'luprrsResponseStatus'
  Int ->
  ListUserPoolsResponse
listUserPoolsResponse pResponseStatus_ =
  ListUserPoolsResponse'
    { _luprrsNextToken = Nothing,
      _luprrsUserPools = Nothing,
      _luprrsResponseStatus = pResponseStatus_
    }

-- | An identifier that was returned from the previous call to this operation, which can be used to return the next set of items in the list.
luprrsNextToken :: Lens' ListUserPoolsResponse (Maybe Text)
luprrsNextToken = lens _luprrsNextToken (\s a -> s {_luprrsNextToken = a})

-- | The user pools from the response to list users.
luprrsUserPools :: Lens' ListUserPoolsResponse [UserPoolDescriptionType]
luprrsUserPools = lens _luprrsUserPools (\s a -> s {_luprrsUserPools = a}) . _Default . _Coerce

-- | -- | The response status code.
luprrsResponseStatus :: Lens' ListUserPoolsResponse Int
luprrsResponseStatus = lens _luprrsResponseStatus (\s a -> s {_luprrsResponseStatus = a})

instance NFData ListUserPoolsResponse
