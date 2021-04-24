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
-- Module      : Network.AWS.DAX.CreateParameterGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new parameter group. A parameter group is a collection of parameters that you apply to all of the nodes in a DAX cluster.
module Network.AWS.DAX.CreateParameterGroup
  ( -- * Creating a Request
    createParameterGroup,
    CreateParameterGroup,

    -- * Request Lenses
    cpgDescription,
    cpgParameterGroupName,

    -- * Destructuring the Response
    createParameterGroupResponse,
    CreateParameterGroupResponse,

    -- * Response Lenses
    cpgrrsParameterGroup,
    cpgrrsResponseStatus,
  )
where

import Network.AWS.DAX.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createParameterGroup' smart constructor.
data CreateParameterGroup = CreateParameterGroup'
  { _cpgDescription ::
      !(Maybe Text),
    _cpgParameterGroupName ::
      !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateParameterGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpgDescription' - A description of the parameter group.
--
-- * 'cpgParameterGroupName' - The name of the parameter group to apply to all of the clusters in this replication group.
createParameterGroup ::
  -- | 'cpgParameterGroupName'
  Text ->
  CreateParameterGroup
createParameterGroup pParameterGroupName_ =
  CreateParameterGroup'
    { _cpgDescription = Nothing,
      _cpgParameterGroupName = pParameterGroupName_
    }

-- | A description of the parameter group.
cpgDescription :: Lens' CreateParameterGroup (Maybe Text)
cpgDescription = lens _cpgDescription (\s a -> s {_cpgDescription = a})

-- | The name of the parameter group to apply to all of the clusters in this replication group.
cpgParameterGroupName :: Lens' CreateParameterGroup Text
cpgParameterGroupName = lens _cpgParameterGroupName (\s a -> s {_cpgParameterGroupName = a})

instance AWSRequest CreateParameterGroup where
  type
    Rs CreateParameterGroup =
      CreateParameterGroupResponse
  request = postJSON dax
  response =
    receiveJSON
      ( \s h x ->
          CreateParameterGroupResponse'
            <$> (x .?> "ParameterGroup") <*> (pure (fromEnum s))
      )

instance Hashable CreateParameterGroup

instance NFData CreateParameterGroup

instance ToHeaders CreateParameterGroup where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonDAXV3.CreateParameterGroup" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateParameterGroup where
  toJSON CreateParameterGroup' {..} =
    object
      ( catMaybes
          [ ("Description" .=) <$> _cpgDescription,
            Just
              ("ParameterGroupName" .= _cpgParameterGroupName)
          ]
      )

instance ToPath CreateParameterGroup where
  toPath = const "/"

instance ToQuery CreateParameterGroup where
  toQuery = const mempty

-- | /See:/ 'createParameterGroupResponse' smart constructor.
data CreateParameterGroupResponse = CreateParameterGroupResponse'
  { _cpgrrsParameterGroup ::
      !( Maybe
           ParameterGroup
       ),
    _cpgrrsResponseStatus ::
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

-- | Creates a value of 'CreateParameterGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpgrrsParameterGroup' - Represents the output of a /CreateParameterGroup/ action.
--
-- * 'cpgrrsResponseStatus' - -- | The response status code.
createParameterGroupResponse ::
  -- | 'cpgrrsResponseStatus'
  Int ->
  CreateParameterGroupResponse
createParameterGroupResponse pResponseStatus_ =
  CreateParameterGroupResponse'
    { _cpgrrsParameterGroup =
        Nothing,
      _cpgrrsResponseStatus = pResponseStatus_
    }

-- | Represents the output of a /CreateParameterGroup/ action.
cpgrrsParameterGroup :: Lens' CreateParameterGroupResponse (Maybe ParameterGroup)
cpgrrsParameterGroup = lens _cpgrrsParameterGroup (\s a -> s {_cpgrrsParameterGroup = a})

-- | -- | The response status code.
cpgrrsResponseStatus :: Lens' CreateParameterGroupResponse Int
cpgrrsResponseStatus = lens _cpgrrsResponseStatus (\s a -> s {_cpgrrsResponseStatus = a})

instance NFData CreateParameterGroupResponse
