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
-- Module      : Network.AWS.RDS.ModifyDBSubnetGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies an existing DB subnet group. DB subnet groups must contain at least one subnet in at least two AZs in the AWS Region.
module Network.AWS.RDS.ModifyDBSubnetGroup
  ( -- * Creating a Request
    modifyDBSubnetGroup,
    ModifyDBSubnetGroup,

    -- * Request Lenses
    mdsgDBSubnetGroupDescription,
    mdsgDBSubnetGroupName,
    mdsgSubnetIds,

    -- * Destructuring the Response
    modifyDBSubnetGroupResponse,
    ModifyDBSubnetGroupResponse,

    -- * Response Lenses
    mdsgrrsDBSubnetGroup,
    mdsgrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.RDS.Types
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'modifyDBSubnetGroup' smart constructor.
data ModifyDBSubnetGroup = ModifyDBSubnetGroup'
  { _mdsgDBSubnetGroupDescription ::
      !(Maybe Text),
    _mdsgDBSubnetGroupName :: !Text,
    _mdsgSubnetIds :: ![Text]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ModifyDBSubnetGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdsgDBSubnetGroupDescription' - The description for the DB subnet group.
--
-- * 'mdsgDBSubnetGroupName' - The name for the DB subnet group. This value is stored as a lowercase string. You can't modify the default subnet group.  Constraints: Must match the name of an existing DBSubnetGroup. Must not be default. Example: @mySubnetgroup@
--
-- * 'mdsgSubnetIds' - The EC2 subnet IDs for the DB subnet group.
modifyDBSubnetGroup ::
  -- | 'mdsgDBSubnetGroupName'
  Text ->
  ModifyDBSubnetGroup
modifyDBSubnetGroup pDBSubnetGroupName_ =
  ModifyDBSubnetGroup'
    { _mdsgDBSubnetGroupDescription =
        Nothing,
      _mdsgDBSubnetGroupName = pDBSubnetGroupName_,
      _mdsgSubnetIds = mempty
    }

-- | The description for the DB subnet group.
mdsgDBSubnetGroupDescription :: Lens' ModifyDBSubnetGroup (Maybe Text)
mdsgDBSubnetGroupDescription = lens _mdsgDBSubnetGroupDescription (\s a -> s {_mdsgDBSubnetGroupDescription = a})

-- | The name for the DB subnet group. This value is stored as a lowercase string. You can't modify the default subnet group.  Constraints: Must match the name of an existing DBSubnetGroup. Must not be default. Example: @mySubnetgroup@
mdsgDBSubnetGroupName :: Lens' ModifyDBSubnetGroup Text
mdsgDBSubnetGroupName = lens _mdsgDBSubnetGroupName (\s a -> s {_mdsgDBSubnetGroupName = a})

-- | The EC2 subnet IDs for the DB subnet group.
mdsgSubnetIds :: Lens' ModifyDBSubnetGroup [Text]
mdsgSubnetIds = lens _mdsgSubnetIds (\s a -> s {_mdsgSubnetIds = a}) . _Coerce

instance AWSRequest ModifyDBSubnetGroup where
  type
    Rs ModifyDBSubnetGroup =
      ModifyDBSubnetGroupResponse
  request = postQuery rds
  response =
    receiveXMLWrapper
      "ModifyDBSubnetGroupResult"
      ( \s h x ->
          ModifyDBSubnetGroupResponse'
            <$> (x .@? "DBSubnetGroup") <*> (pure (fromEnum s))
      )

instance Hashable ModifyDBSubnetGroup

instance NFData ModifyDBSubnetGroup

instance ToHeaders ModifyDBSubnetGroup where
  toHeaders = const mempty

instance ToPath ModifyDBSubnetGroup where
  toPath = const "/"

instance ToQuery ModifyDBSubnetGroup where
  toQuery ModifyDBSubnetGroup' {..} =
    mconcat
      [ "Action" =: ("ModifyDBSubnetGroup" :: ByteString),
        "Version" =: ("2014-10-31" :: ByteString),
        "DBSubnetGroupDescription"
          =: _mdsgDBSubnetGroupDescription,
        "DBSubnetGroupName" =: _mdsgDBSubnetGroupName,
        "SubnetIds"
          =: toQueryList "SubnetIdentifier" _mdsgSubnetIds
      ]

-- | /See:/ 'modifyDBSubnetGroupResponse' smart constructor.
data ModifyDBSubnetGroupResponse = ModifyDBSubnetGroupResponse'
  { _mdsgrrsDBSubnetGroup ::
      !( Maybe
           DBSubnetGroup
       ),
    _mdsgrrsResponseStatus ::
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

-- | Creates a value of 'ModifyDBSubnetGroupResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mdsgrrsDBSubnetGroup' - Undocumented member.
--
-- * 'mdsgrrsResponseStatus' - -- | The response status code.
modifyDBSubnetGroupResponse ::
  -- | 'mdsgrrsResponseStatus'
  Int ->
  ModifyDBSubnetGroupResponse
modifyDBSubnetGroupResponse pResponseStatus_ =
  ModifyDBSubnetGroupResponse'
    { _mdsgrrsDBSubnetGroup =
        Nothing,
      _mdsgrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
mdsgrrsDBSubnetGroup :: Lens' ModifyDBSubnetGroupResponse (Maybe DBSubnetGroup)
mdsgrrsDBSubnetGroup = lens _mdsgrrsDBSubnetGroup (\s a -> s {_mdsgrrsDBSubnetGroup = a})

-- | -- | The response status code.
mdsgrrsResponseStatus :: Lens' ModifyDBSubnetGroupResponse Int
mdsgrrsResponseStatus = lens _mdsgrrsResponseStatus (\s a -> s {_mdsgrrsResponseStatus = a})

instance NFData ModifyDBSubnetGroupResponse
