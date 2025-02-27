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
-- Module      : Network.AWS.CloudWatchLogs.PutDestination
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates or updates a destination. This operation is used only to create
-- destinations for cross-account subscriptions.
--
-- A destination encapsulates a physical resource (such as an Amazon
-- Kinesis stream) and enables you to subscribe to a real-time stream of
-- log events for a different account, ingested using
-- <https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutLogEvents.html PutLogEvents>.
--
-- Through an access policy, a destination controls what is written to it.
-- By default, @PutDestination@ does not set any access policy with the
-- destination, which means a cross-account user cannot call
-- <https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutSubscriptionFilter.html PutSubscriptionFilter>
-- against this destination. To enable this, the destination owner must
-- call
-- <https://docs.aws.amazon.com/AmazonCloudWatchLogs/latest/APIReference/API_PutDestinationPolicy.html PutDestinationPolicy>
-- after @PutDestination@.
--
-- To perform a @PutDestination@ operation, you must also have the
-- @iam:PassRole@ permission.
module Network.AWS.CloudWatchLogs.PutDestination
  ( -- * Creating a Request
    PutDestination (..),
    newPutDestination,

    -- * Request Lenses
    putDestination_destinationName,
    putDestination_targetArn,
    putDestination_roleArn,

    -- * Destructuring the Response
    PutDestinationResponse (..),
    newPutDestinationResponse,

    -- * Response Lenses
    putDestinationResponse_destination,
    putDestinationResponse_httpStatus,
  )
where

import Network.AWS.CloudWatchLogs.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newPutDestination' smart constructor.
data PutDestination = PutDestination'
  { -- | A name for the destination.
    destinationName :: Prelude.Text,
    -- | The ARN of an Amazon Kinesis stream to which to deliver matching log
    -- events.
    targetArn :: Prelude.Text,
    -- | The ARN of an IAM role that grants CloudWatch Logs permissions to call
    -- the Amazon Kinesis @PutRecord@ operation on the destination stream.
    roleArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'PutDestination' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'destinationName', 'putDestination_destinationName' - A name for the destination.
--
-- 'targetArn', 'putDestination_targetArn' - The ARN of an Amazon Kinesis stream to which to deliver matching log
-- events.
--
-- 'roleArn', 'putDestination_roleArn' - The ARN of an IAM role that grants CloudWatch Logs permissions to call
-- the Amazon Kinesis @PutRecord@ operation on the destination stream.
newPutDestination ::
  -- | 'destinationName'
  Prelude.Text ->
  -- | 'targetArn'
  Prelude.Text ->
  -- | 'roleArn'
  Prelude.Text ->
  PutDestination
newPutDestination
  pDestinationName_
  pTargetArn_
  pRoleArn_ =
    PutDestination'
      { destinationName =
          pDestinationName_,
        targetArn = pTargetArn_,
        roleArn = pRoleArn_
      }

-- | A name for the destination.
putDestination_destinationName :: Lens.Lens' PutDestination Prelude.Text
putDestination_destinationName = Lens.lens (\PutDestination' {destinationName} -> destinationName) (\s@PutDestination' {} a -> s {destinationName = a} :: PutDestination)

-- | The ARN of an Amazon Kinesis stream to which to deliver matching log
-- events.
putDestination_targetArn :: Lens.Lens' PutDestination Prelude.Text
putDestination_targetArn = Lens.lens (\PutDestination' {targetArn} -> targetArn) (\s@PutDestination' {} a -> s {targetArn = a} :: PutDestination)

-- | The ARN of an IAM role that grants CloudWatch Logs permissions to call
-- the Amazon Kinesis @PutRecord@ operation on the destination stream.
putDestination_roleArn :: Lens.Lens' PutDestination Prelude.Text
putDestination_roleArn = Lens.lens (\PutDestination' {roleArn} -> roleArn) (\s@PutDestination' {} a -> s {roleArn = a} :: PutDestination)

instance Prelude.AWSRequest PutDestination where
  type Rs PutDestination = PutDestinationResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          PutDestinationResponse'
            Prelude.<$> (x Prelude..?> "destination")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable PutDestination

instance Prelude.NFData PutDestination

instance Prelude.ToHeaders PutDestination where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "Logs_20140328.PutDestination" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON PutDestination where
  toJSON PutDestination' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("destinationName" Prelude..= destinationName),
            Prelude.Just ("targetArn" Prelude..= targetArn),
            Prelude.Just ("roleArn" Prelude..= roleArn)
          ]
      )

instance Prelude.ToPath PutDestination where
  toPath = Prelude.const "/"

instance Prelude.ToQuery PutDestination where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newPutDestinationResponse' smart constructor.
data PutDestinationResponse = PutDestinationResponse'
  { -- | The destination.
    destination :: Prelude.Maybe Destination,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'PutDestinationResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'destination', 'putDestinationResponse_destination' - The destination.
--
-- 'httpStatus', 'putDestinationResponse_httpStatus' - The response's http status code.
newPutDestinationResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  PutDestinationResponse
newPutDestinationResponse pHttpStatus_ =
  PutDestinationResponse'
    { destination =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The destination.
putDestinationResponse_destination :: Lens.Lens' PutDestinationResponse (Prelude.Maybe Destination)
putDestinationResponse_destination = Lens.lens (\PutDestinationResponse' {destination} -> destination) (\s@PutDestinationResponse' {} a -> s {destination = a} :: PutDestinationResponse)

-- | The response's http status code.
putDestinationResponse_httpStatus :: Lens.Lens' PutDestinationResponse Prelude.Int
putDestinationResponse_httpStatus = Lens.lens (\PutDestinationResponse' {httpStatus} -> httpStatus) (\s@PutDestinationResponse' {} a -> s {httpStatus = a} :: PutDestinationResponse)

instance Prelude.NFData PutDestinationResponse
