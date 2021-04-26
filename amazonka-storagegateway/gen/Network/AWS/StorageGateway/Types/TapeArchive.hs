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
-- Module      : Network.AWS.StorageGateway.Types.TapeArchive
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.TapeArchive where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Represents a virtual tape that is archived in the virtual tape shelf
-- (VTS).
--
-- /See:/ 'newTapeArchive' smart constructor.
data TapeArchive = TapeArchive'
  { -- | The time that the tape entered the custom tape pool.
    --
    -- The default timestamp format is in the ISO8601 extended
    -- YYYY-MM-DD\'T\'HH:MM:SS\'Z\' format.
    poolEntryDate :: Prelude.Maybe Prelude.POSIX,
    -- | The current state of the archived virtual tape.
    tapeStatus :: Prelude.Maybe Prelude.Text,
    -- | The date the virtual tape was created.
    tapeCreatedDate :: Prelude.Maybe Prelude.POSIX,
    -- | The ID of the pool that was used to archive the tape. The tapes in this
    -- pool are archived in the S3 storage class that is associated with the
    -- pool.
    --
    -- Valid Values: @GLACIER@ | @DEEP_ARCHIVE@
    poolId :: Prelude.Maybe Prelude.Text,
    -- | The time that the archiving of the virtual tape was completed.
    --
    -- The default timestamp format is in the ISO8601 extended
    -- YYYY-MM-DD\'T\'HH:MM:SS\'Z\' format.
    completionTime :: Prelude.Maybe Prelude.POSIX,
    -- | The Amazon Resource Name (ARN) of the tape gateway that the virtual tape
    -- is being retrieved to.
    --
    -- The virtual tape is retrieved from the virtual tape shelf (VTS).
    retrievedTo :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of an archived virtual tape.
    tapeARN :: Prelude.Maybe Prelude.Text,
    kMSKey :: Prelude.Maybe Prelude.Text,
    -- | Set to @true@ if the archived tape is stored as write-once-read-many
    -- (WORM).
    worm :: Prelude.Maybe Prelude.Bool,
    -- | The barcode that identifies the archived virtual tape.
    tapeBarcode :: Prelude.Maybe Prelude.Text,
    -- | The size, in bytes, of data stored on the virtual tape.
    --
    -- This value is not available for tapes created prior to May 13, 2015.
    tapeUsedInBytes :: Prelude.Maybe Prelude.Integer,
    -- | The size, in bytes, of the archived virtual tape.
    tapeSizeInBytes :: Prelude.Maybe Prelude.Integer,
    -- | If the archived tape is subject to tape retention lock, the date that
    -- the archived tape started being retained.
    retentionStartDate :: Prelude.Maybe Prelude.POSIX
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'TapeArchive' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'poolEntryDate', 'tapeArchive_poolEntryDate' - The time that the tape entered the custom tape pool.
--
-- The default timestamp format is in the ISO8601 extended
-- YYYY-MM-DD\'T\'HH:MM:SS\'Z\' format.
--
-- 'tapeStatus', 'tapeArchive_tapeStatus' - The current state of the archived virtual tape.
--
-- 'tapeCreatedDate', 'tapeArchive_tapeCreatedDate' - The date the virtual tape was created.
--
-- 'poolId', 'tapeArchive_poolId' - The ID of the pool that was used to archive the tape. The tapes in this
-- pool are archived in the S3 storage class that is associated with the
-- pool.
--
-- Valid Values: @GLACIER@ | @DEEP_ARCHIVE@
--
-- 'completionTime', 'tapeArchive_completionTime' - The time that the archiving of the virtual tape was completed.
--
-- The default timestamp format is in the ISO8601 extended
-- YYYY-MM-DD\'T\'HH:MM:SS\'Z\' format.
--
-- 'retrievedTo', 'tapeArchive_retrievedTo' - The Amazon Resource Name (ARN) of the tape gateway that the virtual tape
-- is being retrieved to.
--
-- The virtual tape is retrieved from the virtual tape shelf (VTS).
--
-- 'tapeARN', 'tapeArchive_tapeARN' - The Amazon Resource Name (ARN) of an archived virtual tape.
--
-- 'kMSKey', 'tapeArchive_kMSKey' - Undocumented member.
--
-- 'worm', 'tapeArchive_worm' - Set to @true@ if the archived tape is stored as write-once-read-many
-- (WORM).
--
-- 'tapeBarcode', 'tapeArchive_tapeBarcode' - The barcode that identifies the archived virtual tape.
--
-- 'tapeUsedInBytes', 'tapeArchive_tapeUsedInBytes' - The size, in bytes, of data stored on the virtual tape.
--
-- This value is not available for tapes created prior to May 13, 2015.
--
-- 'tapeSizeInBytes', 'tapeArchive_tapeSizeInBytes' - The size, in bytes, of the archived virtual tape.
--
-- 'retentionStartDate', 'tapeArchive_retentionStartDate' - If the archived tape is subject to tape retention lock, the date that
-- the archived tape started being retained.
newTapeArchive ::
  TapeArchive
newTapeArchive =
  TapeArchive'
    { poolEntryDate = Prelude.Nothing,
      tapeStatus = Prelude.Nothing,
      tapeCreatedDate = Prelude.Nothing,
      poolId = Prelude.Nothing,
      completionTime = Prelude.Nothing,
      retrievedTo = Prelude.Nothing,
      tapeARN = Prelude.Nothing,
      kMSKey = Prelude.Nothing,
      worm = Prelude.Nothing,
      tapeBarcode = Prelude.Nothing,
      tapeUsedInBytes = Prelude.Nothing,
      tapeSizeInBytes = Prelude.Nothing,
      retentionStartDate = Prelude.Nothing
    }

-- | The time that the tape entered the custom tape pool.
--
-- The default timestamp format is in the ISO8601 extended
-- YYYY-MM-DD\'T\'HH:MM:SS\'Z\' format.
tapeArchive_poolEntryDate :: Lens.Lens' TapeArchive (Prelude.Maybe Prelude.UTCTime)
tapeArchive_poolEntryDate = Lens.lens (\TapeArchive' {poolEntryDate} -> poolEntryDate) (\s@TapeArchive' {} a -> s {poolEntryDate = a} :: TapeArchive) Prelude.. Lens.mapping Prelude._Time

-- | The current state of the archived virtual tape.
tapeArchive_tapeStatus :: Lens.Lens' TapeArchive (Prelude.Maybe Prelude.Text)
tapeArchive_tapeStatus = Lens.lens (\TapeArchive' {tapeStatus} -> tapeStatus) (\s@TapeArchive' {} a -> s {tapeStatus = a} :: TapeArchive)

-- | The date the virtual tape was created.
tapeArchive_tapeCreatedDate :: Lens.Lens' TapeArchive (Prelude.Maybe Prelude.UTCTime)
tapeArchive_tapeCreatedDate = Lens.lens (\TapeArchive' {tapeCreatedDate} -> tapeCreatedDate) (\s@TapeArchive' {} a -> s {tapeCreatedDate = a} :: TapeArchive) Prelude.. Lens.mapping Prelude._Time

-- | The ID of the pool that was used to archive the tape. The tapes in this
-- pool are archived in the S3 storage class that is associated with the
-- pool.
--
-- Valid Values: @GLACIER@ | @DEEP_ARCHIVE@
tapeArchive_poolId :: Lens.Lens' TapeArchive (Prelude.Maybe Prelude.Text)
tapeArchive_poolId = Lens.lens (\TapeArchive' {poolId} -> poolId) (\s@TapeArchive' {} a -> s {poolId = a} :: TapeArchive)

-- | The time that the archiving of the virtual tape was completed.
--
-- The default timestamp format is in the ISO8601 extended
-- YYYY-MM-DD\'T\'HH:MM:SS\'Z\' format.
tapeArchive_completionTime :: Lens.Lens' TapeArchive (Prelude.Maybe Prelude.UTCTime)
tapeArchive_completionTime = Lens.lens (\TapeArchive' {completionTime} -> completionTime) (\s@TapeArchive' {} a -> s {completionTime = a} :: TapeArchive) Prelude.. Lens.mapping Prelude._Time

-- | The Amazon Resource Name (ARN) of the tape gateway that the virtual tape
-- is being retrieved to.
--
-- The virtual tape is retrieved from the virtual tape shelf (VTS).
tapeArchive_retrievedTo :: Lens.Lens' TapeArchive (Prelude.Maybe Prelude.Text)
tapeArchive_retrievedTo = Lens.lens (\TapeArchive' {retrievedTo} -> retrievedTo) (\s@TapeArchive' {} a -> s {retrievedTo = a} :: TapeArchive)

-- | The Amazon Resource Name (ARN) of an archived virtual tape.
tapeArchive_tapeARN :: Lens.Lens' TapeArchive (Prelude.Maybe Prelude.Text)
tapeArchive_tapeARN = Lens.lens (\TapeArchive' {tapeARN} -> tapeARN) (\s@TapeArchive' {} a -> s {tapeARN = a} :: TapeArchive)

-- | Undocumented member.
tapeArchive_kMSKey :: Lens.Lens' TapeArchive (Prelude.Maybe Prelude.Text)
tapeArchive_kMSKey = Lens.lens (\TapeArchive' {kMSKey} -> kMSKey) (\s@TapeArchive' {} a -> s {kMSKey = a} :: TapeArchive)

-- | Set to @true@ if the archived tape is stored as write-once-read-many
-- (WORM).
tapeArchive_worm :: Lens.Lens' TapeArchive (Prelude.Maybe Prelude.Bool)
tapeArchive_worm = Lens.lens (\TapeArchive' {worm} -> worm) (\s@TapeArchive' {} a -> s {worm = a} :: TapeArchive)

-- | The barcode that identifies the archived virtual tape.
tapeArchive_tapeBarcode :: Lens.Lens' TapeArchive (Prelude.Maybe Prelude.Text)
tapeArchive_tapeBarcode = Lens.lens (\TapeArchive' {tapeBarcode} -> tapeBarcode) (\s@TapeArchive' {} a -> s {tapeBarcode = a} :: TapeArchive)

-- | The size, in bytes, of data stored on the virtual tape.
--
-- This value is not available for tapes created prior to May 13, 2015.
tapeArchive_tapeUsedInBytes :: Lens.Lens' TapeArchive (Prelude.Maybe Prelude.Integer)
tapeArchive_tapeUsedInBytes = Lens.lens (\TapeArchive' {tapeUsedInBytes} -> tapeUsedInBytes) (\s@TapeArchive' {} a -> s {tapeUsedInBytes = a} :: TapeArchive)

-- | The size, in bytes, of the archived virtual tape.
tapeArchive_tapeSizeInBytes :: Lens.Lens' TapeArchive (Prelude.Maybe Prelude.Integer)
tapeArchive_tapeSizeInBytes = Lens.lens (\TapeArchive' {tapeSizeInBytes} -> tapeSizeInBytes) (\s@TapeArchive' {} a -> s {tapeSizeInBytes = a} :: TapeArchive)

-- | If the archived tape is subject to tape retention lock, the date that
-- the archived tape started being retained.
tapeArchive_retentionStartDate :: Lens.Lens' TapeArchive (Prelude.Maybe Prelude.UTCTime)
tapeArchive_retentionStartDate = Lens.lens (\TapeArchive' {retentionStartDate} -> retentionStartDate) (\s@TapeArchive' {} a -> s {retentionStartDate = a} :: TapeArchive) Prelude.. Lens.mapping Prelude._Time

instance Prelude.FromJSON TapeArchive where
  parseJSON =
    Prelude.withObject
      "TapeArchive"
      ( \x ->
          TapeArchive'
            Prelude.<$> (x Prelude..:? "PoolEntryDate")
            Prelude.<*> (x Prelude..:? "TapeStatus")
            Prelude.<*> (x Prelude..:? "TapeCreatedDate")
            Prelude.<*> (x Prelude..:? "PoolId")
            Prelude.<*> (x Prelude..:? "CompletionTime")
            Prelude.<*> (x Prelude..:? "RetrievedTo")
            Prelude.<*> (x Prelude..:? "TapeARN")
            Prelude.<*> (x Prelude..:? "KMSKey")
            Prelude.<*> (x Prelude..:? "Worm")
            Prelude.<*> (x Prelude..:? "TapeBarcode")
            Prelude.<*> (x Prelude..:? "TapeUsedInBytes")
            Prelude.<*> (x Prelude..:? "TapeSizeInBytes")
            Prelude.<*> (x Prelude..:? "RetentionStartDate")
      )

instance Prelude.Hashable TapeArchive

instance Prelude.NFData TapeArchive
