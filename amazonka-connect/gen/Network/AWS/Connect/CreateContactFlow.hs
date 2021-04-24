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
-- Module      : Network.AWS.Connect.CreateContactFlow
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a contact flow for the specified Amazon Connect instance.
--
--
-- You can also create and update contact flows using the <https://docs.aws.amazon.com/connect/latest/adminguide/flow-language.html Amazon Connect Flow language> .
module Network.AWS.Connect.CreateContactFlow
  ( -- * Creating a Request
    createContactFlow,
    CreateContactFlow,

    -- * Request Lenses
    ccfTags,
    ccfDescription,
    ccfInstanceId,
    ccfName,
    ccfType,
    ccfContent,

    -- * Destructuring the Response
    createContactFlowResponse,
    CreateContactFlowResponse,

    -- * Response Lenses
    ccfrrsContactFlowARN,
    ccfrrsContactFlowId,
    ccfrrsResponseStatus,
  )
where

import Network.AWS.Connect.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createContactFlow' smart constructor.
data CreateContactFlow = CreateContactFlow'
  { _ccfTags ::
      !(Maybe (Map Text Text)),
    _ccfDescription :: !(Maybe Text),
    _ccfInstanceId :: !Text,
    _ccfName :: !Text,
    _ccfType :: !ContactFlowType,
    _ccfContent :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateContactFlow' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccfTags' - One or more tags.
--
-- * 'ccfDescription' - The description of the contact flow.
--
-- * 'ccfInstanceId' - The identifier of the Amazon Connect instance.
--
-- * 'ccfName' - The name of the contact flow.
--
-- * 'ccfType' - The type of the contact flow. For descriptions of the available types, see <https://docs.aws.amazon.com/connect/latest/adminguide/create-contact-flow.html#contact-flow-types Choose a Contact Flow Type> in the /Amazon Connect Administrator Guide/ .
--
-- * 'ccfContent' - The content of the contact flow.
createContactFlow ::
  -- | 'ccfInstanceId'
  Text ->
  -- | 'ccfName'
  Text ->
  -- | 'ccfType'
  ContactFlowType ->
  -- | 'ccfContent'
  Text ->
  CreateContactFlow
createContactFlow
  pInstanceId_
  pName_
  pType_
  pContent_ =
    CreateContactFlow'
      { _ccfTags = Nothing,
        _ccfDescription = Nothing,
        _ccfInstanceId = pInstanceId_,
        _ccfName = pName_,
        _ccfType = pType_,
        _ccfContent = pContent_
      }

-- | One or more tags.
ccfTags :: Lens' CreateContactFlow (HashMap Text Text)
ccfTags = lens _ccfTags (\s a -> s {_ccfTags = a}) . _Default . _Map

-- | The description of the contact flow.
ccfDescription :: Lens' CreateContactFlow (Maybe Text)
ccfDescription = lens _ccfDescription (\s a -> s {_ccfDescription = a})

-- | The identifier of the Amazon Connect instance.
ccfInstanceId :: Lens' CreateContactFlow Text
ccfInstanceId = lens _ccfInstanceId (\s a -> s {_ccfInstanceId = a})

-- | The name of the contact flow.
ccfName :: Lens' CreateContactFlow Text
ccfName = lens _ccfName (\s a -> s {_ccfName = a})

-- | The type of the contact flow. For descriptions of the available types, see <https://docs.aws.amazon.com/connect/latest/adminguide/create-contact-flow.html#contact-flow-types Choose a Contact Flow Type> in the /Amazon Connect Administrator Guide/ .
ccfType :: Lens' CreateContactFlow ContactFlowType
ccfType = lens _ccfType (\s a -> s {_ccfType = a})

-- | The content of the contact flow.
ccfContent :: Lens' CreateContactFlow Text
ccfContent = lens _ccfContent (\s a -> s {_ccfContent = a})

instance AWSRequest CreateContactFlow where
  type Rs CreateContactFlow = CreateContactFlowResponse
  request = putJSON connect
  response =
    receiveJSON
      ( \s h x ->
          CreateContactFlowResponse'
            <$> (x .?> "ContactFlowArn")
            <*> (x .?> "ContactFlowId")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateContactFlow

instance NFData CreateContactFlow

instance ToHeaders CreateContactFlow where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateContactFlow where
  toJSON CreateContactFlow' {..} =
    object
      ( catMaybes
          [ ("Tags" .=) <$> _ccfTags,
            ("Description" .=) <$> _ccfDescription,
            Just ("Name" .= _ccfName),
            Just ("Type" .= _ccfType),
            Just ("Content" .= _ccfContent)
          ]
      )

instance ToPath CreateContactFlow where
  toPath CreateContactFlow' {..} =
    mconcat ["/contact-flows/", toBS _ccfInstanceId]

instance ToQuery CreateContactFlow where
  toQuery = const mempty

-- | /See:/ 'createContactFlowResponse' smart constructor.
data CreateContactFlowResponse = CreateContactFlowResponse'
  { _ccfrrsContactFlowARN ::
      !(Maybe Text),
    _ccfrrsContactFlowId ::
      !(Maybe Text),
    _ccfrrsResponseStatus ::
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

-- | Creates a value of 'CreateContactFlowResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ccfrrsContactFlowARN' - The Amazon Resource Name (ARN) of the contact flow.
--
-- * 'ccfrrsContactFlowId' - The identifier of the contact flow.
--
-- * 'ccfrrsResponseStatus' - -- | The response status code.
createContactFlowResponse ::
  -- | 'ccfrrsResponseStatus'
  Int ->
  CreateContactFlowResponse
createContactFlowResponse pResponseStatus_ =
  CreateContactFlowResponse'
    { _ccfrrsContactFlowARN =
        Nothing,
      _ccfrrsContactFlowId = Nothing,
      _ccfrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the contact flow.
ccfrrsContactFlowARN :: Lens' CreateContactFlowResponse (Maybe Text)
ccfrrsContactFlowARN = lens _ccfrrsContactFlowARN (\s a -> s {_ccfrrsContactFlowARN = a})

-- | The identifier of the contact flow.
ccfrrsContactFlowId :: Lens' CreateContactFlowResponse (Maybe Text)
ccfrrsContactFlowId = lens _ccfrrsContactFlowId (\s a -> s {_ccfrrsContactFlowId = a})

-- | -- | The response status code.
ccfrrsResponseStatus :: Lens' CreateContactFlowResponse Int
ccfrrsResponseStatus = lens _ccfrrsResponseStatus (\s a -> s {_ccfrrsResponseStatus = a})

instance NFData CreateContactFlowResponse
