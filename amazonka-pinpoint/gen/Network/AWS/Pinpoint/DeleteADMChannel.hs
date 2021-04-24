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
-- Module      : Network.AWS.Pinpoint.DeleteADMChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables the ADM channel for an application and deletes any existing settings for the channel.
module Network.AWS.Pinpoint.DeleteADMChannel
  ( -- * Creating a Request
    deleteADMChannel,
    DeleteADMChannel,

    -- * Request Lenses
    dadmcApplicationId,

    -- * Destructuring the Response
    deleteADMChannelResponse,
    DeleteADMChannelResponse,

    -- * Response Lenses
    dadmcrrsResponseStatus,
    dadmcrrsADMChannelResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteADMChannel' smart constructor.
newtype DeleteADMChannel = DeleteADMChannel'
  { _dadmcApplicationId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteADMChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dadmcApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
deleteADMChannel ::
  -- | 'dadmcApplicationId'
  Text ->
  DeleteADMChannel
deleteADMChannel pApplicationId_ =
  DeleteADMChannel'
    { _dadmcApplicationId =
        pApplicationId_
    }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
dadmcApplicationId :: Lens' DeleteADMChannel Text
dadmcApplicationId = lens _dadmcApplicationId (\s a -> s {_dadmcApplicationId = a})

instance AWSRequest DeleteADMChannel where
  type Rs DeleteADMChannel = DeleteADMChannelResponse
  request = delete pinpoint
  response =
    receiveJSON
      ( \s h x ->
          DeleteADMChannelResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable DeleteADMChannel

instance NFData DeleteADMChannel

instance ToHeaders DeleteADMChannel where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DeleteADMChannel where
  toPath DeleteADMChannel' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _dadmcApplicationId,
        "/channels/adm"
      ]

instance ToQuery DeleteADMChannel where
  toQuery = const mempty

-- | /See:/ 'deleteADMChannelResponse' smart constructor.
data DeleteADMChannelResponse = DeleteADMChannelResponse'
  { _dadmcrrsResponseStatus ::
      !Int,
    _dadmcrrsADMChannelResponse ::
      !ADMChannelResponse
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteADMChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dadmcrrsResponseStatus' - -- | The response status code.
--
-- * 'dadmcrrsADMChannelResponse' - Undocumented member.
deleteADMChannelResponse ::
  -- | 'dadmcrrsResponseStatus'
  Int ->
  -- | 'dadmcrrsADMChannelResponse'
  ADMChannelResponse ->
  DeleteADMChannelResponse
deleteADMChannelResponse
  pResponseStatus_
  pADMChannelResponse_ =
    DeleteADMChannelResponse'
      { _dadmcrrsResponseStatus =
          pResponseStatus_,
        _dadmcrrsADMChannelResponse =
          pADMChannelResponse_
      }

-- | -- | The response status code.
dadmcrrsResponseStatus :: Lens' DeleteADMChannelResponse Int
dadmcrrsResponseStatus = lens _dadmcrrsResponseStatus (\s a -> s {_dadmcrrsResponseStatus = a})

-- | Undocumented member.
dadmcrrsADMChannelResponse :: Lens' DeleteADMChannelResponse ADMChannelResponse
dadmcrrsADMChannelResponse = lens _dadmcrrsADMChannelResponse (\s a -> s {_dadmcrrsADMChannelResponse = a})

instance NFData DeleteADMChannelResponse
