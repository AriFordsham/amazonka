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
-- Module      : Network.AWS.S3.Types.SSEKMS
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.SSEKMS where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal

-- | Specifies the use of SSE-KMS to encrypt delivered inventory reports.
--
-- /See:/ 'newSSEKMS' smart constructor.
data SSEKMS = SSEKMS'
  { -- | Specifies the ID of the AWS Key Management Service (AWS KMS) symmetric
    -- customer managed customer master key (CMK) to use for encrypting
    -- inventory reports.
    keyId :: Prelude.Sensitive Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'SSEKMS' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'keyId', 'sSEKMS_keyId' - Specifies the ID of the AWS Key Management Service (AWS KMS) symmetric
-- customer managed customer master key (CMK) to use for encrypting
-- inventory reports.
newSSEKMS ::
  -- | 'keyId'
  Prelude.Text ->
  SSEKMS
newSSEKMS pKeyId_ =
  SSEKMS' {keyId = Prelude._Sensitive Lens.# pKeyId_}

-- | Specifies the ID of the AWS Key Management Service (AWS KMS) symmetric
-- customer managed customer master key (CMK) to use for encrypting
-- inventory reports.
sSEKMS_keyId :: Lens.Lens' SSEKMS Prelude.Text
sSEKMS_keyId = Lens.lens (\SSEKMS' {keyId} -> keyId) (\s@SSEKMS' {} a -> s {keyId = a} :: SSEKMS) Prelude.. Prelude._Sensitive

instance Prelude.FromXML SSEKMS where
  parseXML x =
    SSEKMS' Prelude.<$> (x Prelude..@ "KeyId")

instance Prelude.Hashable SSEKMS

instance Prelude.NFData SSEKMS

instance Prelude.ToXML SSEKMS where
  toXML SSEKMS' {..} =
    Prelude.mconcat ["KeyId" Prelude.@= keyId]
