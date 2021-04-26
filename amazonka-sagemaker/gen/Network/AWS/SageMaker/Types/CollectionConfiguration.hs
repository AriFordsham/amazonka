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
-- Module      : Network.AWS.SageMaker.Types.CollectionConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.CollectionConfiguration where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Configuration information for the Debugger output tensor collections.
--
-- /See:/ 'newCollectionConfiguration' smart constructor.
data CollectionConfiguration = CollectionConfiguration'
  { -- | Parameter values for the tensor collection. The allowed parameters are
    -- @\"name\"@, @\"include_regex\"@, @\"reduction_config\"@,
    -- @\"save_config\"@, @\"tensor_names\"@, and @\"save_histogram\"@.
    collectionParameters :: Prelude.Maybe (Prelude.Map Prelude.Text Prelude.Text),
    -- | The name of the tensor collection. The name must be unique relative to
    -- other rule configuration names.
    collectionName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CollectionConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'collectionParameters', 'collectionConfiguration_collectionParameters' - Parameter values for the tensor collection. The allowed parameters are
-- @\"name\"@, @\"include_regex\"@, @\"reduction_config\"@,
-- @\"save_config\"@, @\"tensor_names\"@, and @\"save_histogram\"@.
--
-- 'collectionName', 'collectionConfiguration_collectionName' - The name of the tensor collection. The name must be unique relative to
-- other rule configuration names.
newCollectionConfiguration ::
  CollectionConfiguration
newCollectionConfiguration =
  CollectionConfiguration'
    { collectionParameters =
        Prelude.Nothing,
      collectionName = Prelude.Nothing
    }

-- | Parameter values for the tensor collection. The allowed parameters are
-- @\"name\"@, @\"include_regex\"@, @\"reduction_config\"@,
-- @\"save_config\"@, @\"tensor_names\"@, and @\"save_histogram\"@.
collectionConfiguration_collectionParameters :: Lens.Lens' CollectionConfiguration (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
collectionConfiguration_collectionParameters = Lens.lens (\CollectionConfiguration' {collectionParameters} -> collectionParameters) (\s@CollectionConfiguration' {} a -> s {collectionParameters = a} :: CollectionConfiguration) Prelude.. Lens.mapping Prelude._Map

-- | The name of the tensor collection. The name must be unique relative to
-- other rule configuration names.
collectionConfiguration_collectionName :: Lens.Lens' CollectionConfiguration (Prelude.Maybe Prelude.Text)
collectionConfiguration_collectionName = Lens.lens (\CollectionConfiguration' {collectionName} -> collectionName) (\s@CollectionConfiguration' {} a -> s {collectionName = a} :: CollectionConfiguration)

instance Prelude.FromJSON CollectionConfiguration where
  parseJSON =
    Prelude.withObject
      "CollectionConfiguration"
      ( \x ->
          CollectionConfiguration'
            Prelude.<$> ( x Prelude..:? "CollectionParameters"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> (x Prelude..:? "CollectionName")
      )

instance Prelude.Hashable CollectionConfiguration

instance Prelude.NFData CollectionConfiguration

instance Prelude.ToJSON CollectionConfiguration where
  toJSON CollectionConfiguration' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("CollectionParameters" Prelude..=)
              Prelude.<$> collectionParameters,
            ("CollectionName" Prelude..=)
              Prelude.<$> collectionName
          ]
      )
