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
-- Module      : Network.AWS.RDS.DeleteDBSubnetGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a DB subnet group.
--
-- The specified database subnet group must not be associated with any DB
-- instances.
module Network.AWS.RDS.DeleteDBSubnetGroup
  ( -- * Creating a Request
    DeleteDBSubnetGroup (..),
    newDeleteDBSubnetGroup,

    -- * Request Lenses
    deleteDBSubnetGroup_dBSubnetGroupName,

    -- * Destructuring the Response
    DeleteDBSubnetGroupResponse (..),
    newDeleteDBSubnetGroupResponse,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newDeleteDBSubnetGroup' smart constructor.
data DeleteDBSubnetGroup = DeleteDBSubnetGroup'
  { -- | The name of the database subnet group to delete.
    --
    -- You can\'t delete the default subnet group.
    --
    -- Constraints:
    --
    -- Constraints: Must match the name of an existing DBSubnetGroup. Must not
    -- be default.
    --
    -- Example: @mySubnetgroup@
    dBSubnetGroupName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DeleteDBSubnetGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBSubnetGroupName', 'deleteDBSubnetGroup_dBSubnetGroupName' - The name of the database subnet group to delete.
--
-- You can\'t delete the default subnet group.
--
-- Constraints:
--
-- Constraints: Must match the name of an existing DBSubnetGroup. Must not
-- be default.
--
-- Example: @mySubnetgroup@
newDeleteDBSubnetGroup ::
  -- | 'dBSubnetGroupName'
  Prelude.Text ->
  DeleteDBSubnetGroup
newDeleteDBSubnetGroup pDBSubnetGroupName_ =
  DeleteDBSubnetGroup'
    { dBSubnetGroupName =
        pDBSubnetGroupName_
    }

-- | The name of the database subnet group to delete.
--
-- You can\'t delete the default subnet group.
--
-- Constraints:
--
-- Constraints: Must match the name of an existing DBSubnetGroup. Must not
-- be default.
--
-- Example: @mySubnetgroup@
deleteDBSubnetGroup_dBSubnetGroupName :: Lens.Lens' DeleteDBSubnetGroup Prelude.Text
deleteDBSubnetGroup_dBSubnetGroupName = Lens.lens (\DeleteDBSubnetGroup' {dBSubnetGroupName} -> dBSubnetGroupName) (\s@DeleteDBSubnetGroup' {} a -> s {dBSubnetGroupName = a} :: DeleteDBSubnetGroup)

instance Prelude.AWSRequest DeleteDBSubnetGroup where
  type
    Rs DeleteDBSubnetGroup =
      DeleteDBSubnetGroupResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveNull DeleteDBSubnetGroupResponse'

instance Prelude.Hashable DeleteDBSubnetGroup

instance Prelude.NFData DeleteDBSubnetGroup

instance Prelude.ToHeaders DeleteDBSubnetGroup where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath DeleteDBSubnetGroup where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DeleteDBSubnetGroup where
  toQuery DeleteDBSubnetGroup' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("DeleteDBSubnetGroup" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2014-10-31" :: Prelude.ByteString),
        "DBSubnetGroupName" Prelude.=: dBSubnetGroupName
      ]

-- | /See:/ 'newDeleteDBSubnetGroupResponse' smart constructor.
data DeleteDBSubnetGroupResponse = DeleteDBSubnetGroupResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DeleteDBSubnetGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteDBSubnetGroupResponse ::
  DeleteDBSubnetGroupResponse
newDeleteDBSubnetGroupResponse =
  DeleteDBSubnetGroupResponse'

instance Prelude.NFData DeleteDBSubnetGroupResponse
