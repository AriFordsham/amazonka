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
-- Module      : Network.AWS.EC2.BundleInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Bundles an Amazon instance store-backed Windows instance.
--
-- During bundling, only the root device volume (C:\\) is bundled. Data on
-- other instance store volumes is not preserved.
--
-- This action is not applicable for Linux\/Unix instances or Windows
-- instances that are backed by Amazon EBS.
module Network.AWS.EC2.BundleInstance
  ( -- * Creating a Request
    BundleInstance (..),
    newBundleInstance,

    -- * Request Lenses
    bundleInstance_dryRun,
    bundleInstance_instanceId,
    bundleInstance_storage,

    -- * Destructuring the Response
    BundleInstanceResponse (..),
    newBundleInstanceResponse,

    -- * Response Lenses
    bundleInstanceResponse_bundleTask,
    bundleInstanceResponse_httpStatus,
  )
where

import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Contains the parameters for BundleInstance.
--
-- /See:/ 'newBundleInstance' smart constructor.
data BundleInstance = BundleInstance'
  { -- | Checks whether you have the required permissions for the action, without
    -- actually making the request, and provides an error response. If you have
    -- the required permissions, the error response is @DryRunOperation@.
    -- Otherwise, it is @UnauthorizedOperation@.
    dryRun :: Prelude.Maybe Prelude.Bool,
    -- | The ID of the instance to bundle.
    --
    -- Type: String
    --
    -- Default: None
    --
    -- Required: Yes
    instanceId :: Prelude.Text,
    -- | The bucket in which to store the AMI. You can specify a bucket that you
    -- already own or a new bucket that Amazon EC2 creates on your behalf. If
    -- you specify a bucket that belongs to someone else, Amazon EC2 returns an
    -- error.
    storage :: Storage
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'BundleInstance' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dryRun', 'bundleInstance_dryRun' - Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
--
-- 'instanceId', 'bundleInstance_instanceId' - The ID of the instance to bundle.
--
-- Type: String
--
-- Default: None
--
-- Required: Yes
--
-- 'storage', 'bundleInstance_storage' - The bucket in which to store the AMI. You can specify a bucket that you
-- already own or a new bucket that Amazon EC2 creates on your behalf. If
-- you specify a bucket that belongs to someone else, Amazon EC2 returns an
-- error.
newBundleInstance ::
  -- | 'instanceId'
  Prelude.Text ->
  -- | 'storage'
  Storage ->
  BundleInstance
newBundleInstance pInstanceId_ pStorage_ =
  BundleInstance'
    { dryRun = Prelude.Nothing,
      instanceId = pInstanceId_,
      storage = pStorage_
    }

-- | Checks whether you have the required permissions for the action, without
-- actually making the request, and provides an error response. If you have
-- the required permissions, the error response is @DryRunOperation@.
-- Otherwise, it is @UnauthorizedOperation@.
bundleInstance_dryRun :: Lens.Lens' BundleInstance (Prelude.Maybe Prelude.Bool)
bundleInstance_dryRun = Lens.lens (\BundleInstance' {dryRun} -> dryRun) (\s@BundleInstance' {} a -> s {dryRun = a} :: BundleInstance)

-- | The ID of the instance to bundle.
--
-- Type: String
--
-- Default: None
--
-- Required: Yes
bundleInstance_instanceId :: Lens.Lens' BundleInstance Prelude.Text
bundleInstance_instanceId = Lens.lens (\BundleInstance' {instanceId} -> instanceId) (\s@BundleInstance' {} a -> s {instanceId = a} :: BundleInstance)

-- | The bucket in which to store the AMI. You can specify a bucket that you
-- already own or a new bucket that Amazon EC2 creates on your behalf. If
-- you specify a bucket that belongs to someone else, Amazon EC2 returns an
-- error.
bundleInstance_storage :: Lens.Lens' BundleInstance Storage
bundleInstance_storage = Lens.lens (\BundleInstance' {storage} -> storage) (\s@BundleInstance' {} a -> s {storage = a} :: BundleInstance)

instance Prelude.AWSRequest BundleInstance where
  type Rs BundleInstance = BundleInstanceResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          BundleInstanceResponse'
            Prelude.<$> (x Prelude..@? "bundleInstanceTask")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable BundleInstance

instance Prelude.NFData BundleInstance

instance Prelude.ToHeaders BundleInstance where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath BundleInstance where
  toPath = Prelude.const "/"

instance Prelude.ToQuery BundleInstance where
  toQuery BundleInstance' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("BundleInstance" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2016-11-15" :: Prelude.ByteString),
        "DryRun" Prelude.=: dryRun,
        "InstanceId" Prelude.=: instanceId,
        "Storage" Prelude.=: storage
      ]

-- | Contains the output of BundleInstance.
--
-- /See:/ 'newBundleInstanceResponse' smart constructor.
data BundleInstanceResponse = BundleInstanceResponse'
  { -- | Information about the bundle task.
    bundleTask :: Prelude.Maybe BundleTask,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'BundleInstanceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'bundleTask', 'bundleInstanceResponse_bundleTask' - Information about the bundle task.
--
-- 'httpStatus', 'bundleInstanceResponse_httpStatus' - The response's http status code.
newBundleInstanceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  BundleInstanceResponse
newBundleInstanceResponse pHttpStatus_ =
  BundleInstanceResponse'
    { bundleTask =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the bundle task.
bundleInstanceResponse_bundleTask :: Lens.Lens' BundleInstanceResponse (Prelude.Maybe BundleTask)
bundleInstanceResponse_bundleTask = Lens.lens (\BundleInstanceResponse' {bundleTask} -> bundleTask) (\s@BundleInstanceResponse' {} a -> s {bundleTask = a} :: BundleInstanceResponse)

-- | The response's http status code.
bundleInstanceResponse_httpStatus :: Lens.Lens' BundleInstanceResponse Prelude.Int
bundleInstanceResponse_httpStatus = Lens.lens (\BundleInstanceResponse' {httpStatus} -> httpStatus) (\s@BundleInstanceResponse' {} a -> s {httpStatus = a} :: BundleInstanceResponse)

instance Prelude.NFData BundleInstanceResponse
