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
-- Module      : Network.AWS.Lambda.PutFunctionConcurrency
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the maximum number of simultaneous executions for a function, and
-- reserves capacity for that concurrency level.
--
-- Concurrency settings apply to the function as a whole, including all
-- published versions and the unpublished version. Reserving concurrency
-- both ensures that your function has capacity to process the specified
-- number of events simultaneously, and prevents it from scaling beyond
-- that level. Use GetFunction to see the current setting for a function.
--
-- Use GetAccountSettings to see your Regional concurrency limit. You can
-- reserve concurrency for as many functions as you like, as long as you
-- leave at least 100 simultaneous executions unreserved for functions that
-- aren\'t configured with a per-function limit. For more information, see
-- <https://docs.aws.amazon.com/lambda/latest/dg/concurrent-executions.html Managing Concurrency>.
module Network.AWS.Lambda.PutFunctionConcurrency
  ( -- * Creating a Request
    PutFunctionConcurrency (..),
    newPutFunctionConcurrency,

    -- * Request Lenses
    putFunctionConcurrency_functionName,
    putFunctionConcurrency_reservedConcurrentExecutions,

    -- * Destructuring the Response
    Concurrency (..),
    newConcurrency,

    -- * Response Lenses
    concurrency_reservedConcurrentExecutions,
  )
where

import Network.AWS.Lambda.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newPutFunctionConcurrency' smart constructor.
data PutFunctionConcurrency = PutFunctionConcurrency'
  { -- | The name of the Lambda function.
    --
    -- __Name formats__
    --
    -- -   __Function name__ - @my-function@.
    --
    -- -   __Function ARN__ -
    --     @arn:aws:lambda:us-west-2:123456789012:function:my-function@.
    --
    -- -   __Partial ARN__ - @123456789012:function:my-function@.
    --
    -- The length constraint applies only to the full ARN. If you specify only
    -- the function name, it is limited to 64 characters in length.
    functionName :: Prelude.Text,
    -- | The number of simultaneous executions to reserve for the function.
    reservedConcurrentExecutions :: Prelude.Natural
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'PutFunctionConcurrency' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'functionName', 'putFunctionConcurrency_functionName' - The name of the Lambda function.
--
-- __Name formats__
--
-- -   __Function name__ - @my-function@.
--
-- -   __Function ARN__ -
--     @arn:aws:lambda:us-west-2:123456789012:function:my-function@.
--
-- -   __Partial ARN__ - @123456789012:function:my-function@.
--
-- The length constraint applies only to the full ARN. If you specify only
-- the function name, it is limited to 64 characters in length.
--
-- 'reservedConcurrentExecutions', 'putFunctionConcurrency_reservedConcurrentExecutions' - The number of simultaneous executions to reserve for the function.
newPutFunctionConcurrency ::
  -- | 'functionName'
  Prelude.Text ->
  -- | 'reservedConcurrentExecutions'
  Prelude.Natural ->
  PutFunctionConcurrency
newPutFunctionConcurrency
  pFunctionName_
  pReservedConcurrentExecutions_ =
    PutFunctionConcurrency'
      { functionName =
          pFunctionName_,
        reservedConcurrentExecutions =
          pReservedConcurrentExecutions_
      }

-- | The name of the Lambda function.
--
-- __Name formats__
--
-- -   __Function name__ - @my-function@.
--
-- -   __Function ARN__ -
--     @arn:aws:lambda:us-west-2:123456789012:function:my-function@.
--
-- -   __Partial ARN__ - @123456789012:function:my-function@.
--
-- The length constraint applies only to the full ARN. If you specify only
-- the function name, it is limited to 64 characters in length.
putFunctionConcurrency_functionName :: Lens.Lens' PutFunctionConcurrency Prelude.Text
putFunctionConcurrency_functionName = Lens.lens (\PutFunctionConcurrency' {functionName} -> functionName) (\s@PutFunctionConcurrency' {} a -> s {functionName = a} :: PutFunctionConcurrency)

-- | The number of simultaneous executions to reserve for the function.
putFunctionConcurrency_reservedConcurrentExecutions :: Lens.Lens' PutFunctionConcurrency Prelude.Natural
putFunctionConcurrency_reservedConcurrentExecutions = Lens.lens (\PutFunctionConcurrency' {reservedConcurrentExecutions} -> reservedConcurrentExecutions) (\s@PutFunctionConcurrency' {} a -> s {reservedConcurrentExecutions = a} :: PutFunctionConcurrency)

instance Prelude.AWSRequest PutFunctionConcurrency where
  type Rs PutFunctionConcurrency = Concurrency
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      (\s h x -> Prelude.eitherParseJSON x)

instance Prelude.Hashable PutFunctionConcurrency

instance Prelude.NFData PutFunctionConcurrency

instance Prelude.ToHeaders PutFunctionConcurrency where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToJSON PutFunctionConcurrency where
  toJSON PutFunctionConcurrency' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "ReservedConcurrentExecutions"
                  Prelude..= reservedConcurrentExecutions
              )
          ]
      )

instance Prelude.ToPath PutFunctionConcurrency where
  toPath PutFunctionConcurrency' {..} =
    Prelude.mconcat
      [ "/2017-10-31/functions/",
        Prelude.toBS functionName,
        "/concurrency"
      ]

instance Prelude.ToQuery PutFunctionConcurrency where
  toQuery = Prelude.const Prelude.mempty
