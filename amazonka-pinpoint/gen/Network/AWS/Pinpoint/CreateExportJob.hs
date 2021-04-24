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
-- Module      : Network.AWS.Pinpoint.CreateExportJob
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an export job for an application.
module Network.AWS.Pinpoint.CreateExportJob
  ( -- * Creating a Request
    createExportJob,
    CreateExportJob,

    -- * Request Lenses
    cejApplicationId,
    cejExportJobRequest,

    -- * Destructuring the Response
    createExportJobResponse,
    CreateExportJobResponse,

    -- * Response Lenses
    cejrrsResponseStatus,
    cejrrsExportJobResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createExportJob' smart constructor.
data CreateExportJob = CreateExportJob'
  { _cejApplicationId ::
      !Text,
    _cejExportJobRequest ::
      !ExportJobRequest
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateExportJob' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cejApplicationId' - The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
--
-- * 'cejExportJobRequest' - Undocumented member.
createExportJob ::
  -- | 'cejApplicationId'
  Text ->
  -- | 'cejExportJobRequest'
  ExportJobRequest ->
  CreateExportJob
createExportJob pApplicationId_ pExportJobRequest_ =
  CreateExportJob'
    { _cejApplicationId =
        pApplicationId_,
      _cejExportJobRequest = pExportJobRequest_
    }

-- | The unique identifier for the application. This identifier is displayed as the __Project ID__ on the Amazon Pinpoint console.
cejApplicationId :: Lens' CreateExportJob Text
cejApplicationId = lens _cejApplicationId (\s a -> s {_cejApplicationId = a})

-- | Undocumented member.
cejExportJobRequest :: Lens' CreateExportJob ExportJobRequest
cejExportJobRequest = lens _cejExportJobRequest (\s a -> s {_cejExportJobRequest = a})

instance AWSRequest CreateExportJob where
  type Rs CreateExportJob = CreateExportJobResponse
  request = postJSON pinpoint
  response =
    receiveJSON
      ( \s h x ->
          CreateExportJobResponse'
            <$> (pure (fromEnum s)) <*> (eitherParseJSON x)
      )

instance Hashable CreateExportJob

instance NFData CreateExportJob

instance ToHeaders CreateExportJob where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateExportJob where
  toJSON CreateExportJob' {..} =
    object
      ( catMaybes
          [Just ("ExportJobRequest" .= _cejExportJobRequest)]
      )

instance ToPath CreateExportJob where
  toPath CreateExportJob' {..} =
    mconcat
      ["/v1/apps/", toBS _cejApplicationId, "/jobs/export"]

instance ToQuery CreateExportJob where
  toQuery = const mempty

-- | /See:/ 'createExportJobResponse' smart constructor.
data CreateExportJobResponse = CreateExportJobResponse'
  { _cejrrsResponseStatus ::
      !Int,
    _cejrrsExportJobResponse ::
      !ExportJobResponse
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateExportJobResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cejrrsResponseStatus' - -- | The response status code.
--
-- * 'cejrrsExportJobResponse' - Undocumented member.
createExportJobResponse ::
  -- | 'cejrrsResponseStatus'
  Int ->
  -- | 'cejrrsExportJobResponse'
  ExportJobResponse ->
  CreateExportJobResponse
createExportJobResponse
  pResponseStatus_
  pExportJobResponse_ =
    CreateExportJobResponse'
      { _cejrrsResponseStatus =
          pResponseStatus_,
        _cejrrsExportJobResponse = pExportJobResponse_
      }

-- | -- | The response status code.
cejrrsResponseStatus :: Lens' CreateExportJobResponse Int
cejrrsResponseStatus = lens _cejrrsResponseStatus (\s a -> s {_cejrrsResponseStatus = a})

-- | Undocumented member.
cejrrsExportJobResponse :: Lens' CreateExportJobResponse ExportJobResponse
cejrrsExportJobResponse = lens _cejrrsExportJobResponse (\s a -> s {_cejrrsExportJobResponse = a})

instance NFData CreateExportJobResponse
