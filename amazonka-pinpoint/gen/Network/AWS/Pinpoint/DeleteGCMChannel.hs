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
-- Module      : Network.AWS.Pinpoint.DeleteGCMChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables the GCM channel for an application and deletes any existing settings for the channel.
module Network.AWS.Pinpoint.DeleteGCMChannel
  ( -- * Creating a Request
    deleteGCMChannel,
    DeleteGCMChannel,

    -- * Request Lenses
    dgcApplicationId,

    -- * Destructuring the Response
    deleteGCMChannelResponse,
    DeleteGCMChannelResponse,

    -- * Response Lenses
    dgcrrsResponseStatus,
    dgcrrsGCMChannelResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteGCMChannel' smart constructor.
newtype DeleteGCMChannel = DeleteGCMChannel'
  { _dgcApplicationId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteGCMChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgcApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
deleteGCMChannel ::
  -- | 'dgcApplicationId'
  Text ->
  DeleteGCMChannel
deleteGCMChannel pApplicationId_ =
  DeleteGCMChannel'
    { _dgcApplicationId =
        pApplicationId_
    }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
dgcApplicationId :: Lens' DeleteGCMChannel Text
dgcApplicationId = lens _dgcApplicationId (\s a -> s {_dgcApplicationId = a})

instance AWSRequest DeleteGCMChannel where
  type Rs DeleteGCMChannel = DeleteGCMChannelResponse
  request = delete pinpoint
  response =
    receiveJSON
      ( \s h x ->
          DeleteGCMChannelResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable DeleteGCMChannel

instance NFData DeleteGCMChannel

instance ToHeaders DeleteGCMChannel where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DeleteGCMChannel where
  toPath DeleteGCMChannel' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _dgcApplicationId,
        "/channels/gcm"
      ]

instance ToQuery DeleteGCMChannel where
  toQuery = const mempty

-- | /See:/ 'deleteGCMChannelResponse' smart constructor.
data DeleteGCMChannelResponse = DeleteGCMChannelResponse'
  { _dgcrrsResponseStatus ::
      !Int,
    _dgcrrsGCMChannelResponse ::
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

-- | Creates a value of 'DeleteGCMChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dgcrrsResponseStatus' - -- | The response status code.
--
-- * 'dgcrrsGCMChannelResponse' - Undocumented member.
deleteGCMChannelResponse ::
  -- | 'dgcrrsResponseStatus'
  Int ->
  -- | 'dgcrrsGCMChannelResponse'
  GCMChannelResponse ->
  DeleteGCMChannelResponse
deleteGCMChannelResponse
  pResponseStatus_
  pGCMChannelResponse_ =
    DeleteGCMChannelResponse'
      { _dgcrrsResponseStatus =
          pResponseStatus_,
        _dgcrrsGCMChannelResponse = pGCMChannelResponse_
      }

-- | -- | The response status code.
dgcrrsResponseStatus :: Lens' DeleteGCMChannelResponse Int
dgcrrsResponseStatus = lens _dgcrrsResponseStatus (\s a -> s {_dgcrrsResponseStatus = a})

-- | Undocumented member.
dgcrrsGCMChannelResponse :: Lens' DeleteGCMChannelResponse GCMChannelResponse
dgcrrsGCMChannelResponse = lens _dgcrrsGCMChannelResponse (\s a -> s {_dgcrrsGCMChannelResponse = a})

instance NFData DeleteGCMChannelResponse
