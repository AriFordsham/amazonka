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
-- Module      : Network.AWS.Redshift.DescribeHSMClientCertificates
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the specified HSM client certificate. If no certificate ID is specified, returns information about all the HSM certificates owned by your AWS customer account.
--
--
-- If you specify both tag keys and tag values in the same request, Amazon Redshift returns all HSM client certificates that match any combination of the specified keys and values. For example, if you have @owner@ and @environment@ for tag keys, and @admin@ and @test@ for tag values, all HSM client certificates that have any combination of those values are returned.
--
-- If both tag keys and values are omitted from the request, HSM client certificates are returned regardless of whether they have tag keys or values associated with them.
--
--
-- This operation returns paginated results.
module Network.AWS.Redshift.DescribeHSMClientCertificates
  ( -- * Creating a Request
    describeHSMClientCertificates,
    DescribeHSMClientCertificates,

    -- * Request Lenses
    dhccHSMClientCertificateIdentifier,
    dhccTagKeys,
    dhccTagValues,
    dhccMarker,
    dhccMaxRecords,

    -- * Destructuring the Response
    describeHSMClientCertificatesResponse,
    DescribeHSMClientCertificatesResponse,

    -- * Response Lenses
    dhccrrsHSMClientCertificates,
    dhccrrsMarker,
    dhccrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Redshift.Types
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'describeHSMClientCertificates' smart constructor.
data DescribeHSMClientCertificates = DescribeHSMClientCertificates'
  { _dhccHSMClientCertificateIdentifier ::
      !( Maybe
           Text
       ),
    _dhccTagKeys ::
      !( Maybe
           [Text]
       ),
    _dhccTagValues ::
      !( Maybe
           [Text]
       ),
    _dhccMarker ::
      !( Maybe
           Text
       ),
    _dhccMaxRecords ::
      !( Maybe
           Int
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeHSMClientCertificates' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dhccHSMClientCertificateIdentifier' - The identifier of a specific HSM client certificate for which you want information. If no identifier is specified, information is returned for all HSM client certificates owned by your AWS customer account.
--
-- * 'dhccTagKeys' - A tag key or keys for which you want to return all matching HSM client certificates that are associated with the specified key or keys. For example, suppose that you have HSM client certificates that are tagged with keys called @owner@ and @environment@ . If you specify both of these tag keys in the request, Amazon Redshift returns a response with the HSM client certificates that have either or both of these tag keys associated with them.
--
-- * 'dhccTagValues' - A tag value or values for which you want to return all matching HSM client certificates that are associated with the specified tag value or values. For example, suppose that you have HSM client certificates that are tagged with values called @admin@ and @test@ . If you specify both of these tag values in the request, Amazon Redshift returns a response with the HSM client certificates that have either or both of these tag values associated with them.
--
-- * 'dhccMarker' - An optional parameter that specifies the starting point to return a set of response records. When the results of a 'DescribeHsmClientCertificates' request exceed the value specified in @MaxRecords@ , AWS returns a value in the @Marker@ field of the response. You can retrieve the next set of response records by providing the returned marker value in the @Marker@ parameter and retrying the request.
--
-- * 'dhccMaxRecords' - The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified @MaxRecords@ value, a value is returned in a @marker@ field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: @100@  Constraints: minimum 20, maximum 100.
describeHSMClientCertificates ::
  DescribeHSMClientCertificates
describeHSMClientCertificates =
  DescribeHSMClientCertificates'
    { _dhccHSMClientCertificateIdentifier =
        Nothing,
      _dhccTagKeys = Nothing,
      _dhccTagValues = Nothing,
      _dhccMarker = Nothing,
      _dhccMaxRecords = Nothing
    }

-- | The identifier of a specific HSM client certificate for which you want information. If no identifier is specified, information is returned for all HSM client certificates owned by your AWS customer account.
dhccHSMClientCertificateIdentifier :: Lens' DescribeHSMClientCertificates (Maybe Text)
dhccHSMClientCertificateIdentifier = lens _dhccHSMClientCertificateIdentifier (\s a -> s {_dhccHSMClientCertificateIdentifier = a})

-- | A tag key or keys for which you want to return all matching HSM client certificates that are associated with the specified key or keys. For example, suppose that you have HSM client certificates that are tagged with keys called @owner@ and @environment@ . If you specify both of these tag keys in the request, Amazon Redshift returns a response with the HSM client certificates that have either or both of these tag keys associated with them.
dhccTagKeys :: Lens' DescribeHSMClientCertificates [Text]
dhccTagKeys = lens _dhccTagKeys (\s a -> s {_dhccTagKeys = a}) . _Default . _Coerce

-- | A tag value or values for which you want to return all matching HSM client certificates that are associated with the specified tag value or values. For example, suppose that you have HSM client certificates that are tagged with values called @admin@ and @test@ . If you specify both of these tag values in the request, Amazon Redshift returns a response with the HSM client certificates that have either or both of these tag values associated with them.
dhccTagValues :: Lens' DescribeHSMClientCertificates [Text]
dhccTagValues = lens _dhccTagValues (\s a -> s {_dhccTagValues = a}) . _Default . _Coerce

-- | An optional parameter that specifies the starting point to return a set of response records. When the results of a 'DescribeHsmClientCertificates' request exceed the value specified in @MaxRecords@ , AWS returns a value in the @Marker@ field of the response. You can retrieve the next set of response records by providing the returned marker value in the @Marker@ parameter and retrying the request.
dhccMarker :: Lens' DescribeHSMClientCertificates (Maybe Text)
dhccMarker = lens _dhccMarker (\s a -> s {_dhccMarker = a})

-- | The maximum number of response records to return in each call. If the number of remaining response records exceeds the specified @MaxRecords@ value, a value is returned in a @marker@ field of the response. You can retrieve the next set of records by retrying the command with the returned marker value.  Default: @100@  Constraints: minimum 20, maximum 100.
dhccMaxRecords :: Lens' DescribeHSMClientCertificates (Maybe Int)
dhccMaxRecords = lens _dhccMaxRecords (\s a -> s {_dhccMaxRecords = a})

instance AWSPager DescribeHSMClientCertificates where
  page rq rs
    | stop (rs ^. dhccrrsMarker) = Nothing
    | stop (rs ^. dhccrrsHSMClientCertificates) = Nothing
    | otherwise =
      Just $ rq & dhccMarker .~ rs ^. dhccrrsMarker

instance AWSRequest DescribeHSMClientCertificates where
  type
    Rs DescribeHSMClientCertificates =
      DescribeHSMClientCertificatesResponse
  request = postQuery redshift
  response =
    receiveXMLWrapper
      "DescribeHsmClientCertificatesResult"
      ( \s h x ->
          DescribeHSMClientCertificatesResponse'
            <$> ( x .@? "HsmClientCertificates" .!@ mempty
                    >>= may (parseXMLList "HsmClientCertificate")
                )
            <*> (x .@? "Marker")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeHSMClientCertificates

instance NFData DescribeHSMClientCertificates

instance ToHeaders DescribeHSMClientCertificates where
  toHeaders = const mempty

instance ToPath DescribeHSMClientCertificates where
  toPath = const "/"

instance ToQuery DescribeHSMClientCertificates where
  toQuery DescribeHSMClientCertificates' {..} =
    mconcat
      [ "Action"
          =: ("DescribeHsmClientCertificates" :: ByteString),
        "Version" =: ("2012-12-01" :: ByteString),
        "HsmClientCertificateIdentifier"
          =: _dhccHSMClientCertificateIdentifier,
        "TagKeys"
          =: toQuery (toQueryList "TagKey" <$> _dhccTagKeys),
        "TagValues"
          =: toQuery (toQueryList "TagValue" <$> _dhccTagValues),
        "Marker" =: _dhccMarker,
        "MaxRecords" =: _dhccMaxRecords
      ]

-- |
--
--
--
-- /See:/ 'describeHSMClientCertificatesResponse' smart constructor.
data DescribeHSMClientCertificatesResponse = DescribeHSMClientCertificatesResponse'
  { _dhccrrsHSMClientCertificates ::
      !( Maybe
           [HSMClientCertificate]
       ),
    _dhccrrsMarker ::
      !( Maybe
           Text
       ),
    _dhccrrsResponseStatus ::
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

-- | Creates a value of 'DescribeHSMClientCertificatesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dhccrrsHSMClientCertificates' - A list of the identifiers for one or more HSM client certificates used by Amazon Redshift clusters to store and retrieve database encryption keys in an HSM.
--
-- * 'dhccrrsMarker' - A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the @Marker@ parameter and retrying the command. If the @Marker@ field is empty, all response records have been retrieved for the request.
--
-- * 'dhccrrsResponseStatus' - -- | The response status code.
describeHSMClientCertificatesResponse ::
  -- | 'dhccrrsResponseStatus'
  Int ->
  DescribeHSMClientCertificatesResponse
describeHSMClientCertificatesResponse
  pResponseStatus_ =
    DescribeHSMClientCertificatesResponse'
      { _dhccrrsHSMClientCertificates =
          Nothing,
        _dhccrrsMarker = Nothing,
        _dhccrrsResponseStatus =
          pResponseStatus_
      }

-- | A list of the identifiers for one or more HSM client certificates used by Amazon Redshift clusters to store and retrieve database encryption keys in an HSM.
dhccrrsHSMClientCertificates :: Lens' DescribeHSMClientCertificatesResponse [HSMClientCertificate]
dhccrrsHSMClientCertificates = lens _dhccrrsHSMClientCertificates (\s a -> s {_dhccrrsHSMClientCertificates = a}) . _Default . _Coerce

-- | A value that indicates the starting point for the next set of response records in a subsequent request. If a value is returned in a response, you can retrieve the next set of records by providing this returned marker value in the @Marker@ parameter and retrying the command. If the @Marker@ field is empty, all response records have been retrieved for the request.
dhccrrsMarker :: Lens' DescribeHSMClientCertificatesResponse (Maybe Text)
dhccrrsMarker = lens _dhccrrsMarker (\s a -> s {_dhccrrsMarker = a})

-- | -- | The response status code.
dhccrrsResponseStatus :: Lens' DescribeHSMClientCertificatesResponse Int
dhccrrsResponseStatus = lens _dhccrrsResponseStatus (\s a -> s {_dhccrrsResponseStatus = a})

instance NFData DescribeHSMClientCertificatesResponse
