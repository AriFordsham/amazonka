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
-- Module      : Network.AWS.Kinesis.DescribeStreamConsumer
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- To get the description of a registered consumer, provide the ARN of the
-- consumer. Alternatively, you can provide the ARN of the data stream and
-- the name you gave the consumer when you registered it. You may also
-- provide all three parameters, as long as they don\'t conflict with each
-- other. If you don\'t know the name or ARN of the consumer that you want
-- to describe, you can use the ListStreamConsumers operation to get a list
-- of the descriptions of all the consumers that are currently registered
-- with a given data stream.
--
-- This operation has a limit of 20 transactions per second per stream.
module Network.AWS.Kinesis.DescribeStreamConsumer
  ( -- * Creating a Request
    DescribeStreamConsumer (..),
    newDescribeStreamConsumer,

    -- * Request Lenses
    describeStreamConsumer_streamARN,
    describeStreamConsumer_consumerName,
    describeStreamConsumer_consumerARN,

    -- * Destructuring the Response
    DescribeStreamConsumerResponse (..),
    newDescribeStreamConsumerResponse,

    -- * Response Lenses
    describeStreamConsumerResponse_httpStatus,
    describeStreamConsumerResponse_consumerDescription,
  )
where

import Network.AWS.Kinesis.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeStreamConsumer' smart constructor.
data DescribeStreamConsumer = DescribeStreamConsumer'
  { -- | The ARN of the Kinesis data stream that the consumer is registered with.
    -- For more information, see
    -- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams Amazon Resource Names (ARNs) and AWS Service Namespaces>.
    streamARN :: Prelude.Maybe Prelude.Text,
    -- | The name that you gave to the consumer.
    consumerName :: Prelude.Maybe Prelude.Text,
    -- | The ARN returned by Kinesis Data Streams when you registered the
    -- consumer.
    consumerARN :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeStreamConsumer' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'streamARN', 'describeStreamConsumer_streamARN' - The ARN of the Kinesis data stream that the consumer is registered with.
-- For more information, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams Amazon Resource Names (ARNs) and AWS Service Namespaces>.
--
-- 'consumerName', 'describeStreamConsumer_consumerName' - The name that you gave to the consumer.
--
-- 'consumerARN', 'describeStreamConsumer_consumerARN' - The ARN returned by Kinesis Data Streams when you registered the
-- consumer.
newDescribeStreamConsumer ::
  DescribeStreamConsumer
newDescribeStreamConsumer =
  DescribeStreamConsumer'
    { streamARN =
        Prelude.Nothing,
      consumerName = Prelude.Nothing,
      consumerARN = Prelude.Nothing
    }

-- | The ARN of the Kinesis data stream that the consumer is registered with.
-- For more information, see
-- <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html#arn-syntax-kinesis-streams Amazon Resource Names (ARNs) and AWS Service Namespaces>.
describeStreamConsumer_streamARN :: Lens.Lens' DescribeStreamConsumer (Prelude.Maybe Prelude.Text)
describeStreamConsumer_streamARN = Lens.lens (\DescribeStreamConsumer' {streamARN} -> streamARN) (\s@DescribeStreamConsumer' {} a -> s {streamARN = a} :: DescribeStreamConsumer)

-- | The name that you gave to the consumer.
describeStreamConsumer_consumerName :: Lens.Lens' DescribeStreamConsumer (Prelude.Maybe Prelude.Text)
describeStreamConsumer_consumerName = Lens.lens (\DescribeStreamConsumer' {consumerName} -> consumerName) (\s@DescribeStreamConsumer' {} a -> s {consumerName = a} :: DescribeStreamConsumer)

-- | The ARN returned by Kinesis Data Streams when you registered the
-- consumer.
describeStreamConsumer_consumerARN :: Lens.Lens' DescribeStreamConsumer (Prelude.Maybe Prelude.Text)
describeStreamConsumer_consumerARN = Lens.lens (\DescribeStreamConsumer' {consumerARN} -> consumerARN) (\s@DescribeStreamConsumer' {} a -> s {consumerARN = a} :: DescribeStreamConsumer)

instance Prelude.AWSRequest DescribeStreamConsumer where
  type
    Rs DescribeStreamConsumer =
      DescribeStreamConsumerResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeStreamConsumerResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Prelude..:> "ConsumerDescription")
      )

instance Prelude.Hashable DescribeStreamConsumer

instance Prelude.NFData DescribeStreamConsumer

instance Prelude.ToHeaders DescribeStreamConsumer where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "Kinesis_20131202.DescribeStreamConsumer" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON DescribeStreamConsumer where
  toJSON DescribeStreamConsumer' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("StreamARN" Prelude..=) Prelude.<$> streamARN,
            ("ConsumerName" Prelude..=) Prelude.<$> consumerName,
            ("ConsumerARN" Prelude..=) Prelude.<$> consumerARN
          ]
      )

instance Prelude.ToPath DescribeStreamConsumer where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DescribeStreamConsumer where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeStreamConsumerResponse' smart constructor.
data DescribeStreamConsumerResponse = DescribeStreamConsumerResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | An object that represents the details of the consumer.
    consumerDescription :: ConsumerDescription
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeStreamConsumerResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'describeStreamConsumerResponse_httpStatus' - The response's http status code.
--
-- 'consumerDescription', 'describeStreamConsumerResponse_consumerDescription' - An object that represents the details of the consumer.
newDescribeStreamConsumerResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'consumerDescription'
  ConsumerDescription ->
  DescribeStreamConsumerResponse
newDescribeStreamConsumerResponse
  pHttpStatus_
  pConsumerDescription_ =
    DescribeStreamConsumerResponse'
      { httpStatus =
          pHttpStatus_,
        consumerDescription = pConsumerDescription_
      }

-- | The response's http status code.
describeStreamConsumerResponse_httpStatus :: Lens.Lens' DescribeStreamConsumerResponse Prelude.Int
describeStreamConsumerResponse_httpStatus = Lens.lens (\DescribeStreamConsumerResponse' {httpStatus} -> httpStatus) (\s@DescribeStreamConsumerResponse' {} a -> s {httpStatus = a} :: DescribeStreamConsumerResponse)

-- | An object that represents the details of the consumer.
describeStreamConsumerResponse_consumerDescription :: Lens.Lens' DescribeStreamConsumerResponse ConsumerDescription
describeStreamConsumerResponse_consumerDescription = Lens.lens (\DescribeStreamConsumerResponse' {consumerDescription} -> consumerDescription) (\s@DescribeStreamConsumerResponse' {} a -> s {consumerDescription = a} :: DescribeStreamConsumerResponse)

instance
  Prelude.NFData
    DescribeStreamConsumerResponse
