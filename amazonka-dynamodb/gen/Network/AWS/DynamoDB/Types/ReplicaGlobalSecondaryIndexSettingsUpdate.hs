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
-- Module      : Network.AWS.DynamoDB.Types.ReplicaGlobalSecondaryIndexSettingsUpdate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.ReplicaGlobalSecondaryIndexSettingsUpdate where

import Network.AWS.DynamoDB.Types.AutoScalingSettingsUpdate
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Represents the settings of a global secondary index for a global table
-- that will be modified.
--
-- /See:/ 'newReplicaGlobalSecondaryIndexSettingsUpdate' smart constructor.
data ReplicaGlobalSecondaryIndexSettingsUpdate = ReplicaGlobalSecondaryIndexSettingsUpdate'
  { -- | The maximum number of strongly consistent reads consumed per second
    -- before DynamoDB returns a @ThrottlingException@.
    provisionedReadCapacityUnits :: Prelude.Maybe Prelude.Nat,
    -- | Auto scaling settings for managing a global secondary index replica\'s
    -- read capacity units.
    provisionedReadCapacityAutoScalingSettingsUpdate :: Prelude.Maybe AutoScalingSettingsUpdate,
    -- | The name of the global secondary index. The name must be unique among
    -- all other indexes on this table.
    indexName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ReplicaGlobalSecondaryIndexSettingsUpdate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'provisionedReadCapacityUnits', 'replicaGlobalSecondaryIndexSettingsUpdate_provisionedReadCapacityUnits' - The maximum number of strongly consistent reads consumed per second
-- before DynamoDB returns a @ThrottlingException@.
--
-- 'provisionedReadCapacityAutoScalingSettingsUpdate', 'replicaGlobalSecondaryIndexSettingsUpdate_provisionedReadCapacityAutoScalingSettingsUpdate' - Auto scaling settings for managing a global secondary index replica\'s
-- read capacity units.
--
-- 'indexName', 'replicaGlobalSecondaryIndexSettingsUpdate_indexName' - The name of the global secondary index. The name must be unique among
-- all other indexes on this table.
newReplicaGlobalSecondaryIndexSettingsUpdate ::
  -- | 'indexName'
  Prelude.Text ->
  ReplicaGlobalSecondaryIndexSettingsUpdate
newReplicaGlobalSecondaryIndexSettingsUpdate
  pIndexName_ =
    ReplicaGlobalSecondaryIndexSettingsUpdate'
      { provisionedReadCapacityUnits =
          Prelude.Nothing,
        provisionedReadCapacityAutoScalingSettingsUpdate =
          Prelude.Nothing,
        indexName = pIndexName_
      }

-- | The maximum number of strongly consistent reads consumed per second
-- before DynamoDB returns a @ThrottlingException@.
replicaGlobalSecondaryIndexSettingsUpdate_provisionedReadCapacityUnits :: Lens.Lens' ReplicaGlobalSecondaryIndexSettingsUpdate (Prelude.Maybe Prelude.Natural)
replicaGlobalSecondaryIndexSettingsUpdate_provisionedReadCapacityUnits = Lens.lens (\ReplicaGlobalSecondaryIndexSettingsUpdate' {provisionedReadCapacityUnits} -> provisionedReadCapacityUnits) (\s@ReplicaGlobalSecondaryIndexSettingsUpdate' {} a -> s {provisionedReadCapacityUnits = a} :: ReplicaGlobalSecondaryIndexSettingsUpdate) Prelude.. Lens.mapping Prelude._Nat

-- | Auto scaling settings for managing a global secondary index replica\'s
-- read capacity units.
replicaGlobalSecondaryIndexSettingsUpdate_provisionedReadCapacityAutoScalingSettingsUpdate :: Lens.Lens' ReplicaGlobalSecondaryIndexSettingsUpdate (Prelude.Maybe AutoScalingSettingsUpdate)
replicaGlobalSecondaryIndexSettingsUpdate_provisionedReadCapacityAutoScalingSettingsUpdate = Lens.lens (\ReplicaGlobalSecondaryIndexSettingsUpdate' {provisionedReadCapacityAutoScalingSettingsUpdate} -> provisionedReadCapacityAutoScalingSettingsUpdate) (\s@ReplicaGlobalSecondaryIndexSettingsUpdate' {} a -> s {provisionedReadCapacityAutoScalingSettingsUpdate = a} :: ReplicaGlobalSecondaryIndexSettingsUpdate)

-- | The name of the global secondary index. The name must be unique among
-- all other indexes on this table.
replicaGlobalSecondaryIndexSettingsUpdate_indexName :: Lens.Lens' ReplicaGlobalSecondaryIndexSettingsUpdate Prelude.Text
replicaGlobalSecondaryIndexSettingsUpdate_indexName = Lens.lens (\ReplicaGlobalSecondaryIndexSettingsUpdate' {indexName} -> indexName) (\s@ReplicaGlobalSecondaryIndexSettingsUpdate' {} a -> s {indexName = a} :: ReplicaGlobalSecondaryIndexSettingsUpdate)

instance
  Prelude.Hashable
    ReplicaGlobalSecondaryIndexSettingsUpdate

instance
  Prelude.NFData
    ReplicaGlobalSecondaryIndexSettingsUpdate

instance
  Prelude.ToJSON
    ReplicaGlobalSecondaryIndexSettingsUpdate
  where
  toJSON ReplicaGlobalSecondaryIndexSettingsUpdate' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("ProvisionedReadCapacityUnits" Prelude..=)
              Prelude.<$> provisionedReadCapacityUnits,
            ( "ProvisionedReadCapacityAutoScalingSettingsUpdate"
                Prelude..=
            )
              Prelude.<$> provisionedReadCapacityAutoScalingSettingsUpdate,
            Prelude.Just ("IndexName" Prelude..= indexName)
          ]
      )
