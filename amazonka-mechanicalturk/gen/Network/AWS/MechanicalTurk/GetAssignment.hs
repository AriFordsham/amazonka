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
-- Module      : Network.AWS.MechanicalTurk.GetAssignment
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @GetAssignment@ operation retrieves the details of the specified
-- Assignment.
module Network.AWS.MechanicalTurk.GetAssignment
  ( -- * Creating a Request
    GetAssignment (..),
    newGetAssignment,

    -- * Request Lenses
    getAssignment_assignmentId,

    -- * Destructuring the Response
    GetAssignmentResponse (..),
    newGetAssignmentResponse,

    -- * Response Lenses
    getAssignmentResponse_hIT,
    getAssignmentResponse_assignment,
    getAssignmentResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.MechanicalTurk.Types
import Network.AWS.MechanicalTurk.Types.Assignment
import Network.AWS.MechanicalTurk.Types.HIT
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetAssignment' smart constructor.
data GetAssignment = GetAssignment'
  { -- | The ID of the Assignment to be retrieved.
    assignmentId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetAssignment' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'assignmentId', 'getAssignment_assignmentId' - The ID of the Assignment to be retrieved.
newGetAssignment ::
  -- | 'assignmentId'
  Prelude.Text ->
  GetAssignment
newGetAssignment pAssignmentId_ =
  GetAssignment' {assignmentId = pAssignmentId_}

-- | The ID of the Assignment to be retrieved.
getAssignment_assignmentId :: Lens.Lens' GetAssignment Prelude.Text
getAssignment_assignmentId = Lens.lens (\GetAssignment' {assignmentId} -> assignmentId) (\s@GetAssignment' {} a -> s {assignmentId = a} :: GetAssignment)

instance Prelude.AWSRequest GetAssignment where
  type Rs GetAssignment = GetAssignmentResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetAssignmentResponse'
            Prelude.<$> (x Prelude..?> "HIT")
            Prelude.<*> (x Prelude..?> "Assignment")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetAssignment

instance Prelude.NFData GetAssignment

instance Prelude.ToHeaders GetAssignment where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "MTurkRequesterServiceV20170117.GetAssignment" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON GetAssignment where
  toJSON GetAssignment' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("AssignmentId" Prelude..= assignmentId)
          ]
      )

instance Prelude.ToPath GetAssignment where
  toPath = Prelude.const "/"

instance Prelude.ToQuery GetAssignment where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetAssignmentResponse' smart constructor.
data GetAssignmentResponse = GetAssignmentResponse'
  { -- | The HIT associated with this assignment. The response includes one HIT
    -- element.
    hIT :: Prelude.Maybe HIT,
    -- | The assignment. The response includes one Assignment element.
    assignment :: Prelude.Maybe Assignment,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetAssignmentResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'hIT', 'getAssignmentResponse_hIT' - The HIT associated with this assignment. The response includes one HIT
-- element.
--
-- 'assignment', 'getAssignmentResponse_assignment' - The assignment. The response includes one Assignment element.
--
-- 'httpStatus', 'getAssignmentResponse_httpStatus' - The response's http status code.
newGetAssignmentResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetAssignmentResponse
newGetAssignmentResponse pHttpStatus_ =
  GetAssignmentResponse'
    { hIT = Prelude.Nothing,
      assignment = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The HIT associated with this assignment. The response includes one HIT
-- element.
getAssignmentResponse_hIT :: Lens.Lens' GetAssignmentResponse (Prelude.Maybe HIT)
getAssignmentResponse_hIT = Lens.lens (\GetAssignmentResponse' {hIT} -> hIT) (\s@GetAssignmentResponse' {} a -> s {hIT = a} :: GetAssignmentResponse)

-- | The assignment. The response includes one Assignment element.
getAssignmentResponse_assignment :: Lens.Lens' GetAssignmentResponse (Prelude.Maybe Assignment)
getAssignmentResponse_assignment = Lens.lens (\GetAssignmentResponse' {assignment} -> assignment) (\s@GetAssignmentResponse' {} a -> s {assignment = a} :: GetAssignmentResponse)

-- | The response's http status code.
getAssignmentResponse_httpStatus :: Lens.Lens' GetAssignmentResponse Prelude.Int
getAssignmentResponse_httpStatus = Lens.lens (\GetAssignmentResponse' {httpStatus} -> httpStatus) (\s@GetAssignmentResponse' {} a -> s {httpStatus = a} :: GetAssignmentResponse)

instance Prelude.NFData GetAssignmentResponse
