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
-- Module      : Network.AWS.MechanicalTurk.CreateWorkerBlock
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @CreateWorkerBlock@ operation allows you to prevent a Worker from working on your HITs. For example, you can block a Worker who is producing poor quality work. You can block up to 100,000 Workers.
module Network.AWS.MechanicalTurk.CreateWorkerBlock
  ( -- * Creating a Request
    createWorkerBlock,
    CreateWorkerBlock,

    -- * Request Lenses
    cwbWorkerId,
    cwbReason,

    -- * Destructuring the Response
    createWorkerBlockResponse,
    CreateWorkerBlockResponse,

    -- * Response Lenses
    cwbrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MechanicalTurk.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createWorkerBlock' smart constructor.
data CreateWorkerBlock = CreateWorkerBlock'
  { _cwbWorkerId ::
      !Text,
    _cwbReason :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateWorkerBlock' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cwbWorkerId' - The ID of the Worker to block.
--
-- * 'cwbReason' - A message explaining the reason for blocking the Worker. This parameter enables you to keep track of your Workers. The Worker does not see this message.
createWorkerBlock ::
  -- | 'cwbWorkerId'
  Text ->
  -- | 'cwbReason'
  Text ->
  CreateWorkerBlock
createWorkerBlock pWorkerId_ pReason_ =
  CreateWorkerBlock'
    { _cwbWorkerId = pWorkerId_,
      _cwbReason = pReason_
    }

-- | The ID of the Worker to block.
cwbWorkerId :: Lens' CreateWorkerBlock Text
cwbWorkerId = lens _cwbWorkerId (\s a -> s {_cwbWorkerId = a})

-- | A message explaining the reason for blocking the Worker. This parameter enables you to keep track of your Workers. The Worker does not see this message.
cwbReason :: Lens' CreateWorkerBlock Text
cwbReason = lens _cwbReason (\s a -> s {_cwbReason = a})

instance AWSRequest CreateWorkerBlock where
  type Rs CreateWorkerBlock = CreateWorkerBlockResponse
  request = postJSON mechanicalTurk
  response =
    receiveEmpty
      ( \s h x ->
          CreateWorkerBlockResponse' <$> (pure (fromEnum s))
      )

instance Hashable CreateWorkerBlock

instance NFData CreateWorkerBlock

instance ToHeaders CreateWorkerBlock where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "MTurkRequesterServiceV20170117.CreateWorkerBlock" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateWorkerBlock where
  toJSON CreateWorkerBlock' {..} =
    object
      ( catMaybes
          [ Just ("WorkerId" .= _cwbWorkerId),
            Just ("Reason" .= _cwbReason)
          ]
      )

instance ToPath CreateWorkerBlock where
  toPath = const "/"

instance ToQuery CreateWorkerBlock where
  toQuery = const mempty

-- | /See:/ 'createWorkerBlockResponse' smart constructor.
newtype CreateWorkerBlockResponse = CreateWorkerBlockResponse'
  { _cwbrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateWorkerBlockResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cwbrrsResponseStatus' - -- | The response status code.
createWorkerBlockResponse ::
  -- | 'cwbrrsResponseStatus'
  Int ->
  CreateWorkerBlockResponse
createWorkerBlockResponse pResponseStatus_ =
  CreateWorkerBlockResponse'
    { _cwbrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
cwbrrsResponseStatus :: Lens' CreateWorkerBlockResponse Int
cwbrrsResponseStatus = lens _cwbrrsResponseStatus (\s a -> s {_cwbrrsResponseStatus = a})

instance NFData CreateWorkerBlockResponse
