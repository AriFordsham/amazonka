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
-- Module      : Network.AWS.Pinpoint.GetUserEndpoints
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about all the endpoints that are associated with a specific user ID.
module Network.AWS.Pinpoint.GetUserEndpoints
  ( -- * Creating a Request
    getUserEndpoints,
    GetUserEndpoints,

    -- * Request Lenses
    gueApplicationId,
    gueUserId,

    -- * Destructuring the Response
    getUserEndpointsResponse,
    GetUserEndpointsResponse,

    -- * Response Lenses
    guerrsResponseStatus,
    guerrsEndpointsResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getUserEndpoints' smart constructor.
data GetUserEndpoints = GetUserEndpoints'
  { _gueApplicationId ::
      !Text,
    _gueUserId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetUserEndpoints' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gueApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
--
-- * 'gueUserId' - The unique identifier for the user.
getUserEndpoints ::
  -- | 'gueApplicationId'
  Text ->
  -- | 'gueUserId'
  Text ->
  GetUserEndpoints
getUserEndpoints pApplicationId_ pUserId_ =
  GetUserEndpoints'
    { _gueApplicationId =
        pApplicationId_,
      _gueUserId = pUserId_
    }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
gueApplicationId :: Lens' GetUserEndpoints Text
gueApplicationId = lens _gueApplicationId (\s a -> s {_gueApplicationId = a})

-- | The unique identifier for the user.
gueUserId :: Lens' GetUserEndpoints Text
gueUserId = lens _gueUserId (\s a -> s {_gueUserId = a})

instance AWSRequest GetUserEndpoints where
  type Rs GetUserEndpoints = GetUserEndpointsResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          GetUserEndpointsResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable GetUserEndpoints

instance NFData GetUserEndpoints

instance ToHeaders GetUserEndpoints where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetUserEndpoints where
  toPath GetUserEndpoints' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _gueApplicationId,
        "/users/",
        toBS _gueUserId
      ]

instance ToQuery GetUserEndpoints where
  toQuery = const mempty

-- | /See:/ 'getUserEndpointsResponse' smart constructor.
data GetUserEndpointsResponse = GetUserEndpointsResponse'
  { _guerrsResponseStatus ::
      !Int,
    _guerrsEndpointsResponse ::
      !EndpointsResponse
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetUserEndpointsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'guerrsResponseStatus' - -- | The response status code.
--
-- * 'guerrsEndpointsResponse' - Undocumented member.
getUserEndpointsResponse ::
  -- | 'guerrsResponseStatus'
  Int ->
  -- | 'guerrsEndpointsResponse'
  EndpointsResponse ->
  GetUserEndpointsResponse
getUserEndpointsResponse
  pResponseStatus_
  pEndpointsResponse_ =
    GetUserEndpointsResponse'
      { _guerrsResponseStatus =
          pResponseStatus_,
        _guerrsEndpointsResponse = pEndpointsResponse_
      }

-- | -- | The response status code.
guerrsResponseStatus :: Lens' GetUserEndpointsResponse Int
guerrsResponseStatus = lens _guerrsResponseStatus (\s a -> s {_guerrsResponseStatus = a})

-- | Undocumented member.
guerrsEndpointsResponse :: Lens' GetUserEndpointsResponse EndpointsResponse
guerrsEndpointsResponse = lens _guerrsEndpointsResponse (\s a -> s {_guerrsEndpointsResponse = a})

instance NFData GetUserEndpointsResponse
