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
-- Module      : Network.AWS.OpsWorks.GrantAccess
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This action can be used only with Windows stacks.
--
-- Grants RDP access to a Windows instance for a specified time period.
module Network.AWS.OpsWorks.GrantAccess
  ( -- * Creating a Request
    GrantAccess (..),
    newGrantAccess,

    -- * Request Lenses
    grantAccess_validForInMinutes,
    grantAccess_instanceId,

    -- * Destructuring the Response
    GrantAccessResponse (..),
    newGrantAccessResponse,

    -- * Response Lenses
    grantAccessResponse_temporaryCredential,
    grantAccessResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.OpsWorks.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGrantAccess' smart constructor.
data GrantAccess = GrantAccess'
  { -- | The length of time (in minutes) that the grant is valid. When the grant
    -- expires at the end of this period, the user will no longer be able to
    -- use the credentials to log in. If the user is logged in at the time, he
    -- or she automatically will be logged out.
    validForInMinutes :: Prelude.Maybe Prelude.Natural,
    -- | The instance\'s AWS OpsWorks Stacks ID.
    instanceId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GrantAccess' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'validForInMinutes', 'grantAccess_validForInMinutes' - The length of time (in minutes) that the grant is valid. When the grant
-- expires at the end of this period, the user will no longer be able to
-- use the credentials to log in. If the user is logged in at the time, he
-- or she automatically will be logged out.
--
-- 'instanceId', 'grantAccess_instanceId' - The instance\'s AWS OpsWorks Stacks ID.
newGrantAccess ::
  -- | 'instanceId'
  Prelude.Text ->
  GrantAccess
newGrantAccess pInstanceId_ =
  GrantAccess'
    { validForInMinutes = Prelude.Nothing,
      instanceId = pInstanceId_
    }

-- | The length of time (in minutes) that the grant is valid. When the grant
-- expires at the end of this period, the user will no longer be able to
-- use the credentials to log in. If the user is logged in at the time, he
-- or she automatically will be logged out.
grantAccess_validForInMinutes :: Lens.Lens' GrantAccess (Prelude.Maybe Prelude.Natural)
grantAccess_validForInMinutes = Lens.lens (\GrantAccess' {validForInMinutes} -> validForInMinutes) (\s@GrantAccess' {} a -> s {validForInMinutes = a} :: GrantAccess)

-- | The instance\'s AWS OpsWorks Stacks ID.
grantAccess_instanceId :: Lens.Lens' GrantAccess Prelude.Text
grantAccess_instanceId = Lens.lens (\GrantAccess' {instanceId} -> instanceId) (\s@GrantAccess' {} a -> s {instanceId = a} :: GrantAccess)

instance Prelude.AWSRequest GrantAccess where
  type Rs GrantAccess = GrantAccessResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GrantAccessResponse'
            Prelude.<$> (x Prelude..?> "TemporaryCredential")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GrantAccess

instance Prelude.NFData GrantAccess

instance Prelude.ToHeaders GrantAccess where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "OpsWorks_20130218.GrantAccess" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON GrantAccess where
  toJSON GrantAccess' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("ValidForInMinutes" Prelude..=)
              Prelude.<$> validForInMinutes,
            Prelude.Just ("InstanceId" Prelude..= instanceId)
          ]
      )

instance Prelude.ToPath GrantAccess where
  toPath = Prelude.const "/"

instance Prelude.ToQuery GrantAccess where
  toQuery = Prelude.const Prelude.mempty

-- | Contains the response to a @GrantAccess@ request.
--
-- /See:/ 'newGrantAccessResponse' smart constructor.
data GrantAccessResponse = GrantAccessResponse'
  { -- | A @TemporaryCredential@ object that contains the data needed to log in
    -- to the instance by RDP clients, such as the Microsoft Remote Desktop
    -- Connection.
    temporaryCredential :: Prelude.Maybe TemporaryCredential,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GrantAccessResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'temporaryCredential', 'grantAccessResponse_temporaryCredential' - A @TemporaryCredential@ object that contains the data needed to log in
-- to the instance by RDP clients, such as the Microsoft Remote Desktop
-- Connection.
--
-- 'httpStatus', 'grantAccessResponse_httpStatus' - The response's http status code.
newGrantAccessResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GrantAccessResponse
newGrantAccessResponse pHttpStatus_ =
  GrantAccessResponse'
    { temporaryCredential =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A @TemporaryCredential@ object that contains the data needed to log in
-- to the instance by RDP clients, such as the Microsoft Remote Desktop
-- Connection.
grantAccessResponse_temporaryCredential :: Lens.Lens' GrantAccessResponse (Prelude.Maybe TemporaryCredential)
grantAccessResponse_temporaryCredential = Lens.lens (\GrantAccessResponse' {temporaryCredential} -> temporaryCredential) (\s@GrantAccessResponse' {} a -> s {temporaryCredential = a} :: GrantAccessResponse)

-- | The response's http status code.
grantAccessResponse_httpStatus :: Lens.Lens' GrantAccessResponse Prelude.Int
grantAccessResponse_httpStatus = Lens.lens (\GrantAccessResponse' {httpStatus} -> httpStatus) (\s@GrantAccessResponse' {} a -> s {httpStatus = a} :: GrantAccessResponse)

instance Prelude.NFData GrantAccessResponse
