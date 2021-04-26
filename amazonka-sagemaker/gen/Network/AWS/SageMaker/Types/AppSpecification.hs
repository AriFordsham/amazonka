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
-- Module      : Network.AWS.SageMaker.Types.AppSpecification
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AppSpecification where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Configuration to run a processing job in a specified container image.
--
-- /See:/ 'newAppSpecification' smart constructor.
data AppSpecification = AppSpecification'
  { -- | The arguments for a container used to run a processing job.
    containerArguments :: Prelude.Maybe (Prelude.List1 Prelude.Text),
    -- | The entrypoint for a container used to run a processing job.
    containerEntrypoint :: Prelude.Maybe (Prelude.List1 Prelude.Text),
    -- | The container image to be run by the processing job.
    imageUri :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AppSpecification' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'containerArguments', 'appSpecification_containerArguments' - The arguments for a container used to run a processing job.
--
-- 'containerEntrypoint', 'appSpecification_containerEntrypoint' - The entrypoint for a container used to run a processing job.
--
-- 'imageUri', 'appSpecification_imageUri' - The container image to be run by the processing job.
newAppSpecification ::
  -- | 'imageUri'
  Prelude.Text ->
  AppSpecification
newAppSpecification pImageUri_ =
  AppSpecification'
    { containerArguments =
        Prelude.Nothing,
      containerEntrypoint = Prelude.Nothing,
      imageUri = pImageUri_
    }

-- | The arguments for a container used to run a processing job.
appSpecification_containerArguments :: Lens.Lens' AppSpecification (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
appSpecification_containerArguments = Lens.lens (\AppSpecification' {containerArguments} -> containerArguments) (\s@AppSpecification' {} a -> s {containerArguments = a} :: AppSpecification) Prelude.. Lens.mapping Prelude._List1

-- | The entrypoint for a container used to run a processing job.
appSpecification_containerEntrypoint :: Lens.Lens' AppSpecification (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
appSpecification_containerEntrypoint = Lens.lens (\AppSpecification' {containerEntrypoint} -> containerEntrypoint) (\s@AppSpecification' {} a -> s {containerEntrypoint = a} :: AppSpecification) Prelude.. Lens.mapping Prelude._List1

-- | The container image to be run by the processing job.
appSpecification_imageUri :: Lens.Lens' AppSpecification Prelude.Text
appSpecification_imageUri = Lens.lens (\AppSpecification' {imageUri} -> imageUri) (\s@AppSpecification' {} a -> s {imageUri = a} :: AppSpecification)

instance Prelude.FromJSON AppSpecification where
  parseJSON =
    Prelude.withObject
      "AppSpecification"
      ( \x ->
          AppSpecification'
            Prelude.<$> (x Prelude..:? "ContainerArguments")
            Prelude.<*> (x Prelude..:? "ContainerEntrypoint")
            Prelude.<*> (x Prelude..: "ImageUri")
      )

instance Prelude.Hashable AppSpecification

instance Prelude.NFData AppSpecification

instance Prelude.ToJSON AppSpecification where
  toJSON AppSpecification' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("ContainerArguments" Prelude..=)
              Prelude.<$> containerArguments,
            ("ContainerEntrypoint" Prelude..=)
              Prelude.<$> containerEntrypoint,
            Prelude.Just ("ImageUri" Prelude..= imageUri)
          ]
      )
