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
-- Module      : Network.AWS.SWF.RespondActivityTaskCanceled
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Used by workers to tell the service that the ActivityTask identified by
-- the @taskToken@ was successfully canceled. Additional @details@ can be
-- provided using the @details@ argument.
--
-- These @details@ (if provided) appear in the @ActivityTaskCanceled@ event
-- added to the workflow history.
--
-- Only use this operation if the @canceled@ flag of a
-- RecordActivityTaskHeartbeat request returns @true@ and if the activity
-- can be safely undone or abandoned.
--
-- A task is considered open from the time that it is scheduled until it is
-- closed. Therefore a task is reported as open while a worker is
-- processing it. A task is closed after it has been specified in a call to
-- RespondActivityTaskCompleted, RespondActivityTaskCanceled,
-- RespondActivityTaskFailed, or the task has
-- <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dg-basic.html#swf-dev-timeout-types timed out>.
--
-- __Access Control__
--
-- You can use IAM policies to control this action\'s access to Amazon SWF
-- resources as follows:
--
-- -   Use a @Resource@ element with the domain name to limit the action to
--     only specified domains.
--
-- -   Use an @Action@ element to allow or deny permission to call this
--     action.
--
-- -   You cannot use an IAM policy to constrain this action\'s parameters.
--
-- If the caller doesn\'t have sufficient permissions to invoke the action,
-- or the parameter values fall outside the specified constraints, the
-- action fails. The associated event attribute\'s @cause@ parameter is set
-- to @OPERATION_NOT_PERMITTED@. For details and example IAM policies, see
-- <https://docs.aws.amazon.com/amazonswf/latest/developerguide/swf-dev-iam.html Using IAM to Manage Access to Amazon SWF Workflows>
-- in the /Amazon SWF Developer Guide/.
module Network.AWS.SWF.RespondActivityTaskCanceled
  ( -- * Creating a Request
    RespondActivityTaskCanceled (..),
    newRespondActivityTaskCanceled,

    -- * Request Lenses
    respondActivityTaskCanceled_details,
    respondActivityTaskCanceled_taskToken,

    -- * Destructuring the Response
    RespondActivityTaskCanceledResponse (..),
    newRespondActivityTaskCanceledResponse,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SWF.Types

-- | /See:/ 'newRespondActivityTaskCanceled' smart constructor.
data RespondActivityTaskCanceled = RespondActivityTaskCanceled'
  { -- | Information about the cancellation.
    details :: Prelude.Maybe Prelude.Text,
    -- | The @taskToken@ of the ActivityTask.
    --
    -- @taskToken@ is generated by the service and should be treated as an
    -- opaque value. If the task is passed to another process, its @taskToken@
    -- must also be passed. This enables it to provide its progress and respond
    -- with results.
    taskToken :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'RespondActivityTaskCanceled' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'details', 'respondActivityTaskCanceled_details' - Information about the cancellation.
--
-- 'taskToken', 'respondActivityTaskCanceled_taskToken' - The @taskToken@ of the ActivityTask.
--
-- @taskToken@ is generated by the service and should be treated as an
-- opaque value. If the task is passed to another process, its @taskToken@
-- must also be passed. This enables it to provide its progress and respond
-- with results.
newRespondActivityTaskCanceled ::
  -- | 'taskToken'
  Prelude.Text ->
  RespondActivityTaskCanceled
newRespondActivityTaskCanceled pTaskToken_ =
  RespondActivityTaskCanceled'
    { details =
        Prelude.Nothing,
      taskToken = pTaskToken_
    }

-- | Information about the cancellation.
respondActivityTaskCanceled_details :: Lens.Lens' RespondActivityTaskCanceled (Prelude.Maybe Prelude.Text)
respondActivityTaskCanceled_details = Lens.lens (\RespondActivityTaskCanceled' {details} -> details) (\s@RespondActivityTaskCanceled' {} a -> s {details = a} :: RespondActivityTaskCanceled)

-- | The @taskToken@ of the ActivityTask.
--
-- @taskToken@ is generated by the service and should be treated as an
-- opaque value. If the task is passed to another process, its @taskToken@
-- must also be passed. This enables it to provide its progress and respond
-- with results.
respondActivityTaskCanceled_taskToken :: Lens.Lens' RespondActivityTaskCanceled Prelude.Text
respondActivityTaskCanceled_taskToken = Lens.lens (\RespondActivityTaskCanceled' {taskToken} -> taskToken) (\s@RespondActivityTaskCanceled' {} a -> s {taskToken = a} :: RespondActivityTaskCanceled)

instance
  Prelude.AWSRequest
    RespondActivityTaskCanceled
  where
  type
    Rs RespondActivityTaskCanceled =
      RespondActivityTaskCanceledResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveNull
      RespondActivityTaskCanceledResponse'

instance Prelude.Hashable RespondActivityTaskCanceled

instance Prelude.NFData RespondActivityTaskCanceled

instance
  Prelude.ToHeaders
    RespondActivityTaskCanceled
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "SimpleWorkflowService.RespondActivityTaskCanceled" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.0" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON RespondActivityTaskCanceled where
  toJSON RespondActivityTaskCanceled' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("details" Prelude..=) Prelude.<$> details,
            Prelude.Just ("taskToken" Prelude..= taskToken)
          ]
      )

instance Prelude.ToPath RespondActivityTaskCanceled where
  toPath = Prelude.const "/"

instance Prelude.ToQuery RespondActivityTaskCanceled where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newRespondActivityTaskCanceledResponse' smart constructor.
data RespondActivityTaskCanceledResponse = RespondActivityTaskCanceledResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'RespondActivityTaskCanceledResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newRespondActivityTaskCanceledResponse ::
  RespondActivityTaskCanceledResponse
newRespondActivityTaskCanceledResponse =
  RespondActivityTaskCanceledResponse'

instance
  Prelude.NFData
    RespondActivityTaskCanceledResponse
