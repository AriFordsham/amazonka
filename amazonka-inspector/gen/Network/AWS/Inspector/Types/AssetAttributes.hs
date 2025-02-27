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
-- Module      : Network.AWS.Inspector.Types.AssetAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.AssetAttributes where

import Network.AWS.Inspector.Types.NetworkInterface
import Network.AWS.Inspector.Types.Tag
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A collection of attributes of the host from which the finding is
-- generated.
--
-- /See:/ 'newAssetAttributes' smart constructor.
data AssetAttributes = AssetAttributes'
  { -- | The hostname of the EC2 instance where the finding is generated.
    hostname :: Prelude.Maybe Prelude.Text,
    -- | The ID of the agent that is installed on the EC2 instance where the
    -- finding is generated.
    agentId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the Amazon Machine Image (AMI) that is installed on the EC2
    -- instance where the finding is generated.
    amiId :: Prelude.Maybe Prelude.Text,
    -- | The tags related to the EC2 instance where the finding is generated.
    tags :: Prelude.Maybe [Tag],
    -- | The list of IP v4 addresses of the EC2 instance where the finding is
    -- generated.
    ipv4Addresses :: Prelude.Maybe [Prelude.Text],
    -- | An array of the network interfaces interacting with the EC2 instance
    -- where the finding is generated.
    networkInterfaces :: Prelude.Maybe [NetworkInterface],
    -- | The Auto Scaling group of the EC2 instance where the finding is
    -- generated.
    autoScalingGroup :: Prelude.Maybe Prelude.Text,
    -- | The schema version of this data type.
    schemaVersion :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AssetAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'hostname', 'assetAttributes_hostname' - The hostname of the EC2 instance where the finding is generated.
--
-- 'agentId', 'assetAttributes_agentId' - The ID of the agent that is installed on the EC2 instance where the
-- finding is generated.
--
-- 'amiId', 'assetAttributes_amiId' - The ID of the Amazon Machine Image (AMI) that is installed on the EC2
-- instance where the finding is generated.
--
-- 'tags', 'assetAttributes_tags' - The tags related to the EC2 instance where the finding is generated.
--
-- 'ipv4Addresses', 'assetAttributes_ipv4Addresses' - The list of IP v4 addresses of the EC2 instance where the finding is
-- generated.
--
-- 'networkInterfaces', 'assetAttributes_networkInterfaces' - An array of the network interfaces interacting with the EC2 instance
-- where the finding is generated.
--
-- 'autoScalingGroup', 'assetAttributes_autoScalingGroup' - The Auto Scaling group of the EC2 instance where the finding is
-- generated.
--
-- 'schemaVersion', 'assetAttributes_schemaVersion' - The schema version of this data type.
newAssetAttributes ::
  -- | 'schemaVersion'
  Prelude.Natural ->
  AssetAttributes
newAssetAttributes pSchemaVersion_ =
  AssetAttributes'
    { hostname = Prelude.Nothing,
      agentId = Prelude.Nothing,
      amiId = Prelude.Nothing,
      tags = Prelude.Nothing,
      ipv4Addresses = Prelude.Nothing,
      networkInterfaces = Prelude.Nothing,
      autoScalingGroup = Prelude.Nothing,
      schemaVersion = pSchemaVersion_
    }

-- | The hostname of the EC2 instance where the finding is generated.
assetAttributes_hostname :: Lens.Lens' AssetAttributes (Prelude.Maybe Prelude.Text)
assetAttributes_hostname = Lens.lens (\AssetAttributes' {hostname} -> hostname) (\s@AssetAttributes' {} a -> s {hostname = a} :: AssetAttributes)

-- | The ID of the agent that is installed on the EC2 instance where the
-- finding is generated.
assetAttributes_agentId :: Lens.Lens' AssetAttributes (Prelude.Maybe Prelude.Text)
assetAttributes_agentId = Lens.lens (\AssetAttributes' {agentId} -> agentId) (\s@AssetAttributes' {} a -> s {agentId = a} :: AssetAttributes)

-- | The ID of the Amazon Machine Image (AMI) that is installed on the EC2
-- instance where the finding is generated.
assetAttributes_amiId :: Lens.Lens' AssetAttributes (Prelude.Maybe Prelude.Text)
assetAttributes_amiId = Lens.lens (\AssetAttributes' {amiId} -> amiId) (\s@AssetAttributes' {} a -> s {amiId = a} :: AssetAttributes)

-- | The tags related to the EC2 instance where the finding is generated.
assetAttributes_tags :: Lens.Lens' AssetAttributes (Prelude.Maybe [Tag])
assetAttributes_tags = Lens.lens (\AssetAttributes' {tags} -> tags) (\s@AssetAttributes' {} a -> s {tags = a} :: AssetAttributes) Prelude.. Lens.mapping Prelude._Coerce

-- | The list of IP v4 addresses of the EC2 instance where the finding is
-- generated.
assetAttributes_ipv4Addresses :: Lens.Lens' AssetAttributes (Prelude.Maybe [Prelude.Text])
assetAttributes_ipv4Addresses = Lens.lens (\AssetAttributes' {ipv4Addresses} -> ipv4Addresses) (\s@AssetAttributes' {} a -> s {ipv4Addresses = a} :: AssetAttributes) Prelude.. Lens.mapping Prelude._Coerce

-- | An array of the network interfaces interacting with the EC2 instance
-- where the finding is generated.
assetAttributes_networkInterfaces :: Lens.Lens' AssetAttributes (Prelude.Maybe [NetworkInterface])
assetAttributes_networkInterfaces = Lens.lens (\AssetAttributes' {networkInterfaces} -> networkInterfaces) (\s@AssetAttributes' {} a -> s {networkInterfaces = a} :: AssetAttributes) Prelude.. Lens.mapping Prelude._Coerce

-- | The Auto Scaling group of the EC2 instance where the finding is
-- generated.
assetAttributes_autoScalingGroup :: Lens.Lens' AssetAttributes (Prelude.Maybe Prelude.Text)
assetAttributes_autoScalingGroup = Lens.lens (\AssetAttributes' {autoScalingGroup} -> autoScalingGroup) (\s@AssetAttributes' {} a -> s {autoScalingGroup = a} :: AssetAttributes)

-- | The schema version of this data type.
assetAttributes_schemaVersion :: Lens.Lens' AssetAttributes Prelude.Natural
assetAttributes_schemaVersion = Lens.lens (\AssetAttributes' {schemaVersion} -> schemaVersion) (\s@AssetAttributes' {} a -> s {schemaVersion = a} :: AssetAttributes)

instance Prelude.FromJSON AssetAttributes where
  parseJSON =
    Prelude.withObject
      "AssetAttributes"
      ( \x ->
          AssetAttributes'
            Prelude.<$> (x Prelude..:? "hostname")
            Prelude.<*> (x Prelude..:? "agentId")
            Prelude.<*> (x Prelude..:? "amiId")
            Prelude.<*> (x Prelude..:? "tags" Prelude..!= Prelude.mempty)
            Prelude.<*> ( x Prelude..:? "ipv4Addresses"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> ( x Prelude..:? "networkInterfaces"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> (x Prelude..:? "autoScalingGroup")
            Prelude.<*> (x Prelude..: "schemaVersion")
      )

instance Prelude.Hashable AssetAttributes

instance Prelude.NFData AssetAttributes
