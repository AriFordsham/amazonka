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
-- Module      : Network.AWS.DynamoDB.UpdateTimeToLive
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @UpdateTimeToLive@ method enables or disables Time to Live (TTL) for
-- the specified table. A successful @UpdateTimeToLive@ call returns the
-- current @TimeToLiveSpecification@. It can take up to one hour for the
-- change to fully process. Any additional @UpdateTimeToLive@ calls for the
-- same table during this one hour duration result in a
-- @ValidationException@.
--
-- TTL compares the current time in epoch time format to the time stored in
-- the TTL attribute of an item. If the epoch time value stored in the
-- attribute is less than the current time, the item is marked as expired
-- and subsequently deleted.
--
-- The epoch time format is the number of seconds elapsed since 12:00:00 AM
-- January 1, 1970 UTC.
--
-- DynamoDB deletes expired items on a best-effort basis to ensure
-- availability of throughput for other data operations.
--
-- DynamoDB typically deletes expired items within two days of expiration.
-- The exact duration within which an item gets deleted after expiration is
-- specific to the nature of the workload. Items that have expired and not
-- been deleted will still show up in reads, queries, and scans.
--
-- As items are deleted, they are removed from any local secondary index
-- and global secondary index immediately in the same eventually consistent
-- way as a standard delete operation.
--
-- For more information, see
-- <https://docs.aws.amazon.com/amazondynamodb/latest/developerguide/TTL.html Time To Live>
-- in the Amazon DynamoDB Developer Guide.
module Network.AWS.DynamoDB.UpdateTimeToLive
  ( -- * Creating a Request
    UpdateTimeToLive (..),
    newUpdateTimeToLive,

    -- * Request Lenses
    updateTimeToLive_tableName,
    updateTimeToLive_timeToLiveSpecification,

    -- * Destructuring the Response
    UpdateTimeToLiveResponse (..),
    newUpdateTimeToLiveResponse,

    -- * Response Lenses
    updateTimeToLiveResponse_timeToLiveSpecification,
    updateTimeToLiveResponse_httpStatus,
  )
where

import Network.AWS.DynamoDB.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input of an @UpdateTimeToLive@ operation.
--
-- /See:/ 'newUpdateTimeToLive' smart constructor.
data UpdateTimeToLive = UpdateTimeToLive'
  { -- | The name of the table to be configured.
    tableName :: Prelude.Text,
    -- | Represents the settings used to enable or disable Time to Live for the
    -- specified table.
    timeToLiveSpecification :: TimeToLiveSpecification
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'UpdateTimeToLive' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tableName', 'updateTimeToLive_tableName' - The name of the table to be configured.
--
-- 'timeToLiveSpecification', 'updateTimeToLive_timeToLiveSpecification' - Represents the settings used to enable or disable Time to Live for the
-- specified table.
newUpdateTimeToLive ::
  -- | 'tableName'
  Prelude.Text ->
  -- | 'timeToLiveSpecification'
  TimeToLiveSpecification ->
  UpdateTimeToLive
newUpdateTimeToLive
  pTableName_
  pTimeToLiveSpecification_ =
    UpdateTimeToLive'
      { tableName = pTableName_,
        timeToLiveSpecification = pTimeToLiveSpecification_
      }

-- | The name of the table to be configured.
updateTimeToLive_tableName :: Lens.Lens' UpdateTimeToLive Prelude.Text
updateTimeToLive_tableName = Lens.lens (\UpdateTimeToLive' {tableName} -> tableName) (\s@UpdateTimeToLive' {} a -> s {tableName = a} :: UpdateTimeToLive)

-- | Represents the settings used to enable or disable Time to Live for the
-- specified table.
updateTimeToLive_timeToLiveSpecification :: Lens.Lens' UpdateTimeToLive TimeToLiveSpecification
updateTimeToLive_timeToLiveSpecification = Lens.lens (\UpdateTimeToLive' {timeToLiveSpecification} -> timeToLiveSpecification) (\s@UpdateTimeToLive' {} a -> s {timeToLiveSpecification = a} :: UpdateTimeToLive)

instance Prelude.AWSRequest UpdateTimeToLive where
  type Rs UpdateTimeToLive = UpdateTimeToLiveResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateTimeToLiveResponse'
            Prelude.<$> (x Prelude..?> "TimeToLiveSpecification")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateTimeToLive

instance Prelude.NFData UpdateTimeToLive

instance Prelude.ToHeaders UpdateTimeToLive where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "DynamoDB_20120810.UpdateTimeToLive" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.0" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON UpdateTimeToLive where
  toJSON UpdateTimeToLive' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just ("TableName" Prelude..= tableName),
            Prelude.Just
              ( "TimeToLiveSpecification"
                  Prelude..= timeToLiveSpecification
              )
          ]
      )

instance Prelude.ToPath UpdateTimeToLive where
  toPath = Prelude.const "/"

instance Prelude.ToQuery UpdateTimeToLive where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateTimeToLiveResponse' smart constructor.
data UpdateTimeToLiveResponse = UpdateTimeToLiveResponse'
  { -- | Represents the output of an @UpdateTimeToLive@ operation.
    timeToLiveSpecification :: Prelude.Maybe TimeToLiveSpecification,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'UpdateTimeToLiveResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'timeToLiveSpecification', 'updateTimeToLiveResponse_timeToLiveSpecification' - Represents the output of an @UpdateTimeToLive@ operation.
--
-- 'httpStatus', 'updateTimeToLiveResponse_httpStatus' - The response's http status code.
newUpdateTimeToLiveResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateTimeToLiveResponse
newUpdateTimeToLiveResponse pHttpStatus_ =
  UpdateTimeToLiveResponse'
    { timeToLiveSpecification =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Represents the output of an @UpdateTimeToLive@ operation.
updateTimeToLiveResponse_timeToLiveSpecification :: Lens.Lens' UpdateTimeToLiveResponse (Prelude.Maybe TimeToLiveSpecification)
updateTimeToLiveResponse_timeToLiveSpecification = Lens.lens (\UpdateTimeToLiveResponse' {timeToLiveSpecification} -> timeToLiveSpecification) (\s@UpdateTimeToLiveResponse' {} a -> s {timeToLiveSpecification = a} :: UpdateTimeToLiveResponse)

-- | The response's http status code.
updateTimeToLiveResponse_httpStatus :: Lens.Lens' UpdateTimeToLiveResponse Prelude.Int
updateTimeToLiveResponse_httpStatus = Lens.lens (\UpdateTimeToLiveResponse' {httpStatus} -> httpStatus) (\s@UpdateTimeToLiveResponse' {} a -> s {httpStatus = a} :: UpdateTimeToLiveResponse)

instance Prelude.NFData UpdateTimeToLiveResponse
