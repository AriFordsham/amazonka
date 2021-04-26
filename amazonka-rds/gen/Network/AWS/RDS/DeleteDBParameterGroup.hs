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
-- Module      : Network.AWS.RDS.DeleteDBParameterGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a specified DB parameter group. The DB parameter group to be
-- deleted can\'t be associated with any DB instances.
module Network.AWS.RDS.DeleteDBParameterGroup
  ( -- * Creating a Request
    DeleteDBParameterGroup (..),
    newDeleteDBParameterGroup,

    -- * Request Lenses
    deleteDBParameterGroup_dBParameterGroupName,

    -- * Destructuring the Response
    DeleteDBParameterGroupResponse (..),
    newDeleteDBParameterGroupResponse,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newDeleteDBParameterGroup' smart constructor.
data DeleteDBParameterGroup = DeleteDBParameterGroup'
  { -- | The name of the DB parameter group.
    --
    -- Constraints:
    --
    -- -   Must be the name of an existing DB parameter group
    --
    -- -   You can\'t delete a default DB parameter group
    --
    -- -   Can\'t be associated with any DB instances
    dBParameterGroupName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DeleteDBParameterGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBParameterGroupName', 'deleteDBParameterGroup_dBParameterGroupName' - The name of the DB parameter group.
--
-- Constraints:
--
-- -   Must be the name of an existing DB parameter group
--
-- -   You can\'t delete a default DB parameter group
--
-- -   Can\'t be associated with any DB instances
newDeleteDBParameterGroup ::
  -- | 'dBParameterGroupName'
  Prelude.Text ->
  DeleteDBParameterGroup
newDeleteDBParameterGroup pDBParameterGroupName_ =
  DeleteDBParameterGroup'
    { dBParameterGroupName =
        pDBParameterGroupName_
    }

-- | The name of the DB parameter group.
--
-- Constraints:
--
-- -   Must be the name of an existing DB parameter group
--
-- -   You can\'t delete a default DB parameter group
--
-- -   Can\'t be associated with any DB instances
deleteDBParameterGroup_dBParameterGroupName :: Lens.Lens' DeleteDBParameterGroup Prelude.Text
deleteDBParameterGroup_dBParameterGroupName = Lens.lens (\DeleteDBParameterGroup' {dBParameterGroupName} -> dBParameterGroupName) (\s@DeleteDBParameterGroup' {} a -> s {dBParameterGroupName = a} :: DeleteDBParameterGroup)

instance Prelude.AWSRequest DeleteDBParameterGroup where
  type
    Rs DeleteDBParameterGroup =
      DeleteDBParameterGroupResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveNull
      DeleteDBParameterGroupResponse'

instance Prelude.Hashable DeleteDBParameterGroup

instance Prelude.NFData DeleteDBParameterGroup

instance Prelude.ToHeaders DeleteDBParameterGroup where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath DeleteDBParameterGroup where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DeleteDBParameterGroup where
  toQuery DeleteDBParameterGroup' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("DeleteDBParameterGroup" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2014-10-31" :: Prelude.ByteString),
        "DBParameterGroupName"
          Prelude.=: dBParameterGroupName
      ]

-- | /See:/ 'newDeleteDBParameterGroupResponse' smart constructor.
data DeleteDBParameterGroupResponse = DeleteDBParameterGroupResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DeleteDBParameterGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newDeleteDBParameterGroupResponse ::
  DeleteDBParameterGroupResponse
newDeleteDBParameterGroupResponse =
  DeleteDBParameterGroupResponse'

instance
  Prelude.NFData
    DeleteDBParameterGroupResponse
