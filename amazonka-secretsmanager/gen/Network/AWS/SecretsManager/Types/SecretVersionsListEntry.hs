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
-- Module      : Network.AWS.SecretsManager.Types.SecretVersionsListEntry
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SecretsManager.Types.SecretVersionsListEntry where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A structure that contains information about one version of a secret.
--
-- /See:/ 'newSecretVersionsListEntry' smart constructor.
data SecretVersionsListEntry = SecretVersionsListEntry'
  { -- | The date and time this version of the secret was created.
    createdDate :: Prelude.Maybe Prelude.POSIX,
    -- | An array of staging labels that are currently associated with this
    -- version of the secret.
    versionStages :: Prelude.Maybe (Prelude.List1 Prelude.Text),
    -- | The unique version identifier of this version of the secret.
    versionId :: Prelude.Maybe Prelude.Text,
    -- | The date that this version of the secret was last accessed. Note that
    -- the resolution of this field is at the date level and does not include
    -- the time.
    lastAccessedDate :: Prelude.Maybe Prelude.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'SecretVersionsListEntry' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'createdDate', 'secretVersionsListEntry_createdDate' - The date and time this version of the secret was created.
--
-- 'versionStages', 'secretVersionsListEntry_versionStages' - An array of staging labels that are currently associated with this
-- version of the secret.
--
-- 'versionId', 'secretVersionsListEntry_versionId' - The unique version identifier of this version of the secret.
--
-- 'lastAccessedDate', 'secretVersionsListEntry_lastAccessedDate' - The date that this version of the secret was last accessed. Note that
-- the resolution of this field is at the date level and does not include
-- the time.
newSecretVersionsListEntry ::
  SecretVersionsListEntry
newSecretVersionsListEntry =
  SecretVersionsListEntry'
    { createdDate =
        Prelude.Nothing,
      versionStages = Prelude.Nothing,
      versionId = Prelude.Nothing,
      lastAccessedDate = Prelude.Nothing
    }

-- | The date and time this version of the secret was created.
secretVersionsListEntry_createdDate :: Lens.Lens' SecretVersionsListEntry (Prelude.Maybe Prelude.UTCTime)
secretVersionsListEntry_createdDate = Lens.lens (\SecretVersionsListEntry' {createdDate} -> createdDate) (\s@SecretVersionsListEntry' {} a -> s {createdDate = a} :: SecretVersionsListEntry) Prelude.. Lens.mapping Prelude._Time

-- | An array of staging labels that are currently associated with this
-- version of the secret.
secretVersionsListEntry_versionStages :: Lens.Lens' SecretVersionsListEntry (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
secretVersionsListEntry_versionStages = Lens.lens (\SecretVersionsListEntry' {versionStages} -> versionStages) (\s@SecretVersionsListEntry' {} a -> s {versionStages = a} :: SecretVersionsListEntry) Prelude.. Lens.mapping Prelude._List1

-- | The unique version identifier of this version of the secret.
secretVersionsListEntry_versionId :: Lens.Lens' SecretVersionsListEntry (Prelude.Maybe Prelude.Text)
secretVersionsListEntry_versionId = Lens.lens (\SecretVersionsListEntry' {versionId} -> versionId) (\s@SecretVersionsListEntry' {} a -> s {versionId = a} :: SecretVersionsListEntry)

-- | The date that this version of the secret was last accessed. Note that
-- the resolution of this field is at the date level and does not include
-- the time.
secretVersionsListEntry_lastAccessedDate :: Lens.Lens' SecretVersionsListEntry (Prelude.Maybe Prelude.UTCTime)
secretVersionsListEntry_lastAccessedDate = Lens.lens (\SecretVersionsListEntry' {lastAccessedDate} -> lastAccessedDate) (\s@SecretVersionsListEntry' {} a -> s {lastAccessedDate = a} :: SecretVersionsListEntry) Prelude.. Lens.mapping Prelude._Time

instance Prelude.FromJSON SecretVersionsListEntry where
  parseJSON =
    Prelude.withObject
      "SecretVersionsListEntry"
      ( \x ->
          SecretVersionsListEntry'
            Prelude.<$> (x Prelude..:? "CreatedDate")
            Prelude.<*> (x Prelude..:? "VersionStages")
            Prelude.<*> (x Prelude..:? "VersionId")
            Prelude.<*> (x Prelude..:? "LastAccessedDate")
      )

instance Prelude.Hashable SecretVersionsListEntry

instance Prelude.NFData SecretVersionsListEntry
