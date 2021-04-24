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
-- Module      : Network.AWS.Pinpoint.DeleteBaiduChannel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables the Baidu channel for an application and deletes any existing settings for the channel.
module Network.AWS.Pinpoint.DeleteBaiduChannel
  ( -- * Creating a Request
    deleteBaiduChannel,
    DeleteBaiduChannel,

    -- * Request Lenses
    dbcApplicationId,

    -- * Destructuring the Response
    deleteBaiduChannelResponse,
    DeleteBaiduChannelResponse,

    -- * Response Lenses
    dbcrrsResponseStatus,
    dbcrrsBaiduChannelResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteBaiduChannel' smart constructor.
newtype DeleteBaiduChannel = DeleteBaiduChannel'
  { _dbcApplicationId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteBaiduChannel' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbcApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
deleteBaiduChannel ::
  -- | 'dbcApplicationId'
  Text ->
  DeleteBaiduChannel
deleteBaiduChannel pApplicationId_ =
  DeleteBaiduChannel'
    { _dbcApplicationId =
        pApplicationId_
    }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
dbcApplicationId :: Lens' DeleteBaiduChannel Text
dbcApplicationId = lens _dbcApplicationId (\s a -> s {_dbcApplicationId = a})

instance AWSRequest DeleteBaiduChannel where
  type
    Rs DeleteBaiduChannel =
      DeleteBaiduChannelResponse
  request = delete pinpoint
  response =
    receiveJSON
      ( \s h x ->
          DeleteBaiduChannelResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable DeleteBaiduChannel

instance NFData DeleteBaiduChannel

instance ToHeaders DeleteBaiduChannel where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath DeleteBaiduChannel where
  toPath DeleteBaiduChannel' {..} =
    mconcat
      [ "/v1/apps/",
        toBS _dbcApplicationId,
        "/channels/baidu"
      ]

instance ToQuery DeleteBaiduChannel where
  toQuery = const mempty

-- | /See:/ 'deleteBaiduChannelResponse' smart constructor.
data DeleteBaiduChannelResponse = DeleteBaiduChannelResponse'
  { _dbcrrsResponseStatus ::
      !Int,
    _dbcrrsBaiduChannelResponse ::
      !BaiduChannelResponse
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteBaiduChannelResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dbcrrsResponseStatus' - -- | The response status code.
--
-- * 'dbcrrsBaiduChannelResponse' - Undocumented member.
deleteBaiduChannelResponse ::
  -- | 'dbcrrsResponseStatus'
  Int ->
  -- | 'dbcrrsBaiduChannelResponse'
  BaiduChannelResponse ->
  DeleteBaiduChannelResponse
deleteBaiduChannelResponse
  pResponseStatus_
  pBaiduChannelResponse_ =
    DeleteBaiduChannelResponse'
      { _dbcrrsResponseStatus =
          pResponseStatus_,
        _dbcrrsBaiduChannelResponse =
          pBaiduChannelResponse_
      }

-- | -- | The response status code.
dbcrrsResponseStatus :: Lens' DeleteBaiduChannelResponse Int
dbcrrsResponseStatus = lens _dbcrrsResponseStatus (\s a -> s {_dbcrrsResponseStatus = a})

-- | Undocumented member.
dbcrrsBaiduChannelResponse :: Lens' DeleteBaiduChannelResponse BaiduChannelResponse
dbcrrsBaiduChannelResponse = lens _dbcrrsBaiduChannelResponse (\s a -> s {_dbcrrsBaiduChannelResponse = a})

instance NFData DeleteBaiduChannelResponse
