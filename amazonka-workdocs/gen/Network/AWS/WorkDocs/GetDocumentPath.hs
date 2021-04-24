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
-- Module      : Network.AWS.WorkDocs.GetDocumentPath
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the path information (the hierarchy from the root folder) for the requested document.
--
--
-- By default, Amazon WorkDocs returns a maximum of 100 levels upwards from the requested document and only includes the IDs of the parent folders in the path. You can limit the maximum number of levels. You can also request the names of the parent folders.
module Network.AWS.WorkDocs.GetDocumentPath
  ( -- * Creating a Request
    getDocumentPath,
    GetDocumentPath,

    -- * Request Lenses
    gdpFields,
    gdpAuthenticationToken,
    gdpLimit,
    gdpMarker,
    gdpDocumentId,

    -- * Destructuring the Response
    getDocumentPathResponse,
    GetDocumentPathResponse,

    -- * Response Lenses
    gdprrsPath,
    gdprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.WorkDocs.Types

-- | /See:/ 'getDocumentPath' smart constructor.
data GetDocumentPath = GetDocumentPath'
  { _gdpFields ::
      !(Maybe Text),
    _gdpAuthenticationToken ::
      !(Maybe (Sensitive Text)),
    _gdpLimit :: !(Maybe Nat),
    _gdpMarker :: !(Maybe Text),
    _gdpDocumentId :: !Text
  }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetDocumentPath' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdpFields' - A comma-separated list of values. Specify @NAME@ to include the names of the parent folders.
--
-- * 'gdpAuthenticationToken' - Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
--
-- * 'gdpLimit' - The maximum number of levels in the hierarchy to return.
--
-- * 'gdpMarker' - This value is not supported.
--
-- * 'gdpDocumentId' - The ID of the document.
getDocumentPath ::
  -- | 'gdpDocumentId'
  Text ->
  GetDocumentPath
getDocumentPath pDocumentId_ =
  GetDocumentPath'
    { _gdpFields = Nothing,
      _gdpAuthenticationToken = Nothing,
      _gdpLimit = Nothing,
      _gdpMarker = Nothing,
      _gdpDocumentId = pDocumentId_
    }

-- | A comma-separated list of values. Specify @NAME@ to include the names of the parent folders.
gdpFields :: Lens' GetDocumentPath (Maybe Text)
gdpFields = lens _gdpFields (\s a -> s {_gdpFields = a})

-- | Amazon WorkDocs authentication token. Not required when using AWS administrator credentials to access the API.
gdpAuthenticationToken :: Lens' GetDocumentPath (Maybe Text)
gdpAuthenticationToken = lens _gdpAuthenticationToken (\s a -> s {_gdpAuthenticationToken = a}) . mapping _Sensitive

-- | The maximum number of levels in the hierarchy to return.
gdpLimit :: Lens' GetDocumentPath (Maybe Natural)
gdpLimit = lens _gdpLimit (\s a -> s {_gdpLimit = a}) . mapping _Nat

-- | This value is not supported.
gdpMarker :: Lens' GetDocumentPath (Maybe Text)
gdpMarker = lens _gdpMarker (\s a -> s {_gdpMarker = a})

-- | The ID of the document.
gdpDocumentId :: Lens' GetDocumentPath Text
gdpDocumentId = lens _gdpDocumentId (\s a -> s {_gdpDocumentId = a})

instance AWSRequest GetDocumentPath where
  type Rs GetDocumentPath = GetDocumentPathResponse
  request = get workDocs
  response =
    receiveJSON
      ( \s h x ->
          GetDocumentPathResponse'
            <$> (x .?> "Path") <*> (pure (fromEnum s))
      )

instance Hashable GetDocumentPath

instance NFData GetDocumentPath

instance ToHeaders GetDocumentPath where
  toHeaders GetDocumentPath' {..} =
    mconcat
      [ "Authentication" =# _gdpAuthenticationToken,
        "Content-Type"
          =# ("application/x-amz-json-1.1" :: ByteString)
      ]

instance ToPath GetDocumentPath where
  toPath GetDocumentPath' {..} =
    mconcat
      ["/api/v1/documents/", toBS _gdpDocumentId, "/path"]

instance ToQuery GetDocumentPath where
  toQuery GetDocumentPath' {..} =
    mconcat
      [ "fields" =: _gdpFields,
        "limit" =: _gdpLimit,
        "marker" =: _gdpMarker
      ]

-- | /See:/ 'getDocumentPathResponse' smart constructor.
data GetDocumentPathResponse = GetDocumentPathResponse'
  { _gdprrsPath ::
      !(Maybe ResourcePath),
    _gdprrsResponseStatus ::
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

-- | Creates a value of 'GetDocumentPathResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gdprrsPath' - The path information.
--
-- * 'gdprrsResponseStatus' - -- | The response status code.
getDocumentPathResponse ::
  -- | 'gdprrsResponseStatus'
  Int ->
  GetDocumentPathResponse
getDocumentPathResponse pResponseStatus_ =
  GetDocumentPathResponse'
    { _gdprrsPath = Nothing,
      _gdprrsResponseStatus = pResponseStatus_
    }

-- | The path information.
gdprrsPath :: Lens' GetDocumentPathResponse (Maybe ResourcePath)
gdprrsPath = lens _gdprrsPath (\s a -> s {_gdprrsPath = a})

-- | -- | The response status code.
gdprrsResponseStatus :: Lens' GetDocumentPathResponse Int
gdprrsResponseStatus = lens _gdprrsResponseStatus (\s a -> s {_gdprrsResponseStatus = a})

instance NFData GetDocumentPathResponse
