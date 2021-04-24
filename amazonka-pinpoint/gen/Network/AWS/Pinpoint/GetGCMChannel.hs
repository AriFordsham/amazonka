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
-- Module      : Network.AWS.Pinpoint.GetGCMChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the status and settings of the GCM channel for an application.
module Network.AWS.Pinpoint.GetGCMChannel
  ( -- * Creating a Request
    getGCMChannel,
    GetGCMChannel,

    -- * Request Lenses
    ggcApplicationId,

    -- * Destructuring the Response
    getGCMChannelResponse,
    GetGCMChannelResponse,

    -- * Response Lenses
    ggcrrsResponseStatus,
    ggcrrsGCMChannelResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getGCMChannel' smart constructor.
newtype GetGCMChannel = GetGCMChannel'
  { _ggcApplicationId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetGCMChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggcApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
getGCMChannel ::
  -- | 'ggcApplicationId'
  Text ->
  GetGCMChannel
getGCMChannel pApplicationId_ =
  GetGCMChannel' {_ggcApplicationId = pApplicationId_}

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
ggcApplicationId :: Lens' GetGCMChannel Text
ggcApplicationId = lens _ggcApplicationId (\s a -> s {_ggcApplicationId = a})

instance AWSRequest GetGCMChannel where
  type Rs GetGCMChannel = GetGCMChannelResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          GetGCMChannelResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable GetGCMChannel

instance NFData GetGCMChannel

instance ToHeaders GetGCMChannel where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetGCMChannel where
  toPath GetGCMChannel' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _ggcApplicationId,
        "/channels/gcm"
      ]

instance ToQuery GetGCMChannel where
  toQuery = const mempty

-- | /See:/ 'getGCMChannelResponse' smart constructor.
data GetGCMChannelResponse = GetGCMChannelResponse'
  { _ggcrrsResponseStatus ::
      !Int,
    _ggcrrsGCMChannelResponse ::
      !GCMChannelResponse
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetGCMChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ggcrrsResponseStatus' - -- | The response status code.
--
-- * 'ggcrrsGCMChannelResponse' - Undocumented member.
getGCMChannelResponse ::
  -- | 'ggcrrsResponseStatus'
  Int ->
  -- | 'ggcrrsGCMChannelResponse'
  GCMChannelResponse ->
  GetGCMChannelResponse
getGCMChannelResponse
  pResponseStatus_
  pGCMChannelResponse_ =
    GetGCMChannelResponse'
      { _ggcrrsResponseStatus =
          pResponseStatus_,
        _ggcrrsGCMChannelResponse = pGCMChannelResponse_
      }

-- | -- | The response status code.
ggcrrsResponseStatus :: Lens' GetGCMChannelResponse Int
ggcrrsResponseStatus = lens _ggcrrsResponseStatus (\s a -> s {_ggcrrsResponseStatus = a})

-- | Undocumented member.
ggcrrsGCMChannelResponse :: Lens' GetGCMChannelResponse GCMChannelResponse
ggcrrsGCMChannelResponse = lens _ggcrrsGCMChannelResponse (\s a -> s {_ggcrrsGCMChannelResponse = a})

instance NFData GetGCMChannelResponse
