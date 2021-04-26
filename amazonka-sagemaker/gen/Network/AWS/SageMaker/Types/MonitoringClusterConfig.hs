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
-- Module      : Network.AWS.SageMaker.Types.MonitoringClusterConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.MonitoringClusterConfig where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SageMaker.Types.ProcessingInstanceType

-- | Configuration for the cluster used to run model monitoring jobs.
--
-- /See:/ 'newMonitoringClusterConfig' smart constructor.
data MonitoringClusterConfig = MonitoringClusterConfig'
  { -- | The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses
    -- to encrypt data on the storage volume attached to the ML compute
    -- instance(s) that run the model monitoring job.
    volumeKmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | The number of ML compute instances to use in the model monitoring job.
    -- For distributed processing jobs, specify a value greater than 1. The
    -- default value is 1.
    instanceCount :: Prelude.Nat,
    -- | The ML compute instance type for the processing job.
    instanceType :: ProcessingInstanceType,
    -- | The size of the ML storage volume, in gigabytes, that you want to
    -- provision. You must specify sufficient ML storage for your scenario.
    volumeSizeInGB :: Prelude.Nat
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'MonitoringClusterConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'volumeKmsKeyId', 'monitoringClusterConfig_volumeKmsKeyId' - The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses
-- to encrypt data on the storage volume attached to the ML compute
-- instance(s) that run the model monitoring job.
--
-- 'instanceCount', 'monitoringClusterConfig_instanceCount' - The number of ML compute instances to use in the model monitoring job.
-- For distributed processing jobs, specify a value greater than 1. The
-- default value is 1.
--
-- 'instanceType', 'monitoringClusterConfig_instanceType' - The ML compute instance type for the processing job.
--
-- 'volumeSizeInGB', 'monitoringClusterConfig_volumeSizeInGB' - The size of the ML storage volume, in gigabytes, that you want to
-- provision. You must specify sufficient ML storage for your scenario.
newMonitoringClusterConfig ::
  -- | 'instanceCount'
  Prelude.Natural ->
  -- | 'instanceType'
  ProcessingInstanceType ->
  -- | 'volumeSizeInGB'
  Prelude.Natural ->
  MonitoringClusterConfig
newMonitoringClusterConfig
  pInstanceCount_
  pInstanceType_
  pVolumeSizeInGB_ =
    MonitoringClusterConfig'
      { volumeKmsKeyId =
          Prelude.Nothing,
        instanceCount =
          Prelude._Nat Lens.# pInstanceCount_,
        instanceType = pInstanceType_,
        volumeSizeInGB =
          Prelude._Nat Lens.# pVolumeSizeInGB_
      }

-- | The AWS Key Management Service (AWS KMS) key that Amazon SageMaker uses
-- to encrypt data on the storage volume attached to the ML compute
-- instance(s) that run the model monitoring job.
monitoringClusterConfig_volumeKmsKeyId :: Lens.Lens' MonitoringClusterConfig (Prelude.Maybe Prelude.Text)
monitoringClusterConfig_volumeKmsKeyId = Lens.lens (\MonitoringClusterConfig' {volumeKmsKeyId} -> volumeKmsKeyId) (\s@MonitoringClusterConfig' {} a -> s {volumeKmsKeyId = a} :: MonitoringClusterConfig)

-- | The number of ML compute instances to use in the model monitoring job.
-- For distributed processing jobs, specify a value greater than 1. The
-- default value is 1.
monitoringClusterConfig_instanceCount :: Lens.Lens' MonitoringClusterConfig Prelude.Natural
monitoringClusterConfig_instanceCount = Lens.lens (\MonitoringClusterConfig' {instanceCount} -> instanceCount) (\s@MonitoringClusterConfig' {} a -> s {instanceCount = a} :: MonitoringClusterConfig) Prelude.. Prelude._Nat

-- | The ML compute instance type for the processing job.
monitoringClusterConfig_instanceType :: Lens.Lens' MonitoringClusterConfig ProcessingInstanceType
monitoringClusterConfig_instanceType = Lens.lens (\MonitoringClusterConfig' {instanceType} -> instanceType) (\s@MonitoringClusterConfig' {} a -> s {instanceType = a} :: MonitoringClusterConfig)

-- | The size of the ML storage volume, in gigabytes, that you want to
-- provision. You must specify sufficient ML storage for your scenario.
monitoringClusterConfig_volumeSizeInGB :: Lens.Lens' MonitoringClusterConfig Prelude.Natural
monitoringClusterConfig_volumeSizeInGB = Lens.lens (\MonitoringClusterConfig' {volumeSizeInGB} -> volumeSizeInGB) (\s@MonitoringClusterConfig' {} a -> s {volumeSizeInGB = a} :: MonitoringClusterConfig) Prelude.. Prelude._Nat

instance Prelude.FromJSON MonitoringClusterConfig where
  parseJSON =
    Prelude.withObject
      "MonitoringClusterConfig"
      ( \x ->
          MonitoringClusterConfig'
            Prelude.<$> (x Prelude..:? "VolumeKmsKeyId")
            Prelude.<*> (x Prelude..: "InstanceCount")
            Prelude.<*> (x Prelude..: "InstanceType")
            Prelude.<*> (x Prelude..: "VolumeSizeInGB")
      )

instance Prelude.Hashable MonitoringClusterConfig

instance Prelude.NFData MonitoringClusterConfig

instance Prelude.ToJSON MonitoringClusterConfig where
  toJSON MonitoringClusterConfig' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("VolumeKmsKeyId" Prelude..=)
              Prelude.<$> volumeKmsKeyId,
            Prelude.Just
              ("InstanceCount" Prelude..= instanceCount),
            Prelude.Just
              ("InstanceType" Prelude..= instanceType),
            Prelude.Just
              ("VolumeSizeInGB" Prelude..= volumeSizeInGB)
          ]
      )
