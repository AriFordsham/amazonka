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
-- Module      : Network.AWS.DMS.TestConnection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Tests the connection between the replication instance and the endpoint.
module Network.AWS.DMS.TestConnection
  ( -- * Creating a Request
    TestConnection (..),
    newTestConnection,

    -- * Request Lenses
    testConnection_replicationInstanceArn,
    testConnection_endpointArn,

    -- * Destructuring the Response
    TestConnectionResponse (..),
    newTestConnectionResponse,

    -- * Response Lenses
    testConnectionResponse_connection,
    testConnectionResponse_httpStatus,
  )
where

import Network.AWS.DMS.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newTestConnection' smart constructor.
data TestConnection = TestConnection'
  { -- | The Amazon Resource Name (ARN) of the replication instance.
    replicationInstanceArn :: Prelude.Text,
    -- | The Amazon Resource Name (ARN) string that uniquely identifies the
    -- endpoint.
    endpointArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'TestConnection' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'replicationInstanceArn', 'testConnection_replicationInstanceArn' - The Amazon Resource Name (ARN) of the replication instance.
--
-- 'endpointArn', 'testConnection_endpointArn' - The Amazon Resource Name (ARN) string that uniquely identifies the
-- endpoint.
newTestConnection ::
  -- | 'replicationInstanceArn'
  Prelude.Text ->
  -- | 'endpointArn'
  Prelude.Text ->
  TestConnection
newTestConnection
  pReplicationInstanceArn_
  pEndpointArn_ =
    TestConnection'
      { replicationInstanceArn =
          pReplicationInstanceArn_,
        endpointArn = pEndpointArn_
      }

-- | The Amazon Resource Name (ARN) of the replication instance.
testConnection_replicationInstanceArn :: Lens.Lens' TestConnection Prelude.Text
testConnection_replicationInstanceArn = Lens.lens (\TestConnection' {replicationInstanceArn} -> replicationInstanceArn) (\s@TestConnection' {} a -> s {replicationInstanceArn = a} :: TestConnection)

-- | The Amazon Resource Name (ARN) string that uniquely identifies the
-- endpoint.
testConnection_endpointArn :: Lens.Lens' TestConnection Prelude.Text
testConnection_endpointArn = Lens.lens (\TestConnection' {endpointArn} -> endpointArn) (\s@TestConnection' {} a -> s {endpointArn = a} :: TestConnection)

instance Prelude.AWSRequest TestConnection where
  type Rs TestConnection = TestConnectionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          TestConnectionResponse'
            Prelude.<$> (x Prelude..?> "Connection")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable TestConnection

instance Prelude.NFData TestConnection

instance Prelude.ToHeaders TestConnection where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "AmazonDMSv20160101.TestConnection" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON TestConnection where
  toJSON TestConnection' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "ReplicationInstanceArn"
                  Prelude..= replicationInstanceArn
              ),
            Prelude.Just ("EndpointArn" Prelude..= endpointArn)
          ]
      )

instance Prelude.ToPath TestConnection where
  toPath = Prelude.const "/"

instance Prelude.ToQuery TestConnection where
  toQuery = Prelude.const Prelude.mempty

-- |
--
-- /See:/ 'newTestConnectionResponse' smart constructor.
data TestConnectionResponse = TestConnectionResponse'
  { -- | The connection tested.
    connection :: Prelude.Maybe Connection,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'TestConnectionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'connection', 'testConnectionResponse_connection' - The connection tested.
--
-- 'httpStatus', 'testConnectionResponse_httpStatus' - The response's http status code.
newTestConnectionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  TestConnectionResponse
newTestConnectionResponse pHttpStatus_ =
  TestConnectionResponse'
    { connection =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The connection tested.
testConnectionResponse_connection :: Lens.Lens' TestConnectionResponse (Prelude.Maybe Connection)
testConnectionResponse_connection = Lens.lens (\TestConnectionResponse' {connection} -> connection) (\s@TestConnectionResponse' {} a -> s {connection = a} :: TestConnectionResponse)

-- | The response's http status code.
testConnectionResponse_httpStatus :: Lens.Lens' TestConnectionResponse Prelude.Int
testConnectionResponse_httpStatus = Lens.lens (\TestConnectionResponse' {httpStatus} -> httpStatus) (\s@TestConnectionResponse' {} a -> s {httpStatus = a} :: TestConnectionResponse)

instance Prelude.NFData TestConnectionResponse
