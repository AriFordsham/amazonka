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
-- Module      : Network.AWS.IAM.GetInstanceProfile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about the specified instance profile, including the instance profile's path, GUID, ARN, and role. For more information about instance profiles, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/AboutInstanceProfiles.html About instance profiles> in the /IAM User Guide/ .
module Network.AWS.IAM.GetInstanceProfile
  ( -- * Creating a Request
    getInstanceProfile,
    GetInstanceProfile,

    -- * Request Lenses
    gipInstanceProfileName,

    -- * Destructuring the Response
    getInstanceProfileResponse,
    GetInstanceProfileResponse,

    -- * Response Lenses
    giprrsResponseStatus,
    giprrsInstanceProfile,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getInstanceProfile' smart constructor.
newtype GetInstanceProfile = GetInstanceProfile'
  { _gipInstanceProfileName ::
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

-- | Creates a value of 'GetInstanceProfile' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gipInstanceProfileName' - The name of the instance profile to get information about. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
getInstanceProfile ::
  -- | 'gipInstanceProfileName'
  Text ->
  GetInstanceProfile
getInstanceProfile pInstanceProfileName_ =
  GetInstanceProfile'
    { _gipInstanceProfileName =
        pInstanceProfileName_
    }

-- | The name of the instance profile to get information about. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
gipInstanceProfileName :: Lens' GetInstanceProfile Text
gipInstanceProfileName = lens _gipInstanceProfileName (\s a -> s {_gipInstanceProfileName = a})

instance AWSRequest GetInstanceProfile where
  type
    Rs GetInstanceProfile =
      GetInstanceProfileResponse
  request = postQuery iam
  response =
    receiveXMLWrapper
      "GetInstanceProfileResult"
      ( \s h x ->
          GetInstanceProfileResponse'
            <$> (pure (fromEnum s)) <*> (x .@ "InstanceProfile")
      )

instance Hashable GetInstanceProfile

instance NFData GetInstanceProfile

instance ToHeaders GetInstanceProfile where
  toHeaders = const mempty

instance ToPath GetInstanceProfile where
  toPath = const "/"

instance ToQuery GetInstanceProfile where
  toQuery GetInstanceProfile' {..} =
    mconcat
      [ "Action" =: ("GetInstanceProfile" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "InstanceProfileName" =: _gipInstanceProfileName
      ]

-- | Contains the response to a successful 'GetInstanceProfile' request.
--
--
--
-- /See:/ 'getInstanceProfileResponse' smart constructor.
data GetInstanceProfileResponse = GetInstanceProfileResponse'
  { _giprrsResponseStatus ::
      !Int,
    _giprrsInstanceProfile ::
      !InstanceProfile
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetInstanceProfileResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'giprrsResponseStatus' - -- | The response status code.
--
-- * 'giprrsInstanceProfile' - A structure containing details about the instance profile.
getInstanceProfileResponse ::
  -- | 'giprrsResponseStatus'
  Int ->
  -- | 'giprrsInstanceProfile'
  InstanceProfile ->
  GetInstanceProfileResponse
getInstanceProfileResponse
  pResponseStatus_
  pInstanceProfile_ =
    GetInstanceProfileResponse'
      { _giprrsResponseStatus =
          pResponseStatus_,
        _giprrsInstanceProfile = pInstanceProfile_
      }

-- | -- | The response status code.
giprrsResponseStatus :: Lens' GetInstanceProfileResponse Int
giprrsResponseStatus = lens _giprrsResponseStatus (\s a -> s {_giprrsResponseStatus = a})

-- | A structure containing details about the instance profile.
giprrsInstanceProfile :: Lens' GetInstanceProfileResponse InstanceProfile
giprrsInstanceProfile = lens _giprrsInstanceProfile (\s a -> s {_giprrsInstanceProfile = a})

instance NFData GetInstanceProfileResponse
