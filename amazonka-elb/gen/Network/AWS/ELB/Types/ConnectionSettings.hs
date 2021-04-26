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
-- Module      : Network.AWS.ELB.Types.ConnectionSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ELB.Types.ConnectionSettings where

import Network.AWS.ELB.Internal
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Information about the @ConnectionSettings@ attribute.
--
-- /See:/ 'newConnectionSettings' smart constructor.
data ConnectionSettings = ConnectionSettings'
  { -- | The time, in seconds, that the connection is allowed to be idle (no data
    -- has been sent over the connection) before it is closed by the load
    -- balancer.
    idleTimeout :: Prelude.Nat
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ConnectionSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'idleTimeout', 'connectionSettings_idleTimeout' - The time, in seconds, that the connection is allowed to be idle (no data
-- has been sent over the connection) before it is closed by the load
-- balancer.
newConnectionSettings ::
  -- | 'idleTimeout'
  Prelude.Natural ->
  ConnectionSettings
newConnectionSettings pIdleTimeout_ =
  ConnectionSettings'
    { idleTimeout =
        Prelude._Nat Lens.# pIdleTimeout_
    }

-- | The time, in seconds, that the connection is allowed to be idle (no data
-- has been sent over the connection) before it is closed by the load
-- balancer.
connectionSettings_idleTimeout :: Lens.Lens' ConnectionSettings Prelude.Natural
connectionSettings_idleTimeout = Lens.lens (\ConnectionSettings' {idleTimeout} -> idleTimeout) (\s@ConnectionSettings' {} a -> s {idleTimeout = a} :: ConnectionSettings) Prelude.. Prelude._Nat

instance Prelude.FromXML ConnectionSettings where
  parseXML x =
    ConnectionSettings'
      Prelude.<$> (x Prelude..@ "IdleTimeout")

instance Prelude.Hashable ConnectionSettings

instance Prelude.NFData ConnectionSettings

instance Prelude.ToQuery ConnectionSettings where
  toQuery ConnectionSettings' {..} =
    Prelude.mconcat
      ["IdleTimeout" Prelude.=: idleTimeout]
