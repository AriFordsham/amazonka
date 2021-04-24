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
-- Module      : Network.AWS.Comprehend.DescribeDocumentClassifier
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the properties associated with a document classifier.
module Network.AWS.Comprehend.DescribeDocumentClassifier
  ( -- * Creating a Request
    describeDocumentClassifier,
    DescribeDocumentClassifier,

    -- * Request Lenses
    ddcDocumentClassifierARN,

    -- * Destructuring the Response
    describeDocumentClassifierResponse,
    DescribeDocumentClassifierResponse,

    -- * Response Lenses
    ddcrrsDocumentClassifierProperties,
    ddcrrsResponseStatus,
  )
where

import Network.AWS.Comprehend.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeDocumentClassifier' smart constructor.
newtype DescribeDocumentClassifier = DescribeDocumentClassifier'
  { _ddcDocumentClassifierARN ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeDocumentClassifier' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddcDocumentClassifierARN' - The Amazon Resource Name (ARN) that identifies the document classifier. The operation returns this identifier in its response.
describeDocumentClassifier ::
  -- | 'ddcDocumentClassifierARN'
  Text ->
  DescribeDocumentClassifier
describeDocumentClassifier pDocumentClassifierARN_ =
  DescribeDocumentClassifier'
    { _ddcDocumentClassifierARN =
        pDocumentClassifierARN_
    }

-- | The Amazon Resource Name (ARN) that identifies the document classifier. The operation returns this identifier in its response.
ddcDocumentClassifierARN :: Lens' DescribeDocumentClassifier Text
ddcDocumentClassifierARN = lens _ddcDocumentClassifierARN (\s a -> s {_ddcDocumentClassifierARN = a})

instance AWSRequest DescribeDocumentClassifier where
  type
    Rs DescribeDocumentClassifier =
      DescribeDocumentClassifierResponse
  request = postJSON comprehend
  response =
    receiveJSON
      ( \s h x ->
          DescribeDocumentClassifierResponse'
            <$> (x .?> "DocumentClassifierProperties")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeDocumentClassifier

instance NFData DescribeDocumentClassifier

instance ToHeaders DescribeDocumentClassifier where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "Comprehend_20171127.DescribeDocumentClassifier" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeDocumentClassifier where
  toJSON DescribeDocumentClassifier' {..} =
    object
      ( catMaybes
          [ Just
              ( "DocumentClassifierArn"
                  .= _ddcDocumentClassifierARN
              )
          ]
      )

instance ToPath DescribeDocumentClassifier where
  toPath = const "/"

instance ToQuery DescribeDocumentClassifier where
  toQuery = const mempty

-- | /See:/ 'describeDocumentClassifierResponse' smart constructor.
data DescribeDocumentClassifierResponse = DescribeDocumentClassifierResponse'
  { _ddcrrsDocumentClassifierProperties ::
      !( Maybe
           DocumentClassifierProperties
       ),
    _ddcrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeDocumentClassifierResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ddcrrsDocumentClassifierProperties' - An object that contains the properties associated with a document classifier.
--
-- * 'ddcrrsResponseStatus' - -- | The response status code.
describeDocumentClassifierResponse ::
  -- | 'ddcrrsResponseStatus'
  Int ->
  DescribeDocumentClassifierResponse
describeDocumentClassifierResponse pResponseStatus_ =
  DescribeDocumentClassifierResponse'
    { _ddcrrsDocumentClassifierProperties =
        Nothing,
      _ddcrrsResponseStatus =
        pResponseStatus_
    }

-- | An object that contains the properties associated with a document classifier.
ddcrrsDocumentClassifierProperties :: Lens' DescribeDocumentClassifierResponse (Maybe DocumentClassifierProperties)
ddcrrsDocumentClassifierProperties = lens _ddcrrsDocumentClassifierProperties (\s a -> s {_ddcrrsDocumentClassifierProperties = a})

-- | -- | The response status code.
ddcrrsResponseStatus :: Lens' DescribeDocumentClassifierResponse Int
ddcrrsResponseStatus = lens _ddcrrsResponseStatus (\s a -> s {_ddcrrsResponseStatus = a})

instance NFData DescribeDocumentClassifierResponse
