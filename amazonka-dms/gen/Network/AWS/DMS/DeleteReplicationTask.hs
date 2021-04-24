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
-- Module      : Network.AWS.DMS.DeleteReplicationTask
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified replication task.
module Network.AWS.DMS.DeleteReplicationTask
  ( -- * Creating a Request
    deleteReplicationTask,
    DeleteReplicationTask,

    -- * Request Lenses
    drtReplicationTaskARN,

    -- * Destructuring the Response
    deleteReplicationTaskResponse,
    DeleteReplicationTaskResponse,

    -- * Response Lenses
    delrsReplicationTask,
    delrsResponseStatus,
  )
where

import Network.AWS.DMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'deleteReplicationTask' smart constructor.
newtype DeleteReplicationTask = DeleteReplicationTask'
  { _drtReplicationTaskARN ::
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

-- | Creates a value of 'DeleteReplicationTask' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drtReplicationTaskARN' - The Amazon Resource Name (ARN) of the replication task to be deleted.
deleteReplicationTask ::
  -- | 'drtReplicationTaskARN'
  Text ->
  DeleteReplicationTask
deleteReplicationTask pReplicationTaskARN_ =
  DeleteReplicationTask'
    { _drtReplicationTaskARN =
        pReplicationTaskARN_
    }

-- | The Amazon Resource Name (ARN) of the replication task to be deleted.
drtReplicationTaskARN :: Lens' DeleteReplicationTask Text
drtReplicationTaskARN = lens _drtReplicationTaskARN (\s a -> s {_drtReplicationTaskARN = a})

instance AWSRequest DeleteReplicationTask where
  type
    Rs DeleteReplicationTask =
      DeleteReplicationTaskResponse
  request = postJSON dms
  response =
    receiveJSON
      ( \s h x ->
          DeleteReplicationTaskResponse'
            <$> (x .?> "ReplicationTask") <*> (pure (fromEnum s))
      )

instance Hashable DeleteReplicationTask

instance NFData DeleteReplicationTask

instance ToHeaders DeleteReplicationTask where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonDMSv20160101.DeleteReplicationTask" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteReplicationTask where
  toJSON DeleteReplicationTask' {..} =
    object
      ( catMaybes
          [ Just
              ("ReplicationTaskArn" .= _drtReplicationTaskARN)
          ]
      )

instance ToPath DeleteReplicationTask where
  toPath = const "/"

instance ToQuery DeleteReplicationTask where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'deleteReplicationTaskResponse' smart constructor.
data DeleteReplicationTaskResponse = DeleteReplicationTaskResponse'
  { _delrsReplicationTask ::
      !( Maybe
           ReplicationTask
       ),
    _delrsResponseStatus ::
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

-- | Creates a value of 'DeleteReplicationTaskResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delrsReplicationTask' - The deleted replication task.
--
-- * 'delrsResponseStatus' - -- | The response status code.
deleteReplicationTaskResponse ::
  -- | 'delrsResponseStatus'
  Int ->
  DeleteReplicationTaskResponse
deleteReplicationTaskResponse pResponseStatus_ =
  DeleteReplicationTaskResponse'
    { _delrsReplicationTask =
        Nothing,
      _delrsResponseStatus = pResponseStatus_
    }

-- | The deleted replication task.
delrsReplicationTask :: Lens' DeleteReplicationTaskResponse (Maybe ReplicationTask)
delrsReplicationTask = lens _delrsReplicationTask (\s a -> s {_delrsReplicationTask = a})

-- | -- | The response status code.
delrsResponseStatus :: Lens' DeleteReplicationTaskResponse Int
delrsResponseStatus = lens _delrsResponseStatus (\s a -> s {_delrsResponseStatus = a})

instance NFData DeleteReplicationTaskResponse
