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
-- Module      : Network.AWS.RDS.DeleteDBProxy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an existing proxy.
module Network.AWS.RDS.DeleteDBProxy
  ( -- * Creating a Request
    DeleteDBProxy (..),
    newDeleteDBProxy,

    -- * Request Lenses
    deleteDBProxy_dBProxyName,

    -- * Destructuring the Response
    DeleteDBProxyResponse (..),
    newDeleteDBProxyResponse,

    -- * Response Lenses
    deleteDBProxyResponse_dBProxy,
    deleteDBProxyResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types
import Network.AWS.RDS.Types.DBProxy
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDeleteDBProxy' smart constructor.
data DeleteDBProxy = DeleteDBProxy'
  { -- | The name of the DB proxy to delete.
    dBProxyName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DeleteDBProxy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBProxyName', 'deleteDBProxy_dBProxyName' - The name of the DB proxy to delete.
newDeleteDBProxy ::
  -- | 'dBProxyName'
  Prelude.Text ->
  DeleteDBProxy
newDeleteDBProxy pDBProxyName_ =
  DeleteDBProxy' {dBProxyName = pDBProxyName_}

-- | The name of the DB proxy to delete.
deleteDBProxy_dBProxyName :: Lens.Lens' DeleteDBProxy Prelude.Text
deleteDBProxy_dBProxyName = Lens.lens (\DeleteDBProxy' {dBProxyName} -> dBProxyName) (\s@DeleteDBProxy' {} a -> s {dBProxyName = a} :: DeleteDBProxy)

instance Prelude.AWSRequest DeleteDBProxy where
  type Rs DeleteDBProxy = DeleteDBProxyResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DeleteDBProxyResult"
      ( \s h x ->
          DeleteDBProxyResponse'
            Prelude.<$> (x Prelude..@? "DBProxy")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteDBProxy

instance Prelude.NFData DeleteDBProxy

instance Prelude.ToHeaders DeleteDBProxy where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath DeleteDBProxy where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DeleteDBProxy where
  toQuery DeleteDBProxy' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("DeleteDBProxy" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2014-10-31" :: Prelude.ByteString),
        "DBProxyName" Prelude.=: dBProxyName
      ]

-- | /See:/ 'newDeleteDBProxyResponse' smart constructor.
data DeleteDBProxyResponse = DeleteDBProxyResponse'
  { -- | The data structure representing the details of the DB proxy that you
    -- delete.
    dBProxy :: Prelude.Maybe DBProxy,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DeleteDBProxyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBProxy', 'deleteDBProxyResponse_dBProxy' - The data structure representing the details of the DB proxy that you
-- delete.
--
-- 'httpStatus', 'deleteDBProxyResponse_httpStatus' - The response's http status code.
newDeleteDBProxyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteDBProxyResponse
newDeleteDBProxyResponse pHttpStatus_ =
  DeleteDBProxyResponse'
    { dBProxy = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The data structure representing the details of the DB proxy that you
-- delete.
deleteDBProxyResponse_dBProxy :: Lens.Lens' DeleteDBProxyResponse (Prelude.Maybe DBProxy)
deleteDBProxyResponse_dBProxy = Lens.lens (\DeleteDBProxyResponse' {dBProxy} -> dBProxy) (\s@DeleteDBProxyResponse' {} a -> s {dBProxy = a} :: DeleteDBProxyResponse)

-- | The response's http status code.
deleteDBProxyResponse_httpStatus :: Lens.Lens' DeleteDBProxyResponse Prelude.Int
deleteDBProxyResponse_httpStatus = Lens.lens (\DeleteDBProxyResponse' {httpStatus} -> httpStatus) (\s@DeleteDBProxyResponse' {} a -> s {httpStatus = a} :: DeleteDBProxyResponse)

instance Prelude.NFData DeleteDBProxyResponse
