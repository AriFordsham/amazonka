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
-- Module      : Network.AWS.Mobile.Types.Resource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Mobile.Types.Resource where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about an instance of an AWS resource associated with a
-- project.
--
-- /See:/ 'newResource' smart constructor.
data Resource = Resource'
  { arn :: Prelude.Maybe Prelude.Text,
    name :: Prelude.Maybe Prelude.Text,
    attributes :: Prelude.Maybe (Prelude.Map Prelude.Text Prelude.Text),
    feature :: Prelude.Maybe Prelude.Text,
    type' :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'Resource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'resource_arn' - Undocumented member.
--
-- 'name', 'resource_name' - Undocumented member.
--
-- 'attributes', 'resource_attributes' - Undocumented member.
--
-- 'feature', 'resource_feature' - Undocumented member.
--
-- 'type'', 'resource_type' - Undocumented member.
newResource ::
  Resource
newResource =
  Resource'
    { arn = Prelude.Nothing,
      name = Prelude.Nothing,
      attributes = Prelude.Nothing,
      feature = Prelude.Nothing,
      type' = Prelude.Nothing
    }

-- | Undocumented member.
resource_arn :: Lens.Lens' Resource (Prelude.Maybe Prelude.Text)
resource_arn = Lens.lens (\Resource' {arn} -> arn) (\s@Resource' {} a -> s {arn = a} :: Resource)

-- | Undocumented member.
resource_name :: Lens.Lens' Resource (Prelude.Maybe Prelude.Text)
resource_name = Lens.lens (\Resource' {name} -> name) (\s@Resource' {} a -> s {name = a} :: Resource)

-- | Undocumented member.
resource_attributes :: Lens.Lens' Resource (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
resource_attributes = Lens.lens (\Resource' {attributes} -> attributes) (\s@Resource' {} a -> s {attributes = a} :: Resource) Prelude.. Lens.mapping Prelude._Map

-- | Undocumented member.
resource_feature :: Lens.Lens' Resource (Prelude.Maybe Prelude.Text)
resource_feature = Lens.lens (\Resource' {feature} -> feature) (\s@Resource' {} a -> s {feature = a} :: Resource)

-- | Undocumented member.
resource_type :: Lens.Lens' Resource (Prelude.Maybe Prelude.Text)
resource_type = Lens.lens (\Resource' {type'} -> type') (\s@Resource' {} a -> s {type' = a} :: Resource)

instance Prelude.FromJSON Resource where
  parseJSON =
    Prelude.withObject
      "Resource"
      ( \x ->
          Resource'
            Prelude.<$> (x Prelude..:? "arn")
            Prelude.<*> (x Prelude..:? "name")
            Prelude.<*> ( x Prelude..:? "attributes"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> (x Prelude..:? "feature")
            Prelude.<*> (x Prelude..:? "type")
      )

instance Prelude.Hashable Resource

instance Prelude.NFData Resource
