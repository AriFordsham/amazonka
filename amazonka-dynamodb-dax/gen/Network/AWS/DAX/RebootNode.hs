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
-- Module      : Network.AWS.DAX.RebootNode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Reboots a single node of a DAX cluster. The reboot action takes place as soon as possible. During the reboot, the node status is set to REBOOTING.
module Network.AWS.DAX.RebootNode
  ( -- * Creating a Request
    rebootNode,
    RebootNode,

    -- * Request Lenses
    rnClusterName,
    rnNodeId,

    -- * Destructuring the Response
    rebootNodeResponse,
    RebootNodeResponse,

    -- * Response Lenses
    rnrrsCluster,
    rnrrsResponseStatus,
  )
where

import Network.AWS.DAX.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'rebootNode' smart constructor.
data RebootNode = RebootNode'
  { _rnClusterName ::
      !Text,
    _rnNodeId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RebootNode' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rnClusterName' - The name of the DAX cluster containing the node to be rebooted.
--
-- * 'rnNodeId' - The system-assigned ID of the node to be rebooted.
rebootNode ::
  -- | 'rnClusterName'
  Text ->
  -- | 'rnNodeId'
  Text ->
  RebootNode
rebootNode pClusterName_ pNodeId_ =
  RebootNode'
    { _rnClusterName = pClusterName_,
      _rnNodeId = pNodeId_
    }

-- | The name of the DAX cluster containing the node to be rebooted.
rnClusterName :: Lens' RebootNode Text
rnClusterName = lens _rnClusterName (\s a -> s {_rnClusterName = a})

-- | The system-assigned ID of the node to be rebooted.
rnNodeId :: Lens' RebootNode Text
rnNodeId = lens _rnNodeId (\s a -> s {_rnNodeId = a})

instance AWSRequest RebootNode where
  type Rs RebootNode = RebootNodeResponse
  request = postJSON dax
  response =
    receiveJSON
      ( \s h x ->
          RebootNodeResponse'
            <$> (x .?> "Cluster") <*> (pure (fromEnum s))
      )

instance Hashable RebootNode

instance NFData RebootNode

instance ToHeaders RebootNode where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonDAXV3.RebootNode" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON RebootNode where
  toJSON RebootNode' {..} =
    object
      ( catMaybes
          [ Just ("ClusterName" .= _rnClusterName),
            Just ("NodeId" .= _rnNodeId)
          ]
      )

instance ToPath RebootNode where
  toPath = const "/"

instance ToQuery RebootNode where
  toQuery = const mempty

-- | /See:/ 'rebootNodeResponse' smart constructor.
data RebootNodeResponse = RebootNodeResponse'
  { _rnrrsCluster ::
      !(Maybe Cluster),
    _rnrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RebootNodeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rnrrsCluster' - A description of the DAX cluster after a node has been rebooted.
--
-- * 'rnrrsResponseStatus' - -- | The response status code.
rebootNodeResponse ::
  -- | 'rnrrsResponseStatus'
  Int ->
  RebootNodeResponse
rebootNodeResponse pResponseStatus_ =
  RebootNodeResponse'
    { _rnrrsCluster = Nothing,
      _rnrrsResponseStatus = pResponseStatus_
    }

-- | A description of the DAX cluster after a node has been rebooted.
rnrrsCluster :: Lens' RebootNodeResponse (Maybe Cluster)
rnrrsCluster = lens _rnrrsCluster (\s a -> s {_rnrrsCluster = a})

-- | -- | The response status code.
rnrrsResponseStatus :: Lens' RebootNodeResponse Int
rnrrsResponseStatus = lens _rnrrsResponseStatus (\s a -> s {_rnrrsResponseStatus = a})

instance NFData RebootNodeResponse
