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
-- Module      : Network.AWS.RDS.AddRoleToDBInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Associates an AWS Identity and Access Management (IAM) role with a DB
-- instance.
--
-- To add a role to a DB instance, the status of the DB instance must be
-- @available@.
module Network.AWS.RDS.AddRoleToDBInstance
  ( -- * Creating a Request
    AddRoleToDBInstance (..),
    newAddRoleToDBInstance,

    -- * Request Lenses
    addRoleToDBInstance_dBInstanceIdentifier,
    addRoleToDBInstance_roleArn,
    addRoleToDBInstance_featureName,

    -- * Destructuring the Response
    AddRoleToDBInstanceResponse (..),
    newAddRoleToDBInstanceResponse,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newAddRoleToDBInstance' smart constructor.
data AddRoleToDBInstance = AddRoleToDBInstance'
  { -- | The name of the DB instance to associate the IAM role with.
    dBInstanceIdentifier :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the IAM role to associate with the DB
    -- instance, for example @arn:aws:iam::123456789012:role\/AccessRole@.
    roleArn :: Prelude.Text,
    -- | The name of the feature for the DB instance that the IAM role is to be
    -- associated with. For the list of supported feature names, see
    -- DBEngineVersion.
    featureName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AddRoleToDBInstance' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBInstanceIdentifier', 'addRoleToDBInstance_dBInstanceIdentifier' - The name of the DB instance to associate the IAM role with.
--
-- 'roleArn', 'addRoleToDBInstance_roleArn' - The Amazon Resource Name (ARN) of the IAM role to associate with the DB
-- instance, for example @arn:aws:iam::123456789012:role\/AccessRole@.
--
-- 'featureName', 'addRoleToDBInstance_featureName' - The name of the feature for the DB instance that the IAM role is to be
-- associated with. For the list of supported feature names, see
-- DBEngineVersion.
newAddRoleToDBInstance ::
  -- | 'dBInstanceIdentifier'
  Prelude.Text ->
  -- | 'roleArn'
  Prelude.Text ->
  -- | 'featureName'
  Prelude.Text ->
  AddRoleToDBInstance
newAddRoleToDBInstance
  pDBInstanceIdentifier_
  pRoleArn_
  pFeatureName_ =
    AddRoleToDBInstance'
      { dBInstanceIdentifier =
          pDBInstanceIdentifier_,
        roleArn = pRoleArn_,
        featureName = pFeatureName_
      }

-- | The name of the DB instance to associate the IAM role with.
addRoleToDBInstance_dBInstanceIdentifier :: Lens.Lens' AddRoleToDBInstance Prelude.Text
addRoleToDBInstance_dBInstanceIdentifier = Lens.lens (\AddRoleToDBInstance' {dBInstanceIdentifier} -> dBInstanceIdentifier) (\s@AddRoleToDBInstance' {} a -> s {dBInstanceIdentifier = a} :: AddRoleToDBInstance)

-- | The Amazon Resource Name (ARN) of the IAM role to associate with the DB
-- instance, for example @arn:aws:iam::123456789012:role\/AccessRole@.
addRoleToDBInstance_roleArn :: Lens.Lens' AddRoleToDBInstance Prelude.Text
addRoleToDBInstance_roleArn = Lens.lens (\AddRoleToDBInstance' {roleArn} -> roleArn) (\s@AddRoleToDBInstance' {} a -> s {roleArn = a} :: AddRoleToDBInstance)

-- | The name of the feature for the DB instance that the IAM role is to be
-- associated with. For the list of supported feature names, see
-- DBEngineVersion.
addRoleToDBInstance_featureName :: Lens.Lens' AddRoleToDBInstance Prelude.Text
addRoleToDBInstance_featureName = Lens.lens (\AddRoleToDBInstance' {featureName} -> featureName) (\s@AddRoleToDBInstance' {} a -> s {featureName = a} :: AddRoleToDBInstance)

instance Prelude.AWSRequest AddRoleToDBInstance where
  type
    Rs AddRoleToDBInstance =
      AddRoleToDBInstanceResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveNull AddRoleToDBInstanceResponse'

instance Prelude.Hashable AddRoleToDBInstance

instance Prelude.NFData AddRoleToDBInstance

instance Prelude.ToHeaders AddRoleToDBInstance where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath AddRoleToDBInstance where
  toPath = Prelude.const "/"

instance Prelude.ToQuery AddRoleToDBInstance where
  toQuery AddRoleToDBInstance' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("AddRoleToDBInstance" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2014-10-31" :: Prelude.ByteString),
        "DBInstanceIdentifier"
          Prelude.=: dBInstanceIdentifier,
        "RoleArn" Prelude.=: roleArn,
        "FeatureName" Prelude.=: featureName
      ]

-- | /See:/ 'newAddRoleToDBInstanceResponse' smart constructor.
data AddRoleToDBInstanceResponse = AddRoleToDBInstanceResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AddRoleToDBInstanceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newAddRoleToDBInstanceResponse ::
  AddRoleToDBInstanceResponse
newAddRoleToDBInstanceResponse =
  AddRoleToDBInstanceResponse'

instance Prelude.NFData AddRoleToDBInstanceResponse
