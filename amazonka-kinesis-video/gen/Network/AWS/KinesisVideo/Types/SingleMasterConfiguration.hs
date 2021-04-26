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
-- Module      : Network.AWS.KinesisVideo.Types.SingleMasterConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.KinesisVideo.Types.SingleMasterConfiguration where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A structure that contains the configuration for the @SINGLE_MASTER@
-- channel type.
--
-- /See:/ 'newSingleMasterConfiguration' smart constructor.
data SingleMasterConfiguration = SingleMasterConfiguration'
  { -- | The period of time a signaling channel retains underlivered messages
    -- before they are discarded.
    messageTtlSeconds :: Prelude.Maybe Prelude.Nat
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'SingleMasterConfiguration' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'messageTtlSeconds', 'singleMasterConfiguration_messageTtlSeconds' - The period of time a signaling channel retains underlivered messages
-- before they are discarded.
newSingleMasterConfiguration ::
  SingleMasterConfiguration
newSingleMasterConfiguration =
  SingleMasterConfiguration'
    { messageTtlSeconds =
        Prelude.Nothing
    }

-- | The period of time a signaling channel retains underlivered messages
-- before they are discarded.
singleMasterConfiguration_messageTtlSeconds :: Lens.Lens' SingleMasterConfiguration (Prelude.Maybe Prelude.Natural)
singleMasterConfiguration_messageTtlSeconds = Lens.lens (\SingleMasterConfiguration' {messageTtlSeconds} -> messageTtlSeconds) (\s@SingleMasterConfiguration' {} a -> s {messageTtlSeconds = a} :: SingleMasterConfiguration) Prelude.. Lens.mapping Prelude._Nat

instance Prelude.FromJSON SingleMasterConfiguration where
  parseJSON =
    Prelude.withObject
      "SingleMasterConfiguration"
      ( \x ->
          SingleMasterConfiguration'
            Prelude.<$> (x Prelude..:? "MessageTtlSeconds")
      )

instance Prelude.Hashable SingleMasterConfiguration

instance Prelude.NFData SingleMasterConfiguration

instance Prelude.ToJSON SingleMasterConfiguration where
  toJSON SingleMasterConfiguration' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("MessageTtlSeconds" Prelude..=)
              Prelude.<$> messageTtlSeconds
          ]
      )
