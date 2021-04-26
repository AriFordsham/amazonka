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
-- Module      : Network.AWS.RDS.ResetDBClusterParameterGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the parameters of a DB cluster parameter group to the default
-- value. To reset specific parameters submit a list of the following:
-- @ParameterName@ and @ApplyMethod@. To reset the entire DB cluster
-- parameter group, specify the @DBClusterParameterGroupName@ and
-- @ResetAllParameters@ parameters.
--
-- When resetting the entire group, dynamic parameters are updated
-- immediately and static parameters are set to @pending-reboot@ to take
-- effect on the next DB instance restart or @RebootDBInstance@ request.
-- You must call @RebootDBInstance@ for every DB instance in your DB
-- cluster that you want the updated static parameter to apply to.
--
-- For more information on Amazon Aurora, see
-- <https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/CHAP_AuroraOverview.html What Is Amazon Aurora?>
-- in the /Amazon Aurora User Guide./
--
-- This action only applies to Aurora DB clusters.
module Network.AWS.RDS.ResetDBClusterParameterGroup
  ( -- * Creating a Request
    ResetDBClusterParameterGroup (..),
    newResetDBClusterParameterGroup,

    -- * Request Lenses
    resetDBClusterParameterGroup_resetAllParameters,
    resetDBClusterParameterGroup_parameters,
    resetDBClusterParameterGroup_dBClusterParameterGroupName,

    -- * Destructuring the Response
    DBClusterParameterGroupNameMessage (..),
    newDBClusterParameterGroupNameMessage,

    -- * Response Lenses
    dBClusterParameterGroupNameMessage_dBClusterParameterGroupName,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types
import Network.AWS.RDS.Types.DBClusterParameterGroupNameMessage
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newResetDBClusterParameterGroup' smart constructor.
data ResetDBClusterParameterGroup = ResetDBClusterParameterGroup'
  { -- | A value that indicates whether to reset all parameters in the DB cluster
    -- parameter group to their default values. You can\'t use this parameter
    -- if there is a list of parameter names specified for the @Parameters@
    -- parameter.
    resetAllParameters :: Prelude.Maybe Prelude.Bool,
    -- | A list of parameter names in the DB cluster parameter group to reset to
    -- the default values. You can\'t use this parameter if the
    -- @ResetAllParameters@ parameter is enabled.
    parameters :: Prelude.Maybe [Parameter],
    -- | The name of the DB cluster parameter group to reset.
    dBClusterParameterGroupName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ResetDBClusterParameterGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resetAllParameters', 'resetDBClusterParameterGroup_resetAllParameters' - A value that indicates whether to reset all parameters in the DB cluster
-- parameter group to their default values. You can\'t use this parameter
-- if there is a list of parameter names specified for the @Parameters@
-- parameter.
--
-- 'parameters', 'resetDBClusterParameterGroup_parameters' - A list of parameter names in the DB cluster parameter group to reset to
-- the default values. You can\'t use this parameter if the
-- @ResetAllParameters@ parameter is enabled.
--
-- 'dBClusterParameterGroupName', 'resetDBClusterParameterGroup_dBClusterParameterGroupName' - The name of the DB cluster parameter group to reset.
newResetDBClusterParameterGroup ::
  -- | 'dBClusterParameterGroupName'
  Prelude.Text ->
  ResetDBClusterParameterGroup
newResetDBClusterParameterGroup
  pDBClusterParameterGroupName_ =
    ResetDBClusterParameterGroup'
      { resetAllParameters =
          Prelude.Nothing,
        parameters = Prelude.Nothing,
        dBClusterParameterGroupName =
          pDBClusterParameterGroupName_
      }

-- | A value that indicates whether to reset all parameters in the DB cluster
-- parameter group to their default values. You can\'t use this parameter
-- if there is a list of parameter names specified for the @Parameters@
-- parameter.
resetDBClusterParameterGroup_resetAllParameters :: Lens.Lens' ResetDBClusterParameterGroup (Prelude.Maybe Prelude.Bool)
resetDBClusterParameterGroup_resetAllParameters = Lens.lens (\ResetDBClusterParameterGroup' {resetAllParameters} -> resetAllParameters) (\s@ResetDBClusterParameterGroup' {} a -> s {resetAllParameters = a} :: ResetDBClusterParameterGroup)

-- | A list of parameter names in the DB cluster parameter group to reset to
-- the default values. You can\'t use this parameter if the
-- @ResetAllParameters@ parameter is enabled.
resetDBClusterParameterGroup_parameters :: Lens.Lens' ResetDBClusterParameterGroup (Prelude.Maybe [Parameter])
resetDBClusterParameterGroup_parameters = Lens.lens (\ResetDBClusterParameterGroup' {parameters} -> parameters) (\s@ResetDBClusterParameterGroup' {} a -> s {parameters = a} :: ResetDBClusterParameterGroup) Prelude.. Lens.mapping Prelude._Coerce

-- | The name of the DB cluster parameter group to reset.
resetDBClusterParameterGroup_dBClusterParameterGroupName :: Lens.Lens' ResetDBClusterParameterGroup Prelude.Text
resetDBClusterParameterGroup_dBClusterParameterGroupName = Lens.lens (\ResetDBClusterParameterGroup' {dBClusterParameterGroupName} -> dBClusterParameterGroupName) (\s@ResetDBClusterParameterGroup' {} a -> s {dBClusterParameterGroupName = a} :: ResetDBClusterParameterGroup)

instance
  Prelude.AWSRequest
    ResetDBClusterParameterGroup
  where
  type
    Rs ResetDBClusterParameterGroup =
      DBClusterParameterGroupNameMessage
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "ResetDBClusterParameterGroupResult"
      (\s h x -> Prelude.parseXML x)

instance
  Prelude.Hashable
    ResetDBClusterParameterGroup

instance Prelude.NFData ResetDBClusterParameterGroup

instance
  Prelude.ToHeaders
    ResetDBClusterParameterGroup
  where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath ResetDBClusterParameterGroup where
  toPath = Prelude.const "/"

instance Prelude.ToQuery ResetDBClusterParameterGroup where
  toQuery ResetDBClusterParameterGroup' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ( "ResetDBClusterParameterGroup" ::
                         Prelude.ByteString
                     ),
        "Version"
          Prelude.=: ("2014-10-31" :: Prelude.ByteString),
        "ResetAllParameters" Prelude.=: resetAllParameters,
        "Parameters"
          Prelude.=: Prelude.toQuery
            ( Prelude.toQueryList "Parameter"
                Prelude.<$> parameters
            ),
        "DBClusterParameterGroupName"
          Prelude.=: dBClusterParameterGroupName
      ]
