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
-- Module      : Network.AWS.RDS.Types.DBClusterBacktrack
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.DBClusterBacktrack where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | This data type is used as a response element in the
-- @DescribeDBClusterBacktracks@ action.
--
-- /See:/ 'newDBClusterBacktrack' smart constructor.
data DBClusterBacktrack = DBClusterBacktrack'
  { -- | The status of the backtrack. This property returns one of the following
    -- values:
    --
    -- -   @applying@ - The backtrack is currently being applied to or rolled
    --     back from the DB cluster.
    --
    -- -   @completed@ - The backtrack has successfully been applied to or
    --     rolled back from the DB cluster.
    --
    -- -   @failed@ - An error occurred while the backtrack was applied to or
    --     rolled back from the DB cluster.
    --
    -- -   @pending@ - The backtrack is currently pending application to or
    --     rollback from the DB cluster.
    status :: Prelude.Maybe Prelude.Text,
    -- | Contains the backtrack identifier.
    backtrackIdentifier :: Prelude.Maybe Prelude.Text,
    -- | The timestamp of the time to which the DB cluster was backtracked.
    backtrackTo :: Prelude.Maybe Prelude.ISO8601,
    -- | Contains a user-supplied DB cluster identifier. This identifier is the
    -- unique key that identifies a DB cluster.
    dBClusterIdentifier :: Prelude.Maybe Prelude.Text,
    -- | The timestamp of the time at which the backtrack was requested.
    backtrackRequestCreationTime :: Prelude.Maybe Prelude.ISO8601,
    -- | The timestamp of the time from which the DB cluster was backtracked.
    backtrackedFrom :: Prelude.Maybe Prelude.ISO8601
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DBClusterBacktrack' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'dBClusterBacktrack_status' - The status of the backtrack. This property returns one of the following
-- values:
--
-- -   @applying@ - The backtrack is currently being applied to or rolled
--     back from the DB cluster.
--
-- -   @completed@ - The backtrack has successfully been applied to or
--     rolled back from the DB cluster.
--
-- -   @failed@ - An error occurred while the backtrack was applied to or
--     rolled back from the DB cluster.
--
-- -   @pending@ - The backtrack is currently pending application to or
--     rollback from the DB cluster.
--
-- 'backtrackIdentifier', 'dBClusterBacktrack_backtrackIdentifier' - Contains the backtrack identifier.
--
-- 'backtrackTo', 'dBClusterBacktrack_backtrackTo' - The timestamp of the time to which the DB cluster was backtracked.
--
-- 'dBClusterIdentifier', 'dBClusterBacktrack_dBClusterIdentifier' - Contains a user-supplied DB cluster identifier. This identifier is the
-- unique key that identifies a DB cluster.
--
-- 'backtrackRequestCreationTime', 'dBClusterBacktrack_backtrackRequestCreationTime' - The timestamp of the time at which the backtrack was requested.
--
-- 'backtrackedFrom', 'dBClusterBacktrack_backtrackedFrom' - The timestamp of the time from which the DB cluster was backtracked.
newDBClusterBacktrack ::
  DBClusterBacktrack
newDBClusterBacktrack =
  DBClusterBacktrack'
    { status = Prelude.Nothing,
      backtrackIdentifier = Prelude.Nothing,
      backtrackTo = Prelude.Nothing,
      dBClusterIdentifier = Prelude.Nothing,
      backtrackRequestCreationTime = Prelude.Nothing,
      backtrackedFrom = Prelude.Nothing
    }

-- | The status of the backtrack. This property returns one of the following
-- values:
--
-- -   @applying@ - The backtrack is currently being applied to or rolled
--     back from the DB cluster.
--
-- -   @completed@ - The backtrack has successfully been applied to or
--     rolled back from the DB cluster.
--
-- -   @failed@ - An error occurred while the backtrack was applied to or
--     rolled back from the DB cluster.
--
-- -   @pending@ - The backtrack is currently pending application to or
--     rollback from the DB cluster.
dBClusterBacktrack_status :: Lens.Lens' DBClusterBacktrack (Prelude.Maybe Prelude.Text)
dBClusterBacktrack_status = Lens.lens (\DBClusterBacktrack' {status} -> status) (\s@DBClusterBacktrack' {} a -> s {status = a} :: DBClusterBacktrack)

-- | Contains the backtrack identifier.
dBClusterBacktrack_backtrackIdentifier :: Lens.Lens' DBClusterBacktrack (Prelude.Maybe Prelude.Text)
dBClusterBacktrack_backtrackIdentifier = Lens.lens (\DBClusterBacktrack' {backtrackIdentifier} -> backtrackIdentifier) (\s@DBClusterBacktrack' {} a -> s {backtrackIdentifier = a} :: DBClusterBacktrack)

-- | The timestamp of the time to which the DB cluster was backtracked.
dBClusterBacktrack_backtrackTo :: Lens.Lens' DBClusterBacktrack (Prelude.Maybe Prelude.UTCTime)
dBClusterBacktrack_backtrackTo = Lens.lens (\DBClusterBacktrack' {backtrackTo} -> backtrackTo) (\s@DBClusterBacktrack' {} a -> s {backtrackTo = a} :: DBClusterBacktrack) Prelude.. Lens.mapping Prelude._Time

-- | Contains a user-supplied DB cluster identifier. This identifier is the
-- unique key that identifies a DB cluster.
dBClusterBacktrack_dBClusterIdentifier :: Lens.Lens' DBClusterBacktrack (Prelude.Maybe Prelude.Text)
dBClusterBacktrack_dBClusterIdentifier = Lens.lens (\DBClusterBacktrack' {dBClusterIdentifier} -> dBClusterIdentifier) (\s@DBClusterBacktrack' {} a -> s {dBClusterIdentifier = a} :: DBClusterBacktrack)

-- | The timestamp of the time at which the backtrack was requested.
dBClusterBacktrack_backtrackRequestCreationTime :: Lens.Lens' DBClusterBacktrack (Prelude.Maybe Prelude.UTCTime)
dBClusterBacktrack_backtrackRequestCreationTime = Lens.lens (\DBClusterBacktrack' {backtrackRequestCreationTime} -> backtrackRequestCreationTime) (\s@DBClusterBacktrack' {} a -> s {backtrackRequestCreationTime = a} :: DBClusterBacktrack) Prelude.. Lens.mapping Prelude._Time

-- | The timestamp of the time from which the DB cluster was backtracked.
dBClusterBacktrack_backtrackedFrom :: Lens.Lens' DBClusterBacktrack (Prelude.Maybe Prelude.UTCTime)
dBClusterBacktrack_backtrackedFrom = Lens.lens (\DBClusterBacktrack' {backtrackedFrom} -> backtrackedFrom) (\s@DBClusterBacktrack' {} a -> s {backtrackedFrom = a} :: DBClusterBacktrack) Prelude.. Lens.mapping Prelude._Time

instance Prelude.FromXML DBClusterBacktrack where
  parseXML x =
    DBClusterBacktrack'
      Prelude.<$> (x Prelude..@? "Status")
      Prelude.<*> (x Prelude..@? "BacktrackIdentifier")
      Prelude.<*> (x Prelude..@? "BacktrackTo")
      Prelude.<*> (x Prelude..@? "DBClusterIdentifier")
      Prelude.<*> (x Prelude..@? "BacktrackRequestCreationTime")
      Prelude.<*> (x Prelude..@? "BacktrackedFrom")

instance Prelude.Hashable DBClusterBacktrack

instance Prelude.NFData DBClusterBacktrack
