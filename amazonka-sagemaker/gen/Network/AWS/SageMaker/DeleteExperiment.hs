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
-- Module      : Network.AWS.SageMaker.DeleteExperiment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an Amazon SageMaker experiment. All trials associated with the experiment must be deleted first. Use the 'ListTrials' API to get a list of the trials associated with the experiment.
module Network.AWS.SageMaker.DeleteExperiment
  ( -- * Creating a Request
    deleteExperiment,
    DeleteExperiment,

    -- * Request Lenses
    dExperimentName,

    -- * Destructuring the Response
    deleteExperimentResponse,
    DeleteExperimentResponse,

    -- * Response Lenses
    derersExperimentARN,
    derersResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'deleteExperiment' smart constructor.
newtype DeleteExperiment = DeleteExperiment'
  { _dExperimentName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteExperiment' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dExperimentName' - The name of the experiment to delete.
deleteExperiment ::
  -- | 'dExperimentName'
  Text ->
  DeleteExperiment
deleteExperiment pExperimentName_ =
  DeleteExperiment'
    { _dExperimentName =
        pExperimentName_
    }

-- | The name of the experiment to delete.
dExperimentName :: Lens' DeleteExperiment Text
dExperimentName = lens _dExperimentName (\s a -> s {_dExperimentName = a})

instance AWSRequest DeleteExperiment where
  type Rs DeleteExperiment = DeleteExperimentResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DeleteExperimentResponse'
            <$> (x .?> "ExperimentArn") <*> (pure (fromEnum s))
      )

instance Hashable DeleteExperiment

instance NFData DeleteExperiment

instance ToHeaders DeleteExperiment where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DeleteExperiment" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteExperiment where
  toJSON DeleteExperiment' {..} =
    object
      ( catMaybes
          [Just ("ExperimentName" .= _dExperimentName)]
      )

instance ToPath DeleteExperiment where
  toPath = const "/"

instance ToQuery DeleteExperiment where
  toQuery = const mempty

-- | /See:/ 'deleteExperimentResponse' smart constructor.
data DeleteExperimentResponse = DeleteExperimentResponse'
  { _derersExperimentARN ::
      !(Maybe Text),
    _derersResponseStatus ::
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

-- | Creates a value of 'DeleteExperimentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'derersExperimentARN' - The Amazon Resource Name (ARN) of the experiment that is being deleted.
--
-- * 'derersResponseStatus' - -- | The response status code.
deleteExperimentResponse ::
  -- | 'derersResponseStatus'
  Int ->
  DeleteExperimentResponse
deleteExperimentResponse pResponseStatus_ =
  DeleteExperimentResponse'
    { _derersExperimentARN =
        Nothing,
      _derersResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the experiment that is being deleted.
derersExperimentARN :: Lens' DeleteExperimentResponse (Maybe Text)
derersExperimentARN = lens _derersExperimentARN (\s a -> s {_derersExperimentARN = a})

-- | -- | The response status code.
derersResponseStatus :: Lens' DeleteExperimentResponse Int
derersResponseStatus = lens _derersResponseStatus (\s a -> s {_derersResponseStatus = a})

instance NFData DeleteExperimentResponse
