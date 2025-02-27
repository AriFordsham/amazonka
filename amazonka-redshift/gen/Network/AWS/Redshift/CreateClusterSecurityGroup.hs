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
-- Module      : Network.AWS.Redshift.CreateClusterSecurityGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a new Amazon Redshift security group. You use security groups to
-- control access to non-VPC clusters.
--
-- For information about managing security groups, go to
-- <https://docs.aws.amazon.com/redshift/latest/mgmt/working-with-security-groups.html Amazon Redshift Cluster Security Groups>
-- in the /Amazon Redshift Cluster Management Guide/.
module Network.AWS.Redshift.CreateClusterSecurityGroup
  ( -- * Creating a Request
    CreateClusterSecurityGroup (..),
    newCreateClusterSecurityGroup,

    -- * Request Lenses
    createClusterSecurityGroup_tags,
    createClusterSecurityGroup_clusterSecurityGroupName,
    createClusterSecurityGroup_description,

    -- * Destructuring the Response
    CreateClusterSecurityGroupResponse (..),
    newCreateClusterSecurityGroupResponse,

    -- * Response Lenses
    createClusterSecurityGroupResponse_clusterSecurityGroup,
    createClusterSecurityGroupResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Redshift.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newCreateClusterSecurityGroup' smart constructor.
data CreateClusterSecurityGroup = CreateClusterSecurityGroup'
  { -- | A list of tag instances.
    tags :: Prelude.Maybe [Tag],
    -- | The name for the security group. Amazon Redshift stores the value as a
    -- lowercase string.
    --
    -- Constraints:
    --
    -- -   Must contain no more than 255 alphanumeric characters or hyphens.
    --
    -- -   Must not be \"Default\".
    --
    -- -   Must be unique for all security groups that are created by your AWS
    --     account.
    --
    -- Example: @examplesecuritygroup@
    clusterSecurityGroupName :: Prelude.Text,
    -- | A description for the security group.
    description :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateClusterSecurityGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createClusterSecurityGroup_tags' - A list of tag instances.
--
-- 'clusterSecurityGroupName', 'createClusterSecurityGroup_clusterSecurityGroupName' - The name for the security group. Amazon Redshift stores the value as a
-- lowercase string.
--
-- Constraints:
--
-- -   Must contain no more than 255 alphanumeric characters or hyphens.
--
-- -   Must not be \"Default\".
--
-- -   Must be unique for all security groups that are created by your AWS
--     account.
--
-- Example: @examplesecuritygroup@
--
-- 'description', 'createClusterSecurityGroup_description' - A description for the security group.
newCreateClusterSecurityGroup ::
  -- | 'clusterSecurityGroupName'
  Prelude.Text ->
  -- | 'description'
  Prelude.Text ->
  CreateClusterSecurityGroup
newCreateClusterSecurityGroup
  pClusterSecurityGroupName_
  pDescription_ =
    CreateClusterSecurityGroup'
      { tags = Prelude.Nothing,
        clusterSecurityGroupName =
          pClusterSecurityGroupName_,
        description = pDescription_
      }

-- | A list of tag instances.
createClusterSecurityGroup_tags :: Lens.Lens' CreateClusterSecurityGroup (Prelude.Maybe [Tag])
createClusterSecurityGroup_tags = Lens.lens (\CreateClusterSecurityGroup' {tags} -> tags) (\s@CreateClusterSecurityGroup' {} a -> s {tags = a} :: CreateClusterSecurityGroup) Prelude.. Lens.mapping Prelude._Coerce

-- | The name for the security group. Amazon Redshift stores the value as a
-- lowercase string.
--
-- Constraints:
--
-- -   Must contain no more than 255 alphanumeric characters or hyphens.
--
-- -   Must not be \"Default\".
--
-- -   Must be unique for all security groups that are created by your AWS
--     account.
--
-- Example: @examplesecuritygroup@
createClusterSecurityGroup_clusterSecurityGroupName :: Lens.Lens' CreateClusterSecurityGroup Prelude.Text
createClusterSecurityGroup_clusterSecurityGroupName = Lens.lens (\CreateClusterSecurityGroup' {clusterSecurityGroupName} -> clusterSecurityGroupName) (\s@CreateClusterSecurityGroup' {} a -> s {clusterSecurityGroupName = a} :: CreateClusterSecurityGroup)

-- | A description for the security group.
createClusterSecurityGroup_description :: Lens.Lens' CreateClusterSecurityGroup Prelude.Text
createClusterSecurityGroup_description = Lens.lens (\CreateClusterSecurityGroup' {description} -> description) (\s@CreateClusterSecurityGroup' {} a -> s {description = a} :: CreateClusterSecurityGroup)

instance
  Prelude.AWSRequest
    CreateClusterSecurityGroup
  where
  type
    Rs CreateClusterSecurityGroup =
      CreateClusterSecurityGroupResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "CreateClusterSecurityGroupResult"
      ( \s h x ->
          CreateClusterSecurityGroupResponse'
            Prelude.<$> (x Prelude..@? "ClusterSecurityGroup")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateClusterSecurityGroup

instance Prelude.NFData CreateClusterSecurityGroup

instance Prelude.ToHeaders CreateClusterSecurityGroup where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath CreateClusterSecurityGroup where
  toPath = Prelude.const "/"

instance Prelude.ToQuery CreateClusterSecurityGroup where
  toQuery CreateClusterSecurityGroup' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("CreateClusterSecurityGroup" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2012-12-01" :: Prelude.ByteString),
        "Tags"
          Prelude.=: Prelude.toQuery
            (Prelude.toQueryList "Tag" Prelude.<$> tags),
        "ClusterSecurityGroupName"
          Prelude.=: clusterSecurityGroupName,
        "Description" Prelude.=: description
      ]

-- | /See:/ 'newCreateClusterSecurityGroupResponse' smart constructor.
data CreateClusterSecurityGroupResponse = CreateClusterSecurityGroupResponse'
  { clusterSecurityGroup :: Prelude.Maybe ClusterSecurityGroup,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateClusterSecurityGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clusterSecurityGroup', 'createClusterSecurityGroupResponse_clusterSecurityGroup' - Undocumented member.
--
-- 'httpStatus', 'createClusterSecurityGroupResponse_httpStatus' - The response's http status code.
newCreateClusterSecurityGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateClusterSecurityGroupResponse
newCreateClusterSecurityGroupResponse pHttpStatus_ =
  CreateClusterSecurityGroupResponse'
    { clusterSecurityGroup =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
createClusterSecurityGroupResponse_clusterSecurityGroup :: Lens.Lens' CreateClusterSecurityGroupResponse (Prelude.Maybe ClusterSecurityGroup)
createClusterSecurityGroupResponse_clusterSecurityGroup = Lens.lens (\CreateClusterSecurityGroupResponse' {clusterSecurityGroup} -> clusterSecurityGroup) (\s@CreateClusterSecurityGroupResponse' {} a -> s {clusterSecurityGroup = a} :: CreateClusterSecurityGroupResponse)

-- | The response's http status code.
createClusterSecurityGroupResponse_httpStatus :: Lens.Lens' CreateClusterSecurityGroupResponse Prelude.Int
createClusterSecurityGroupResponse_httpStatus = Lens.lens (\CreateClusterSecurityGroupResponse' {httpStatus} -> httpStatus) (\s@CreateClusterSecurityGroupResponse' {} a -> s {httpStatus = a} :: CreateClusterSecurityGroupResponse)

instance
  Prelude.NFData
    CreateClusterSecurityGroupResponse
