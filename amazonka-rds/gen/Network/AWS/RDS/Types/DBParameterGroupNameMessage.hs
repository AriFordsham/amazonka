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
-- Module      : Network.AWS.RDS.Types.DBParameterGroupNameMessage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.DBParameterGroupNameMessage where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Contains the result of a successful invocation of the
-- @ModifyDBParameterGroup@ or @ResetDBParameterGroup@ action.
--
-- /See:/ 'newDBParameterGroupNameMessage' smart constructor.
data DBParameterGroupNameMessage = DBParameterGroupNameMessage'
  { -- | The name of the DB parameter group.
    dBParameterGroupName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DBParameterGroupNameMessage' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBParameterGroupName', 'dBParameterGroupNameMessage_dBParameterGroupName' - The name of the DB parameter group.
newDBParameterGroupNameMessage ::
  DBParameterGroupNameMessage
newDBParameterGroupNameMessage =
  DBParameterGroupNameMessage'
    { dBParameterGroupName =
        Prelude.Nothing
    }

-- | The name of the DB parameter group.
dBParameterGroupNameMessage_dBParameterGroupName :: Lens.Lens' DBParameterGroupNameMessage (Prelude.Maybe Prelude.Text)
dBParameterGroupNameMessage_dBParameterGroupName = Lens.lens (\DBParameterGroupNameMessage' {dBParameterGroupName} -> dBParameterGroupName) (\s@DBParameterGroupNameMessage' {} a -> s {dBParameterGroupName = a} :: DBParameterGroupNameMessage)

instance Prelude.FromXML DBParameterGroupNameMessage where
  parseXML x =
    DBParameterGroupNameMessage'
      Prelude.<$> (x Prelude..@? "DBParameterGroupName")

instance Prelude.Hashable DBParameterGroupNameMessage

instance Prelude.NFData DBParameterGroupNameMessage
