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
-- Module      : Network.AWS.KMS.GenerateRandom
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a random byte string that is cryptographically secure.
--
-- By default, the random byte string is generated in AWS KMS. To generate
-- the byte string in the AWS CloudHSM cluster that is associated with a
-- <https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html custom key store>,
-- specify the custom key store ID.
--
-- For more information about entropy and random number generation, see the
-- <https://d0.awsstatic.com/whitepapers/KMS-Cryptographic-Details.pdf AWS Key Management Service Cryptographic Details>
-- whitepaper.
--
-- __Required permissions__:
-- <https://docs.aws.amazon.com/kms/latest/developerguide/kms-api-permissions-reference.html kms:GenerateRandom>
-- (IAM policy)
module Network.AWS.KMS.GenerateRandom
  ( -- * Creating a Request
    GenerateRandom (..),
    newGenerateRandom,

    -- * Request Lenses
    generateRandom_customKeyStoreId,
    generateRandom_numberOfBytes,

    -- * Destructuring the Response
    GenerateRandomResponse (..),
    newGenerateRandomResponse,

    -- * Response Lenses
    generateRandomResponse_plaintext,
    generateRandomResponse_httpStatus,
  )
where

import Network.AWS.KMS.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGenerateRandom' smart constructor.
data GenerateRandom = GenerateRandom'
  { -- | Generates the random byte string in the AWS CloudHSM cluster that is
    -- associated with the specified
    -- <https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html custom key store>.
    -- To find the ID of a custom key store, use the DescribeCustomKeyStores
    -- operation.
    customKeyStoreId :: Prelude.Maybe Prelude.Text,
    -- | The length of the byte string.
    numberOfBytes :: Prelude.Maybe Prelude.Nat
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GenerateRandom' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'customKeyStoreId', 'generateRandom_customKeyStoreId' - Generates the random byte string in the AWS CloudHSM cluster that is
-- associated with the specified
-- <https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html custom key store>.
-- To find the ID of a custom key store, use the DescribeCustomKeyStores
-- operation.
--
-- 'numberOfBytes', 'generateRandom_numberOfBytes' - The length of the byte string.
newGenerateRandom ::
  GenerateRandom
newGenerateRandom =
  GenerateRandom'
    { customKeyStoreId = Prelude.Nothing,
      numberOfBytes = Prelude.Nothing
    }

-- | Generates the random byte string in the AWS CloudHSM cluster that is
-- associated with the specified
-- <https://docs.aws.amazon.com/kms/latest/developerguide/custom-key-store-overview.html custom key store>.
-- To find the ID of a custom key store, use the DescribeCustomKeyStores
-- operation.
generateRandom_customKeyStoreId :: Lens.Lens' GenerateRandom (Prelude.Maybe Prelude.Text)
generateRandom_customKeyStoreId = Lens.lens (\GenerateRandom' {customKeyStoreId} -> customKeyStoreId) (\s@GenerateRandom' {} a -> s {customKeyStoreId = a} :: GenerateRandom)

-- | The length of the byte string.
generateRandom_numberOfBytes :: Lens.Lens' GenerateRandom (Prelude.Maybe Prelude.Natural)
generateRandom_numberOfBytes = Lens.lens (\GenerateRandom' {numberOfBytes} -> numberOfBytes) (\s@GenerateRandom' {} a -> s {numberOfBytes = a} :: GenerateRandom) Prelude.. Lens.mapping Prelude._Nat

instance Prelude.AWSRequest GenerateRandom where
  type Rs GenerateRandom = GenerateRandomResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GenerateRandomResponse'
            Prelude.<$> (x Prelude..?> "Plaintext")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GenerateRandom

instance Prelude.NFData GenerateRandom

instance Prelude.ToHeaders GenerateRandom where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "TrentService.GenerateRandom" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON GenerateRandom where
  toJSON GenerateRandom' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("CustomKeyStoreId" Prelude..=)
              Prelude.<$> customKeyStoreId,
            ("NumberOfBytes" Prelude..=)
              Prelude.<$> numberOfBytes
          ]
      )

instance Prelude.ToPath GenerateRandom where
  toPath = Prelude.const "/"

instance Prelude.ToQuery GenerateRandom where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGenerateRandomResponse' smart constructor.
data GenerateRandomResponse = GenerateRandomResponse'
  { -- | The random byte string. When you use the HTTP API or the AWS CLI, the
    -- value is Base64-encoded. Otherwise, it is not Base64-encoded.
    plaintext :: Prelude.Maybe (Prelude.Sensitive Prelude.Base64),
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GenerateRandomResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'plaintext', 'generateRandomResponse_plaintext' - The random byte string. When you use the HTTP API or the AWS CLI, the
-- value is Base64-encoded. Otherwise, it is not Base64-encoded.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
--
-- 'httpStatus', 'generateRandomResponse_httpStatus' - The response's http status code.
newGenerateRandomResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GenerateRandomResponse
newGenerateRandomResponse pHttpStatus_ =
  GenerateRandomResponse'
    { plaintext =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The random byte string. When you use the HTTP API or the AWS CLI, the
-- value is Base64-encoded. Otherwise, it is not Base64-encoded.--
-- -- /Note:/ This 'Lens' automatically encodes and decodes Base64 data.
-- -- The underlying isomorphism will encode to Base64 representation during
-- -- serialisation, and decode from Base64 representation during deserialisation.
-- -- This 'Lens' accepts and returns only raw unencoded data.
generateRandomResponse_plaintext :: Lens.Lens' GenerateRandomResponse (Prelude.Maybe Prelude.ByteString)
generateRandomResponse_plaintext = Lens.lens (\GenerateRandomResponse' {plaintext} -> plaintext) (\s@GenerateRandomResponse' {} a -> s {plaintext = a} :: GenerateRandomResponse) Prelude.. Lens.mapping (Prelude._Sensitive Prelude.. Prelude._Base64)

-- | The response's http status code.
generateRandomResponse_httpStatus :: Lens.Lens' GenerateRandomResponse Prelude.Int
generateRandomResponse_httpStatus = Lens.lens (\GenerateRandomResponse' {httpStatus} -> httpStatus) (\s@GenerateRandomResponse' {} a -> s {httpStatus = a} :: GenerateRandomResponse)

instance Prelude.NFData GenerateRandomResponse
