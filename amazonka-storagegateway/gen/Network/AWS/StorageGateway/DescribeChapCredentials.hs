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
-- Module      : Network.AWS.StorageGateway.DescribeChapCredentials
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns an array of Challenge-Handshake Authentication Protocol (CHAP)
-- credentials information for a specified iSCSI target, one for each
-- target-initiator pair. This operation is supported in the volume and
-- tape gateway types.
module Network.AWS.StorageGateway.DescribeChapCredentials
  ( -- * Creating a Request
    DescribeChapCredentials (..),
    newDescribeChapCredentials,

    -- * Request Lenses
    describeChapCredentials_targetARN,

    -- * Destructuring the Response
    DescribeChapCredentialsResponse (..),
    newDescribeChapCredentialsResponse,

    -- * Response Lenses
    describeChapCredentialsResponse_chapCredentials,
    describeChapCredentialsResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.StorageGateway.Types

-- | A JSON object containing the Amazon Resource Name (ARN) of the iSCSI
-- volume target.
--
-- /See:/ 'newDescribeChapCredentials' smart constructor.
data DescribeChapCredentials = DescribeChapCredentials'
  { -- | The Amazon Resource Name (ARN) of the iSCSI volume target. Use the
    -- DescribeStorediSCSIVolumes operation to return to retrieve the TargetARN
    -- for specified VolumeARN.
    targetARN :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeChapCredentials' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'targetARN', 'describeChapCredentials_targetARN' - The Amazon Resource Name (ARN) of the iSCSI volume target. Use the
-- DescribeStorediSCSIVolumes operation to return to retrieve the TargetARN
-- for specified VolumeARN.
newDescribeChapCredentials ::
  -- | 'targetARN'
  Prelude.Text ->
  DescribeChapCredentials
newDescribeChapCredentials pTargetARN_ =
  DescribeChapCredentials' {targetARN = pTargetARN_}

-- | The Amazon Resource Name (ARN) of the iSCSI volume target. Use the
-- DescribeStorediSCSIVolumes operation to return to retrieve the TargetARN
-- for specified VolumeARN.
describeChapCredentials_targetARN :: Lens.Lens' DescribeChapCredentials Prelude.Text
describeChapCredentials_targetARN = Lens.lens (\DescribeChapCredentials' {targetARN} -> targetARN) (\s@DescribeChapCredentials' {} a -> s {targetARN = a} :: DescribeChapCredentials)

instance Prelude.AWSRequest DescribeChapCredentials where
  type
    Rs DescribeChapCredentials =
      DescribeChapCredentialsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeChapCredentialsResponse'
            Prelude.<$> ( x Prelude..?> "ChapCredentials"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeChapCredentials

instance Prelude.NFData DescribeChapCredentials

instance Prelude.ToHeaders DescribeChapCredentials where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "StorageGateway_20130630.DescribeChapCredentials" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON DescribeChapCredentials where
  toJSON DescribeChapCredentials' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [Prelude.Just ("TargetARN" Prelude..= targetARN)]
      )

instance Prelude.ToPath DescribeChapCredentials where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DescribeChapCredentials where
  toQuery = Prelude.const Prelude.mempty

-- | A JSON object containing the following fields:
--
-- /See:/ 'newDescribeChapCredentialsResponse' smart constructor.
data DescribeChapCredentialsResponse = DescribeChapCredentialsResponse'
  { -- | An array of ChapInfo objects that represent CHAP credentials. Each
    -- object in the array contains CHAP credential information for one
    -- target-initiator pair. If no CHAP credentials are set, an empty array is
    -- returned. CHAP credential information is provided in a JSON object with
    -- the following fields:
    --
    -- -   __InitiatorName__: The iSCSI initiator that connects to the target.
    --
    -- -   __SecretToAuthenticateInitiator__: The secret key that the initiator
    --     (for example, the Windows client) must provide to participate in
    --     mutual CHAP with the target.
    --
    -- -   __SecretToAuthenticateTarget__: The secret key that the target must
    --     provide to participate in mutual CHAP with the initiator (e.g.
    --     Windows client).
    --
    -- -   __TargetARN__: The Amazon Resource Name (ARN) of the storage volume.
    chapCredentials :: Prelude.Maybe [ChapInfo],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeChapCredentialsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'chapCredentials', 'describeChapCredentialsResponse_chapCredentials' - An array of ChapInfo objects that represent CHAP credentials. Each
-- object in the array contains CHAP credential information for one
-- target-initiator pair. If no CHAP credentials are set, an empty array is
-- returned. CHAP credential information is provided in a JSON object with
-- the following fields:
--
-- -   __InitiatorName__: The iSCSI initiator that connects to the target.
--
-- -   __SecretToAuthenticateInitiator__: The secret key that the initiator
--     (for example, the Windows client) must provide to participate in
--     mutual CHAP with the target.
--
-- -   __SecretToAuthenticateTarget__: The secret key that the target must
--     provide to participate in mutual CHAP with the initiator (e.g.
--     Windows client).
--
-- -   __TargetARN__: The Amazon Resource Name (ARN) of the storage volume.
--
-- 'httpStatus', 'describeChapCredentialsResponse_httpStatus' - The response's http status code.
newDescribeChapCredentialsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeChapCredentialsResponse
newDescribeChapCredentialsResponse pHttpStatus_ =
  DescribeChapCredentialsResponse'
    { chapCredentials =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An array of ChapInfo objects that represent CHAP credentials. Each
-- object in the array contains CHAP credential information for one
-- target-initiator pair. If no CHAP credentials are set, an empty array is
-- returned. CHAP credential information is provided in a JSON object with
-- the following fields:
--
-- -   __InitiatorName__: The iSCSI initiator that connects to the target.
--
-- -   __SecretToAuthenticateInitiator__: The secret key that the initiator
--     (for example, the Windows client) must provide to participate in
--     mutual CHAP with the target.
--
-- -   __SecretToAuthenticateTarget__: The secret key that the target must
--     provide to participate in mutual CHAP with the initiator (e.g.
--     Windows client).
--
-- -   __TargetARN__: The Amazon Resource Name (ARN) of the storage volume.
describeChapCredentialsResponse_chapCredentials :: Lens.Lens' DescribeChapCredentialsResponse (Prelude.Maybe [ChapInfo])
describeChapCredentialsResponse_chapCredentials = Lens.lens (\DescribeChapCredentialsResponse' {chapCredentials} -> chapCredentials) (\s@DescribeChapCredentialsResponse' {} a -> s {chapCredentials = a} :: DescribeChapCredentialsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
describeChapCredentialsResponse_httpStatus :: Lens.Lens' DescribeChapCredentialsResponse Prelude.Int
describeChapCredentialsResponse_httpStatus = Lens.lens (\DescribeChapCredentialsResponse' {httpStatus} -> httpStatus) (\s@DescribeChapCredentialsResponse' {} a -> s {httpStatus = a} :: DescribeChapCredentialsResponse)

instance
  Prelude.NFData
    DescribeChapCredentialsResponse
