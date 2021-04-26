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
-- Module      : Network.AWS.ElasticBeanstalk.Types.CPUUtilization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticBeanstalk.Types.CPUUtilization where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | CPU utilization metrics for an instance.
--
-- /See:/ 'newCPUUtilization' smart constructor.
data CPUUtilization = CPUUtilization'
  { -- | Percentage of time that the CPU has spent in the @Idle@ state over the
    -- last 10 seconds.
    idle :: Prelude.Maybe Prelude.Double,
    -- | Percentage of time that the CPU has spent in the @User@ state over the
    -- last 10 seconds.
    user :: Prelude.Maybe Prelude.Double,
    -- | Available on Windows environments only.
    --
    -- Percentage of time that the CPU has spent in the @Privileged@ state over
    -- the last 10 seconds.
    privileged :: Prelude.Maybe Prelude.Double,
    -- | Available on Linux environments only.
    --
    -- Percentage of time that the CPU has spent in the @I\/O Wait@ state over
    -- the last 10 seconds.
    iOWait :: Prelude.Maybe Prelude.Double,
    -- | Available on Linux environments only.
    --
    -- Percentage of time that the CPU has spent in the @SoftIRQ@ state over
    -- the last 10 seconds.
    softIRQ :: Prelude.Maybe Prelude.Double,
    -- | Available on Linux environments only.
    --
    -- Percentage of time that the CPU has spent in the @Nice@ state over the
    -- last 10 seconds.
    nice :: Prelude.Maybe Prelude.Double,
    -- | Available on Linux environments only.
    --
    -- Percentage of time that the CPU has spent in the @System@ state over the
    -- last 10 seconds.
    system :: Prelude.Maybe Prelude.Double,
    -- | Available on Linux environments only.
    --
    -- Percentage of time that the CPU has spent in the @IRQ@ state over the
    -- last 10 seconds.
    iRQ :: Prelude.Maybe Prelude.Double
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CPUUtilization' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'idle', 'cPUUtilization_idle' - Percentage of time that the CPU has spent in the @Idle@ state over the
-- last 10 seconds.
--
-- 'user', 'cPUUtilization_user' - Percentage of time that the CPU has spent in the @User@ state over the
-- last 10 seconds.
--
-- 'privileged', 'cPUUtilization_privileged' - Available on Windows environments only.
--
-- Percentage of time that the CPU has spent in the @Privileged@ state over
-- the last 10 seconds.
--
-- 'iOWait', 'cPUUtilization_iOWait' - Available on Linux environments only.
--
-- Percentage of time that the CPU has spent in the @I\/O Wait@ state over
-- the last 10 seconds.
--
-- 'softIRQ', 'cPUUtilization_softIRQ' - Available on Linux environments only.
--
-- Percentage of time that the CPU has spent in the @SoftIRQ@ state over
-- the last 10 seconds.
--
-- 'nice', 'cPUUtilization_nice' - Available on Linux environments only.
--
-- Percentage of time that the CPU has spent in the @Nice@ state over the
-- last 10 seconds.
--
-- 'system', 'cPUUtilization_system' - Available on Linux environments only.
--
-- Percentage of time that the CPU has spent in the @System@ state over the
-- last 10 seconds.
--
-- 'iRQ', 'cPUUtilization_iRQ' - Available on Linux environments only.
--
-- Percentage of time that the CPU has spent in the @IRQ@ state over the
-- last 10 seconds.
newCPUUtilization ::
  CPUUtilization
newCPUUtilization =
  CPUUtilization'
    { idle = Prelude.Nothing,
      user = Prelude.Nothing,
      privileged = Prelude.Nothing,
      iOWait = Prelude.Nothing,
      softIRQ = Prelude.Nothing,
      nice = Prelude.Nothing,
      system = Prelude.Nothing,
      iRQ = Prelude.Nothing
    }

-- | Percentage of time that the CPU has spent in the @Idle@ state over the
-- last 10 seconds.
cPUUtilization_idle :: Lens.Lens' CPUUtilization (Prelude.Maybe Prelude.Double)
cPUUtilization_idle = Lens.lens (\CPUUtilization' {idle} -> idle) (\s@CPUUtilization' {} a -> s {idle = a} :: CPUUtilization)

-- | Percentage of time that the CPU has spent in the @User@ state over the
-- last 10 seconds.
cPUUtilization_user :: Lens.Lens' CPUUtilization (Prelude.Maybe Prelude.Double)
cPUUtilization_user = Lens.lens (\CPUUtilization' {user} -> user) (\s@CPUUtilization' {} a -> s {user = a} :: CPUUtilization)

-- | Available on Windows environments only.
--
-- Percentage of time that the CPU has spent in the @Privileged@ state over
-- the last 10 seconds.
cPUUtilization_privileged :: Lens.Lens' CPUUtilization (Prelude.Maybe Prelude.Double)
cPUUtilization_privileged = Lens.lens (\CPUUtilization' {privileged} -> privileged) (\s@CPUUtilization' {} a -> s {privileged = a} :: CPUUtilization)

-- | Available on Linux environments only.
--
-- Percentage of time that the CPU has spent in the @I\/O Wait@ state over
-- the last 10 seconds.
cPUUtilization_iOWait :: Lens.Lens' CPUUtilization (Prelude.Maybe Prelude.Double)
cPUUtilization_iOWait = Lens.lens (\CPUUtilization' {iOWait} -> iOWait) (\s@CPUUtilization' {} a -> s {iOWait = a} :: CPUUtilization)

-- | Available on Linux environments only.
--
-- Percentage of time that the CPU has spent in the @SoftIRQ@ state over
-- the last 10 seconds.
cPUUtilization_softIRQ :: Lens.Lens' CPUUtilization (Prelude.Maybe Prelude.Double)
cPUUtilization_softIRQ = Lens.lens (\CPUUtilization' {softIRQ} -> softIRQ) (\s@CPUUtilization' {} a -> s {softIRQ = a} :: CPUUtilization)

-- | Available on Linux environments only.
--
-- Percentage of time that the CPU has spent in the @Nice@ state over the
-- last 10 seconds.
cPUUtilization_nice :: Lens.Lens' CPUUtilization (Prelude.Maybe Prelude.Double)
cPUUtilization_nice = Lens.lens (\CPUUtilization' {nice} -> nice) (\s@CPUUtilization' {} a -> s {nice = a} :: CPUUtilization)

-- | Available on Linux environments only.
--
-- Percentage of time that the CPU has spent in the @System@ state over the
-- last 10 seconds.
cPUUtilization_system :: Lens.Lens' CPUUtilization (Prelude.Maybe Prelude.Double)
cPUUtilization_system = Lens.lens (\CPUUtilization' {system} -> system) (\s@CPUUtilization' {} a -> s {system = a} :: CPUUtilization)

-- | Available on Linux environments only.
--
-- Percentage of time that the CPU has spent in the @IRQ@ state over the
-- last 10 seconds.
cPUUtilization_iRQ :: Lens.Lens' CPUUtilization (Prelude.Maybe Prelude.Double)
cPUUtilization_iRQ = Lens.lens (\CPUUtilization' {iRQ} -> iRQ) (\s@CPUUtilization' {} a -> s {iRQ = a} :: CPUUtilization)

instance Prelude.FromXML CPUUtilization where
  parseXML x =
    CPUUtilization'
      Prelude.<$> (x Prelude..@? "Idle")
      Prelude.<*> (x Prelude..@? "User")
      Prelude.<*> (x Prelude..@? "Privileged")
      Prelude.<*> (x Prelude..@? "IOWait")
      Prelude.<*> (x Prelude..@? "SoftIRQ")
      Prelude.<*> (x Prelude..@? "Nice")
      Prelude.<*> (x Prelude..@? "System")
      Prelude.<*> (x Prelude..@? "IRQ")

instance Prelude.Hashable CPUUtilization

instance Prelude.NFData CPUUtilization
