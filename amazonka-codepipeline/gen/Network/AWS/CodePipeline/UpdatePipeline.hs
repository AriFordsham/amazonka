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
-- Module      : Network.AWS.CodePipeline.UpdatePipeline
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates a specified pipeline with edits or changes to its structure. Use a JSON file with the pipeline structure and @UpdatePipeline@ to provide the full structure of the pipeline. Updating the pipeline increases the version number of the pipeline by 1.
module Network.AWS.CodePipeline.UpdatePipeline
  ( -- * Creating a Request
    updatePipeline,
    UpdatePipeline,

    -- * Request Lenses
    upPipeline,

    -- * Destructuring the Response
    updatePipelineResponse,
    UpdatePipelineResponse,

    -- * Response Lenses
    uprrsPipeline,
    uprrsResponseStatus,
  )
where

import Network.AWS.CodePipeline.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of an @UpdatePipeline@ action.
--
--
--
-- /See:/ 'updatePipeline' smart constructor.
newtype UpdatePipeline = UpdatePipeline'
  { _upPipeline ::
      PipelineDeclaration
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdatePipeline' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'upPipeline' - The name of the pipeline to be updated.
updatePipeline ::
  -- | 'upPipeline'
  PipelineDeclaration ->
  UpdatePipeline
updatePipeline pPipeline_ =
  UpdatePipeline' {_upPipeline = pPipeline_}

-- | The name of the pipeline to be updated.
upPipeline :: Lens' UpdatePipeline PipelineDeclaration
upPipeline = lens _upPipeline (\s a -> s {_upPipeline = a})

instance AWSRequest UpdatePipeline where
  type Rs UpdatePipeline = UpdatePipelineResponse
  request = postJSON codePipeline
  response =
    receiveJSON
      ( \s h x ->
          UpdatePipelineResponse'
            <$> (x .?> "pipeline") <*> (pure (fromEnum s))
      )

instance Hashable UpdatePipeline

instance NFData UpdatePipeline

instance ToHeaders UpdatePipeline where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodePipeline_20150709.UpdatePipeline" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdatePipeline where
  toJSON UpdatePipeline' {..} =
    object
      (catMaybes [Just ("pipeline" .= _upPipeline)])

instance ToPath UpdatePipeline where
  toPath = const "/"

instance ToQuery UpdatePipeline where
  toQuery = const mempty

-- | Represents the output of an @UpdatePipeline@ action.
--
--
--
-- /See:/ 'updatePipelineResponse' smart constructor.
data UpdatePipelineResponse = UpdatePipelineResponse'
  { _uprrsPipeline ::
      !( Maybe
           PipelineDeclaration
       ),
    _uprrsResponseStatus ::
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

-- | Creates a value of 'UpdatePipelineResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uprrsPipeline' - The structure of the updated pipeline.
--
-- * 'uprrsResponseStatus' - -- | The response status code.
updatePipelineResponse ::
  -- | 'uprrsResponseStatus'
  Int ->
  UpdatePipelineResponse
updatePipelineResponse pResponseStatus_ =
  UpdatePipelineResponse'
    { _uprrsPipeline = Nothing,
      _uprrsResponseStatus = pResponseStatus_
    }

-- | The structure of the updated pipeline.
uprrsPipeline :: Lens' UpdatePipelineResponse (Maybe PipelineDeclaration)
uprrsPipeline = lens _uprrsPipeline (\s a -> s {_uprrsPipeline = a})

-- | -- | The response status code.
uprrsResponseStatus :: Lens' UpdatePipelineResponse Int
uprrsResponseStatus = lens _uprrsResponseStatus (\s a -> s {_uprrsResponseStatus = a})

instance NFData UpdatePipelineResponse
