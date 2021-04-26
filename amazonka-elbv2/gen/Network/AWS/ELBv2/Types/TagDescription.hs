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
-- Module      : Network.AWS.ELBv2.Types.TagDescription
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELBv2.Types.TagDescription where

import Network.AWS.ELBv2.Types.Tag
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The tags associated with a resource.
--
-- /See:/ 'newTagDescription' smart constructor.
data TagDescription = TagDescription'
  { -- | The Amazon Resource Name (ARN) of the resource.
    resourceArn :: Prelude.Maybe Prelude.Text,
    -- | Information about the tags.
    tags :: Prelude.Maybe (Prelude.List1 Tag)
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'TagDescription' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceArn', 'tagDescription_resourceArn' - The Amazon Resource Name (ARN) of the resource.
--
-- 'tags', 'tagDescription_tags' - Information about the tags.
newTagDescription ::
  TagDescription
newTagDescription =
  TagDescription'
    { resourceArn = Prelude.Nothing,
      tags = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) of the resource.
tagDescription_resourceArn :: Lens.Lens' TagDescription (Prelude.Maybe Prelude.Text)
tagDescription_resourceArn = Lens.lens (\TagDescription' {resourceArn} -> resourceArn) (\s@TagDescription' {} a -> s {resourceArn = a} :: TagDescription)

-- | Information about the tags.
tagDescription_tags :: Lens.Lens' TagDescription (Prelude.Maybe (Prelude.NonEmpty Tag))
tagDescription_tags = Lens.lens (\TagDescription' {tags} -> tags) (\s@TagDescription' {} a -> s {tags = a} :: TagDescription) Prelude.. Lens.mapping Prelude._List1

instance Prelude.FromXML TagDescription where
  parseXML x =
    TagDescription'
      Prelude.<$> (x Prelude..@? "ResourceArn")
      Prelude.<*> ( x Prelude..@? "Tags" Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList1 "member")
                  )

instance Prelude.Hashable TagDescription

instance Prelude.NFData TagDescription
