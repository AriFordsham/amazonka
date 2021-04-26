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
-- Module      : Network.AWS.CloudDirectory.Types.FacetAttributeDefinition
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.FacetAttributeDefinition where

import Network.AWS.CloudDirectory.Types.FacetAttributeType
import Network.AWS.CloudDirectory.Types.Rule
import Network.AWS.CloudDirectory.Types.TypedAttributeValue
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A facet attribute definition. See
-- <https://docs.aws.amazon.com/clouddirectory/latest/developerguide/schemas_attributereferences.html Attribute References>
-- for more information.
--
-- /See:/ 'newFacetAttributeDefinition' smart constructor.
data FacetAttributeDefinition = FacetAttributeDefinition'
  { -- | Whether the attribute is mutable or not.
    isImmutable :: Prelude.Maybe Prelude.Bool,
    -- | Validation rules attached to the attribute definition.
    rules :: Prelude.Maybe (Prelude.Map Prelude.Text Rule),
    -- | The default value of the attribute (if configured).
    defaultValue :: Prelude.Maybe TypedAttributeValue,
    -- | The type of the attribute.
    type' :: FacetAttributeType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'FacetAttributeDefinition' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'isImmutable', 'facetAttributeDefinition_isImmutable' - Whether the attribute is mutable or not.
--
-- 'rules', 'facetAttributeDefinition_rules' - Validation rules attached to the attribute definition.
--
-- 'defaultValue', 'facetAttributeDefinition_defaultValue' - The default value of the attribute (if configured).
--
-- 'type'', 'facetAttributeDefinition_type' - The type of the attribute.
newFacetAttributeDefinition ::
  -- | 'type''
  FacetAttributeType ->
  FacetAttributeDefinition
newFacetAttributeDefinition pType_ =
  FacetAttributeDefinition'
    { isImmutable =
        Prelude.Nothing,
      rules = Prelude.Nothing,
      defaultValue = Prelude.Nothing,
      type' = pType_
    }

-- | Whether the attribute is mutable or not.
facetAttributeDefinition_isImmutable :: Lens.Lens' FacetAttributeDefinition (Prelude.Maybe Prelude.Bool)
facetAttributeDefinition_isImmutable = Lens.lens (\FacetAttributeDefinition' {isImmutable} -> isImmutable) (\s@FacetAttributeDefinition' {} a -> s {isImmutable = a} :: FacetAttributeDefinition)

-- | Validation rules attached to the attribute definition.
facetAttributeDefinition_rules :: Lens.Lens' FacetAttributeDefinition (Prelude.Maybe (Prelude.HashMap Prelude.Text Rule))
facetAttributeDefinition_rules = Lens.lens (\FacetAttributeDefinition' {rules} -> rules) (\s@FacetAttributeDefinition' {} a -> s {rules = a} :: FacetAttributeDefinition) Prelude.. Lens.mapping Prelude._Map

-- | The default value of the attribute (if configured).
facetAttributeDefinition_defaultValue :: Lens.Lens' FacetAttributeDefinition (Prelude.Maybe TypedAttributeValue)
facetAttributeDefinition_defaultValue = Lens.lens (\FacetAttributeDefinition' {defaultValue} -> defaultValue) (\s@FacetAttributeDefinition' {} a -> s {defaultValue = a} :: FacetAttributeDefinition)

-- | The type of the attribute.
facetAttributeDefinition_type :: Lens.Lens' FacetAttributeDefinition FacetAttributeType
facetAttributeDefinition_type = Lens.lens (\FacetAttributeDefinition' {type'} -> type') (\s@FacetAttributeDefinition' {} a -> s {type' = a} :: FacetAttributeDefinition)

instance Prelude.FromJSON FacetAttributeDefinition where
  parseJSON =
    Prelude.withObject
      "FacetAttributeDefinition"
      ( \x ->
          FacetAttributeDefinition'
            Prelude.<$> (x Prelude..:? "IsImmutable")
            Prelude.<*> (x Prelude..:? "Rules" Prelude..!= Prelude.mempty)
            Prelude.<*> (x Prelude..:? "DefaultValue")
            Prelude.<*> (x Prelude..: "Type")
      )

instance Prelude.Hashable FacetAttributeDefinition

instance Prelude.NFData FacetAttributeDefinition

instance Prelude.ToJSON FacetAttributeDefinition where
  toJSON FacetAttributeDefinition' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("IsImmutable" Prelude..=) Prelude.<$> isImmutable,
            ("Rules" Prelude..=) Prelude.<$> rules,
            ("DefaultValue" Prelude..=) Prelude.<$> defaultValue,
            Prelude.Just ("Type" Prelude..= type')
          ]
      )
