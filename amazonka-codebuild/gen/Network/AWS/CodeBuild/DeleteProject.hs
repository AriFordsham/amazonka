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
-- Module      : Network.AWS.CodeBuild.DeleteProject
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a build project. When you delete a project, its builds are not deleted.
module Network.AWS.CodeBuild.DeleteProject
  ( -- * Creating a Request
    deleteProject,
    DeleteProject,

    -- * Request Lenses
    dpName,

    -- * Destructuring the Response
    deleteProjectResponse,
    DeleteProjectResponse,

    -- * Response Lenses
    dprrsResponseStatus,
  )
where

import Network.AWS.CodeBuild.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteProject' smart constructor.
newtype DeleteProject = DeleteProject'
  { _dpName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteProject' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dpName' - The name of the build project.
deleteProject ::
  -- | 'dpName'
  Text ->
  DeleteProject
deleteProject pName_ =
  DeleteProject' {_dpName = pName_}

-- | The name of the build project.
dpName :: Lens' DeleteProject Text
dpName = lens _dpName (\s a -> s {_dpName = a})

instance AWSRequest DeleteProject where
  type Rs DeleteProject = DeleteProjectResponse
  request = postJSON codeBuild
  response =
    receiveEmpty
      ( \s h x ->
          DeleteProjectResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteProject

instance NFData DeleteProject

instance ToHeaders DeleteProject where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CodeBuild_20161006.DeleteProject" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteProject where
  toJSON DeleteProject' {..} =
    object (catMaybes [Just ("name" .= _dpName)])

instance ToPath DeleteProject where
  toPath = const "/"

instance ToQuery DeleteProject where
  toQuery = const mempty

-- | /See:/ 'deleteProjectResponse' smart constructor.
newtype DeleteProjectResponse = DeleteProjectResponse'
  { _dprrsResponseStatus ::
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

-- | Creates a value of 'DeleteProjectResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dprrsResponseStatus' - -- | The response status code.
deleteProjectResponse ::
  -- | 'dprrsResponseStatus'
  Int ->
  DeleteProjectResponse
deleteProjectResponse pResponseStatus_ =
  DeleteProjectResponse'
    { _dprrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dprrsResponseStatus :: Lens' DeleteProjectResponse Int
dprrsResponseStatus = lens _dprrsResponseStatus (\s a -> s {_dprrsResponseStatus = a})

instance NFData DeleteProjectResponse
