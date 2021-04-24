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
-- Module      : Network.AWS.SageMaker.CreateNotebookInstanceLifecycleConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a lifecycle configuration that you can associate with a notebook instance. A /lifecycle configuration/ is a collection of shell scripts that run when you create or start a notebook instance.
--
--
-- Each lifecycle configuration script has a limit of 16384 characters.
--
-- The value of the @> PATH@ environment variable that is available to both scripts is @/sbin:bin:/usr/sbin:/usr/bin@ .
--
-- View CloudWatch Logs for notebook instance lifecycle configurations in log group @/aws/sagemaker/NotebookInstances@ in log stream @[notebook-instance-name]/[LifecycleConfigHook]@ .
--
-- Lifecycle configuration scripts cannot run for longer than 5 minutes. If a script runs for longer than 5 minutes, it fails and the notebook instance is not created or started.
--
-- For information about notebook instance lifestyle configurations, see <https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html Step 2.1: (Optional) Customize a Notebook Instance> .
module Network.AWS.SageMaker.CreateNotebookInstanceLifecycleConfig
  ( -- * Creating a Request
    createNotebookInstanceLifecycleConfig,
    CreateNotebookInstanceLifecycleConfig,

    -- * Request Lenses
    cnilcOnStart,
    cnilcOnCreate,
    cnilcNotebookInstanceLifecycleConfigName,

    -- * Destructuring the Response
    createNotebookInstanceLifecycleConfigResponse,
    CreateNotebookInstanceLifecycleConfigResponse,

    -- * Response Lenses
    cnilcrrsNotebookInstanceLifecycleConfigARN,
    cnilcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'createNotebookInstanceLifecycleConfig' smart constructor.
data CreateNotebookInstanceLifecycleConfig = CreateNotebookInstanceLifecycleConfig'
  { _cnilcOnStart ::
      !( Maybe
           [NotebookInstanceLifecycleHook]
       ),
    _cnilcOnCreate ::
      !( Maybe
           [NotebookInstanceLifecycleHook]
       ),
    _cnilcNotebookInstanceLifecycleConfigName ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateNotebookInstanceLifecycleConfig' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cnilcOnStart' - A shell script that runs every time you start a notebook instance, including when you create the notebook instance. The shell script must be a base64-encoded string.
--
-- * 'cnilcOnCreate' - A shell script that runs only once, when you create a notebook instance. The shell script must be a base64-encoded string.
--
-- * 'cnilcNotebookInstanceLifecycleConfigName' - The name of the lifecycle configuration.
createNotebookInstanceLifecycleConfig ::
  -- | 'cnilcNotebookInstanceLifecycleConfigName'
  Text ->
  CreateNotebookInstanceLifecycleConfig
createNotebookInstanceLifecycleConfig
  pNotebookInstanceLifecycleConfigName_ =
    CreateNotebookInstanceLifecycleConfig'
      { _cnilcOnStart =
          Nothing,
        _cnilcOnCreate = Nothing,
        _cnilcNotebookInstanceLifecycleConfigName =
          pNotebookInstanceLifecycleConfigName_
      }

-- | A shell script that runs every time you start a notebook instance, including when you create the notebook instance. The shell script must be a base64-encoded string.
cnilcOnStart :: Lens' CreateNotebookInstanceLifecycleConfig [NotebookInstanceLifecycleHook]
cnilcOnStart = lens _cnilcOnStart (\s a -> s {_cnilcOnStart = a}) . _Default . _Coerce

-- | A shell script that runs only once, when you create a notebook instance. The shell script must be a base64-encoded string.
cnilcOnCreate :: Lens' CreateNotebookInstanceLifecycleConfig [NotebookInstanceLifecycleHook]
cnilcOnCreate = lens _cnilcOnCreate (\s a -> s {_cnilcOnCreate = a}) . _Default . _Coerce

-- | The name of the lifecycle configuration.
cnilcNotebookInstanceLifecycleConfigName :: Lens' CreateNotebookInstanceLifecycleConfig Text
cnilcNotebookInstanceLifecycleConfigName = lens _cnilcNotebookInstanceLifecycleConfigName (\s a -> s {_cnilcNotebookInstanceLifecycleConfigName = a})

instance
  AWSRequest
    CreateNotebookInstanceLifecycleConfig
  where
  type
    Rs CreateNotebookInstanceLifecycleConfig =
      CreateNotebookInstanceLifecycleConfigResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          CreateNotebookInstanceLifecycleConfigResponse'
            <$> (x .?> "NotebookInstanceLifecycleConfigArn")
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    CreateNotebookInstanceLifecycleConfig

instance NFData CreateNotebookInstanceLifecycleConfig

instance
  ToHeaders
    CreateNotebookInstanceLifecycleConfig
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.CreateNotebookInstanceLifecycleConfig" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateNotebookInstanceLifecycleConfig where
  toJSON CreateNotebookInstanceLifecycleConfig' {..} =
    object
      ( catMaybes
          [ ("OnStart" .=) <$> _cnilcOnStart,
            ("OnCreate" .=) <$> _cnilcOnCreate,
            Just
              ( "NotebookInstanceLifecycleConfigName"
                  .= _cnilcNotebookInstanceLifecycleConfigName
              )
          ]
      )

instance ToPath CreateNotebookInstanceLifecycleConfig where
  toPath = const "/"

instance
  ToQuery
    CreateNotebookInstanceLifecycleConfig
  where
  toQuery = const mempty

-- | /See:/ 'createNotebookInstanceLifecycleConfigResponse' smart constructor.
data CreateNotebookInstanceLifecycleConfigResponse = CreateNotebookInstanceLifecycleConfigResponse'
  { _cnilcrrsNotebookInstanceLifecycleConfigARN ::
      !( Maybe
           Text
       ),
    _cnilcrrsResponseStatus ::
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

-- | Creates a value of 'CreateNotebookInstanceLifecycleConfigResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cnilcrrsNotebookInstanceLifecycleConfigARN' - The Amazon Resource Name (ARN) of the lifecycle configuration.
--
-- * 'cnilcrrsResponseStatus' - -- | The response status code.
createNotebookInstanceLifecycleConfigResponse ::
  -- | 'cnilcrrsResponseStatus'
  Int ->
  CreateNotebookInstanceLifecycleConfigResponse
createNotebookInstanceLifecycleConfigResponse
  pResponseStatus_ =
    CreateNotebookInstanceLifecycleConfigResponse'
      { _cnilcrrsNotebookInstanceLifecycleConfigARN =
          Nothing,
        _cnilcrrsResponseStatus =
          pResponseStatus_
      }

-- | The Amazon Resource Name (ARN) of the lifecycle configuration.
cnilcrrsNotebookInstanceLifecycleConfigARN :: Lens' CreateNotebookInstanceLifecycleConfigResponse (Maybe Text)
cnilcrrsNotebookInstanceLifecycleConfigARN = lens _cnilcrrsNotebookInstanceLifecycleConfigARN (\s a -> s {_cnilcrrsNotebookInstanceLifecycleConfigARN = a})

-- | -- | The response status code.
cnilcrrsResponseStatus :: Lens' CreateNotebookInstanceLifecycleConfigResponse Int
cnilcrrsResponseStatus = lens _cnilcrrsResponseStatus (\s a -> s {_cnilcrrsResponseStatus = a})

instance
  NFData
    CreateNotebookInstanceLifecycleConfigResponse
