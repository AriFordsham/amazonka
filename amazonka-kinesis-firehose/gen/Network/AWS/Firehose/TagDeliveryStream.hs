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
-- Module      : Network.AWS.Firehose.TagDeliveryStream
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds or updates tags for the specified delivery stream. A tag is a
-- key-value pair that you can define and assign to AWS resources. If you
-- specify a tag that already exists, the tag value is replaced with the
-- value that you specify in the request. Tags are metadata. For example,
-- you can add friendly names and descriptions or other types of
-- information that can help you distinguish the delivery stream. For more
-- information about tags, see
-- <https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/cost-alloc-tags.html Using Cost Allocation Tags>
-- in the /AWS Billing and Cost Management User Guide/.
--
-- Each delivery stream can have up to 50 tags.
--
-- This operation has a limit of five transactions per second per account.
module Network.AWS.Firehose.TagDeliveryStream
  ( -- * Creating a Request
    TagDeliveryStream (..),
    newTagDeliveryStream,

    -- * Request Lenses
    tagDeliveryStream_deliveryStreamName,
    tagDeliveryStream_tags,

    -- * Destructuring the Response
    TagDeliveryStreamResponse (..),
    newTagDeliveryStreamResponse,

    -- * Response Lenses
    tagDeliveryStreamResponse_httpStatus,
  )
where

import Network.AWS.Firehose.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newTagDeliveryStream' smart constructor.
data TagDeliveryStream = TagDeliveryStream'
  { -- | The name of the delivery stream to which you want to add the tags.
    deliveryStreamName :: Prelude.Text,
    -- | A set of key-value pairs to use to create the tags.
    tags :: Prelude.NonEmpty Tag
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'TagDeliveryStream' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'deliveryStreamName', 'tagDeliveryStream_deliveryStreamName' - The name of the delivery stream to which you want to add the tags.
--
-- 'tags', 'tagDeliveryStream_tags' - A set of key-value pairs to use to create the tags.
newTagDeliveryStream ::
  -- | 'deliveryStreamName'
  Prelude.Text ->
  -- | 'tags'
  Prelude.NonEmpty Tag ->
  TagDeliveryStream
newTagDeliveryStream pDeliveryStreamName_ pTags_ =
  TagDeliveryStream'
    { deliveryStreamName =
        pDeliveryStreamName_,
      tags = Prelude._Coerce Lens.# pTags_
    }

-- | The name of the delivery stream to which you want to add the tags.
tagDeliveryStream_deliveryStreamName :: Lens.Lens' TagDeliveryStream Prelude.Text
tagDeliveryStream_deliveryStreamName = Lens.lens (\TagDeliveryStream' {deliveryStreamName} -> deliveryStreamName) (\s@TagDeliveryStream' {} a -> s {deliveryStreamName = a} :: TagDeliveryStream)

-- | A set of key-value pairs to use to create the tags.
tagDeliveryStream_tags :: Lens.Lens' TagDeliveryStream (Prelude.NonEmpty Tag)
tagDeliveryStream_tags = Lens.lens (\TagDeliveryStream' {tags} -> tags) (\s@TagDeliveryStream' {} a -> s {tags = a} :: TagDeliveryStream) Prelude.. Prelude._Coerce

instance Prelude.AWSRequest TagDeliveryStream where
  type Rs TagDeliveryStream = TagDeliveryStreamResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          TagDeliveryStreamResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable TagDeliveryStream

instance Prelude.NFData TagDeliveryStream

instance Prelude.ToHeaders TagDeliveryStream where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "Firehose_20150804.TagDeliveryStream" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON TagDeliveryStream where
  toJSON TagDeliveryStream' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("DeliveryStreamName" Prelude..= deliveryStreamName),
            Prelude.Just ("Tags" Prelude..= tags)
          ]
      )

instance Prelude.ToPath TagDeliveryStream where
  toPath = Prelude.const "/"

instance Prelude.ToQuery TagDeliveryStream where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newTagDeliveryStreamResponse' smart constructor.
data TagDeliveryStreamResponse = TagDeliveryStreamResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'TagDeliveryStreamResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'tagDeliveryStreamResponse_httpStatus' - The response's http status code.
newTagDeliveryStreamResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  TagDeliveryStreamResponse
newTagDeliveryStreamResponse pHttpStatus_ =
  TagDeliveryStreamResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
tagDeliveryStreamResponse_httpStatus :: Lens.Lens' TagDeliveryStreamResponse Prelude.Int
tagDeliveryStreamResponse_httpStatus = Lens.lens (\TagDeliveryStreamResponse' {httpStatus} -> httpStatus) (\s@TagDeliveryStreamResponse' {} a -> s {httpStatus = a} :: TagDeliveryStreamResponse)

instance Prelude.NFData TagDeliveryStreamResponse
