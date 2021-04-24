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
-- Module      : Network.AWS.Pinpoint.UpdateVoiceChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Enables the voice channel for an application or updates the status and settings of the voice channel for an application.
module Network.AWS.Pinpoint.UpdateVoiceChannel
  ( -- * Creating a Request
    updateVoiceChannel,
    UpdateVoiceChannel,

    -- * Request Lenses
    uvcApplicationId,
    uvcVoiceChannelRequest,

    -- * Destructuring the Response
    updateVoiceChannelResponse,
    UpdateVoiceChannelResponse,

    -- * Response Lenses
    uvcrrsResponseStatus,
    uvcrrsVoiceChannelResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateVoiceChannel' smart constructor.
data UpdateVoiceChannel = UpdateVoiceChannel'
  { _uvcApplicationId ::
      !Text,
    _uvcVoiceChannelRequest ::
      !VoiceChannelRequest
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateVoiceChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uvcApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
--
-- * 'uvcVoiceChannelRequest' - Undocumented member.
updateVoiceChannel ::
  -- | 'uvcApplicationId'
  Text ->
  -- | 'uvcVoiceChannelRequest'
  VoiceChannelRequest ->
  UpdateVoiceChannel
updateVoiceChannel
  pApplicationId_
  pVoiceChannelRequest_ =
    UpdateVoiceChannel'
      { _uvcApplicationId =
          pApplicationId_,
        _uvcVoiceChannelRequest = pVoiceChannelRequest_
      }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
uvcApplicationId :: Lens' UpdateVoiceChannel Text
uvcApplicationId = lens _uvcApplicationId (\s a -> s {_uvcApplicationId = a})

-- | Undocumented member.
uvcVoiceChannelRequest :: Lens' UpdateVoiceChannel VoiceChannelRequest
uvcVoiceChannelRequest = lens _uvcVoiceChannelRequest (\s a -> s {_uvcVoiceChannelRequest = a})

instance AWSRequest UpdateVoiceChannel where
  type
    Rs UpdateVoiceChannel =
      UpdateVoiceChannelResponse
  request = putJSON pinpoint
  response =
    receiveJSON
      ( \s h x ->
          UpdateVoiceChannelResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable UpdateVoiceChannel

instance NFData UpdateVoiceChannel

instance ToHeaders UpdateVoiceChannel where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateVoiceChannel where
  toJSON UpdateVoiceChannel' {..} =
    object
      ( catMaybes
          [ Just
              ("VoiceChannelRequest" .= _uvcVoiceChannelRequest)
          ]
      )

instance ToPath UpdateVoiceChannel where
  toPath UpdateVoiceChannel' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _uvcApplicationId,
        "/channels/voice"
      ]

instance ToQuery UpdateVoiceChannel where
  toQuery = const mempty

-- | /See:/ 'updateVoiceChannelResponse' smart constructor.
data UpdateVoiceChannelResponse = UpdateVoiceChannelResponse'
  { _uvcrrsResponseStatus ::
      !Int,
    _uvcrrsVoiceChannelResponse ::
      !VoiceChannelResponse
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateVoiceChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uvcrrsResponseStatus' - -- | The response status code.
--
-- * 'uvcrrsVoiceChannelResponse' - Undocumented member.
updateVoiceChannelResponse ::
  -- | 'uvcrrsResponseStatus'
  Int ->
  -- | 'uvcrrsVoiceChannelResponse'
  VoiceChannelResponse ->
  UpdateVoiceChannelResponse
updateVoiceChannelResponse
  pResponseStatus_
  pVoiceChannelResponse_ =
    UpdateVoiceChannelResponse'
      { _uvcrrsResponseStatus =
          pResponseStatus_,
        _uvcrrsVoiceChannelResponse =
          pVoiceChannelResponse_
      }

-- | -- | The response status code.
uvcrrsResponseStatus :: Lens' UpdateVoiceChannelResponse Int
uvcrrsResponseStatus = lens _uvcrrsResponseStatus (\s a -> s {_uvcrrsResponseStatus = a})

-- | Undocumented member.
uvcrrsVoiceChannelResponse :: Lens' UpdateVoiceChannelResponse VoiceChannelResponse
uvcrrsVoiceChannelResponse = lens _uvcrrsVoiceChannelResponse (\s a -> s {_uvcrrsVoiceChannelResponse = a})

instance NFData UpdateVoiceChannelResponse
