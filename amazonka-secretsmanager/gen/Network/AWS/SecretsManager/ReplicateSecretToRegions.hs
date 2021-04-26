{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SecretsManager.ReplicateSecretToRegions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Converts an existing secret to a multi-Region secret and begins
-- replication the secret to a list of new regions.
module Network.AWS.SecretsManager.ReplicateSecretToRegions
  ( -- * Creating a Request
    ReplicateSecretToRegions (..),
    newReplicateSecretToRegions,

    -- * Request Lenses
    replicateSecretToRegions_forceOverwriteReplicaSecret,
    replicateSecretToRegions_secretId,
    replicateSecretToRegions_addReplicaRegions,

    -- * Destructuring the Response
    ReplicateSecretToRegionsResponse (..),
    newReplicateSecretToRegionsResponse,

    -- * Response Lenses
    replicateSecretToRegionsResponse_replicationStatus,
    replicateSecretToRegionsResponse_aRN,
    replicateSecretToRegionsResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SecretsManager.Types
import Network.AWS.SecretsManager.Types.ReplicationStatusType

-- | /See:/ 'newReplicateSecretToRegions' smart constructor.
data ReplicateSecretToRegions = ReplicateSecretToRegions'
  { -- | (Optional) If set, Secrets Manager replication overwrites a secret with
    -- the same name in the destination region.
    forceOverwriteReplicaSecret :: Prelude.Maybe Prelude.Bool,
    -- | Use the @Secret Id@ to replicate a secret to regions.
    secretId :: Prelude.Text,
    -- | Add Regions to replicate the secret.
    addReplicaRegions :: Prelude.List1 ReplicaRegionType
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ReplicateSecretToRegions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'forceOverwriteReplicaSecret', 'replicateSecretToRegions_forceOverwriteReplicaSecret' - (Optional) If set, Secrets Manager replication overwrites a secret with
-- the same name in the destination region.
--
-- 'secretId', 'replicateSecretToRegions_secretId' - Use the @Secret Id@ to replicate a secret to regions.
--
-- 'addReplicaRegions', 'replicateSecretToRegions_addReplicaRegions' - Add Regions to replicate the secret.
newReplicateSecretToRegions ::
  -- | 'secretId'
  Prelude.Text ->
  -- | 'addReplicaRegions'
  Prelude.NonEmpty ReplicaRegionType ->
  ReplicateSecretToRegions
newReplicateSecretToRegions
  pSecretId_
  pAddReplicaRegions_ =
    ReplicateSecretToRegions'
      { forceOverwriteReplicaSecret =
          Prelude.Nothing,
        secretId = pSecretId_,
        addReplicaRegions =
          Prelude._List1 Lens.# pAddReplicaRegions_
      }

-- | (Optional) If set, Secrets Manager replication overwrites a secret with
-- the same name in the destination region.
replicateSecretToRegions_forceOverwriteReplicaSecret :: Lens.Lens' ReplicateSecretToRegions (Prelude.Maybe Prelude.Bool)
replicateSecretToRegions_forceOverwriteReplicaSecret = Lens.lens (\ReplicateSecretToRegions' {forceOverwriteReplicaSecret} -> forceOverwriteReplicaSecret) (\s@ReplicateSecretToRegions' {} a -> s {forceOverwriteReplicaSecret = a} :: ReplicateSecretToRegions)

-- | Use the @Secret Id@ to replicate a secret to regions.
replicateSecretToRegions_secretId :: Lens.Lens' ReplicateSecretToRegions Prelude.Text
replicateSecretToRegions_secretId = Lens.lens (\ReplicateSecretToRegions' {secretId} -> secretId) (\s@ReplicateSecretToRegions' {} a -> s {secretId = a} :: ReplicateSecretToRegions)

-- | Add Regions to replicate the secret.
replicateSecretToRegions_addReplicaRegions :: Lens.Lens' ReplicateSecretToRegions (Prelude.NonEmpty ReplicaRegionType)
replicateSecretToRegions_addReplicaRegions = Lens.lens (\ReplicateSecretToRegions' {addReplicaRegions} -> addReplicaRegions) (\s@ReplicateSecretToRegions' {} a -> s {addReplicaRegions = a} :: ReplicateSecretToRegions) Prelude.. Prelude._List1

instance Prelude.AWSRequest ReplicateSecretToRegions where
  type
    Rs ReplicateSecretToRegions =
      ReplicateSecretToRegionsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ReplicateSecretToRegionsResponse'
            Prelude.<$> ( x Prelude..?> "ReplicationStatus"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (x Prelude..?> "ARN")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ReplicateSecretToRegions

instance Prelude.NFData ReplicateSecretToRegions

instance Prelude.ToHeaders ReplicateSecretToRegions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "secretsmanager.ReplicateSecretToRegions" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON ReplicateSecretToRegions where
  toJSON ReplicateSecretToRegions' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("ForceOverwriteReplicaSecret" Prelude..=)
              Prelude.<$> forceOverwriteReplicaSecret,
            Prelude.Just ("SecretId" Prelude..= secretId),
            Prelude.Just
              ("AddReplicaRegions" Prelude..= addReplicaRegions)
          ]
      )

instance Prelude.ToPath ReplicateSecretToRegions where
  toPath = Prelude.const "/"

instance Prelude.ToQuery ReplicateSecretToRegions where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newReplicateSecretToRegionsResponse' smart constructor.
data ReplicateSecretToRegionsResponse = ReplicateSecretToRegionsResponse'
  { -- | Describes the secret replication status as @PENDING@, @SUCCESS@ or
    -- @FAIL@.
    replicationStatus :: Prelude.Maybe [ReplicationStatusType],
    -- | Replicate a secret based on the @ReplicaRegionType@> consisting of a
    -- Region(required) and a KMSKeyId (optional) which can be the ARN, KeyID,
    -- or Alias.
    aRN :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ReplicateSecretToRegionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'replicationStatus', 'replicateSecretToRegionsResponse_replicationStatus' - Describes the secret replication status as @PENDING@, @SUCCESS@ or
-- @FAIL@.
--
-- 'aRN', 'replicateSecretToRegionsResponse_aRN' - Replicate a secret based on the @ReplicaRegionType@> consisting of a
-- Region(required) and a KMSKeyId (optional) which can be the ARN, KeyID,
-- or Alias.
--
-- 'httpStatus', 'replicateSecretToRegionsResponse_httpStatus' - The response's http status code.
newReplicateSecretToRegionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ReplicateSecretToRegionsResponse
newReplicateSecretToRegionsResponse pHttpStatus_ =
  ReplicateSecretToRegionsResponse'
    { replicationStatus =
        Prelude.Nothing,
      aRN = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Describes the secret replication status as @PENDING@, @SUCCESS@ or
-- @FAIL@.
replicateSecretToRegionsResponse_replicationStatus :: Lens.Lens' ReplicateSecretToRegionsResponse (Prelude.Maybe [ReplicationStatusType])
replicateSecretToRegionsResponse_replicationStatus = Lens.lens (\ReplicateSecretToRegionsResponse' {replicationStatus} -> replicationStatus) (\s@ReplicateSecretToRegionsResponse' {} a -> s {replicationStatus = a} :: ReplicateSecretToRegionsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | Replicate a secret based on the @ReplicaRegionType@> consisting of a
-- Region(required) and a KMSKeyId (optional) which can be the ARN, KeyID,
-- or Alias.
replicateSecretToRegionsResponse_aRN :: Lens.Lens' ReplicateSecretToRegionsResponse (Prelude.Maybe Prelude.Text)
replicateSecretToRegionsResponse_aRN = Lens.lens (\ReplicateSecretToRegionsResponse' {aRN} -> aRN) (\s@ReplicateSecretToRegionsResponse' {} a -> s {aRN = a} :: ReplicateSecretToRegionsResponse)

-- | The response's http status code.
replicateSecretToRegionsResponse_httpStatus :: Lens.Lens' ReplicateSecretToRegionsResponse Prelude.Int
replicateSecretToRegionsResponse_httpStatus = Lens.lens (\ReplicateSecretToRegionsResponse' {httpStatus} -> httpStatus) (\s@ReplicateSecretToRegionsResponse' {} a -> s {httpStatus = a} :: ReplicateSecretToRegionsResponse)

instance
  Prelude.NFData
    ReplicateSecretToRegionsResponse
