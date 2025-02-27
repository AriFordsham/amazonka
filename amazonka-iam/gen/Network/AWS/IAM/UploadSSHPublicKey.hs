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
-- Module      : Network.AWS.IAM.UploadSSHPublicKey
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Uploads an SSH public key and associates it with the specified IAM user.
--
-- The SSH public key uploaded by this operation can be used only for
-- authenticating the associated IAM user to an AWS CodeCommit repository.
-- For more information about using SSH keys to authenticate to an AWS
-- CodeCommit repository, see
-- <https://docs.aws.amazon.com/codecommit/latest/userguide/setting-up-credentials-ssh.html Set up AWS CodeCommit for SSH connections>
-- in the /AWS CodeCommit User Guide/.
module Network.AWS.IAM.UploadSSHPublicKey
  ( -- * Creating a Request
    UploadSSHPublicKey (..),
    newUploadSSHPublicKey,

    -- * Request Lenses
    uploadSSHPublicKey_userName,
    uploadSSHPublicKey_sSHPublicKeyBody,

    -- * Destructuring the Response
    UploadSSHPublicKeyResponse (..),
    newUploadSSHPublicKeyResponse,

    -- * Response Lenses
    uploadSSHPublicKeyResponse_sSHPublicKey,
    uploadSSHPublicKeyResponse_httpStatus,
  )
where

import Network.AWS.IAM.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newUploadSSHPublicKey' smart constructor.
data UploadSSHPublicKey = UploadSSHPublicKey'
  { -- | The name of the IAM user to associate the SSH public key with.
    --
    -- This parameter allows (through its
    -- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
    -- consisting of upper and lowercase alphanumeric characters with no
    -- spaces. You can also include any of the following characters: _+=,.\@-
    userName :: Prelude.Text,
    -- | The SSH public key. The public key must be encoded in ssh-rsa format or
    -- PEM format. The minimum bit-length of the public key is 2048 bits. For
    -- example, you can generate a 2048-bit key, and the resulting PEM file is
    -- 1679 bytes long.
    --
    -- The <http://wikipedia.org/wiki/regex regex pattern> used to validate
    -- this parameter is a string of characters consisting of the following:
    --
    -- -   Any printable ASCII character ranging from the space character
    --     (@\\u0020@) through the end of the ASCII character range
    --
    -- -   The printable characters in the Basic Latin and Latin-1 Supplement
    --     character set (through @\\u00FF@)
    --
    -- -   The special characters tab (@\\u0009@), line feed (@\\u000A@), and
    --     carriage return (@\\u000D@)
    sSHPublicKeyBody :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'UploadSSHPublicKey' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'userName', 'uploadSSHPublicKey_userName' - The name of the IAM user to associate the SSH public key with.
--
-- This parameter allows (through its
-- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
-- consisting of upper and lowercase alphanumeric characters with no
-- spaces. You can also include any of the following characters: _+=,.\@-
--
-- 'sSHPublicKeyBody', 'uploadSSHPublicKey_sSHPublicKeyBody' - The SSH public key. The public key must be encoded in ssh-rsa format or
-- PEM format. The minimum bit-length of the public key is 2048 bits. For
-- example, you can generate a 2048-bit key, and the resulting PEM file is
-- 1679 bytes long.
--
-- The <http://wikipedia.org/wiki/regex regex pattern> used to validate
-- this parameter is a string of characters consisting of the following:
--
-- -   Any printable ASCII character ranging from the space character
--     (@\\u0020@) through the end of the ASCII character range
--
-- -   The printable characters in the Basic Latin and Latin-1 Supplement
--     character set (through @\\u00FF@)
--
-- -   The special characters tab (@\\u0009@), line feed (@\\u000A@), and
--     carriage return (@\\u000D@)
newUploadSSHPublicKey ::
  -- | 'userName'
  Prelude.Text ->
  -- | 'sSHPublicKeyBody'
  Prelude.Text ->
  UploadSSHPublicKey
newUploadSSHPublicKey pUserName_ pSSHPublicKeyBody_ =
  UploadSSHPublicKey'
    { userName = pUserName_,
      sSHPublicKeyBody = pSSHPublicKeyBody_
    }

-- | The name of the IAM user to associate the SSH public key with.
--
-- This parameter allows (through its
-- <http://wikipedia.org/wiki/regex regex pattern>) a string of characters
-- consisting of upper and lowercase alphanumeric characters with no
-- spaces. You can also include any of the following characters: _+=,.\@-
uploadSSHPublicKey_userName :: Lens.Lens' UploadSSHPublicKey Prelude.Text
uploadSSHPublicKey_userName = Lens.lens (\UploadSSHPublicKey' {userName} -> userName) (\s@UploadSSHPublicKey' {} a -> s {userName = a} :: UploadSSHPublicKey)

-- | The SSH public key. The public key must be encoded in ssh-rsa format or
-- PEM format. The minimum bit-length of the public key is 2048 bits. For
-- example, you can generate a 2048-bit key, and the resulting PEM file is
-- 1679 bytes long.
--
-- The <http://wikipedia.org/wiki/regex regex pattern> used to validate
-- this parameter is a string of characters consisting of the following:
--
-- -   Any printable ASCII character ranging from the space character
--     (@\\u0020@) through the end of the ASCII character range
--
-- -   The printable characters in the Basic Latin and Latin-1 Supplement
--     character set (through @\\u00FF@)
--
-- -   The special characters tab (@\\u0009@), line feed (@\\u000A@), and
--     carriage return (@\\u000D@)
uploadSSHPublicKey_sSHPublicKeyBody :: Lens.Lens' UploadSSHPublicKey Prelude.Text
uploadSSHPublicKey_sSHPublicKeyBody = Lens.lens (\UploadSSHPublicKey' {sSHPublicKeyBody} -> sSHPublicKeyBody) (\s@UploadSSHPublicKey' {} a -> s {sSHPublicKeyBody = a} :: UploadSSHPublicKey)

instance Prelude.AWSRequest UploadSSHPublicKey where
  type
    Rs UploadSSHPublicKey =
      UploadSSHPublicKeyResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "UploadSSHPublicKeyResult"
      ( \s h x ->
          UploadSSHPublicKeyResponse'
            Prelude.<$> (x Prelude..@? "SSHPublicKey")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UploadSSHPublicKey

instance Prelude.NFData UploadSSHPublicKey

instance Prelude.ToHeaders UploadSSHPublicKey where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath UploadSSHPublicKey where
  toPath = Prelude.const "/"

instance Prelude.ToQuery UploadSSHPublicKey where
  toQuery UploadSSHPublicKey' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("UploadSSHPublicKey" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2010-05-08" :: Prelude.ByteString),
        "UserName" Prelude.=: userName,
        "SSHPublicKeyBody" Prelude.=: sSHPublicKeyBody
      ]

-- | Contains the response to a successful UploadSSHPublicKey request.
--
-- /See:/ 'newUploadSSHPublicKeyResponse' smart constructor.
data UploadSSHPublicKeyResponse = UploadSSHPublicKeyResponse'
  { -- | Contains information about the SSH public key.
    sSHPublicKey :: Prelude.Maybe SSHPublicKey,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'UploadSSHPublicKeyResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sSHPublicKey', 'uploadSSHPublicKeyResponse_sSHPublicKey' - Contains information about the SSH public key.
--
-- 'httpStatus', 'uploadSSHPublicKeyResponse_httpStatus' - The response's http status code.
newUploadSSHPublicKeyResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UploadSSHPublicKeyResponse
newUploadSSHPublicKeyResponse pHttpStatus_ =
  UploadSSHPublicKeyResponse'
    { sSHPublicKey =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Contains information about the SSH public key.
uploadSSHPublicKeyResponse_sSHPublicKey :: Lens.Lens' UploadSSHPublicKeyResponse (Prelude.Maybe SSHPublicKey)
uploadSSHPublicKeyResponse_sSHPublicKey = Lens.lens (\UploadSSHPublicKeyResponse' {sSHPublicKey} -> sSHPublicKey) (\s@UploadSSHPublicKeyResponse' {} a -> s {sSHPublicKey = a} :: UploadSSHPublicKeyResponse)

-- | The response's http status code.
uploadSSHPublicKeyResponse_httpStatus :: Lens.Lens' UploadSSHPublicKeyResponse Prelude.Int
uploadSSHPublicKeyResponse_httpStatus = Lens.lens (\UploadSSHPublicKeyResponse' {httpStatus} -> httpStatus) (\s@UploadSSHPublicKeyResponse' {} a -> s {httpStatus = a} :: UploadSSHPublicKeyResponse)

instance Prelude.NFData UploadSSHPublicKeyResponse
