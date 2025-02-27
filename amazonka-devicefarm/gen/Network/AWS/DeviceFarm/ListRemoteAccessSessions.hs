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
-- Module      : Network.AWS.DeviceFarm.ListRemoteAccessSessions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of all currently running remote access sessions.
--
-- This operation returns paginated results.
module Network.AWS.DeviceFarm.ListRemoteAccessSessions
  ( -- * Creating a Request
    ListRemoteAccessSessions (..),
    newListRemoteAccessSessions,

    -- * Request Lenses
    listRemoteAccessSessions_nextToken,
    listRemoteAccessSessions_arn,

    -- * Destructuring the Response
    ListRemoteAccessSessionsResponse (..),
    newListRemoteAccessSessionsResponse,

    -- * Response Lenses
    listRemoteAccessSessionsResponse_nextToken,
    listRemoteAccessSessionsResponse_remoteAccessSessions,
    listRemoteAccessSessionsResponse_httpStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the request to return information about the remote access
-- session.
--
-- /See:/ 'newListRemoteAccessSessions' smart constructor.
data ListRemoteAccessSessions = ListRemoteAccessSessions'
  { -- | An identifier that was returned from the previous call to this
    -- operation, which can be used to return the next set of items in the
    -- list.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the project about which you are
    -- requesting information.
    arn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListRemoteAccessSessions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listRemoteAccessSessions_nextToken' - An identifier that was returned from the previous call to this
-- operation, which can be used to return the next set of items in the
-- list.
--
-- 'arn', 'listRemoteAccessSessions_arn' - The Amazon Resource Name (ARN) of the project about which you are
-- requesting information.
newListRemoteAccessSessions ::
  -- | 'arn'
  Prelude.Text ->
  ListRemoteAccessSessions
newListRemoteAccessSessions pArn_ =
  ListRemoteAccessSessions'
    { nextToken =
        Prelude.Nothing,
      arn = pArn_
    }

-- | An identifier that was returned from the previous call to this
-- operation, which can be used to return the next set of items in the
-- list.
listRemoteAccessSessions_nextToken :: Lens.Lens' ListRemoteAccessSessions (Prelude.Maybe Prelude.Text)
listRemoteAccessSessions_nextToken = Lens.lens (\ListRemoteAccessSessions' {nextToken} -> nextToken) (\s@ListRemoteAccessSessions' {} a -> s {nextToken = a} :: ListRemoteAccessSessions)

-- | The Amazon Resource Name (ARN) of the project about which you are
-- requesting information.
listRemoteAccessSessions_arn :: Lens.Lens' ListRemoteAccessSessions Prelude.Text
listRemoteAccessSessions_arn = Lens.lens (\ListRemoteAccessSessions' {arn} -> arn) (\s@ListRemoteAccessSessions' {} a -> s {arn = a} :: ListRemoteAccessSessions)

instance Pager.AWSPager ListRemoteAccessSessions where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? listRemoteAccessSessionsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? listRemoteAccessSessionsResponse_remoteAccessSessions
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& listRemoteAccessSessions_nextToken
          Lens..~ rs
          Lens.^? listRemoteAccessSessionsResponse_nextToken
            Prelude.. Lens._Just

instance Prelude.AWSRequest ListRemoteAccessSessions where
  type
    Rs ListRemoteAccessSessions =
      ListRemoteAccessSessionsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListRemoteAccessSessionsResponse'
            Prelude.<$> (x Prelude..?> "nextToken")
            Prelude.<*> ( x Prelude..?> "remoteAccessSessions"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListRemoteAccessSessions

instance Prelude.NFData ListRemoteAccessSessions

instance Prelude.ToHeaders ListRemoteAccessSessions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "DeviceFarm_20150623.ListRemoteAccessSessions" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON ListRemoteAccessSessions where
  toJSON ListRemoteAccessSessions' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("nextToken" Prelude..=) Prelude.<$> nextToken,
            Prelude.Just ("arn" Prelude..= arn)
          ]
      )

instance Prelude.ToPath ListRemoteAccessSessions where
  toPath = Prelude.const "/"

instance Prelude.ToQuery ListRemoteAccessSessions where
  toQuery = Prelude.const Prelude.mempty

-- | Represents the response from the server after AWS Device Farm makes a
-- request to return information about the remote access session.
--
-- /See:/ 'newListRemoteAccessSessionsResponse' smart constructor.
data ListRemoteAccessSessionsResponse = ListRemoteAccessSessionsResponse'
  { -- | An identifier that was returned from the previous call to this
    -- operation, which can be used to return the next set of items in the
    -- list.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A container that represents the metadata from the service about each
    -- remote access session you are requesting.
    remoteAccessSessions :: Prelude.Maybe [RemoteAccessSession],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListRemoteAccessSessionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listRemoteAccessSessionsResponse_nextToken' - An identifier that was returned from the previous call to this
-- operation, which can be used to return the next set of items in the
-- list.
--
-- 'remoteAccessSessions', 'listRemoteAccessSessionsResponse_remoteAccessSessions' - A container that represents the metadata from the service about each
-- remote access session you are requesting.
--
-- 'httpStatus', 'listRemoteAccessSessionsResponse_httpStatus' - The response's http status code.
newListRemoteAccessSessionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListRemoteAccessSessionsResponse
newListRemoteAccessSessionsResponse pHttpStatus_ =
  ListRemoteAccessSessionsResponse'
    { nextToken =
        Prelude.Nothing,
      remoteAccessSessions = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An identifier that was returned from the previous call to this
-- operation, which can be used to return the next set of items in the
-- list.
listRemoteAccessSessionsResponse_nextToken :: Lens.Lens' ListRemoteAccessSessionsResponse (Prelude.Maybe Prelude.Text)
listRemoteAccessSessionsResponse_nextToken = Lens.lens (\ListRemoteAccessSessionsResponse' {nextToken} -> nextToken) (\s@ListRemoteAccessSessionsResponse' {} a -> s {nextToken = a} :: ListRemoteAccessSessionsResponse)

-- | A container that represents the metadata from the service about each
-- remote access session you are requesting.
listRemoteAccessSessionsResponse_remoteAccessSessions :: Lens.Lens' ListRemoteAccessSessionsResponse (Prelude.Maybe [RemoteAccessSession])
listRemoteAccessSessionsResponse_remoteAccessSessions = Lens.lens (\ListRemoteAccessSessionsResponse' {remoteAccessSessions} -> remoteAccessSessions) (\s@ListRemoteAccessSessionsResponse' {} a -> s {remoteAccessSessions = a} :: ListRemoteAccessSessionsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
listRemoteAccessSessionsResponse_httpStatus :: Lens.Lens' ListRemoteAccessSessionsResponse Prelude.Int
listRemoteAccessSessionsResponse_httpStatus = Lens.lens (\ListRemoteAccessSessionsResponse' {httpStatus} -> httpStatus) (\s@ListRemoteAccessSessionsResponse' {} a -> s {httpStatus = a} :: ListRemoteAccessSessionsResponse)

instance
  Prelude.NFData
    ListRemoteAccessSessionsResponse
