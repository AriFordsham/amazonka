{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Glacier.Types.Encryption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glacier.Types.Encryption where

import Network.AWS.Glacier.Types.EncryptionType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains information about the encryption used to store the job results
-- in Amazon S3.
--
-- /See:/ 'newEncryption' smart constructor.
data Encryption = Encryption'
  { -- | The server-side encryption algorithm used when storing job results in
    -- Amazon S3, for example @AES256@ or @aws:kms@.
    encryptionType :: Prelude.Maybe EncryptionType,
    -- | The AWS KMS key ID to use for object encryption. All GET and PUT
    -- requests for an object protected by AWS KMS fail if not made by using
    -- Secure Sockets Layer (SSL) or Signature Version 4.
    kMSKeyId :: Prelude.Maybe Prelude.Text,
    -- | Optional. If the encryption type is @aws:kms@, you can use this value to
    -- specify the encryption context for the job results.
    kMSContext :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'Encryption' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'encryptionType', 'encryption_encryptionType' - The server-side encryption algorithm used when storing job results in
-- Amazon S3, for example @AES256@ or @aws:kms@.
--
-- 'kMSKeyId', 'encryption_kMSKeyId' - The AWS KMS key ID to use for object encryption. All GET and PUT
-- requests for an object protected by AWS KMS fail if not made by using
-- Secure Sockets Layer (SSL) or Signature Version 4.
--
-- 'kMSContext', 'encryption_kMSContext' - Optional. If the encryption type is @aws:kms@, you can use this value to
-- specify the encryption context for the job results.
newEncryption ::
  Encryption
newEncryption =
  Encryption'
    { encryptionType = Prelude.Nothing,
      kMSKeyId = Prelude.Nothing,
      kMSContext = Prelude.Nothing
    }

-- | The server-side encryption algorithm used when storing job results in
-- Amazon S3, for example @AES256@ or @aws:kms@.
encryption_encryptionType :: Lens.Lens' Encryption (Prelude.Maybe EncryptionType)
encryption_encryptionType = Lens.lens (\Encryption' {encryptionType} -> encryptionType) (\s@Encryption' {} a -> s {encryptionType = a} :: Encryption)

-- | The AWS KMS key ID to use for object encryption. All GET and PUT
-- requests for an object protected by AWS KMS fail if not made by using
-- Secure Sockets Layer (SSL) or Signature Version 4.
encryption_kMSKeyId :: Lens.Lens' Encryption (Prelude.Maybe Prelude.Text)
encryption_kMSKeyId = Lens.lens (\Encryption' {kMSKeyId} -> kMSKeyId) (\s@Encryption' {} a -> s {kMSKeyId = a} :: Encryption)

-- | Optional. If the encryption type is @aws:kms@, you can use this value to
-- specify the encryption context for the job results.
encryption_kMSContext :: Lens.Lens' Encryption (Prelude.Maybe Prelude.Text)
encryption_kMSContext = Lens.lens (\Encryption' {kMSContext} -> kMSContext) (\s@Encryption' {} a -> s {kMSContext = a} :: Encryption)

instance Prelude.FromJSON Encryption where
  parseJSON =
    Prelude.withObject
      "Encryption"
      ( \x ->
          Encryption'
            Prelude.<$> (x Prelude..:? "EncryptionType")
            Prelude.<*> (x Prelude..:? "KMSKeyId")
            Prelude.<*> (x Prelude..:? "KMSContext")
      )

instance Prelude.Hashable Encryption

instance Prelude.NFData Encryption

instance Prelude.ToJSON Encryption where
  toJSON Encryption' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("EncryptionType" Prelude..=)
              Prelude.<$> encryptionType,
            ("KMSKeyId" Prelude..=) Prelude.<$> kMSKeyId,
            ("KMSContext" Prelude..=) Prelude.<$> kMSContext
          ]
      )
