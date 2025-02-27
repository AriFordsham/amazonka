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
-- Module      : Network.AWS.CloudFormation.DescribeStackEvents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all stack related events for a specified stack in reverse
-- chronological order. For more information about a stack\'s event
-- history, go to
-- <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/concept-stack.html Stacks>
-- in the AWS CloudFormation User Guide.
--
-- You can list events for stacks that have failed to create or have been
-- deleted by specifying the unique stack identifier (stack ID).
--
-- This operation returns paginated results.
module Network.AWS.CloudFormation.DescribeStackEvents
  ( -- * Creating a Request
    DescribeStackEvents (..),
    newDescribeStackEvents,

    -- * Request Lenses
    describeStackEvents_nextToken,
    describeStackEvents_stackName,

    -- * Destructuring the Response
    DescribeStackEventsResponse (..),
    newDescribeStackEventsResponse,

    -- * Response Lenses
    describeStackEventsResponse_nextToken,
    describeStackEventsResponse_stackEvents,
    describeStackEventsResponse_httpStatus,
  )
where

import Network.AWS.CloudFormation.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The input for DescribeStackEvents action.
--
-- /See:/ 'newDescribeStackEvents' smart constructor.
data DescribeStackEvents = DescribeStackEvents'
  { -- | A string that identifies the next page of events that you want to
    -- retrieve.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The name or the unique stack ID that is associated with the stack, which
    -- are not always interchangeable:
    --
    -- -   Running stacks: You can specify either the stack\'s name or its
    --     unique stack ID.
    --
    -- -   Deleted stacks: You must specify the unique stack ID.
    --
    -- Default: There is no default value.
    stackName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeStackEvents' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeStackEvents_nextToken' - A string that identifies the next page of events that you want to
-- retrieve.
--
-- 'stackName', 'describeStackEvents_stackName' - The name or the unique stack ID that is associated with the stack, which
-- are not always interchangeable:
--
-- -   Running stacks: You can specify either the stack\'s name or its
--     unique stack ID.
--
-- -   Deleted stacks: You must specify the unique stack ID.
--
-- Default: There is no default value.
newDescribeStackEvents ::
  DescribeStackEvents
newDescribeStackEvents =
  DescribeStackEvents'
    { nextToken = Prelude.Nothing,
      stackName = Prelude.Nothing
    }

-- | A string that identifies the next page of events that you want to
-- retrieve.
describeStackEvents_nextToken :: Lens.Lens' DescribeStackEvents (Prelude.Maybe Prelude.Text)
describeStackEvents_nextToken = Lens.lens (\DescribeStackEvents' {nextToken} -> nextToken) (\s@DescribeStackEvents' {} a -> s {nextToken = a} :: DescribeStackEvents)

-- | The name or the unique stack ID that is associated with the stack, which
-- are not always interchangeable:
--
-- -   Running stacks: You can specify either the stack\'s name or its
--     unique stack ID.
--
-- -   Deleted stacks: You must specify the unique stack ID.
--
-- Default: There is no default value.
describeStackEvents_stackName :: Lens.Lens' DescribeStackEvents (Prelude.Maybe Prelude.Text)
describeStackEvents_stackName = Lens.lens (\DescribeStackEvents' {stackName} -> stackName) (\s@DescribeStackEvents' {} a -> s {stackName = a} :: DescribeStackEvents)

instance Pager.AWSPager DescribeStackEvents where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? describeStackEventsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? describeStackEventsResponse_stackEvents
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& describeStackEvents_nextToken
          Lens..~ rs
          Lens.^? describeStackEventsResponse_nextToken
            Prelude.. Lens._Just

instance Prelude.AWSRequest DescribeStackEvents where
  type
    Rs DescribeStackEvents =
      DescribeStackEventsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DescribeStackEventsResult"
      ( \s h x ->
          DescribeStackEventsResponse'
            Prelude.<$> (x Prelude..@? "NextToken")
            Prelude.<*> ( x Prelude..@? "StackEvents"
                            Prelude..!@ Prelude.mempty
                            Prelude.>>= Prelude.may (Prelude.parseXMLList "member")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeStackEvents

instance Prelude.NFData DescribeStackEvents

instance Prelude.ToHeaders DescribeStackEvents where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath DescribeStackEvents where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DescribeStackEvents where
  toQuery DescribeStackEvents' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("DescribeStackEvents" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2010-05-15" :: Prelude.ByteString),
        "NextToken" Prelude.=: nextToken,
        "StackName" Prelude.=: stackName
      ]

-- | The output for a DescribeStackEvents action.
--
-- /See:/ 'newDescribeStackEventsResponse' smart constructor.
data DescribeStackEventsResponse = DescribeStackEventsResponse'
  { -- | If the output exceeds 1 MB in size, a string that identifies the next
    -- page of events. If no additional page exists, this value is null.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A list of @StackEvents@ structures.
    stackEvents :: Prelude.Maybe [StackEvent],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeStackEventsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeStackEventsResponse_nextToken' - If the output exceeds 1 MB in size, a string that identifies the next
-- page of events. If no additional page exists, this value is null.
--
-- 'stackEvents', 'describeStackEventsResponse_stackEvents' - A list of @StackEvents@ structures.
--
-- 'httpStatus', 'describeStackEventsResponse_httpStatus' - The response's http status code.
newDescribeStackEventsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeStackEventsResponse
newDescribeStackEventsResponse pHttpStatus_ =
  DescribeStackEventsResponse'
    { nextToken =
        Prelude.Nothing,
      stackEvents = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If the output exceeds 1 MB in size, a string that identifies the next
-- page of events. If no additional page exists, this value is null.
describeStackEventsResponse_nextToken :: Lens.Lens' DescribeStackEventsResponse (Prelude.Maybe Prelude.Text)
describeStackEventsResponse_nextToken = Lens.lens (\DescribeStackEventsResponse' {nextToken} -> nextToken) (\s@DescribeStackEventsResponse' {} a -> s {nextToken = a} :: DescribeStackEventsResponse)

-- | A list of @StackEvents@ structures.
describeStackEventsResponse_stackEvents :: Lens.Lens' DescribeStackEventsResponse (Prelude.Maybe [StackEvent])
describeStackEventsResponse_stackEvents = Lens.lens (\DescribeStackEventsResponse' {stackEvents} -> stackEvents) (\s@DescribeStackEventsResponse' {} a -> s {stackEvents = a} :: DescribeStackEventsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
describeStackEventsResponse_httpStatus :: Lens.Lens' DescribeStackEventsResponse Prelude.Int
describeStackEventsResponse_httpStatus = Lens.lens (\DescribeStackEventsResponse' {httpStatus} -> httpStatus) (\s@DescribeStackEventsResponse' {} a -> s {httpStatus = a} :: DescribeStackEventsResponse)

instance Prelude.NFData DescribeStackEventsResponse
