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
-- Module      : Network.AWS.RDS.ResetDBParameterGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the parameters of a DB parameter group to the engine\/system
-- default value. To reset specific parameters, provide a list of the
-- following: @ParameterName@ and @ApplyMethod@. To reset the entire DB
-- parameter group, specify the @DBParameterGroup@ name and
-- @ResetAllParameters@ parameters. When resetting the entire group,
-- dynamic parameters are updated immediately and static parameters are set
-- to @pending-reboot@ to take effect on the next DB instance restart or
-- @RebootDBInstance@ request.
module Network.AWS.RDS.ResetDBParameterGroup
  ( -- * Creating a Request
    ResetDBParameterGroup (..),
    newResetDBParameterGroup,

    -- * Request Lenses
    resetDBParameterGroup_resetAllParameters,
    resetDBParameterGroup_parameters,
    resetDBParameterGroup_dBParameterGroupName,

    -- * Destructuring the Response
    DBParameterGroupNameMessage (..),
    newDBParameterGroupNameMessage,

    -- * Response Lenses
    dBParameterGroupNameMessage_dBParameterGroupName,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types
import Network.AWS.RDS.Types.DBParameterGroupNameMessage
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newResetDBParameterGroup' smart constructor.
data ResetDBParameterGroup = ResetDBParameterGroup'
  { -- | A value that indicates whether to reset all parameters in the DB
    -- parameter group to default values. By default, all parameters in the DB
    -- parameter group are reset to default values.
    resetAllParameters :: Prelude.Maybe Prelude.Bool,
    -- | To reset the entire DB parameter group, specify the @DBParameterGroup@
    -- name and @ResetAllParameters@ parameters. To reset specific parameters,
    -- provide a list of the following: @ParameterName@ and @ApplyMethod@. A
    -- maximum of 20 parameters can be modified in a single request.
    --
    -- __MySQL__
    --
    -- Valid Values (for Apply method): @immediate@ | @pending-reboot@
    --
    -- You can use the immediate value with dynamic parameters only. You can
    -- use the @pending-reboot@ value for both dynamic and static parameters,
    -- and changes are applied when DB instance reboots.
    --
    -- __MariaDB__
    --
    -- Valid Values (for Apply method): @immediate@ | @pending-reboot@
    --
    -- You can use the immediate value with dynamic parameters only. You can
    -- use the @pending-reboot@ value for both dynamic and static parameters,
    -- and changes are applied when DB instance reboots.
    --
    -- __Oracle__
    --
    -- Valid Values (for Apply method): @pending-reboot@
    parameters :: Prelude.Maybe [Parameter],
    -- | The name of the DB parameter group.
    --
    -- Constraints:
    --
    -- -   Must match the name of an existing @DBParameterGroup@.
    dBParameterGroupName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ResetDBParameterGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resetAllParameters', 'resetDBParameterGroup_resetAllParameters' - A value that indicates whether to reset all parameters in the DB
-- parameter group to default values. By default, all parameters in the DB
-- parameter group are reset to default values.
--
-- 'parameters', 'resetDBParameterGroup_parameters' - To reset the entire DB parameter group, specify the @DBParameterGroup@
-- name and @ResetAllParameters@ parameters. To reset specific parameters,
-- provide a list of the following: @ParameterName@ and @ApplyMethod@. A
-- maximum of 20 parameters can be modified in a single request.
--
-- __MySQL__
--
-- Valid Values (for Apply method): @immediate@ | @pending-reboot@
--
-- You can use the immediate value with dynamic parameters only. You can
-- use the @pending-reboot@ value for both dynamic and static parameters,
-- and changes are applied when DB instance reboots.
--
-- __MariaDB__
--
-- Valid Values (for Apply method): @immediate@ | @pending-reboot@
--
-- You can use the immediate value with dynamic parameters only. You can
-- use the @pending-reboot@ value for both dynamic and static parameters,
-- and changes are applied when DB instance reboots.
--
-- __Oracle__
--
-- Valid Values (for Apply method): @pending-reboot@
--
-- 'dBParameterGroupName', 'resetDBParameterGroup_dBParameterGroupName' - The name of the DB parameter group.
--
-- Constraints:
--
-- -   Must match the name of an existing @DBParameterGroup@.
newResetDBParameterGroup ::
  -- | 'dBParameterGroupName'
  Prelude.Text ->
  ResetDBParameterGroup
newResetDBParameterGroup pDBParameterGroupName_ =
  ResetDBParameterGroup'
    { resetAllParameters =
        Prelude.Nothing,
      parameters = Prelude.Nothing,
      dBParameterGroupName = pDBParameterGroupName_
    }

-- | A value that indicates whether to reset all parameters in the DB
-- parameter group to default values. By default, all parameters in the DB
-- parameter group are reset to default values.
resetDBParameterGroup_resetAllParameters :: Lens.Lens' ResetDBParameterGroup (Prelude.Maybe Prelude.Bool)
resetDBParameterGroup_resetAllParameters = Lens.lens (\ResetDBParameterGroup' {resetAllParameters} -> resetAllParameters) (\s@ResetDBParameterGroup' {} a -> s {resetAllParameters = a} :: ResetDBParameterGroup)

-- | To reset the entire DB parameter group, specify the @DBParameterGroup@
-- name and @ResetAllParameters@ parameters. To reset specific parameters,
-- provide a list of the following: @ParameterName@ and @ApplyMethod@. A
-- maximum of 20 parameters can be modified in a single request.
--
-- __MySQL__
--
-- Valid Values (for Apply method): @immediate@ | @pending-reboot@
--
-- You can use the immediate value with dynamic parameters only. You can
-- use the @pending-reboot@ value for both dynamic and static parameters,
-- and changes are applied when DB instance reboots.
--
-- __MariaDB__
--
-- Valid Values (for Apply method): @immediate@ | @pending-reboot@
--
-- You can use the immediate value with dynamic parameters only. You can
-- use the @pending-reboot@ value for both dynamic and static parameters,
-- and changes are applied when DB instance reboots.
--
-- __Oracle__
--
-- Valid Values (for Apply method): @pending-reboot@
resetDBParameterGroup_parameters :: Lens.Lens' ResetDBParameterGroup (Prelude.Maybe [Parameter])
resetDBParameterGroup_parameters = Lens.lens (\ResetDBParameterGroup' {parameters} -> parameters) (\s@ResetDBParameterGroup' {} a -> s {parameters = a} :: ResetDBParameterGroup) Prelude.. Lens.mapping Prelude._Coerce

-- | The name of the DB parameter group.
--
-- Constraints:
--
-- -   Must match the name of an existing @DBParameterGroup@.
resetDBParameterGroup_dBParameterGroupName :: Lens.Lens' ResetDBParameterGroup Prelude.Text
resetDBParameterGroup_dBParameterGroupName = Lens.lens (\ResetDBParameterGroup' {dBParameterGroupName} -> dBParameterGroupName) (\s@ResetDBParameterGroup' {} a -> s {dBParameterGroupName = a} :: ResetDBParameterGroup)

instance Prelude.AWSRequest ResetDBParameterGroup where
  type
    Rs ResetDBParameterGroup =
      DBParameterGroupNameMessage
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "ResetDBParameterGroupResult"
      (\s h x -> Prelude.parseXML x)

instance Prelude.Hashable ResetDBParameterGroup

instance Prelude.NFData ResetDBParameterGroup

instance Prelude.ToHeaders ResetDBParameterGroup where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath ResetDBParameterGroup where
  toPath = Prelude.const "/"

instance Prelude.ToQuery ResetDBParameterGroup where
  toQuery ResetDBParameterGroup' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("ResetDBParameterGroup" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2014-10-31" :: Prelude.ByteString),
        "ResetAllParameters" Prelude.=: resetAllParameters,
        "Parameters"
          Prelude.=: Prelude.toQuery
            ( Prelude.toQueryList "Parameter"
                Prelude.<$> parameters
            ),
        "DBParameterGroupName"
          Prelude.=: dBParameterGroupName
      ]
