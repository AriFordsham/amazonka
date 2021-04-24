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
-- Module      : Network.AWS.Pinpoint.GetEndpoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the settings and attributes of a specific endpoint for an application.
module Network.AWS.Pinpoint.GetEndpoint
  ( -- * Creating a Request
    getEndpoint,
    GetEndpoint,

    -- * Request Lenses
    geApplicationId,
    geEndpointId,

    -- * Destructuring the Response
    getEndpointResponse,
    GetEndpointResponse,

    -- * Response Lenses
    gerrsResponseStatus,
    gerrsEndpointResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getEndpoint' smart constructor.
data GetEndpoint = GetEndpoint'
  { _geApplicationId ::
      !Text,
    _geEndpointId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetEndpoint' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'geApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
--
-- * 'geEndpointId' - The unique identifier for the endpoint.
getEndpoint ::
  -- | 'geApplicationId'
  Text ->
  -- | 'geEndpointId'
  Text ->
  GetEndpoint
getEndpoint pApplicationId_ pEndpointId_ =
  GetEndpoint'
    { _geApplicationId = pApplicationId_,
      _geEndpointId = pEndpointId_
    }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
geApplicationId :: Lens' GetEndpoint Text
geApplicationId = lens _geApplicationId (\s a -> s {_geApplicationId = a})

-- | The unique identifier for the endpoint.
geEndpointId :: Lens' GetEndpoint Text
geEndpointId = lens _geEndpointId (\s a -> s {_geEndpointId = a})

instance AWSRequest GetEndpoint where
  type Rs GetEndpoint = GetEndpointResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          GetEndpointResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable GetEndpoint

instance NFData GetEndpoint

instance ToHeaders GetEndpoint where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetEndpoint where
  toPath GetEndpoint' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _geApplicationId,
        "/endpoints/",
        toBS _geEndpointId
      ]

instance ToQuery GetEndpoint where
  toQuery = const mempty

-- | /See:/ 'getEndpointResponse' smart constructor.
data GetEndpointResponse = GetEndpointResponse'
  { _gerrsResponseStatus ::
      !Int,
    _gerrsEndpointResponse ::
      !EndpointResponse
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetEndpointResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gerrsResponseStatus' - -- | The response status code.
--
-- * 'gerrsEndpointResponse' - Undocumented member.
getEndpointResponse ::
  -- | 'gerrsResponseStatus'
  Int ->
  -- | 'gerrsEndpointResponse'
  EndpointResponse ->
  GetEndpointResponse
getEndpointResponse
  pResponseStatus_
  pEndpointResponse_ =
    GetEndpointResponse'
      { _gerrsResponseStatus =
          pResponseStatus_,
        _gerrsEndpointResponse = pEndpointResponse_
      }

-- | -- | The response status code.
gerrsResponseStatus :: Lens' GetEndpointResponse Int
gerrsResponseStatus = lens _gerrsResponseStatus (\s a -> s {_gerrsResponseStatus = a})

-- | Undocumented member.
gerrsEndpointResponse :: Lens' GetEndpointResponse EndpointResponse
gerrsEndpointResponse = lens _gerrsEndpointResponse (\s a -> s {_gerrsEndpointResponse = a})

instance NFData GetEndpointResponse
