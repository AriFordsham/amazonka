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
-- Module      : Network.AWS.RDS.Types.DBClusterSnapshotAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.DBClusterSnapshotAttribute where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains the name and values of a manual DB cluster snapshot attribute.
--
-- Manual DB cluster snapshot attributes are used to authorize other AWS
-- accounts to restore a manual DB cluster snapshot. For more information,
-- see the @ModifyDBClusterSnapshotAttribute@ API action.
--
-- /See:/ 'newDBClusterSnapshotAttribute' smart constructor.
data DBClusterSnapshotAttribute = DBClusterSnapshotAttribute'
  { -- | The name of the manual DB cluster snapshot attribute.
    --
    -- The attribute named @restore@ refers to the list of AWS accounts that
    -- have permission to copy or restore the manual DB cluster snapshot. For
    -- more information, see the @ModifyDBClusterSnapshotAttribute@ API action.
    attributeName :: Prelude.Maybe Prelude.Text,
    -- | The value(s) for the manual DB cluster snapshot attribute.
    --
    -- If the @AttributeName@ field is set to @restore@, then this element
    -- returns a list of IDs of the AWS accounts that are authorized to copy or
    -- restore the manual DB cluster snapshot. If a value of @all@ is in the
    -- list, then the manual DB cluster snapshot is public and available for
    -- any AWS account to copy or restore.
    attributeValues :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DBClusterSnapshotAttribute' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'attributeName', 'dbClusterSnapshotAttribute_attributeName' - The name of the manual DB cluster snapshot attribute.
--
-- The attribute named @restore@ refers to the list of AWS accounts that
-- have permission to copy or restore the manual DB cluster snapshot. For
-- more information, see the @ModifyDBClusterSnapshotAttribute@ API action.
--
-- 'attributeValues', 'dbClusterSnapshotAttribute_attributeValues' - The value(s) for the manual DB cluster snapshot attribute.
--
-- If the @AttributeName@ field is set to @restore@, then this element
-- returns a list of IDs of the AWS accounts that are authorized to copy or
-- restore the manual DB cluster snapshot. If a value of @all@ is in the
-- list, then the manual DB cluster snapshot is public and available for
-- any AWS account to copy or restore.
newDBClusterSnapshotAttribute ::
  DBClusterSnapshotAttribute
newDBClusterSnapshotAttribute =
  DBClusterSnapshotAttribute'
    { attributeName =
        Prelude.Nothing,
      attributeValues = Prelude.Nothing
    }

-- | The name of the manual DB cluster snapshot attribute.
--
-- The attribute named @restore@ refers to the list of AWS accounts that
-- have permission to copy or restore the manual DB cluster snapshot. For
-- more information, see the @ModifyDBClusterSnapshotAttribute@ API action.
dbClusterSnapshotAttribute_attributeName :: Lens.Lens' DBClusterSnapshotAttribute (Prelude.Maybe Prelude.Text)
dbClusterSnapshotAttribute_attributeName = Lens.lens (\DBClusterSnapshotAttribute' {attributeName} -> attributeName) (\s@DBClusterSnapshotAttribute' {} a -> s {attributeName = a} :: DBClusterSnapshotAttribute)

-- | The value(s) for the manual DB cluster snapshot attribute.
--
-- If the @AttributeName@ field is set to @restore@, then this element
-- returns a list of IDs of the AWS accounts that are authorized to copy or
-- restore the manual DB cluster snapshot. If a value of @all@ is in the
-- list, then the manual DB cluster snapshot is public and available for
-- any AWS account to copy or restore.
dbClusterSnapshotAttribute_attributeValues :: Lens.Lens' DBClusterSnapshotAttribute (Prelude.Maybe [Prelude.Text])
dbClusterSnapshotAttribute_attributeValues = Lens.lens (\DBClusterSnapshotAttribute' {attributeValues} -> attributeValues) (\s@DBClusterSnapshotAttribute' {} a -> s {attributeValues = a} :: DBClusterSnapshotAttribute) Prelude.. Lens.mapping Prelude._Coerce

instance Prelude.FromXML DBClusterSnapshotAttribute where
  parseXML x =
    DBClusterSnapshotAttribute'
      Prelude.<$> (x Prelude..@? "AttributeName")
      Prelude.<*> ( x Prelude..@? "AttributeValues"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList "AttributeValue")
                  )

instance Prelude.Hashable DBClusterSnapshotAttribute

instance Prelude.NFData DBClusterSnapshotAttribute
