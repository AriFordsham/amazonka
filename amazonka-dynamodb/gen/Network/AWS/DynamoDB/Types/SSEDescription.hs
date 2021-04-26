{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DynamoDB.Types.SSEDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.SSEDescription where

import Network.AWS.DynamoDB.Types.SSEStatus
import Network.AWS.DynamoDB.Types.SSEType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The description of the server-side encryption status on the specified
-- table.
--
-- /See:/ 'newSSEDescription' smart constructor.
data SSEDescription = SSEDescription'
  { -- | Represents the current state of server-side encryption. The only
    -- supported values are:
    --
    -- -   @ENABLED@ - Server-side encryption is enabled.
    --
    -- -   @UPDATING@ - Server-side encryption is being updated.
    status :: Prelude.Maybe SSEStatus,
    -- | The AWS KMS customer master key (CMK) ARN used for the AWS KMS
    -- encryption.
    kMSMasterKeyArn :: Prelude.Maybe Prelude.Text,
    -- | Indicates the time, in UNIX epoch date format, when DynamoDB detected
    -- that the table\'s AWS KMS key was inaccessible. This attribute will
    -- automatically be cleared when DynamoDB detects that the table\'s AWS KMS
    -- key is accessible again. DynamoDB will initiate the table archival
    -- process when table\'s AWS KMS key remains inaccessible for more than
    -- seven days from this date.
    inaccessibleEncryptionDateTime :: Prelude.Maybe Prelude.POSIX,
    -- | Server-side encryption type. The only supported value is:
    --
    -- -   @KMS@ - Server-side encryption that uses AWS Key Management Service.
    --     The key is stored in your account and is managed by AWS KMS (AWS KMS
    --     charges apply).
    sSEType :: Prelude.Maybe SSEType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'SSEDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'sSEDescription_status' - Represents the current state of server-side encryption. The only
-- supported values are:
--
-- -   @ENABLED@ - Server-side encryption is enabled.
--
-- -   @UPDATING@ - Server-side encryption is being updated.
--
-- 'kMSMasterKeyArn', 'sSEDescription_kMSMasterKeyArn' - The AWS KMS customer master key (CMK) ARN used for the AWS KMS
-- encryption.
--
-- 'inaccessibleEncryptionDateTime', 'sSEDescription_inaccessibleEncryptionDateTime' - Indicates the time, in UNIX epoch date format, when DynamoDB detected
-- that the table\'s AWS KMS key was inaccessible. This attribute will
-- automatically be cleared when DynamoDB detects that the table\'s AWS KMS
-- key is accessible again. DynamoDB will initiate the table archival
-- process when table\'s AWS KMS key remains inaccessible for more than
-- seven days from this date.
--
-- 'sSEType', 'sSEDescription_sSEType' - Server-side encryption type. The only supported value is:
--
-- -   @KMS@ - Server-side encryption that uses AWS Key Management Service.
--     The key is stored in your account and is managed by AWS KMS (AWS KMS
--     charges apply).
newSSEDescription ::
  SSEDescription
newSSEDescription =
  SSEDescription'
    { status = Prelude.Nothing,
      kMSMasterKeyArn = Prelude.Nothing,
      inaccessibleEncryptionDateTime = Prelude.Nothing,
      sSEType = Prelude.Nothing
    }

-- | Represents the current state of server-side encryption. The only
-- supported values are:
--
-- -   @ENABLED@ - Server-side encryption is enabled.
--
-- -   @UPDATING@ - Server-side encryption is being updated.
sSEDescription_status :: Lens.Lens' SSEDescription (Prelude.Maybe SSEStatus)
sSEDescription_status = Lens.lens (\SSEDescription' {status} -> status) (\s@SSEDescription' {} a -> s {status = a} :: SSEDescription)

-- | The AWS KMS customer master key (CMK) ARN used for the AWS KMS
-- encryption.
sSEDescription_kMSMasterKeyArn :: Lens.Lens' SSEDescription (Prelude.Maybe Prelude.Text)
sSEDescription_kMSMasterKeyArn = Lens.lens (\SSEDescription' {kMSMasterKeyArn} -> kMSMasterKeyArn) (\s@SSEDescription' {} a -> s {kMSMasterKeyArn = a} :: SSEDescription)

-- | Indicates the time, in UNIX epoch date format, when DynamoDB detected
-- that the table\'s AWS KMS key was inaccessible. This attribute will
-- automatically be cleared when DynamoDB detects that the table\'s AWS KMS
-- key is accessible again. DynamoDB will initiate the table archival
-- process when table\'s AWS KMS key remains inaccessible for more than
-- seven days from this date.
sSEDescription_inaccessibleEncryptionDateTime :: Lens.Lens' SSEDescription (Prelude.Maybe Prelude.UTCTime)
sSEDescription_inaccessibleEncryptionDateTime = Lens.lens (\SSEDescription' {inaccessibleEncryptionDateTime} -> inaccessibleEncryptionDateTime) (\s@SSEDescription' {} a -> s {inaccessibleEncryptionDateTime = a} :: SSEDescription) Prelude.. Lens.mapping Prelude._Time

-- | Server-side encryption type. The only supported value is:
--
-- -   @KMS@ - Server-side encryption that uses AWS Key Management Service.
--     The key is stored in your account and is managed by AWS KMS (AWS KMS
--     charges apply).
sSEDescription_sSEType :: Lens.Lens' SSEDescription (Prelude.Maybe SSEType)
sSEDescription_sSEType = Lens.lens (\SSEDescription' {sSEType} -> sSEType) (\s@SSEDescription' {} a -> s {sSEType = a} :: SSEDescription)

instance Prelude.FromJSON SSEDescription where
  parseJSON =
    Prelude.withObject
      "SSEDescription"
      ( \x ->
          SSEDescription'
            Prelude.<$> (x Prelude..:? "Status")
            Prelude.<*> (x Prelude..:? "KMSMasterKeyArn")
            Prelude.<*> (x Prelude..:? "InaccessibleEncryptionDateTime")
            Prelude.<*> (x Prelude..:? "SSEType")
      )

instance Prelude.Hashable SSEDescription

instance Prelude.NFData SSEDescription
