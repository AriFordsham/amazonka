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
-- Module      : Network.AWS.Pinpoint.GetEmailChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the status and settings of the email channel for an application.
module Network.AWS.Pinpoint.GetEmailChannel
  ( -- * Creating a Request
    getEmailChannel,
    GetEmailChannel,

    -- * Request Lenses
    gecApplicationId,

    -- * Destructuring the Response
    getEmailChannelResponse,
    GetEmailChannelResponse,

    -- * Response Lenses
    gecrrsResponseStatus,
    gecrrsEmailChannelResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getEmailChannel' smart constructor.
newtype GetEmailChannel = GetEmailChannel'
  { _gecApplicationId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetEmailChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gecApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
getEmailChannel ::
  -- | 'gecApplicationId'
  Text ->
  GetEmailChannel
getEmailChannel pApplicationId_ =
  GetEmailChannel'
    { _gecApplicationId =
        pApplicationId_
    }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
gecApplicationId :: Lens' GetEmailChannel Text
gecApplicationId = lens _gecApplicationId (\s a -> s {_gecApplicationId = a})

instance AWSRequest GetEmailChannel where
  type Rs GetEmailChannel = GetEmailChannelResponse
  request = get pinpoint
  response =
    receiveJSON
      ( \s h x ->
          GetEmailChannelResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable GetEmailChannel

instance NFData GetEmailChannel

instance ToHeaders GetEmailChannel where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetEmailChannel where
  toPath GetEmailChannel' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _gecApplicationId,
        "/channels/email"
      ]

instance ToQuery GetEmailChannel where
  toQuery = const mempty

-- | /See:/ 'getEmailChannelResponse' smart constructor.
data GetEmailChannelResponse = GetEmailChannelResponse'
  { _gecrrsResponseStatus ::
      !Int,
    _gecrrsEmailChannelResponse ::
      !EmailChannelResponse
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetEmailChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gecrrsResponseStatus' - -- | The response status code.
--
-- * 'gecrrsEmailChannelResponse' - Undocumented member.
getEmailChannelResponse ::
  -- | 'gecrrsResponseStatus'
  Int ->
  -- | 'gecrrsEmailChannelResponse'
  EmailChannelResponse ->
  GetEmailChannelResponse
getEmailChannelResponse
  pResponseStatus_
  pEmailChannelResponse_ =
    GetEmailChannelResponse'
      { _gecrrsResponseStatus =
          pResponseStatus_,
        _gecrrsEmailChannelResponse =
          pEmailChannelResponse_
      }

-- | -- | The response status code.
gecrrsResponseStatus :: Lens' GetEmailChannelResponse Int
gecrrsResponseStatus = lens _gecrrsResponseStatus (\s a -> s {_gecrrsResponseStatus = a})

-- | Undocumented member.
gecrrsEmailChannelResponse :: Lens' GetEmailChannelResponse EmailChannelResponse
gecrrsEmailChannelResponse = lens _gecrrsEmailChannelResponse (\s a -> s {_gecrrsEmailChannelResponse = a})

instance NFData GetEmailChannelResponse
