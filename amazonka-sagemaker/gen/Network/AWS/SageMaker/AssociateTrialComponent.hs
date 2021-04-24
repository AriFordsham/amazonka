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
-- Module      : Network.AWS.SageMaker.AssociateTrialComponent
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates a trial component with a trial. A trial component can be associated with multiple trials. To disassociate a trial component from a trial, call the 'DisassociateTrialComponent' API.
module Network.AWS.SageMaker.AssociateTrialComponent
  ( -- * Creating a Request
    associateTrialComponent,
    AssociateTrialComponent,

    -- * Request Lenses
    atcTrialComponentName,
    atcTrialName,

    -- * Destructuring the Response
    associateTrialComponentResponse,
    AssociateTrialComponentResponse,

    -- * Response Lenses
    atcrrsTrialARN,
    atcrrsTrialComponentARN,
    atcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'associateTrialComponent' smart constructor.
data AssociateTrialComponent = AssociateTrialComponent'
  { _atcTrialComponentName ::
      !Text,
    _atcTrialName :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AssociateTrialComponent' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atcTrialComponentName' - The name of the component to associated with the trial.
--
-- * 'atcTrialName' - The name of the trial to associate with.
associateTrialComponent ::
  -- | 'atcTrialComponentName'
  Text ->
  -- | 'atcTrialName'
  Text ->
  AssociateTrialComponent
associateTrialComponent
  pTrialComponentName_
  pTrialName_ =
    AssociateTrialComponent'
      { _atcTrialComponentName =
          pTrialComponentName_,
        _atcTrialName = pTrialName_
      }

-- | The name of the component to associated with the trial.
atcTrialComponentName :: Lens' AssociateTrialComponent Text
atcTrialComponentName = lens _atcTrialComponentName (\s a -> s {_atcTrialComponentName = a})

-- | The name of the trial to associate with.
atcTrialName :: Lens' AssociateTrialComponent Text
atcTrialName = lens _atcTrialName (\s a -> s {_atcTrialName = a})

instance AWSRequest AssociateTrialComponent where
  type
    Rs AssociateTrialComponent =
      AssociateTrialComponentResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          AssociateTrialComponentResponse'
            <$> (x .?> "TrialArn")
            <*> (x .?> "TrialComponentArn")
            <*> (pure (fromEnum s))
      )

instance Hashable AssociateTrialComponent

instance NFData AssociateTrialComponent

instance ToHeaders AssociateTrialComponent where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.AssociateTrialComponent" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON AssociateTrialComponent where
  toJSON AssociateTrialComponent' {..} =
    object
      ( catMaybes
          [ Just
              ("TrialComponentName" .= _atcTrialComponentName),
            Just ("TrialName" .= _atcTrialName)
          ]
      )

instance ToPath AssociateTrialComponent where
  toPath = const "/"

instance ToQuery AssociateTrialComponent where
  toQuery = const mempty

-- | /See:/ 'associateTrialComponentResponse' smart constructor.
data AssociateTrialComponentResponse = AssociateTrialComponentResponse'
  { _atcrrsTrialARN ::
      !( Maybe
           Text
       ),
    _atcrrsTrialComponentARN ::
      !( Maybe
           Text
       ),
    _atcrrsResponseStatus ::
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

-- | Creates a value of 'AssociateTrialComponentResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atcrrsTrialARN' - The Amazon Resource Name (ARN) of the trial.
--
-- * 'atcrrsTrialComponentARN' - The ARN of the trial component.
--
-- * 'atcrrsResponseStatus' - -- | The response status code.
associateTrialComponentResponse ::
  -- | 'atcrrsResponseStatus'
  Int ->
  AssociateTrialComponentResponse
associateTrialComponentResponse pResponseStatus_ =
  AssociateTrialComponentResponse'
    { _atcrrsTrialARN =
        Nothing,
      _atcrrsTrialComponentARN = Nothing,
      _atcrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the trial.
atcrrsTrialARN :: Lens' AssociateTrialComponentResponse (Maybe Text)
atcrrsTrialARN = lens _atcrrsTrialARN (\s a -> s {_atcrrsTrialARN = a})

-- | The ARN of the trial component.
atcrrsTrialComponentARN :: Lens' AssociateTrialComponentResponse (Maybe Text)
atcrrsTrialComponentARN = lens _atcrrsTrialComponentARN (\s a -> s {_atcrrsTrialComponentARN = a})

-- | -- | The response status code.
atcrrsResponseStatus :: Lens' AssociateTrialComponentResponse Int
atcrrsResponseStatus = lens _atcrrsResponseStatus (\s a -> s {_atcrrsResponseStatus = a})

instance NFData AssociateTrialComponentResponse
