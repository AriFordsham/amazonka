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
-- Module      : Network.AWS.SSM.GetMaintenanceWindowExecution
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details about a specific a maintenance window execution.
module Network.AWS.SSM.GetMaintenanceWindowExecution
  ( -- * Creating a Request
    GetMaintenanceWindowExecution (..),
    newGetMaintenanceWindowExecution,

    -- * Request Lenses
    getMaintenanceWindowExecution_windowExecutionId,

    -- * Destructuring the Response
    GetMaintenanceWindowExecutionResponse (..),
    newGetMaintenanceWindowExecutionResponse,

    -- * Response Lenses
    getMaintenanceWindowExecutionResponse_status,
    getMaintenanceWindowExecutionResponse_statusDetails,
    getMaintenanceWindowExecutionResponse_taskIds,
    getMaintenanceWindowExecutionResponse_startTime,
    getMaintenanceWindowExecutionResponse_endTime,
    getMaintenanceWindowExecutionResponse_windowExecutionId,
    getMaintenanceWindowExecutionResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SSM.Types
import Network.AWS.SSM.Types.MaintenanceWindowExecutionStatus

-- | /See:/ 'newGetMaintenanceWindowExecution' smart constructor.
data GetMaintenanceWindowExecution = GetMaintenanceWindowExecution'
  { -- | The ID of the maintenance window execution that includes the task.
    windowExecutionId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetMaintenanceWindowExecution' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'windowExecutionId', 'getMaintenanceWindowExecution_windowExecutionId' - The ID of the maintenance window execution that includes the task.
newGetMaintenanceWindowExecution ::
  -- | 'windowExecutionId'
  Prelude.Text ->
  GetMaintenanceWindowExecution
newGetMaintenanceWindowExecution pWindowExecutionId_ =
  GetMaintenanceWindowExecution'
    { windowExecutionId =
        pWindowExecutionId_
    }

-- | The ID of the maintenance window execution that includes the task.
getMaintenanceWindowExecution_windowExecutionId :: Lens.Lens' GetMaintenanceWindowExecution Prelude.Text
getMaintenanceWindowExecution_windowExecutionId = Lens.lens (\GetMaintenanceWindowExecution' {windowExecutionId} -> windowExecutionId) (\s@GetMaintenanceWindowExecution' {} a -> s {windowExecutionId = a} :: GetMaintenanceWindowExecution)

instance
  Prelude.AWSRequest
    GetMaintenanceWindowExecution
  where
  type
    Rs GetMaintenanceWindowExecution =
      GetMaintenanceWindowExecutionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetMaintenanceWindowExecutionResponse'
            Prelude.<$> (x Prelude..?> "Status")
            Prelude.<*> (x Prelude..?> "StatusDetails")
            Prelude.<*> (x Prelude..?> "TaskIds" Prelude..!@ Prelude.mempty)
            Prelude.<*> (x Prelude..?> "StartTime")
            Prelude.<*> (x Prelude..?> "EndTime")
            Prelude.<*> (x Prelude..?> "WindowExecutionId")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetMaintenanceWindowExecution

instance Prelude.NFData GetMaintenanceWindowExecution

instance
  Prelude.ToHeaders
    GetMaintenanceWindowExecution
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "AmazonSSM.GetMaintenanceWindowExecution" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON GetMaintenanceWindowExecution where
  toJSON GetMaintenanceWindowExecution' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("WindowExecutionId" Prelude..= windowExecutionId)
          ]
      )

instance Prelude.ToPath GetMaintenanceWindowExecution where
  toPath = Prelude.const "/"

instance
  Prelude.ToQuery
    GetMaintenanceWindowExecution
  where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetMaintenanceWindowExecutionResponse' smart constructor.
data GetMaintenanceWindowExecutionResponse = GetMaintenanceWindowExecutionResponse'
  { -- | The status of the maintenance window execution.
    status :: Prelude.Maybe MaintenanceWindowExecutionStatus,
    -- | The details explaining the Status. Only available for certain status
    -- values.
    statusDetails :: Prelude.Maybe Prelude.Text,
    -- | The ID of the task executions from the maintenance window execution.
    taskIds :: Prelude.Maybe [Prelude.Text],
    -- | The time the maintenance window started running.
    startTime :: Prelude.Maybe Prelude.POSIX,
    -- | The time the maintenance window finished running.
    endTime :: Prelude.Maybe Prelude.POSIX,
    -- | The ID of the maintenance window execution.
    windowExecutionId :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetMaintenanceWindowExecutionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'status', 'getMaintenanceWindowExecutionResponse_status' - The status of the maintenance window execution.
--
-- 'statusDetails', 'getMaintenanceWindowExecutionResponse_statusDetails' - The details explaining the Status. Only available for certain status
-- values.
--
-- 'taskIds', 'getMaintenanceWindowExecutionResponse_taskIds' - The ID of the task executions from the maintenance window execution.
--
-- 'startTime', 'getMaintenanceWindowExecutionResponse_startTime' - The time the maintenance window started running.
--
-- 'endTime', 'getMaintenanceWindowExecutionResponse_endTime' - The time the maintenance window finished running.
--
-- 'windowExecutionId', 'getMaintenanceWindowExecutionResponse_windowExecutionId' - The ID of the maintenance window execution.
--
-- 'httpStatus', 'getMaintenanceWindowExecutionResponse_httpStatus' - The response's http status code.
newGetMaintenanceWindowExecutionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetMaintenanceWindowExecutionResponse
newGetMaintenanceWindowExecutionResponse pHttpStatus_ =
  GetMaintenanceWindowExecutionResponse'
    { status =
        Prelude.Nothing,
      statusDetails = Prelude.Nothing,
      taskIds = Prelude.Nothing,
      startTime = Prelude.Nothing,
      endTime = Prelude.Nothing,
      windowExecutionId = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The status of the maintenance window execution.
getMaintenanceWindowExecutionResponse_status :: Lens.Lens' GetMaintenanceWindowExecutionResponse (Prelude.Maybe MaintenanceWindowExecutionStatus)
getMaintenanceWindowExecutionResponse_status = Lens.lens (\GetMaintenanceWindowExecutionResponse' {status} -> status) (\s@GetMaintenanceWindowExecutionResponse' {} a -> s {status = a} :: GetMaintenanceWindowExecutionResponse)

-- | The details explaining the Status. Only available for certain status
-- values.
getMaintenanceWindowExecutionResponse_statusDetails :: Lens.Lens' GetMaintenanceWindowExecutionResponse (Prelude.Maybe Prelude.Text)
getMaintenanceWindowExecutionResponse_statusDetails = Lens.lens (\GetMaintenanceWindowExecutionResponse' {statusDetails} -> statusDetails) (\s@GetMaintenanceWindowExecutionResponse' {} a -> s {statusDetails = a} :: GetMaintenanceWindowExecutionResponse)

-- | The ID of the task executions from the maintenance window execution.
getMaintenanceWindowExecutionResponse_taskIds :: Lens.Lens' GetMaintenanceWindowExecutionResponse (Prelude.Maybe [Prelude.Text])
getMaintenanceWindowExecutionResponse_taskIds = Lens.lens (\GetMaintenanceWindowExecutionResponse' {taskIds} -> taskIds) (\s@GetMaintenanceWindowExecutionResponse' {} a -> s {taskIds = a} :: GetMaintenanceWindowExecutionResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The time the maintenance window started running.
getMaintenanceWindowExecutionResponse_startTime :: Lens.Lens' GetMaintenanceWindowExecutionResponse (Prelude.Maybe Prelude.UTCTime)
getMaintenanceWindowExecutionResponse_startTime = Lens.lens (\GetMaintenanceWindowExecutionResponse' {startTime} -> startTime) (\s@GetMaintenanceWindowExecutionResponse' {} a -> s {startTime = a} :: GetMaintenanceWindowExecutionResponse) Prelude.. Lens.mapping Prelude._Time

-- | The time the maintenance window finished running.
getMaintenanceWindowExecutionResponse_endTime :: Lens.Lens' GetMaintenanceWindowExecutionResponse (Prelude.Maybe Prelude.UTCTime)
getMaintenanceWindowExecutionResponse_endTime = Lens.lens (\GetMaintenanceWindowExecutionResponse' {endTime} -> endTime) (\s@GetMaintenanceWindowExecutionResponse' {} a -> s {endTime = a} :: GetMaintenanceWindowExecutionResponse) Prelude.. Lens.mapping Prelude._Time

-- | The ID of the maintenance window execution.
getMaintenanceWindowExecutionResponse_windowExecutionId :: Lens.Lens' GetMaintenanceWindowExecutionResponse (Prelude.Maybe Prelude.Text)
getMaintenanceWindowExecutionResponse_windowExecutionId = Lens.lens (\GetMaintenanceWindowExecutionResponse' {windowExecutionId} -> windowExecutionId) (\s@GetMaintenanceWindowExecutionResponse' {} a -> s {windowExecutionId = a} :: GetMaintenanceWindowExecutionResponse)

-- | The response's http status code.
getMaintenanceWindowExecutionResponse_httpStatus :: Lens.Lens' GetMaintenanceWindowExecutionResponse Prelude.Int
getMaintenanceWindowExecutionResponse_httpStatus = Lens.lens (\GetMaintenanceWindowExecutionResponse' {httpStatus} -> httpStatus) (\s@GetMaintenanceWindowExecutionResponse' {} a -> s {httpStatus = a} :: GetMaintenanceWindowExecutionResponse)

instance
  Prelude.NFData
    GetMaintenanceWindowExecutionResponse
