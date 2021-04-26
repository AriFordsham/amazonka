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
-- Module      : Network.AWS.RDS.Types.DBClusterSnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.DBClusterSnapshot where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types.Tag

-- | Contains the details for an Amazon RDS DB cluster snapshot
--
-- This data type is used as a response element in the
-- @DescribeDBClusterSnapshots@ action.
--
-- /See:/ 'newDBClusterSnapshot' smart constructor.
data DBClusterSnapshot = DBClusterSnapshot'
  { -- | Specifies whether the DB cluster snapshot is encrypted.
    storageEncrypted :: Prelude.Maybe Prelude.Bool,
    -- | Specifies the status of this DB cluster snapshot.
    status :: Prelude.Maybe Prelude.Text,
    -- | Provides the list of Availability Zones (AZs) where instances in the DB
    -- cluster snapshot can be restored.
    availabilityZones :: Prelude.Maybe [Prelude.Text],
    -- | Specifies the time when the DB cluster was created, in Universal
    -- Coordinated Time (UTC).
    clusterCreateTime :: Prelude.Maybe Prelude.ISO8601,
    -- | Provides the time when the snapshot was taken, in Universal Coordinated
    -- Time (UTC).
    snapshotCreateTime :: Prelude.Maybe Prelude.ISO8601,
    -- | Provides the engine mode of the database engine for this DB cluster
    -- snapshot.
    engineMode :: Prelude.Maybe Prelude.Text,
    -- | Provides the master username for this DB cluster snapshot.
    masterUsername :: Prelude.Maybe Prelude.Text,
    -- | If @StorageEncrypted@ is true, the AWS KMS key identifier for the
    -- encrypted DB cluster snapshot.
    --
    -- The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias
    -- name for the AWS KMS customer master key (CMK).
    kmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | Specifies the DB cluster identifier of the DB cluster that this DB
    -- cluster snapshot was created from.
    dBClusterIdentifier :: Prelude.Maybe Prelude.Text,
    -- | Provides the version of the database engine for this DB cluster
    -- snapshot.
    engineVersion :: Prelude.Maybe Prelude.Text,
    -- | Provides the type of the DB cluster snapshot.
    snapshotType :: Prelude.Maybe Prelude.Text,
    -- | Provides the license model information for this DB cluster snapshot.
    licenseModel :: Prelude.Maybe Prelude.Text,
    -- | Specifies the port that the DB cluster was listening on at the time of
    -- the snapshot.
    port :: Prelude.Maybe Prelude.Int,
    -- | Specifies the percentage of the estimated data that has been
    -- transferred.
    percentProgress :: Prelude.Maybe Prelude.Int,
    -- | Specifies the name of the database engine for this DB cluster snapshot.
    engine :: Prelude.Maybe Prelude.Text,
    -- | Specifies the identifier for the DB cluster snapshot.
    dBClusterSnapshotIdentifier :: Prelude.Maybe Prelude.Text,
    -- | If the DB cluster snapshot was copied from a source DB cluster snapshot,
    -- the Amazon Resource Name (ARN) for the source DB cluster snapshot,
    -- otherwise, a null value.
    sourceDBClusterSnapshotArn :: Prelude.Maybe Prelude.Text,
    tagList :: Prelude.Maybe [Tag],
    -- | Provides the VPC ID associated with the DB cluster snapshot.
    vpcId :: Prelude.Maybe Prelude.Text,
    -- | Specifies the allocated storage size in gibibytes (GiB).
    allocatedStorage :: Prelude.Maybe Prelude.Int,
    -- | True if mapping of AWS Identity and Access Management (IAM) accounts to
    -- database accounts is enabled, and otherwise false.
    iAMDatabaseAuthenticationEnabled :: Prelude.Maybe Prelude.Bool,
    -- | The Amazon Resource Name (ARN) for the DB cluster snapshot.
    dBClusterSnapshotArn :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DBClusterSnapshot' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'storageEncrypted', 'dBClusterSnapshot_storageEncrypted' - Specifies whether the DB cluster snapshot is encrypted.
--
-- 'status', 'dBClusterSnapshot_status' - Specifies the status of this DB cluster snapshot.
--
-- 'availabilityZones', 'dBClusterSnapshot_availabilityZones' - Provides the list of Availability Zones (AZs) where instances in the DB
-- cluster snapshot can be restored.
--
-- 'clusterCreateTime', 'dBClusterSnapshot_clusterCreateTime' - Specifies the time when the DB cluster was created, in Universal
-- Coordinated Time (UTC).
--
-- 'snapshotCreateTime', 'dBClusterSnapshot_snapshotCreateTime' - Provides the time when the snapshot was taken, in Universal Coordinated
-- Time (UTC).
--
-- 'engineMode', 'dBClusterSnapshot_engineMode' - Provides the engine mode of the database engine for this DB cluster
-- snapshot.
--
-- 'masterUsername', 'dBClusterSnapshot_masterUsername' - Provides the master username for this DB cluster snapshot.
--
-- 'kmsKeyId', 'dBClusterSnapshot_kmsKeyId' - If @StorageEncrypted@ is true, the AWS KMS key identifier for the
-- encrypted DB cluster snapshot.
--
-- The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias
-- name for the AWS KMS customer master key (CMK).
--
-- 'dBClusterIdentifier', 'dBClusterSnapshot_dBClusterIdentifier' - Specifies the DB cluster identifier of the DB cluster that this DB
-- cluster snapshot was created from.
--
-- 'engineVersion', 'dBClusterSnapshot_engineVersion' - Provides the version of the database engine for this DB cluster
-- snapshot.
--
-- 'snapshotType', 'dBClusterSnapshot_snapshotType' - Provides the type of the DB cluster snapshot.
--
-- 'licenseModel', 'dBClusterSnapshot_licenseModel' - Provides the license model information for this DB cluster snapshot.
--
-- 'port', 'dBClusterSnapshot_port' - Specifies the port that the DB cluster was listening on at the time of
-- the snapshot.
--
-- 'percentProgress', 'dBClusterSnapshot_percentProgress' - Specifies the percentage of the estimated data that has been
-- transferred.
--
-- 'engine', 'dBClusterSnapshot_engine' - Specifies the name of the database engine for this DB cluster snapshot.
--
-- 'dBClusterSnapshotIdentifier', 'dBClusterSnapshot_dBClusterSnapshotIdentifier' - Specifies the identifier for the DB cluster snapshot.
--
-- 'sourceDBClusterSnapshotArn', 'dBClusterSnapshot_sourceDBClusterSnapshotArn' - If the DB cluster snapshot was copied from a source DB cluster snapshot,
-- the Amazon Resource Name (ARN) for the source DB cluster snapshot,
-- otherwise, a null value.
--
-- 'tagList', 'dBClusterSnapshot_tagList' - Undocumented member.
--
-- 'vpcId', 'dBClusterSnapshot_vpcId' - Provides the VPC ID associated with the DB cluster snapshot.
--
-- 'allocatedStorage', 'dBClusterSnapshot_allocatedStorage' - Specifies the allocated storage size in gibibytes (GiB).
--
-- 'iAMDatabaseAuthenticationEnabled', 'dBClusterSnapshot_iAMDatabaseAuthenticationEnabled' - True if mapping of AWS Identity and Access Management (IAM) accounts to
-- database accounts is enabled, and otherwise false.
--
-- 'dBClusterSnapshotArn', 'dBClusterSnapshot_dBClusterSnapshotArn' - The Amazon Resource Name (ARN) for the DB cluster snapshot.
newDBClusterSnapshot ::
  DBClusterSnapshot
newDBClusterSnapshot =
  DBClusterSnapshot'
    { storageEncrypted =
        Prelude.Nothing,
      status = Prelude.Nothing,
      availabilityZones = Prelude.Nothing,
      clusterCreateTime = Prelude.Nothing,
      snapshotCreateTime = Prelude.Nothing,
      engineMode = Prelude.Nothing,
      masterUsername = Prelude.Nothing,
      kmsKeyId = Prelude.Nothing,
      dBClusterIdentifier = Prelude.Nothing,
      engineVersion = Prelude.Nothing,
      snapshotType = Prelude.Nothing,
      licenseModel = Prelude.Nothing,
      port = Prelude.Nothing,
      percentProgress = Prelude.Nothing,
      engine = Prelude.Nothing,
      dBClusterSnapshotIdentifier = Prelude.Nothing,
      sourceDBClusterSnapshotArn = Prelude.Nothing,
      tagList = Prelude.Nothing,
      vpcId = Prelude.Nothing,
      allocatedStorage = Prelude.Nothing,
      iAMDatabaseAuthenticationEnabled = Prelude.Nothing,
      dBClusterSnapshotArn = Prelude.Nothing
    }

-- | Specifies whether the DB cluster snapshot is encrypted.
dBClusterSnapshot_storageEncrypted :: Lens.Lens' DBClusterSnapshot (Prelude.Maybe Prelude.Bool)
dBClusterSnapshot_storageEncrypted = Lens.lens (\DBClusterSnapshot' {storageEncrypted} -> storageEncrypted) (\s@DBClusterSnapshot' {} a -> s {storageEncrypted = a} :: DBClusterSnapshot)

-- | Specifies the status of this DB cluster snapshot.
dBClusterSnapshot_status :: Lens.Lens' DBClusterSnapshot (Prelude.Maybe Prelude.Text)
dBClusterSnapshot_status = Lens.lens (\DBClusterSnapshot' {status} -> status) (\s@DBClusterSnapshot' {} a -> s {status = a} :: DBClusterSnapshot)

-- | Provides the list of Availability Zones (AZs) where instances in the DB
-- cluster snapshot can be restored.
dBClusterSnapshot_availabilityZones :: Lens.Lens' DBClusterSnapshot (Prelude.Maybe [Prelude.Text])
dBClusterSnapshot_availabilityZones = Lens.lens (\DBClusterSnapshot' {availabilityZones} -> availabilityZones) (\s@DBClusterSnapshot' {} a -> s {availabilityZones = a} :: DBClusterSnapshot) Prelude.. Lens.mapping Prelude._Coerce

-- | Specifies the time when the DB cluster was created, in Universal
-- Coordinated Time (UTC).
dBClusterSnapshot_clusterCreateTime :: Lens.Lens' DBClusterSnapshot (Prelude.Maybe Prelude.UTCTime)
dBClusterSnapshot_clusterCreateTime = Lens.lens (\DBClusterSnapshot' {clusterCreateTime} -> clusterCreateTime) (\s@DBClusterSnapshot' {} a -> s {clusterCreateTime = a} :: DBClusterSnapshot) Prelude.. Lens.mapping Prelude._Time

-- | Provides the time when the snapshot was taken, in Universal Coordinated
-- Time (UTC).
dBClusterSnapshot_snapshotCreateTime :: Lens.Lens' DBClusterSnapshot (Prelude.Maybe Prelude.UTCTime)
dBClusterSnapshot_snapshotCreateTime = Lens.lens (\DBClusterSnapshot' {snapshotCreateTime} -> snapshotCreateTime) (\s@DBClusterSnapshot' {} a -> s {snapshotCreateTime = a} :: DBClusterSnapshot) Prelude.. Lens.mapping Prelude._Time

-- | Provides the engine mode of the database engine for this DB cluster
-- snapshot.
dBClusterSnapshot_engineMode :: Lens.Lens' DBClusterSnapshot (Prelude.Maybe Prelude.Text)
dBClusterSnapshot_engineMode = Lens.lens (\DBClusterSnapshot' {engineMode} -> engineMode) (\s@DBClusterSnapshot' {} a -> s {engineMode = a} :: DBClusterSnapshot)

-- | Provides the master username for this DB cluster snapshot.
dBClusterSnapshot_masterUsername :: Lens.Lens' DBClusterSnapshot (Prelude.Maybe Prelude.Text)
dBClusterSnapshot_masterUsername = Lens.lens (\DBClusterSnapshot' {masterUsername} -> masterUsername) (\s@DBClusterSnapshot' {} a -> s {masterUsername = a} :: DBClusterSnapshot)

-- | If @StorageEncrypted@ is true, the AWS KMS key identifier for the
-- encrypted DB cluster snapshot.
--
-- The AWS KMS key identifier is the key ARN, key ID, alias ARN, or alias
-- name for the AWS KMS customer master key (CMK).
dBClusterSnapshot_kmsKeyId :: Lens.Lens' DBClusterSnapshot (Prelude.Maybe Prelude.Text)
dBClusterSnapshot_kmsKeyId = Lens.lens (\DBClusterSnapshot' {kmsKeyId} -> kmsKeyId) (\s@DBClusterSnapshot' {} a -> s {kmsKeyId = a} :: DBClusterSnapshot)

-- | Specifies the DB cluster identifier of the DB cluster that this DB
-- cluster snapshot was created from.
dBClusterSnapshot_dBClusterIdentifier :: Lens.Lens' DBClusterSnapshot (Prelude.Maybe Prelude.Text)
dBClusterSnapshot_dBClusterIdentifier = Lens.lens (\DBClusterSnapshot' {dBClusterIdentifier} -> dBClusterIdentifier) (\s@DBClusterSnapshot' {} a -> s {dBClusterIdentifier = a} :: DBClusterSnapshot)

-- | Provides the version of the database engine for this DB cluster
-- snapshot.
dBClusterSnapshot_engineVersion :: Lens.Lens' DBClusterSnapshot (Prelude.Maybe Prelude.Text)
dBClusterSnapshot_engineVersion = Lens.lens (\DBClusterSnapshot' {engineVersion} -> engineVersion) (\s@DBClusterSnapshot' {} a -> s {engineVersion = a} :: DBClusterSnapshot)

-- | Provides the type of the DB cluster snapshot.
dBClusterSnapshot_snapshotType :: Lens.Lens' DBClusterSnapshot (Prelude.Maybe Prelude.Text)
dBClusterSnapshot_snapshotType = Lens.lens (\DBClusterSnapshot' {snapshotType} -> snapshotType) (\s@DBClusterSnapshot' {} a -> s {snapshotType = a} :: DBClusterSnapshot)

-- | Provides the license model information for this DB cluster snapshot.
dBClusterSnapshot_licenseModel :: Lens.Lens' DBClusterSnapshot (Prelude.Maybe Prelude.Text)
dBClusterSnapshot_licenseModel = Lens.lens (\DBClusterSnapshot' {licenseModel} -> licenseModel) (\s@DBClusterSnapshot' {} a -> s {licenseModel = a} :: DBClusterSnapshot)

-- | Specifies the port that the DB cluster was listening on at the time of
-- the snapshot.
dBClusterSnapshot_port :: Lens.Lens' DBClusterSnapshot (Prelude.Maybe Prelude.Int)
dBClusterSnapshot_port = Lens.lens (\DBClusterSnapshot' {port} -> port) (\s@DBClusterSnapshot' {} a -> s {port = a} :: DBClusterSnapshot)

-- | Specifies the percentage of the estimated data that has been
-- transferred.
dBClusterSnapshot_percentProgress :: Lens.Lens' DBClusterSnapshot (Prelude.Maybe Prelude.Int)
dBClusterSnapshot_percentProgress = Lens.lens (\DBClusterSnapshot' {percentProgress} -> percentProgress) (\s@DBClusterSnapshot' {} a -> s {percentProgress = a} :: DBClusterSnapshot)

-- | Specifies the name of the database engine for this DB cluster snapshot.
dBClusterSnapshot_engine :: Lens.Lens' DBClusterSnapshot (Prelude.Maybe Prelude.Text)
dBClusterSnapshot_engine = Lens.lens (\DBClusterSnapshot' {engine} -> engine) (\s@DBClusterSnapshot' {} a -> s {engine = a} :: DBClusterSnapshot)

-- | Specifies the identifier for the DB cluster snapshot.
dBClusterSnapshot_dBClusterSnapshotIdentifier :: Lens.Lens' DBClusterSnapshot (Prelude.Maybe Prelude.Text)
dBClusterSnapshot_dBClusterSnapshotIdentifier = Lens.lens (\DBClusterSnapshot' {dBClusterSnapshotIdentifier} -> dBClusterSnapshotIdentifier) (\s@DBClusterSnapshot' {} a -> s {dBClusterSnapshotIdentifier = a} :: DBClusterSnapshot)

-- | If the DB cluster snapshot was copied from a source DB cluster snapshot,
-- the Amazon Resource Name (ARN) for the source DB cluster snapshot,
-- otherwise, a null value.
dBClusterSnapshot_sourceDBClusterSnapshotArn :: Lens.Lens' DBClusterSnapshot (Prelude.Maybe Prelude.Text)
dBClusterSnapshot_sourceDBClusterSnapshotArn = Lens.lens (\DBClusterSnapshot' {sourceDBClusterSnapshotArn} -> sourceDBClusterSnapshotArn) (\s@DBClusterSnapshot' {} a -> s {sourceDBClusterSnapshotArn = a} :: DBClusterSnapshot)

-- | Undocumented member.
dBClusterSnapshot_tagList :: Lens.Lens' DBClusterSnapshot (Prelude.Maybe [Tag])
dBClusterSnapshot_tagList = Lens.lens (\DBClusterSnapshot' {tagList} -> tagList) (\s@DBClusterSnapshot' {} a -> s {tagList = a} :: DBClusterSnapshot) Prelude.. Lens.mapping Prelude._Coerce

-- | Provides the VPC ID associated with the DB cluster snapshot.
dBClusterSnapshot_vpcId :: Lens.Lens' DBClusterSnapshot (Prelude.Maybe Prelude.Text)
dBClusterSnapshot_vpcId = Lens.lens (\DBClusterSnapshot' {vpcId} -> vpcId) (\s@DBClusterSnapshot' {} a -> s {vpcId = a} :: DBClusterSnapshot)

-- | Specifies the allocated storage size in gibibytes (GiB).
dBClusterSnapshot_allocatedStorage :: Lens.Lens' DBClusterSnapshot (Prelude.Maybe Prelude.Int)
dBClusterSnapshot_allocatedStorage = Lens.lens (\DBClusterSnapshot' {allocatedStorage} -> allocatedStorage) (\s@DBClusterSnapshot' {} a -> s {allocatedStorage = a} :: DBClusterSnapshot)

-- | True if mapping of AWS Identity and Access Management (IAM) accounts to
-- database accounts is enabled, and otherwise false.
dBClusterSnapshot_iAMDatabaseAuthenticationEnabled :: Lens.Lens' DBClusterSnapshot (Prelude.Maybe Prelude.Bool)
dBClusterSnapshot_iAMDatabaseAuthenticationEnabled = Lens.lens (\DBClusterSnapshot' {iAMDatabaseAuthenticationEnabled} -> iAMDatabaseAuthenticationEnabled) (\s@DBClusterSnapshot' {} a -> s {iAMDatabaseAuthenticationEnabled = a} :: DBClusterSnapshot)

-- | The Amazon Resource Name (ARN) for the DB cluster snapshot.
dBClusterSnapshot_dBClusterSnapshotArn :: Lens.Lens' DBClusterSnapshot (Prelude.Maybe Prelude.Text)
dBClusterSnapshot_dBClusterSnapshotArn = Lens.lens (\DBClusterSnapshot' {dBClusterSnapshotArn} -> dBClusterSnapshotArn) (\s@DBClusterSnapshot' {} a -> s {dBClusterSnapshotArn = a} :: DBClusterSnapshot)

instance Prelude.FromXML DBClusterSnapshot where
  parseXML x =
    DBClusterSnapshot'
      Prelude.<$> (x Prelude..@? "StorageEncrypted")
      Prelude.<*> (x Prelude..@? "Status")
      Prelude.<*> ( x Prelude..@? "AvailabilityZones"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may
                        (Prelude.parseXMLList "AvailabilityZone")
                  )
      Prelude.<*> (x Prelude..@? "ClusterCreateTime")
      Prelude.<*> (x Prelude..@? "SnapshotCreateTime")
      Prelude.<*> (x Prelude..@? "EngineMode")
      Prelude.<*> (x Prelude..@? "MasterUsername")
      Prelude.<*> (x Prelude..@? "KmsKeyId")
      Prelude.<*> (x Prelude..@? "DBClusterIdentifier")
      Prelude.<*> (x Prelude..@? "EngineVersion")
      Prelude.<*> (x Prelude..@? "SnapshotType")
      Prelude.<*> (x Prelude..@? "LicenseModel")
      Prelude.<*> (x Prelude..@? "Port")
      Prelude.<*> (x Prelude..@? "PercentProgress")
      Prelude.<*> (x Prelude..@? "Engine")
      Prelude.<*> (x Prelude..@? "DBClusterSnapshotIdentifier")
      Prelude.<*> (x Prelude..@? "SourceDBClusterSnapshotArn")
      Prelude.<*> ( x Prelude..@? "TagList" Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList "Tag")
                  )
      Prelude.<*> (x Prelude..@? "VpcId")
      Prelude.<*> (x Prelude..@? "AllocatedStorage")
      Prelude.<*> (x Prelude..@? "IAMDatabaseAuthenticationEnabled")
      Prelude.<*> (x Prelude..@? "DBClusterSnapshotArn")

instance Prelude.Hashable DBClusterSnapshot

instance Prelude.NFData DBClusterSnapshot
