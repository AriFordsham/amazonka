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
-- Module      : Network.AWS.WorkDocs.Types.UploadMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.UploadMetadata where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Describes the upload.
--
-- /See:/ 'newUploadMetadata' smart constructor.
data UploadMetadata = UploadMetadata'
  { -- | The signed headers.
    signedHeaders :: Prelude.Maybe (Prelude.Map Prelude.Text Prelude.Text),
    -- | The URL of the upload.
    uploadUrl :: Prelude.Maybe (Prelude.Sensitive Prelude.Text)
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'UploadMetadata' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'signedHeaders', 'uploadMetadata_signedHeaders' - The signed headers.
--
-- 'uploadUrl', 'uploadMetadata_uploadUrl' - The URL of the upload.
newUploadMetadata ::
  UploadMetadata
newUploadMetadata =
  UploadMetadata'
    { signedHeaders = Prelude.Nothing,
      uploadUrl = Prelude.Nothing
    }

-- | The signed headers.
uploadMetadata_signedHeaders :: Lens.Lens' UploadMetadata (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
uploadMetadata_signedHeaders = Lens.lens (\UploadMetadata' {signedHeaders} -> signedHeaders) (\s@UploadMetadata' {} a -> s {signedHeaders = a} :: UploadMetadata) Prelude.. Lens.mapping Prelude._Map

-- | The URL of the upload.
uploadMetadata_uploadUrl :: Lens.Lens' UploadMetadata (Prelude.Maybe Prelude.Text)
uploadMetadata_uploadUrl = Lens.lens (\UploadMetadata' {uploadUrl} -> uploadUrl) (\s@UploadMetadata' {} a -> s {uploadUrl = a} :: UploadMetadata) Prelude.. Lens.mapping Prelude._Sensitive

instance Prelude.FromJSON UploadMetadata where
  parseJSON =
    Prelude.withObject
      "UploadMetadata"
      ( \x ->
          UploadMetadata'
            Prelude.<$> ( x Prelude..:? "SignedHeaders"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> (x Prelude..:? "UploadUrl")
      )

instance Prelude.Hashable UploadMetadata

instance Prelude.NFData UploadMetadata
