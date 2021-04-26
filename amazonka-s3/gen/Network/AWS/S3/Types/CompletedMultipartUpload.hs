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
-- Module      : Network.AWS.S3.Types.CompletedMultipartUpload
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.S3.Types.CompletedMultipartUpload where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.S3.Internal
import Network.AWS.S3.Types.CompletedPart

-- | The container for the completed multipart upload details.
--
-- /See:/ 'newCompletedMultipartUpload' smart constructor.
data CompletedMultipartUpload = CompletedMultipartUpload'
  { -- | Array of CompletedPart data types.
    parts :: Prelude.Maybe (Prelude.List1 CompletedPart)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CompletedMultipartUpload' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'parts', 'completedMultipartUpload_parts' - Array of CompletedPart data types.
newCompletedMultipartUpload ::
  CompletedMultipartUpload
newCompletedMultipartUpload =
  CompletedMultipartUpload' {parts = Prelude.Nothing}

-- | Array of CompletedPart data types.
completedMultipartUpload_parts :: Lens.Lens' CompletedMultipartUpload (Prelude.Maybe (Prelude.NonEmpty CompletedPart))
completedMultipartUpload_parts = Lens.lens (\CompletedMultipartUpload' {parts} -> parts) (\s@CompletedMultipartUpload' {} a -> s {parts = a} :: CompletedMultipartUpload) Prelude.. Lens.mapping Prelude._List1

instance Prelude.Hashable CompletedMultipartUpload

instance Prelude.NFData CompletedMultipartUpload

instance Prelude.ToXML CompletedMultipartUpload where
  toXML CompletedMultipartUpload' {..} =
    Prelude.mconcat
      [ Prelude.toXML
          (Prelude.toXMLList "Part" Prelude.<$> parts)
      ]
