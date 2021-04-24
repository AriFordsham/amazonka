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
-- Module      : Network.AWS.SageMaker.DeleteTrial
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified trial. All trial components that make up the trial must be deleted first. Use the 'DescribeTrialComponent' API to get the list of trial components.
module Network.AWS.SageMaker.DeleteTrial
  ( -- * Creating a Request
    deleteTrial,
    DeleteTrial,

    -- * Request Lenses
    dTrialName,

    -- * Destructuring the Response
    deleteTrialResponse,
    DeleteTrialResponse,

    -- * Response Lenses
    delersTrialARN,
    delersResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'deleteTrial' smart constructor.
newtype DeleteTrial = DeleteTrial'
  { _dTrialName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteTrial' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dTrialName' - The name of the trial to delete.
deleteTrial ::
  -- | 'dTrialName'
  Text ->
  DeleteTrial
deleteTrial pTrialName_ =
  DeleteTrial' {_dTrialName = pTrialName_}

-- | The name of the trial to delete.
dTrialName :: Lens' DeleteTrial Text
dTrialName = lens _dTrialName (\s a -> s {_dTrialName = a})

instance AWSRequest DeleteTrial where
  type Rs DeleteTrial = DeleteTrialResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          DeleteTrialResponse'
            <$> (x .?> "TrialArn") <*> (pure (fromEnum s))
      )

instance Hashable DeleteTrial

instance NFData DeleteTrial

instance ToHeaders DeleteTrial where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.DeleteTrial" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteTrial where
  toJSON DeleteTrial' {..} =
    object
      (catMaybes [Just ("TrialName" .= _dTrialName)])

instance ToPath DeleteTrial where
  toPath = const "/"

instance ToQuery DeleteTrial where
  toQuery = const mempty

-- | /See:/ 'deleteTrialResponse' smart constructor.
data DeleteTrialResponse = DeleteTrialResponse'
  { _delersTrialARN ::
      !(Maybe Text),
    _delersResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteTrialResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delersTrialARN' - The Amazon Resource Name (ARN) of the trial that is being deleted.
--
-- * 'delersResponseStatus' - -- | The response status code.
deleteTrialResponse ::
  -- | 'delersResponseStatus'
  Int ->
  DeleteTrialResponse
deleteTrialResponse pResponseStatus_ =
  DeleteTrialResponse'
    { _delersTrialARN = Nothing,
      _delersResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the trial that is being deleted.
delersTrialARN :: Lens' DeleteTrialResponse (Maybe Text)
delersTrialARN = lens _delersTrialARN (\s a -> s {_delersTrialARN = a})

-- | -- | The response status code.
delersResponseStatus :: Lens' DeleteTrialResponse Int
delersResponseStatus = lens _delersResponseStatus (\s a -> s {_delersResponseStatus = a})

instance NFData DeleteTrialResponse
