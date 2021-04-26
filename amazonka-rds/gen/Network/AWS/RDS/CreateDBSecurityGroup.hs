{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.RDS.CreateDBSecurityGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new DB security group. DB security groups control access to a
-- DB instance.
--
-- A DB security group controls access to EC2-Classic DB instances that are
-- not in a VPC.
module Network.AWS.RDS.CreateDBSecurityGroup
  ( -- * Creating a Request
    CreateDBSecurityGroup (..),
    newCreateDBSecurityGroup,

    -- * Request Lenses
    createDBSecurityGroup_tags,
    createDBSecurityGroup_dBSecurityGroupName,
    createDBSecurityGroup_dBSecurityGroupDescription,

    -- * Destructuring the Response
    CreateDBSecurityGroupResponse (..),
    newCreateDBSecurityGroupResponse,

    -- * Response Lenses
    createDBSecurityGroupResponse_dBSecurityGroup,
    createDBSecurityGroupResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types
import Network.AWS.RDS.Types.DBSecurityGroup
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newCreateDBSecurityGroup' smart constructor.
data CreateDBSecurityGroup = CreateDBSecurityGroup'
  { -- | Tags to assign to the DB security group.
    tags :: Prelude.Maybe [Tag],
    -- | The name for the DB security group. This value is stored as a lowercase
    -- string.
    --
    -- Constraints:
    --
    -- -   Must be 1 to 255 letters, numbers, or hyphens.
    --
    -- -   First character must be a letter
    --
    -- -   Can\'t end with a hyphen or contain two consecutive hyphens
    --
    -- -   Must not be \"Default\"
    --
    -- Example: @mysecuritygroup@
    dBSecurityGroupName :: Prelude.Text,
    -- | The description for the DB security group.
    dBSecurityGroupDescription :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateDBSecurityGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createDBSecurityGroup_tags' - Tags to assign to the DB security group.
--
-- 'dBSecurityGroupName', 'createDBSecurityGroup_dBSecurityGroupName' - The name for the DB security group. This value is stored as a lowercase
-- string.
--
-- Constraints:
--
-- -   Must be 1 to 255 letters, numbers, or hyphens.
--
-- -   First character must be a letter
--
-- -   Can\'t end with a hyphen or contain two consecutive hyphens
--
-- -   Must not be \"Default\"
--
-- Example: @mysecuritygroup@
--
-- 'dBSecurityGroupDescription', 'createDBSecurityGroup_dBSecurityGroupDescription' - The description for the DB security group.
newCreateDBSecurityGroup ::
  -- | 'dBSecurityGroupName'
  Prelude.Text ->
  -- | 'dBSecurityGroupDescription'
  Prelude.Text ->
  CreateDBSecurityGroup
newCreateDBSecurityGroup
  pDBSecurityGroupName_
  pDBSecurityGroupDescription_ =
    CreateDBSecurityGroup'
      { tags = Prelude.Nothing,
        dBSecurityGroupName = pDBSecurityGroupName_,
        dBSecurityGroupDescription =
          pDBSecurityGroupDescription_
      }

-- | Tags to assign to the DB security group.
createDBSecurityGroup_tags :: Lens.Lens' CreateDBSecurityGroup (Prelude.Maybe [Tag])
createDBSecurityGroup_tags = Lens.lens (\CreateDBSecurityGroup' {tags} -> tags) (\s@CreateDBSecurityGroup' {} a -> s {tags = a} :: CreateDBSecurityGroup) Prelude.. Lens.mapping Prelude._Coerce

-- | The name for the DB security group. This value is stored as a lowercase
-- string.
--
-- Constraints:
--
-- -   Must be 1 to 255 letters, numbers, or hyphens.
--
-- -   First character must be a letter
--
-- -   Can\'t end with a hyphen or contain two consecutive hyphens
--
-- -   Must not be \"Default\"
--
-- Example: @mysecuritygroup@
createDBSecurityGroup_dBSecurityGroupName :: Lens.Lens' CreateDBSecurityGroup Prelude.Text
createDBSecurityGroup_dBSecurityGroupName = Lens.lens (\CreateDBSecurityGroup' {dBSecurityGroupName} -> dBSecurityGroupName) (\s@CreateDBSecurityGroup' {} a -> s {dBSecurityGroupName = a} :: CreateDBSecurityGroup)

-- | The description for the DB security group.
createDBSecurityGroup_dBSecurityGroupDescription :: Lens.Lens' CreateDBSecurityGroup Prelude.Text
createDBSecurityGroup_dBSecurityGroupDescription = Lens.lens (\CreateDBSecurityGroup' {dBSecurityGroupDescription} -> dBSecurityGroupDescription) (\s@CreateDBSecurityGroup' {} a -> s {dBSecurityGroupDescription = a} :: CreateDBSecurityGroup)

instance Prelude.AWSRequest CreateDBSecurityGroup where
  type
    Rs CreateDBSecurityGroup =
      CreateDBSecurityGroupResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "CreateDBSecurityGroupResult"
      ( \s h x ->
          CreateDBSecurityGroupResponse'
            Prelude.<$> (x Prelude..@? "DBSecurityGroup")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateDBSecurityGroup

instance Prelude.NFData CreateDBSecurityGroup

instance Prelude.ToHeaders CreateDBSecurityGroup where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath CreateDBSecurityGroup where
  toPath = Prelude.const "/"

instance Prelude.ToQuery CreateDBSecurityGroup where
  toQuery CreateDBSecurityGroup' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("CreateDBSecurityGroup" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2014-10-31" :: Prelude.ByteString),
        "Tags"
          Prelude.=: Prelude.toQuery
            (Prelude.toQueryList "Tag" Prelude.<$> tags),
        "DBSecurityGroupName" Prelude.=: dBSecurityGroupName,
        "DBSecurityGroupDescription"
          Prelude.=: dBSecurityGroupDescription
      ]

-- | /See:/ 'newCreateDBSecurityGroupResponse' smart constructor.
data CreateDBSecurityGroupResponse = CreateDBSecurityGroupResponse'
  { dBSecurityGroup :: Prelude.Maybe DBSecurityGroup,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateDBSecurityGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBSecurityGroup', 'createDBSecurityGroupResponse_dBSecurityGroup' - Undocumented member.
--
-- 'httpStatus', 'createDBSecurityGroupResponse_httpStatus' - The response's http status code.
newCreateDBSecurityGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateDBSecurityGroupResponse
newCreateDBSecurityGroupResponse pHttpStatus_ =
  CreateDBSecurityGroupResponse'
    { dBSecurityGroup =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
createDBSecurityGroupResponse_dBSecurityGroup :: Lens.Lens' CreateDBSecurityGroupResponse (Prelude.Maybe DBSecurityGroup)
createDBSecurityGroupResponse_dBSecurityGroup = Lens.lens (\CreateDBSecurityGroupResponse' {dBSecurityGroup} -> dBSecurityGroup) (\s@CreateDBSecurityGroupResponse' {} a -> s {dBSecurityGroup = a} :: CreateDBSecurityGroupResponse)

-- | The response's http status code.
createDBSecurityGroupResponse_httpStatus :: Lens.Lens' CreateDBSecurityGroupResponse Prelude.Int
createDBSecurityGroupResponse_httpStatus = Lens.lens (\CreateDBSecurityGroupResponse' {httpStatus} -> httpStatus) (\s@CreateDBSecurityGroupResponse' {} a -> s {httpStatus = a} :: CreateDBSecurityGroupResponse)

instance Prelude.NFData CreateDBSecurityGroupResponse
