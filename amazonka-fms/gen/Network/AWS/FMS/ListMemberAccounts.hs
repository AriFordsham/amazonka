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
-- Module      : Network.AWS.FMS.ListMemberAccounts
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a @MemberAccounts@ object that lists the member accounts in the administrator's AWS organization.
--
--
-- The @ListMemberAccounts@ must be submitted by the account that is set as the AWS Firewall Manager administrator.
--
--
-- This operation returns paginated results.
module Network.AWS.FMS.ListMemberAccounts
  ( -- * Creating a Request
    listMemberAccounts,
    ListMemberAccounts,

    -- * Request Lenses
    lmaNextToken,
    lmaMaxResults,

    -- * Destructuring the Response
    listMemberAccountsResponse,
    ListMemberAccountsResponse,

    -- * Response Lenses
    lmarrsNextToken,
    lmarrsMemberAccounts,
    lmarrsResponseStatus,
  )
where

import Network.AWS.FMS.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listMemberAccounts' smart constructor.
data ListMemberAccounts = ListMemberAccounts'
  { _lmaNextToken ::
      !(Maybe Text),
    _lmaMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListMemberAccounts' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmaNextToken' - If you specify a value for @MaxResults@ and you have more account IDs than the number that you specify for @MaxResults@ , AWS Firewall Manager returns a @NextToken@ value in the response that allows you to list another group of IDs. For the second and subsequent @ListMemberAccountsRequest@ requests, specify the value of @NextToken@ from the previous response to get information about another batch of member account IDs.
--
-- * 'lmaMaxResults' - Specifies the number of member account IDs that you want AWS Firewall Manager to return for this request. If you have more IDs than the number that you specify for @MaxResults@ , the response includes a @NextToken@ value that you can use to get another batch of member account IDs.
listMemberAccounts ::
  ListMemberAccounts
listMemberAccounts =
  ListMemberAccounts'
    { _lmaNextToken = Nothing,
      _lmaMaxResults = Nothing
    }

-- | If you specify a value for @MaxResults@ and you have more account IDs than the number that you specify for @MaxResults@ , AWS Firewall Manager returns a @NextToken@ value in the response that allows you to list another group of IDs. For the second and subsequent @ListMemberAccountsRequest@ requests, specify the value of @NextToken@ from the previous response to get information about another batch of member account IDs.
lmaNextToken :: Lens' ListMemberAccounts (Maybe Text)
lmaNextToken = lens _lmaNextToken (\s a -> s {_lmaNextToken = a})

-- | Specifies the number of member account IDs that you want AWS Firewall Manager to return for this request. If you have more IDs than the number that you specify for @MaxResults@ , the response includes a @NextToken@ value that you can use to get another batch of member account IDs.
lmaMaxResults :: Lens' ListMemberAccounts (Maybe Natural)
lmaMaxResults = lens _lmaMaxResults (\s a -> s {_lmaMaxResults = a}) . mapping _Nat

instance AWSPager ListMemberAccounts where
  page rq rs
    | stop (rs ^. lmarrsNextToken) = Nothing
    | stop (rs ^. lmarrsMemberAccounts) = Nothing
    | otherwise =
      Just $ rq & lmaNextToken .~ rs ^. lmarrsNextToken

instance AWSRequest ListMemberAccounts where
  type
    Rs ListMemberAccounts =
      ListMemberAccountsResponse
  request = postJSON fms
  response =
    receiveJSON
      ( \s h x ->
          ListMemberAccountsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "MemberAccounts" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListMemberAccounts

instance NFData ListMemberAccounts

instance ToHeaders ListMemberAccounts where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSFMS_20180101.ListMemberAccounts" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListMemberAccounts where
  toJSON ListMemberAccounts' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lmaNextToken,
            ("MaxResults" .=) <$> _lmaMaxResults
          ]
      )

instance ToPath ListMemberAccounts where
  toPath = const "/"

instance ToQuery ListMemberAccounts where
  toQuery = const mempty

-- | /See:/ 'listMemberAccountsResponse' smart constructor.
data ListMemberAccountsResponse = ListMemberAccountsResponse'
  { _lmarrsNextToken ::
      !(Maybe Text),
    _lmarrsMemberAccounts ::
      !(Maybe [Text]),
    _lmarrsResponseStatus ::
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

-- | Creates a value of 'ListMemberAccountsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lmarrsNextToken' - If you have more member account IDs than the number that you specified for @MaxResults@ in the request, the response includes a @NextToken@ value. To list more IDs, submit another @ListMemberAccounts@ request, and specify the @NextToken@ value from the response in the @NextToken@ value in the next request.
--
-- * 'lmarrsMemberAccounts' - An array of account IDs.
--
-- * 'lmarrsResponseStatus' - -- | The response status code.
listMemberAccountsResponse ::
  -- | 'lmarrsResponseStatus'
  Int ->
  ListMemberAccountsResponse
listMemberAccountsResponse pResponseStatus_ =
  ListMemberAccountsResponse'
    { _lmarrsNextToken =
        Nothing,
      _lmarrsMemberAccounts = Nothing,
      _lmarrsResponseStatus = pResponseStatus_
    }

-- | If you have more member account IDs than the number that you specified for @MaxResults@ in the request, the response includes a @NextToken@ value. To list more IDs, submit another @ListMemberAccounts@ request, and specify the @NextToken@ value from the response in the @NextToken@ value in the next request.
lmarrsNextToken :: Lens' ListMemberAccountsResponse (Maybe Text)
lmarrsNextToken = lens _lmarrsNextToken (\s a -> s {_lmarrsNextToken = a})

-- | An array of account IDs.
lmarrsMemberAccounts :: Lens' ListMemberAccountsResponse [Text]
lmarrsMemberAccounts = lens _lmarrsMemberAccounts (\s a -> s {_lmarrsMemberAccounts = a}) . _Default . _Coerce

-- | -- | The response status code.
lmarrsResponseStatus :: Lens' ListMemberAccountsResponse Int
lmarrsResponseStatus = lens _lmarrsResponseStatus (\s a -> s {_lmarrsResponseStatus = a})

instance NFData ListMemberAccountsResponse
