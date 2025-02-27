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
-- Module      : Network.AWS.Lightsail.DeleteDisk
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified block storage disk. The disk must be in the
-- @available@ state (not attached to a Lightsail instance).
--
-- The disk may remain in the @deleting@ state for several minutes.
--
-- The @delete disk@ operation supports tag-based access control via
-- resource tags applied to the resource identified by @disk name@. For
-- more information, see the
-- <https://lightsail.aws.amazon.com/ls/docs/en/articles/amazon-lightsail-controlling-access-using-tags Lightsail Dev Guide>.
module Network.AWS.Lightsail.DeleteDisk
  ( -- * Creating a Request
    DeleteDisk (..),
    newDeleteDisk,

    -- * Request Lenses
    deleteDisk_forceDeleteAddOns,
    deleteDisk_diskName,

    -- * Destructuring the Response
    DeleteDiskResponse (..),
    newDeleteDiskResponse,

    -- * Response Lenses
    deleteDiskResponse_operations,
    deleteDiskResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Lightsail.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteDisk' smart constructor.
data DeleteDisk = DeleteDisk'
  { -- | A Boolean value to indicate whether to delete the enabled add-ons for
    -- the disk.
    forceDeleteAddOns :: Prelude.Maybe Prelude.Bool,
    -- | The unique name of the disk you want to delete (e.g., @my-disk@).
    diskName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DeleteDisk' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'forceDeleteAddOns', 'deleteDisk_forceDeleteAddOns' - A Boolean value to indicate whether to delete the enabled add-ons for
-- the disk.
--
-- 'diskName', 'deleteDisk_diskName' - The unique name of the disk you want to delete (e.g., @my-disk@).
newDeleteDisk ::
  -- | 'diskName'
  Prelude.Text ->
  DeleteDisk
newDeleteDisk pDiskName_ =
  DeleteDisk'
    { forceDeleteAddOns = Prelude.Nothing,
      diskName = pDiskName_
    }

-- | A Boolean value to indicate whether to delete the enabled add-ons for
-- the disk.
deleteDisk_forceDeleteAddOns :: Lens.Lens' DeleteDisk (Prelude.Maybe Prelude.Bool)
deleteDisk_forceDeleteAddOns = Lens.lens (\DeleteDisk' {forceDeleteAddOns} -> forceDeleteAddOns) (\s@DeleteDisk' {} a -> s {forceDeleteAddOns = a} :: DeleteDisk)

-- | The unique name of the disk you want to delete (e.g., @my-disk@).
deleteDisk_diskName :: Lens.Lens' DeleteDisk Prelude.Text
deleteDisk_diskName = Lens.lens (\DeleteDisk' {diskName} -> diskName) (\s@DeleteDisk' {} a -> s {diskName = a} :: DeleteDisk)

instance Prelude.AWSRequest DeleteDisk where
  type Rs DeleteDisk = DeleteDiskResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteDiskResponse'
            Prelude.<$> ( x Prelude..?> "operations"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteDisk

instance Prelude.NFData DeleteDisk

instance Prelude.ToHeaders DeleteDisk where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "Lightsail_20161128.DeleteDisk" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON DeleteDisk where
  toJSON DeleteDisk' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("forceDeleteAddOns" Prelude..=)
              Prelude.<$> forceDeleteAddOns,
            Prelude.Just ("diskName" Prelude..= diskName)
          ]
      )

instance Prelude.ToPath DeleteDisk where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DeleteDisk where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteDiskResponse' smart constructor.
data DeleteDiskResponse = DeleteDiskResponse'
  { -- | An array of objects that describe the result of the action, such as the
    -- status of the request, the timestamp of the request, and the resources
    -- affected by the request.
    operations :: Prelude.Maybe [Operation],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DeleteDiskResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'operations', 'deleteDiskResponse_operations' - An array of objects that describe the result of the action, such as the
-- status of the request, the timestamp of the request, and the resources
-- affected by the request.
--
-- 'httpStatus', 'deleteDiskResponse_httpStatus' - The response's http status code.
newDeleteDiskResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteDiskResponse
newDeleteDiskResponse pHttpStatus_ =
  DeleteDiskResponse'
    { operations = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array of objects that describe the result of the action, such as the
-- status of the request, the timestamp of the request, and the resources
-- affected by the request.
deleteDiskResponse_operations :: Lens.Lens' DeleteDiskResponse (Prelude.Maybe [Operation])
deleteDiskResponse_operations = Lens.lens (\DeleteDiskResponse' {operations} -> operations) (\s@DeleteDiskResponse' {} a -> s {operations = a} :: DeleteDiskResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
deleteDiskResponse_httpStatus :: Lens.Lens' DeleteDiskResponse Prelude.Int
deleteDiskResponse_httpStatus = Lens.lens (\DeleteDiskResponse' {httpStatus} -> httpStatus) (\s@DeleteDiskResponse' {} a -> s {httpStatus = a} :: DeleteDiskResponse)

instance Prelude.NFData DeleteDiskResponse
