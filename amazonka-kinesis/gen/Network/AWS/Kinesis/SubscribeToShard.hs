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
-- Module      : Network.AWS.Kinesis.SubscribeToShard
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This operation establishes an HTTP\/2 connection between the consumer
-- you specify in the @ConsumerARN@ parameter and the shard you specify in
-- the @ShardId@ parameter. After the connection is successfully
-- established, Kinesis Data Streams pushes records from the shard to the
-- consumer over this connection. Before you call this operation, call
-- RegisterStreamConsumer to register the consumer with Kinesis Data
-- Streams.
--
-- When the @SubscribeToShard@ call succeeds, your consumer starts
-- receiving events of type SubscribeToShardEvent over the HTTP\/2
-- connection for up to 5 minutes, after which time you need to call
-- @SubscribeToShard@ again to renew the subscription if you want to
-- continue to receive records.
--
-- You can make one call to @SubscribeToShard@ per second per registered
-- consumer per shard. For example, if you have a 4000 shard stream and two
-- registered stream consumers, you can make one @SubscribeToShard@ request
-- per second for each combination of shard and registered consumer,
-- allowing you to subscribe both consumers to all 4000 shards in one
-- second.
--
-- If you call @SubscribeToShard@ again with the same @ConsumerARN@ and
-- @ShardId@ within 5 seconds of a successful call, you\'ll get a
-- @ResourceInUseException@. If you call @SubscribeToShard@ 5 seconds or
-- more after a successful call, the first connection will expire and the
-- second call will take over the subscription.
--
-- For an example of how to use this operations, see
-- </streams/latest/dev/building-enhanced-consumers-api.html Enhanced Fan-Out Using the Kinesis Data Streams API>.
module Network.AWS.Kinesis.SubscribeToShard
  ( -- * Creating a Request
    SubscribeToShard (..),
    newSubscribeToShard,

    -- * Request Lenses
    subscribeToShard_consumerARN,
    subscribeToShard_shardId,
    subscribeToShard_startingPosition,

    -- * Destructuring the Response
    SubscribeToShardResponse (..),
    newSubscribeToShardResponse,

    -- * Response Lenses
    subscribeToShardResponse_httpStatus,
    subscribeToShardResponse_eventStream,
  )
where

import Network.AWS.Kinesis.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newSubscribeToShard' smart constructor.
data SubscribeToShard = SubscribeToShard'
  { -- | For this parameter, use the value you obtained when you called
    -- RegisterStreamConsumer.
    consumerARN :: Prelude.Text,
    -- | The ID of the shard you want to subscribe to. To see a list of all the
    -- shards for a given stream, use ListShards.
    shardId :: Prelude.Text,
    startingPosition :: StartingPosition
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'SubscribeToShard' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'consumerARN', 'subscribeToShard_consumerARN' - For this parameter, use the value you obtained when you called
-- RegisterStreamConsumer.
--
-- 'shardId', 'subscribeToShard_shardId' - The ID of the shard you want to subscribe to. To see a list of all the
-- shards for a given stream, use ListShards.
--
-- 'startingPosition', 'subscribeToShard_startingPosition' -
newSubscribeToShard ::
  -- | 'consumerARN'
  Prelude.Text ->
  -- | 'shardId'
  Prelude.Text ->
  -- | 'startingPosition'
  StartingPosition ->
  SubscribeToShard
newSubscribeToShard
  pConsumerARN_
  pShardId_
  pStartingPosition_ =
    SubscribeToShard'
      { consumerARN = pConsumerARN_,
        shardId = pShardId_,
        startingPosition = pStartingPosition_
      }

-- | For this parameter, use the value you obtained when you called
-- RegisterStreamConsumer.
subscribeToShard_consumerARN :: Lens.Lens' SubscribeToShard Prelude.Text
subscribeToShard_consumerARN = Lens.lens (\SubscribeToShard' {consumerARN} -> consumerARN) (\s@SubscribeToShard' {} a -> s {consumerARN = a} :: SubscribeToShard)

-- | The ID of the shard you want to subscribe to. To see a list of all the
-- shards for a given stream, use ListShards.
subscribeToShard_shardId :: Lens.Lens' SubscribeToShard Prelude.Text
subscribeToShard_shardId = Lens.lens (\SubscribeToShard' {shardId} -> shardId) (\s@SubscribeToShard' {} a -> s {shardId = a} :: SubscribeToShard)

-- |
subscribeToShard_startingPosition :: Lens.Lens' SubscribeToShard StartingPosition
subscribeToShard_startingPosition = Lens.lens (\SubscribeToShard' {startingPosition} -> startingPosition) (\s@SubscribeToShard' {} a -> s {startingPosition = a} :: SubscribeToShard)

instance Prelude.AWSRequest SubscribeToShard where
  type Rs SubscribeToShard = SubscribeToShardResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          SubscribeToShardResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Prelude..:> "EventStream")
      )

instance Prelude.Hashable SubscribeToShard

instance Prelude.NFData SubscribeToShard

instance Prelude.ToHeaders SubscribeToShard where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "Kinesis_20131202.SubscribeToShard" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON SubscribeToShard where
  toJSON SubscribeToShard' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just ("ConsumerARN" Prelude..= consumerARN),
            Prelude.Just ("ShardId" Prelude..= shardId),
            Prelude.Just
              ("StartingPosition" Prelude..= startingPosition)
          ]
      )

instance Prelude.ToPath SubscribeToShard where
  toPath = Prelude.const "/"

instance Prelude.ToQuery SubscribeToShard where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newSubscribeToShardResponse' smart constructor.
data SubscribeToShardResponse = SubscribeToShardResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The event stream that your consumer can use to read records from the
    -- shard.
    eventStream :: Prelude.Value
  }
  deriving (Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'SubscribeToShardResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'subscribeToShardResponse_httpStatus' - The response's http status code.
--
-- 'eventStream', 'subscribeToShardResponse_eventStream' - The event stream that your consumer can use to read records from the
-- shard.
newSubscribeToShardResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'eventStream'
  Prelude.Value ->
  SubscribeToShardResponse
newSubscribeToShardResponse
  pHttpStatus_
  pEventStream_ =
    SubscribeToShardResponse'
      { httpStatus =
          pHttpStatus_,
        eventStream = pEventStream_
      }

-- | The response's http status code.
subscribeToShardResponse_httpStatus :: Lens.Lens' SubscribeToShardResponse Prelude.Int
subscribeToShardResponse_httpStatus = Lens.lens (\SubscribeToShardResponse' {httpStatus} -> httpStatus) (\s@SubscribeToShardResponse' {} a -> s {httpStatus = a} :: SubscribeToShardResponse)

-- | The event stream that your consumer can use to read records from the
-- shard.
subscribeToShardResponse_eventStream :: Lens.Lens' SubscribeToShardResponse Prelude.Value
subscribeToShardResponse_eventStream = Lens.lens (\SubscribeToShardResponse' {eventStream} -> eventStream) (\s@SubscribeToShardResponse' {} a -> s {eventStream = a} :: SubscribeToShardResponse)

instance Prelude.NFData SubscribeToShardResponse
