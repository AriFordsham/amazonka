{-# OPTIONS_GHC -fno-warn-deprecations #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Kinesis.GetRecords
-- Copyright   : (c) 2013-2020 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets data records from a Kinesis data stream's shard.
--
-- Specify a shard iterator using the @ShardIterator@ parameter. The shard iterator specifies the position in the shard from which you want to start reading data records sequentially. If there are no records available in the portion of the shard that the iterator points to, 'GetRecords' returns an empty list. It might take multiple calls to get to a portion of the shard that contains records.
-- You can scale by provisioning multiple shards per stream while considering service limits (for more information, see <https://docs.aws.amazon.com/kinesis/latest/dev/service-sizes-and-limits.html Amazon Kinesis Data Streams Limits> in the /Amazon Kinesis Data Streams Developer Guide/ ). Your application should have one thread per shard, each reading continuously from its stream. To read from a stream continually, call 'GetRecords' in a loop. Use 'GetShardIterator' to get the shard iterator to specify in the first 'GetRecords' call. 'GetRecords' returns a new shard iterator in @NextShardIterator@ . Specify the shard iterator returned in @NextShardIterator@ in subsequent calls to 'GetRecords' . If the shard has been closed, the shard iterator can't return more data and 'GetRecords' returns @null@ in @NextShardIterator@ . You can terminate the loop when the shard is closed, or when the shard iterator reaches the record with the sequence number or other attribute that marks it as the last record to process.
-- Each data record can be up to 1 MiB in size, and each shard can read up to 2 MiB per second. You can ensure that your calls don't exceed the maximum supported size or throughput by using the @Limit@ parameter to specify the maximum number of records that 'GetRecords' can return. Consider your average record size when determining this limit. The maximum number of records that can be returned per call is 10,000.
-- The size of the data returned by 'GetRecords' varies depending on the utilization of the shard. The maximum size of data that 'GetRecords' can return is 10 MiB. If a call returns this amount of data, subsequent calls made within the next 5 seconds throw @ProvisionedThroughputExceededException@ . If there is insufficient provisioned throughput on the stream, subsequent calls made within the next 1 second throw @ProvisionedThroughputExceededException@ . 'GetRecords' doesn't return any data when it throws an exception. For this reason, we recommend that you wait 1 second between calls to 'GetRecords' . However, it's possible that the application will get exceptions for longer than 1 second.
-- To detect whether the application is falling behind in processing, you can use the @MillisBehindLatest@ response attribute. You can also monitor the stream using CloudWatch metrics and other mechanisms (see <https://docs.aws.amazon.com/kinesis/latest/dev/monitoring.html Monitoring> in the /Amazon Kinesis Data Streams Developer Guide/ ).
-- Each Amazon Kinesis record includes a value, @ApproximateArrivalTimestamp@ , that is set when a stream successfully receives and stores a record. This is commonly referred to as a server-side time stamp, whereas a client-side time stamp is set when a data producer creates or sends the record to a stream (a data producer is any data source putting data records into a stream, for example with 'PutRecords' ). The time stamp has millisecond precision. There are no guarantees about the time stamp accuracy, or that the time stamp is always increasing. For example, records in a shard or across a stream might have time stamps that are out of order.
-- This operation has a limit of five transactions per second per shard.
module Network.AWS.Kinesis.GetRecords
  ( -- * Creating a request
    GetRecords (..),
    mkGetRecords,

    -- ** Request lenses
    grShardIterator,
    grLimit,

    -- * Destructuring the response
    GetRecordsResponse (..),
    mkGetRecordsResponse,

    -- ** Response lenses
    grrrsRecords,
    grrrsChildShards,
    grrrsMillisBehindLatest,
    grrrsNextShardIterator,
    grrrsResponseStatus,
  )
where

import qualified Network.AWS.Kinesis.Types as Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Core
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the input for 'GetRecords' .
--
-- /See:/ 'mkGetRecords' smart constructor.
data GetRecords = GetRecords'
  { -- | The position in the shard from which you want to start sequentially reading data records. A shard iterator specifies this position using the sequence number of a data record in the shard.
    shardIterator :: Types.ShardIterator,
    -- | The maximum number of records to return. Specify a value of up to 10,000. If you specify a value that is greater than 10,000, 'GetRecords' throws @InvalidArgumentException@ . The default value is 10,000.
    limit :: Core.Maybe Core.Natural
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.Hashable, Core.NFData)

-- | Creates a 'GetRecords' value with any optional fields omitted.
mkGetRecords ::
  -- | 'shardIterator'
  Types.ShardIterator ->
  GetRecords
mkGetRecords shardIterator =
  GetRecords' {shardIterator, limit = Core.Nothing}

-- | The position in the shard from which you want to start sequentially reading data records. A shard iterator specifies this position using the sequence number of a data record in the shard.
--
-- /Note:/ Consider using 'shardIterator' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grShardIterator :: Lens.Lens' GetRecords Types.ShardIterator
grShardIterator = Lens.field @"shardIterator"
{-# DEPRECATED grShardIterator "Use generic-lens or generic-optics with 'shardIterator' instead." #-}

-- | The maximum number of records to return. Specify a value of up to 10,000. If you specify a value that is greater than 10,000, 'GetRecords' throws @InvalidArgumentException@ . The default value is 10,000.
--
-- /Note:/ Consider using 'limit' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grLimit :: Lens.Lens' GetRecords (Core.Maybe Core.Natural)
grLimit = Lens.field @"limit"
{-# DEPRECATED grLimit "Use generic-lens or generic-optics with 'limit' instead." #-}

instance Core.FromJSON GetRecords where
  toJSON GetRecords {..} =
    Core.object
      ( Core.catMaybes
          [ Core.Just ("ShardIterator" Core..= shardIterator),
            ("Limit" Core..=) Core.<$> limit
          ]
      )

instance Core.AWSRequest GetRecords where
  type Rs GetRecords = GetRecordsResponse
  request x@Core.Request {..} =
    Core.Request
      { Core._rqService = Types.mkServiceConfig,
        Core._rqMethod = Request.POST,
        Core._rqPath = Core.rawPath "/",
        Core._rqQuery = Core.mempty,
        Core._rqHeaders =
          Core.pure ("X-Amz-Target", "Kinesis_20131202.GetRecords")
            Core.<> (Core.pure ("Content-Type", "application/x-amz-json-1.1")),
        Core._rqBody = Core.toJSONBody x
      }
  response =
    Response.receiveJSON
      ( \s h x ->
          GetRecordsResponse'
            Core.<$> (x Core..:? "Records" Core..!= Core.mempty)
            Core.<*> (x Core..:? "ChildShards")
            Core.<*> (x Core..:? "MillisBehindLatest")
            Core.<*> (x Core..:? "NextShardIterator")
            Core.<*> (Core.pure (Core.fromEnum s))
      )

-- | Represents the output for 'GetRecords' .
--
-- /See:/ 'mkGetRecordsResponse' smart constructor.
data GetRecordsResponse = GetRecordsResponse'
  { -- | The data records retrieved from the shard.
    records :: [Types.Record],
    childShards :: Core.Maybe [Types.ChildShard],
    -- | The number of milliseconds the 'GetRecords' response is from the tip of the stream, indicating how far behind current time the consumer is. A value of zero indicates that record processing is caught up, and there are no new records to process at this moment.
    millisBehindLatest :: Core.Maybe Core.Natural,
    -- | The next position in the shard from which to start sequentially reading data records. If set to @null@ , the shard has been closed and the requested iterator does not return any more data.
    nextShardIterator :: Core.Maybe Types.ShardIterator,
    -- | The response status code.
    responseStatus :: Core.Int
  }
  deriving stock (Core.Eq, Core.Ord, Core.Read, Core.Show, Core.Generic)
  deriving anyclass (Core.NFData)

-- | Creates a 'GetRecordsResponse' value with any optional fields omitted.
mkGetRecordsResponse ::
  -- | 'responseStatus'
  Core.Int ->
  GetRecordsResponse
mkGetRecordsResponse responseStatus =
  GetRecordsResponse'
    { records = Core.mempty,
      childShards = Core.Nothing,
      millisBehindLatest = Core.Nothing,
      nextShardIterator = Core.Nothing,
      responseStatus
    }

-- | The data records retrieved from the shard.
--
-- /Note:/ Consider using 'records' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grrrsRecords :: Lens.Lens' GetRecordsResponse [Types.Record]
grrrsRecords = Lens.field @"records"
{-# DEPRECATED grrrsRecords "Use generic-lens or generic-optics with 'records' instead." #-}

-- | Undocumented field.
--
-- /Note:/ Consider using 'childShards' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grrrsChildShards :: Lens.Lens' GetRecordsResponse (Core.Maybe [Types.ChildShard])
grrrsChildShards = Lens.field @"childShards"
{-# DEPRECATED grrrsChildShards "Use generic-lens or generic-optics with 'childShards' instead." #-}

-- | The number of milliseconds the 'GetRecords' response is from the tip of the stream, indicating how far behind current time the consumer is. A value of zero indicates that record processing is caught up, and there are no new records to process at this moment.
--
-- /Note:/ Consider using 'millisBehindLatest' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grrrsMillisBehindLatest :: Lens.Lens' GetRecordsResponse (Core.Maybe Core.Natural)
grrrsMillisBehindLatest = Lens.field @"millisBehindLatest"
{-# DEPRECATED grrrsMillisBehindLatest "Use generic-lens or generic-optics with 'millisBehindLatest' instead." #-}

-- | The next position in the shard from which to start sequentially reading data records. If set to @null@ , the shard has been closed and the requested iterator does not return any more data.
--
-- /Note:/ Consider using 'nextShardIterator' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grrrsNextShardIterator :: Lens.Lens' GetRecordsResponse (Core.Maybe Types.ShardIterator)
grrrsNextShardIterator = Lens.field @"nextShardIterator"
{-# DEPRECATED grrrsNextShardIterator "Use generic-lens or generic-optics with 'nextShardIterator' instead." #-}

-- | The response status code.
--
-- /Note:/ Consider using 'responseStatus' with <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/generic-optics generic-optics> instead.
grrrsResponseStatus :: Lens.Lens' GetRecordsResponse Core.Int
grrrsResponseStatus = Lens.field @"responseStatus"
{-# DEPRECATED grrrsResponseStatus "Use generic-lens or generic-optics with 'responseStatus' instead." #-}
