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
-- Module      : Network.AWS.EC2.DisableVPCClassicLinkDNSSupport
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Disables ClassicLink DNS support for a VPC. If disabled, DNS hostnames resolve to public IP addresses when addressed between a linked EC2-Classic instance and instances in the VPC to which it's linked. For more information, see <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/vpc-classiclink.html ClassicLink> in the /Amazon Elastic Compute Cloud User Guide/ .
--
--
-- You must specify a VPC ID in the request.
module Network.AWS.EC2.DisableVPCClassicLinkDNSSupport
  ( -- * Creating a Request
    disableVPCClassicLinkDNSSupport,
    DisableVPCClassicLinkDNSSupport,

    -- * Request Lenses
    dvcldsVPCId,

    -- * Destructuring the Response
    disableVPCClassicLinkDNSSupportResponse,
    DisableVPCClassicLinkDNSSupportResponse,

    -- * Response Lenses
    dvpccldnssrrsReturn,
    dvpccldnssrrsResponseStatus,
  )
where

import Network.AWS.EC2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'disableVPCClassicLinkDNSSupport' smart constructor.
newtype DisableVPCClassicLinkDNSSupport = DisableVPCClassicLinkDNSSupport'
  { _dvcldsVPCId ::
      Maybe
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

-- | Creates a value of 'DisableVPCClassicLinkDNSSupport' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvcldsVPCId' - The ID of the VPC.
disableVPCClassicLinkDNSSupport ::
  DisableVPCClassicLinkDNSSupport
disableVPCClassicLinkDNSSupport =
  DisableVPCClassicLinkDNSSupport'
    { _dvcldsVPCId =
        Nothing
    }

-- | The ID of the VPC.
dvcldsVPCId :: Lens' DisableVPCClassicLinkDNSSupport (Maybe Text)
dvcldsVPCId = lens _dvcldsVPCId (\s a -> s {_dvcldsVPCId = a})

instance AWSRequest DisableVPCClassicLinkDNSSupport where
  type
    Rs DisableVPCClassicLinkDNSSupport =
      DisableVPCClassicLinkDNSSupportResponse
  request = postQuery ec2
  response =
    receiveXML
      ( \s h x ->
          DisableVPCClassicLinkDNSSupportResponse'
            <$> (x .@? "return") <*> (pure (fromEnum s))
      )

instance Hashable DisableVPCClassicLinkDNSSupport

instance NFData DisableVPCClassicLinkDNSSupport

instance ToHeaders DisableVPCClassicLinkDNSSupport where
  toHeaders = const mempty

instance ToPath DisableVPCClassicLinkDNSSupport where
  toPath = const "/"

instance ToQuery DisableVPCClassicLinkDNSSupport where
  toQuery DisableVPCClassicLinkDNSSupport' {..} =
    mconcat
      [ "Action"
          =: ("DisableVpcClassicLinkDnsSupport" :: ByteString),
        "Version" =: ("2016-11-15" :: ByteString),
        "VpcId" =: _dvcldsVPCId
      ]

-- | /See:/ 'disableVPCClassicLinkDNSSupportResponse' smart constructor.
data DisableVPCClassicLinkDNSSupportResponse = DisableVPCClassicLinkDNSSupportResponse'
  { _dvpccldnssrrsReturn ::
      !( Maybe
           Bool
       ),
    _dvpccldnssrrsResponseStatus ::
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

-- | Creates a value of 'DisableVPCClassicLinkDNSSupportResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dvpccldnssrrsReturn' - Returns @true@ if the request succeeds; otherwise, it returns an error.
--
-- * 'dvpccldnssrrsResponseStatus' - -- | The response status code.
disableVPCClassicLinkDNSSupportResponse ::
  -- | 'dvpccldnssrrsResponseStatus'
  Int ->
  DisableVPCClassicLinkDNSSupportResponse
disableVPCClassicLinkDNSSupportResponse
  pResponseStatus_ =
    DisableVPCClassicLinkDNSSupportResponse'
      { _dvpccldnssrrsReturn =
          Nothing,
        _dvpccldnssrrsResponseStatus =
          pResponseStatus_
      }

-- | Returns @true@ if the request succeeds; otherwise, it returns an error.
dvpccldnssrrsReturn :: Lens' DisableVPCClassicLinkDNSSupportResponse (Maybe Bool)
dvpccldnssrrsReturn = lens _dvpccldnssrrsReturn (\s a -> s {_dvpccldnssrrsReturn = a})

-- | -- | The response status code.
dvpccldnssrrsResponseStatus :: Lens' DisableVPCClassicLinkDNSSupportResponse Int
dvpccldnssrrsResponseStatus = lens _dvpccldnssrrsResponseStatus (\s a -> s {_dvpccldnssrrsResponseStatus = a})

instance
  NFData
    DisableVPCClassicLinkDNSSupportResponse
