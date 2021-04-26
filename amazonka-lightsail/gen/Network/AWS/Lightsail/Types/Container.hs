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
-- Module      : Network.AWS.Lightsail.Types.Container
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.Container where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Lightsail.Types.ContainerServiceProtocol
import qualified Network.AWS.Prelude as Prelude

-- | Describes the settings of a container that will be launched, or that is
-- launched, to an Amazon Lightsail container service.
--
-- /See:/ 'newContainer' smart constructor.
data Container = Container'
  { -- | The environment variables of the container.
    environment :: Prelude.Maybe (Prelude.Map Prelude.Text Prelude.Text),
    -- | The open firewall ports of the container.
    ports :: Prelude.Maybe (Prelude.Map Prelude.Text ContainerServiceProtocol),
    -- | The name of the image used for the container.
    --
    -- Container images sourced from your Lightsail container service, that are
    -- registered and stored on your service, start with a colon (@:@). For
    -- example, @:container-service-1.mystaticwebsite.1@. Container images
    -- sourced from a public registry like Docker Hub don\'t start with a
    -- colon. For example, @nginx:latest@ or @nginx@.
    image :: Prelude.Maybe Prelude.Text,
    -- | The launch command for the container.
    command :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'Container' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'environment', 'container_environment' - The environment variables of the container.
--
-- 'ports', 'container_ports' - The open firewall ports of the container.
--
-- 'image', 'container_image' - The name of the image used for the container.
--
-- Container images sourced from your Lightsail container service, that are
-- registered and stored on your service, start with a colon (@:@). For
-- example, @:container-service-1.mystaticwebsite.1@. Container images
-- sourced from a public registry like Docker Hub don\'t start with a
-- colon. For example, @nginx:latest@ or @nginx@.
--
-- 'command', 'container_command' - The launch command for the container.
newContainer ::
  Container
newContainer =
  Container'
    { environment = Prelude.Nothing,
      ports = Prelude.Nothing,
      image = Prelude.Nothing,
      command = Prelude.Nothing
    }

-- | The environment variables of the container.
container_environment :: Lens.Lens' Container (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
container_environment = Lens.lens (\Container' {environment} -> environment) (\s@Container' {} a -> s {environment = a} :: Container) Prelude.. Lens.mapping Prelude._Map

-- | The open firewall ports of the container.
container_ports :: Lens.Lens' Container (Prelude.Maybe (Prelude.HashMap Prelude.Text ContainerServiceProtocol))
container_ports = Lens.lens (\Container' {ports} -> ports) (\s@Container' {} a -> s {ports = a} :: Container) Prelude.. Lens.mapping Prelude._Map

-- | The name of the image used for the container.
--
-- Container images sourced from your Lightsail container service, that are
-- registered and stored on your service, start with a colon (@:@). For
-- example, @:container-service-1.mystaticwebsite.1@. Container images
-- sourced from a public registry like Docker Hub don\'t start with a
-- colon. For example, @nginx:latest@ or @nginx@.
container_image :: Lens.Lens' Container (Prelude.Maybe Prelude.Text)
container_image = Lens.lens (\Container' {image} -> image) (\s@Container' {} a -> s {image = a} :: Container)

-- | The launch command for the container.
container_command :: Lens.Lens' Container (Prelude.Maybe [Prelude.Text])
container_command = Lens.lens (\Container' {command} -> command) (\s@Container' {} a -> s {command = a} :: Container) Prelude.. Lens.mapping Prelude._Coerce

instance Prelude.FromJSON Container where
  parseJSON =
    Prelude.withObject
      "Container"
      ( \x ->
          Container'
            Prelude.<$> ( x Prelude..:? "environment"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> (x Prelude..:? "ports" Prelude..!= Prelude.mempty)
            Prelude.<*> (x Prelude..:? "image")
            Prelude.<*> (x Prelude..:? "command" Prelude..!= Prelude.mempty)
      )

instance Prelude.Hashable Container

instance Prelude.NFData Container

instance Prelude.ToJSON Container where
  toJSON Container' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("environment" Prelude..=) Prelude.<$> environment,
            ("ports" Prelude..=) Prelude.<$> ports,
            ("image" Prelude..=) Prelude.<$> image,
            ("command" Prelude..=) Prelude.<$> command
          ]
      )
