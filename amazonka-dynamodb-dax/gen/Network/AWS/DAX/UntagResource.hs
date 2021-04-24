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
-- Module      : Network.AWS.DAX.UntagResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the association of tags from a DAX resource. You can call @UntagResource@ up to 5 times per second, per account.
module Network.AWS.DAX.UntagResource
  ( -- * Creating a Request
    untagResource,
    UntagResource,

    -- * Request Lenses
    urResourceName,
    urTagKeys,

    -- * Destructuring the Response
    untagResourceResponse,
    UntagResourceResponse,

    -- * Response Lenses
    urrrsTags,
    urrrsResponseStatus,
  )
where

import Network.AWS.DAX.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'untagResource' smart constructor.
data UntagResource = UntagResource'
  { _urResourceName ::
      !Text,
    _urTagKeys :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UntagResource' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urResourceName' - The name of the DAX resource from which the tags should be removed.
--
-- * 'urTagKeys' - A list of tag keys. If the DAX cluster has any tags with these keys, then the tags are removed from the cluster.
untagResource ::
  -- | 'urResourceName'
  Text ->
  UntagResource
untagResource pResourceName_ =
  UntagResource'
    { _urResourceName = pResourceName_,
      _urTagKeys = mempty
    }

-- | The name of the DAX resource from which the tags should be removed.
urResourceName :: Lens' UntagResource Text
urResourceName = lens _urResourceName (\s a -> s {_urResourceName = a})

-- | A list of tag keys. If the DAX cluster has any tags with these keys, then the tags are removed from the cluster.
urTagKeys :: Lens' UntagResource [Text]
urTagKeys = lens _urTagKeys (\s a -> s {_urTagKeys = a}) . _Coerce

instance AWSRequest UntagResource where
  type Rs UntagResource = UntagResourceResponse
  request = postJSON dax
  response =
    receiveJSON
      ( \s h x ->
          UntagResourceResponse'
            <$> (x .?> "Tags" .!@ mempty) <*> (pure (fromEnum s))
      )

instance Hashable UntagResource

instance NFData UntagResource

instance ToHeaders UntagResource where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonDAXV3.UntagResource" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UntagResource where
  toJSON UntagResource' {..} =
    object
      ( catMaybes
          [ Just ("ResourceName" .= _urResourceName),
            Just ("TagKeys" .= _urTagKeys)
          ]
      )

instance ToPath UntagResource where
  toPath = const "/"

instance ToQuery UntagResource where
  toQuery = const mempty

-- | /See:/ 'untagResourceResponse' smart constructor.
data UntagResourceResponse = UntagResourceResponse'
  { _urrrsTags ::
      !(Maybe [Tag]),
    _urrrsResponseStatus ::
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

-- | Creates a value of 'UntagResourceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'urrrsTags' - The tag keys that have been removed from the cluster.
--
-- * 'urrrsResponseStatus' - -- | The response status code.
untagResourceResponse ::
  -- | 'urrrsResponseStatus'
  Int ->
  UntagResourceResponse
untagResourceResponse pResponseStatus_ =
  UntagResourceResponse'
    { _urrrsTags = Nothing,
      _urrrsResponseStatus = pResponseStatus_
    }

-- | The tag keys that have been removed from the cluster.
urrrsTags :: Lens' UntagResourceResponse [Tag]
urrrsTags = lens _urrrsTags (\s a -> s {_urrrsTags = a}) . _Default . _Coerce

-- | -- | The response status code.
urrrsResponseStatus :: Lens' UntagResourceResponse Int
urrrsResponseStatus = lens _urrrsResponseStatus (\s a -> s {_urrrsResponseStatus = a})

instance NFData UntagResourceResponse
