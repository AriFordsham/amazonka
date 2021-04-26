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
-- Module      : Network.AWS.StorageGateway.CreateTapes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates one or more virtual tapes. You write data to the virtual tapes
-- and then archive the tapes. This operation is only supported in the tape
-- gateway type.
--
-- Cache storage must be allocated to the gateway before you can create
-- virtual tapes. Use the AddCache operation to add cache storage to a
-- gateway.
module Network.AWS.StorageGateway.CreateTapes
  ( -- * Creating a Request
    CreateTapes (..),
    newCreateTapes,

    -- * Request Lenses
    createTapes_poolId,
    createTapes_kMSEncrypted,
    createTapes_kMSKey,
    createTapes_worm,
    createTapes_tags,
    createTapes_gatewayARN,
    createTapes_tapeSizeInBytes,
    createTapes_clientToken,
    createTapes_numTapesToCreate,
    createTapes_tapeBarcodePrefix,

    -- * Destructuring the Response
    CreateTapesResponse (..),
    newCreateTapesResponse,

    -- * Response Lenses
    createTapesResponse_tapeARNs,
    createTapesResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.StorageGateway.Types

-- | CreateTapesInput
--
-- /See:/ 'newCreateTapes' smart constructor.
data CreateTapes = CreateTapes'
  { -- | The ID of the pool that you want to add your tape to for archiving. The
    -- tape in this pool is archived in the S3 storage class that is associated
    -- with the pool. When you use your backup application to eject the tape,
    -- the tape is archived directly into the storage class (S3 Glacier or S3
    -- Glacier Deep Archive) that corresponds to the pool.
    --
    -- Valid Values: @GLACIER@ | @DEEP_ARCHIVE@
    poolId :: Prelude.Maybe Prelude.Text,
    -- | Set to @true@ to use Amazon S3 server-side encryption with your own AWS
    -- KMS key, or @false@ to use a key managed by Amazon S3. Optional.
    --
    -- Valid Values: @true@ | @false@
    kMSEncrypted :: Prelude.Maybe Prelude.Bool,
    -- | The Amazon Resource Name (ARN) of a symmetric customer master key (CMK)
    -- used for Amazon S3 server-side encryption. Storage Gateway does not
    -- support asymmetric CMKs. This value can only be set when @KMSEncrypted@
    -- is @true@. Optional.
    kMSKey :: Prelude.Maybe Prelude.Text,
    -- | Set to @TRUE@ if the tape you are creating is to be configured as a
    -- write-once-read-many (WORM) tape.
    worm :: Prelude.Maybe Prelude.Bool,
    -- | A list of up to 50 tags that can be assigned to a virtual tape. Each tag
    -- is a key-value pair.
    --
    -- Valid characters for key and value are letters, spaces, and numbers
    -- representable in UTF-8 format, and the following special characters: + -
    -- = . _ : \/ \@. The maximum length of a tag\'s key is 128 characters, and
    -- the maximum length for a tag\'s value is 256.
    tags :: Prelude.Maybe [Tag],
    -- | The unique Amazon Resource Name (ARN) that represents the gateway to
    -- associate the virtual tapes with. Use the ListGateways operation to
    -- return a list of gateways for your account and AWS Region.
    gatewayARN :: Prelude.Text,
    -- | The size, in bytes, of the virtual tapes that you want to create.
    --
    -- The size must be aligned by gigabyte (1024*1024*1024 bytes).
    tapeSizeInBytes :: Prelude.Integer,
    -- | A unique identifier that you use to retry a request. If you retry a
    -- request, use the same @ClientToken@ you specified in the initial
    -- request.
    --
    -- Using the same @ClientToken@ prevents creating the tape multiple times.
    clientToken :: Prelude.Text,
    -- | The number of virtual tapes that you want to create.
    numTapesToCreate :: Prelude.Nat,
    -- | A prefix that you append to the barcode of the virtual tape you are
    -- creating. This prefix makes the barcode unique.
    --
    -- The prefix must be 1 to 4 characters in length and must be one of the
    -- uppercase letters from A to Z.
    tapeBarcodePrefix :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateTapes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'poolId', 'createTapes_poolId' - The ID of the pool that you want to add your tape to for archiving. The
-- tape in this pool is archived in the S3 storage class that is associated
-- with the pool. When you use your backup application to eject the tape,
-- the tape is archived directly into the storage class (S3 Glacier or S3
-- Glacier Deep Archive) that corresponds to the pool.
--
-- Valid Values: @GLACIER@ | @DEEP_ARCHIVE@
--
-- 'kMSEncrypted', 'createTapes_kMSEncrypted' - Set to @true@ to use Amazon S3 server-side encryption with your own AWS
-- KMS key, or @false@ to use a key managed by Amazon S3. Optional.
--
-- Valid Values: @true@ | @false@
--
-- 'kMSKey', 'createTapes_kMSKey' - The Amazon Resource Name (ARN) of a symmetric customer master key (CMK)
-- used for Amazon S3 server-side encryption. Storage Gateway does not
-- support asymmetric CMKs. This value can only be set when @KMSEncrypted@
-- is @true@. Optional.
--
-- 'worm', 'createTapes_worm' - Set to @TRUE@ if the tape you are creating is to be configured as a
-- write-once-read-many (WORM) tape.
--
-- 'tags', 'createTapes_tags' - A list of up to 50 tags that can be assigned to a virtual tape. Each tag
-- is a key-value pair.
--
-- Valid characters for key and value are letters, spaces, and numbers
-- representable in UTF-8 format, and the following special characters: + -
-- = . _ : \/ \@. The maximum length of a tag\'s key is 128 characters, and
-- the maximum length for a tag\'s value is 256.
--
-- 'gatewayARN', 'createTapes_gatewayARN' - The unique Amazon Resource Name (ARN) that represents the gateway to
-- associate the virtual tapes with. Use the ListGateways operation to
-- return a list of gateways for your account and AWS Region.
--
-- 'tapeSizeInBytes', 'createTapes_tapeSizeInBytes' - The size, in bytes, of the virtual tapes that you want to create.
--
-- The size must be aligned by gigabyte (1024*1024*1024 bytes).
--
-- 'clientToken', 'createTapes_clientToken' - A unique identifier that you use to retry a request. If you retry a
-- request, use the same @ClientToken@ you specified in the initial
-- request.
--
-- Using the same @ClientToken@ prevents creating the tape multiple times.
--
-- 'numTapesToCreate', 'createTapes_numTapesToCreate' - The number of virtual tapes that you want to create.
--
-- 'tapeBarcodePrefix', 'createTapes_tapeBarcodePrefix' - A prefix that you append to the barcode of the virtual tape you are
-- creating. This prefix makes the barcode unique.
--
-- The prefix must be 1 to 4 characters in length and must be one of the
-- uppercase letters from A to Z.
newCreateTapes ::
  -- | 'gatewayARN'
  Prelude.Text ->
  -- | 'tapeSizeInBytes'
  Prelude.Integer ->
  -- | 'clientToken'
  Prelude.Text ->
  -- | 'numTapesToCreate'
  Prelude.Natural ->
  -- | 'tapeBarcodePrefix'
  Prelude.Text ->
  CreateTapes
newCreateTapes
  pGatewayARN_
  pTapeSizeInBytes_
  pClientToken_
  pNumTapesToCreate_
  pTapeBarcodePrefix_ =
    CreateTapes'
      { poolId = Prelude.Nothing,
        kMSEncrypted = Prelude.Nothing,
        kMSKey = Prelude.Nothing,
        worm = Prelude.Nothing,
        tags = Prelude.Nothing,
        gatewayARN = pGatewayARN_,
        tapeSizeInBytes = pTapeSizeInBytes_,
        clientToken = pClientToken_,
        numTapesToCreate =
          Prelude._Nat Lens.# pNumTapesToCreate_,
        tapeBarcodePrefix = pTapeBarcodePrefix_
      }

-- | The ID of the pool that you want to add your tape to for archiving. The
-- tape in this pool is archived in the S3 storage class that is associated
-- with the pool. When you use your backup application to eject the tape,
-- the tape is archived directly into the storage class (S3 Glacier or S3
-- Glacier Deep Archive) that corresponds to the pool.
--
-- Valid Values: @GLACIER@ | @DEEP_ARCHIVE@
createTapes_poolId :: Lens.Lens' CreateTapes (Prelude.Maybe Prelude.Text)
createTapes_poolId = Lens.lens (\CreateTapes' {poolId} -> poolId) (\s@CreateTapes' {} a -> s {poolId = a} :: CreateTapes)

-- | Set to @true@ to use Amazon S3 server-side encryption with your own AWS
-- KMS key, or @false@ to use a key managed by Amazon S3. Optional.
--
-- Valid Values: @true@ | @false@
createTapes_kMSEncrypted :: Lens.Lens' CreateTapes (Prelude.Maybe Prelude.Bool)
createTapes_kMSEncrypted = Lens.lens (\CreateTapes' {kMSEncrypted} -> kMSEncrypted) (\s@CreateTapes' {} a -> s {kMSEncrypted = a} :: CreateTapes)

-- | The Amazon Resource Name (ARN) of a symmetric customer master key (CMK)
-- used for Amazon S3 server-side encryption. Storage Gateway does not
-- support asymmetric CMKs. This value can only be set when @KMSEncrypted@
-- is @true@. Optional.
createTapes_kMSKey :: Lens.Lens' CreateTapes (Prelude.Maybe Prelude.Text)
createTapes_kMSKey = Lens.lens (\CreateTapes' {kMSKey} -> kMSKey) (\s@CreateTapes' {} a -> s {kMSKey = a} :: CreateTapes)

-- | Set to @TRUE@ if the tape you are creating is to be configured as a
-- write-once-read-many (WORM) tape.
createTapes_worm :: Lens.Lens' CreateTapes (Prelude.Maybe Prelude.Bool)
createTapes_worm = Lens.lens (\CreateTapes' {worm} -> worm) (\s@CreateTapes' {} a -> s {worm = a} :: CreateTapes)

-- | A list of up to 50 tags that can be assigned to a virtual tape. Each tag
-- is a key-value pair.
--
-- Valid characters for key and value are letters, spaces, and numbers
-- representable in UTF-8 format, and the following special characters: + -
-- = . _ : \/ \@. The maximum length of a tag\'s key is 128 characters, and
-- the maximum length for a tag\'s value is 256.
createTapes_tags :: Lens.Lens' CreateTapes (Prelude.Maybe [Tag])
createTapes_tags = Lens.lens (\CreateTapes' {tags} -> tags) (\s@CreateTapes' {} a -> s {tags = a} :: CreateTapes) Prelude.. Lens.mapping Prelude._Coerce

-- | The unique Amazon Resource Name (ARN) that represents the gateway to
-- associate the virtual tapes with. Use the ListGateways operation to
-- return a list of gateways for your account and AWS Region.
createTapes_gatewayARN :: Lens.Lens' CreateTapes Prelude.Text
createTapes_gatewayARN = Lens.lens (\CreateTapes' {gatewayARN} -> gatewayARN) (\s@CreateTapes' {} a -> s {gatewayARN = a} :: CreateTapes)

-- | The size, in bytes, of the virtual tapes that you want to create.
--
-- The size must be aligned by gigabyte (1024*1024*1024 bytes).
createTapes_tapeSizeInBytes :: Lens.Lens' CreateTapes Prelude.Integer
createTapes_tapeSizeInBytes = Lens.lens (\CreateTapes' {tapeSizeInBytes} -> tapeSizeInBytes) (\s@CreateTapes' {} a -> s {tapeSizeInBytes = a} :: CreateTapes)

-- | A unique identifier that you use to retry a request. If you retry a
-- request, use the same @ClientToken@ you specified in the initial
-- request.
--
-- Using the same @ClientToken@ prevents creating the tape multiple times.
createTapes_clientToken :: Lens.Lens' CreateTapes Prelude.Text
createTapes_clientToken = Lens.lens (\CreateTapes' {clientToken} -> clientToken) (\s@CreateTapes' {} a -> s {clientToken = a} :: CreateTapes)

-- | The number of virtual tapes that you want to create.
createTapes_numTapesToCreate :: Lens.Lens' CreateTapes Prelude.Natural
createTapes_numTapesToCreate = Lens.lens (\CreateTapes' {numTapesToCreate} -> numTapesToCreate) (\s@CreateTapes' {} a -> s {numTapesToCreate = a} :: CreateTapes) Prelude.. Prelude._Nat

-- | A prefix that you append to the barcode of the virtual tape you are
-- creating. This prefix makes the barcode unique.
--
-- The prefix must be 1 to 4 characters in length and must be one of the
-- uppercase letters from A to Z.
createTapes_tapeBarcodePrefix :: Lens.Lens' CreateTapes Prelude.Text
createTapes_tapeBarcodePrefix = Lens.lens (\CreateTapes' {tapeBarcodePrefix} -> tapeBarcodePrefix) (\s@CreateTapes' {} a -> s {tapeBarcodePrefix = a} :: CreateTapes)

instance Prelude.AWSRequest CreateTapes where
  type Rs CreateTapes = CreateTapesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateTapesResponse'
            Prelude.<$> (x Prelude..?> "TapeARNs" Prelude..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateTapes

instance Prelude.NFData CreateTapes

instance Prelude.ToHeaders CreateTapes where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "StorageGateway_20130630.CreateTapes" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON CreateTapes where
  toJSON CreateTapes' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("PoolId" Prelude..=) Prelude.<$> poolId,
            ("KMSEncrypted" Prelude..=) Prelude.<$> kMSEncrypted,
            ("KMSKey" Prelude..=) Prelude.<$> kMSKey,
            ("Worm" Prelude..=) Prelude.<$> worm,
            ("Tags" Prelude..=) Prelude.<$> tags,
            Prelude.Just ("GatewayARN" Prelude..= gatewayARN),
            Prelude.Just
              ("TapeSizeInBytes" Prelude..= tapeSizeInBytes),
            Prelude.Just ("ClientToken" Prelude..= clientToken),
            Prelude.Just
              ("NumTapesToCreate" Prelude..= numTapesToCreate),
            Prelude.Just
              ("TapeBarcodePrefix" Prelude..= tapeBarcodePrefix)
          ]
      )

instance Prelude.ToPath CreateTapes where
  toPath = Prelude.const "/"

instance Prelude.ToQuery CreateTapes where
  toQuery = Prelude.const Prelude.mempty

-- | CreateTapeOutput
--
-- /See:/ 'newCreateTapesResponse' smart constructor.
data CreateTapesResponse = CreateTapesResponse'
  { -- | A list of unique Amazon Resource Names (ARNs) that represents the
    -- virtual tapes that were created.
    tapeARNs :: Prelude.Maybe [Prelude.Text],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateTapesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tapeARNs', 'createTapesResponse_tapeARNs' - A list of unique Amazon Resource Names (ARNs) that represents the
-- virtual tapes that were created.
--
-- 'httpStatus', 'createTapesResponse_httpStatus' - The response's http status code.
newCreateTapesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateTapesResponse
newCreateTapesResponse pHttpStatus_ =
  CreateTapesResponse'
    { tapeARNs = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of unique Amazon Resource Names (ARNs) that represents the
-- virtual tapes that were created.
createTapesResponse_tapeARNs :: Lens.Lens' CreateTapesResponse (Prelude.Maybe [Prelude.Text])
createTapesResponse_tapeARNs = Lens.lens (\CreateTapesResponse' {tapeARNs} -> tapeARNs) (\s@CreateTapesResponse' {} a -> s {tapeARNs = a} :: CreateTapesResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
createTapesResponse_httpStatus :: Lens.Lens' CreateTapesResponse Prelude.Int
createTapesResponse_httpStatus = Lens.lens (\CreateTapesResponse' {httpStatus} -> httpStatus) (\s@CreateTapesResponse' {} a -> s {httpStatus = a} :: CreateTapesResponse)

instance Prelude.NFData CreateTapesResponse
