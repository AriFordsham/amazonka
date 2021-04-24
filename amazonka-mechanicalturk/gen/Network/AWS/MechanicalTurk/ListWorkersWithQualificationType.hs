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
-- Module      : Network.AWS.MechanicalTurk.ListWorkersWithQualificationType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @ListWorkersWithQualificationType@ operation returns all of the Workers that have been associated with a given Qualification type.
--
--
--
-- This operation returns paginated results.
module Network.AWS.MechanicalTurk.ListWorkersWithQualificationType
  ( -- * Creating a Request
    listWorkersWithQualificationType,
    ListWorkersWithQualificationType,

    -- * Request Lenses
    lwwqtStatus,
    lwwqtNextToken,
    lwwqtMaxResults,
    lwwqtQualificationTypeId,

    -- * Destructuring the Response
    listWorkersWithQualificationTypeResponse,
    ListWorkersWithQualificationTypeResponse,

    -- * Response Lenses
    lwwqtrrsNextToken,
    lwwqtrrsNumResults,
    lwwqtrrsQualifications,
    lwwqtrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MechanicalTurk.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listWorkersWithQualificationType' smart constructor.
data ListWorkersWithQualificationType = ListWorkersWithQualificationType'
  { _lwwqtStatus ::
      !( Maybe
           QualificationStatus
       ),
    _lwwqtNextToken ::
      !( Maybe
           Text
       ),
    _lwwqtMaxResults ::
      !( Maybe
           Nat
       ),
    _lwwqtQualificationTypeId ::
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

-- | Creates a value of 'ListWorkersWithQualificationType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lwwqtStatus' - The status of the Qualifications to return. Can be @Granted | Revoked@ .
--
-- * 'lwwqtNextToken' - Pagination Token
--
-- * 'lwwqtMaxResults' - Limit the number of results returned.
--
-- * 'lwwqtQualificationTypeId' - The ID of the Qualification type of the Qualifications to return.
listWorkersWithQualificationType ::
  -- | 'lwwqtQualificationTypeId'
  Text ->
  ListWorkersWithQualificationType
listWorkersWithQualificationType
  pQualificationTypeId_ =
    ListWorkersWithQualificationType'
      { _lwwqtStatus =
          Nothing,
        _lwwqtNextToken = Nothing,
        _lwwqtMaxResults = Nothing,
        _lwwqtQualificationTypeId =
          pQualificationTypeId_
      }

-- | The status of the Qualifications to return. Can be @Granted | Revoked@ .
lwwqtStatus :: Lens' ListWorkersWithQualificationType (Maybe QualificationStatus)
lwwqtStatus = lens _lwwqtStatus (\s a -> s {_lwwqtStatus = a})

-- | Pagination Token
lwwqtNextToken :: Lens' ListWorkersWithQualificationType (Maybe Text)
lwwqtNextToken = lens _lwwqtNextToken (\s a -> s {_lwwqtNextToken = a})

-- | Limit the number of results returned.
lwwqtMaxResults :: Lens' ListWorkersWithQualificationType (Maybe Natural)
lwwqtMaxResults = lens _lwwqtMaxResults (\s a -> s {_lwwqtMaxResults = a}) . mapping _Nat

-- | The ID of the Qualification type of the Qualifications to return.
lwwqtQualificationTypeId :: Lens' ListWorkersWithQualificationType Text
lwwqtQualificationTypeId = lens _lwwqtQualificationTypeId (\s a -> s {_lwwqtQualificationTypeId = a})

instance AWSPager ListWorkersWithQualificationType where
  page rq rs
    | stop (rs ^. lwwqtrrsNextToken) = Nothing
    | stop (rs ^. lwwqtrrsQualifications) = Nothing
    | otherwise =
      Just $ rq & lwwqtNextToken .~ rs ^. lwwqtrrsNextToken

instance AWSRequest ListWorkersWithQualificationType where
  type
    Rs ListWorkersWithQualificationType =
      ListWorkersWithQualificationTypeResponse
  request = postJSON mechanicalTurk
  response =
    receiveJSON
      ( \s h x ->
          ListWorkersWithQualificationTypeResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "NumResults")
            <*> (x .?> "Qualifications" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListWorkersWithQualificationType

instance NFData ListWorkersWithQualificationType

instance ToHeaders ListWorkersWithQualificationType where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "MTurkRequesterServiceV20170117.ListWorkersWithQualificationType" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListWorkersWithQualificationType where
  toJSON ListWorkersWithQualificationType' {..} =
    object
      ( catMaybes
          [ ("Status" .=) <$> _lwwqtStatus,
            ("NextToken" .=) <$> _lwwqtNextToken,
            ("MaxResults" .=) <$> _lwwqtMaxResults,
            Just
              ( "QualificationTypeId"
                  .= _lwwqtQualificationTypeId
              )
          ]
      )

instance ToPath ListWorkersWithQualificationType where
  toPath = const "/"

instance ToQuery ListWorkersWithQualificationType where
  toQuery = const mempty

-- | /See:/ 'listWorkersWithQualificationTypeResponse' smart constructor.
data ListWorkersWithQualificationTypeResponse = ListWorkersWithQualificationTypeResponse'
  { _lwwqtrrsNextToken ::
      !( Maybe
           Text
       ),
    _lwwqtrrsNumResults ::
      !( Maybe
           Int
       ),
    _lwwqtrrsQualifications ::
      !( Maybe
           [Qualification]
       ),
    _lwwqtrrsResponseStatus ::
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

-- | Creates a value of 'ListWorkersWithQualificationTypeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lwwqtrrsNextToken' - Undocumented member.
--
-- * 'lwwqtrrsNumResults' - The number of Qualifications on this page in the filtered results list, equivalent to the number of Qualifications being returned by this call.
--
-- * 'lwwqtrrsQualifications' - The list of Qualification elements returned by this call.
--
-- * 'lwwqtrrsResponseStatus' - -- | The response status code.
listWorkersWithQualificationTypeResponse ::
  -- | 'lwwqtrrsResponseStatus'
  Int ->
  ListWorkersWithQualificationTypeResponse
listWorkersWithQualificationTypeResponse
  pResponseStatus_ =
    ListWorkersWithQualificationTypeResponse'
      { _lwwqtrrsNextToken =
          Nothing,
        _lwwqtrrsNumResults = Nothing,
        _lwwqtrrsQualifications = Nothing,
        _lwwqtrrsResponseStatus =
          pResponseStatus_
      }

-- | Undocumented member.
lwwqtrrsNextToken :: Lens' ListWorkersWithQualificationTypeResponse (Maybe Text)
lwwqtrrsNextToken = lens _lwwqtrrsNextToken (\s a -> s {_lwwqtrrsNextToken = a})

-- | The number of Qualifications on this page in the filtered results list, equivalent to the number of Qualifications being returned by this call.
lwwqtrrsNumResults :: Lens' ListWorkersWithQualificationTypeResponse (Maybe Int)
lwwqtrrsNumResults = lens _lwwqtrrsNumResults (\s a -> s {_lwwqtrrsNumResults = a})

-- | The list of Qualification elements returned by this call.
lwwqtrrsQualifications :: Lens' ListWorkersWithQualificationTypeResponse [Qualification]
lwwqtrrsQualifications = lens _lwwqtrrsQualifications (\s a -> s {_lwwqtrrsQualifications = a}) . _Default . _Coerce

-- | -- | The response status code.
lwwqtrrsResponseStatus :: Lens' ListWorkersWithQualificationTypeResponse Int
lwwqtrrsResponseStatus = lens _lwwqtrrsResponseStatus (\s a -> s {_lwwqtrrsResponseStatus = a})

instance
  NFData
    ListWorkersWithQualificationTypeResponse
