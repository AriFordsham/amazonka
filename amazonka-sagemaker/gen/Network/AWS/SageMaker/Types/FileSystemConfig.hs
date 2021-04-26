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
-- Module      : Network.AWS.SageMaker.Types.FileSystemConfig
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.FileSystemConfig where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The Amazon Elastic File System (EFS) storage configuration for a
-- SageMaker image.
--
-- /See:/ 'newFileSystemConfig' smart constructor.
data FileSystemConfig = FileSystemConfig'
  { -- | The default POSIX group ID (GID). If not specified, defaults to @100@.
    defaultGid :: Prelude.Maybe Prelude.Nat,
    -- | The path within the image to mount the user\'s EFS home directory. The
    -- directory should be empty. If not specified, defaults to
    -- /\/home\/sagemaker-user/.
    mountPath :: Prelude.Maybe Prelude.Text,
    -- | The default POSIX user ID (UID). If not specified, defaults to @1000@.
    defaultUid :: Prelude.Maybe Prelude.Nat
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'FileSystemConfig' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'defaultGid', 'fileSystemConfig_defaultGid' - The default POSIX group ID (GID). If not specified, defaults to @100@.
--
-- 'mountPath', 'fileSystemConfig_mountPath' - The path within the image to mount the user\'s EFS home directory. The
-- directory should be empty. If not specified, defaults to
-- /\/home\/sagemaker-user/.
--
-- 'defaultUid', 'fileSystemConfig_defaultUid' - The default POSIX user ID (UID). If not specified, defaults to @1000@.
newFileSystemConfig ::
  FileSystemConfig
newFileSystemConfig =
  FileSystemConfig'
    { defaultGid = Prelude.Nothing,
      mountPath = Prelude.Nothing,
      defaultUid = Prelude.Nothing
    }

-- | The default POSIX group ID (GID). If not specified, defaults to @100@.
fileSystemConfig_defaultGid :: Lens.Lens' FileSystemConfig (Prelude.Maybe Prelude.Natural)
fileSystemConfig_defaultGid = Lens.lens (\FileSystemConfig' {defaultGid} -> defaultGid) (\s@FileSystemConfig' {} a -> s {defaultGid = a} :: FileSystemConfig) Prelude.. Lens.mapping Prelude._Nat

-- | The path within the image to mount the user\'s EFS home directory. The
-- directory should be empty. If not specified, defaults to
-- /\/home\/sagemaker-user/.
fileSystemConfig_mountPath :: Lens.Lens' FileSystemConfig (Prelude.Maybe Prelude.Text)
fileSystemConfig_mountPath = Lens.lens (\FileSystemConfig' {mountPath} -> mountPath) (\s@FileSystemConfig' {} a -> s {mountPath = a} :: FileSystemConfig)

-- | The default POSIX user ID (UID). If not specified, defaults to @1000@.
fileSystemConfig_defaultUid :: Lens.Lens' FileSystemConfig (Prelude.Maybe Prelude.Natural)
fileSystemConfig_defaultUid = Lens.lens (\FileSystemConfig' {defaultUid} -> defaultUid) (\s@FileSystemConfig' {} a -> s {defaultUid = a} :: FileSystemConfig) Prelude.. Lens.mapping Prelude._Nat

instance Prelude.FromJSON FileSystemConfig where
  parseJSON =
    Prelude.withObject
      "FileSystemConfig"
      ( \x ->
          FileSystemConfig'
            Prelude.<$> (x Prelude..:? "DefaultGid")
            Prelude.<*> (x Prelude..:? "MountPath")
            Prelude.<*> (x Prelude..:? "DefaultUid")
      )

instance Prelude.Hashable FileSystemConfig

instance Prelude.NFData FileSystemConfig

instance Prelude.ToJSON FileSystemConfig where
  toJSON FileSystemConfig' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("DefaultGid" Prelude..=) Prelude.<$> defaultGid,
            ("MountPath" Prelude..=) Prelude.<$> mountPath,
            ("DefaultUid" Prelude..=) Prelude.<$> defaultUid
          ]
      )
