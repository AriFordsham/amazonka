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
-- Module      : Network.AWS.ElasticSearch.DescribeReservedElasticsearchInstanceOfferings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists available reserved Elasticsearch instance offerings.
--
-- This operation returns paginated results.
module Network.AWS.ElasticSearch.DescribeReservedElasticsearchInstanceOfferings
  ( -- * Creating a Request
    DescribeReservedElasticsearchInstanceOfferings (..),
    newDescribeReservedElasticsearchInstanceOfferings,

    -- * Request Lenses
    describeReservedElasticsearchInstanceOfferings_nextToken,
    describeReservedElasticsearchInstanceOfferings_maxResults,
    describeReservedElasticsearchInstanceOfferings_reservedElasticsearchInstanceOfferingId,

    -- * Destructuring the Response
    DescribeReservedElasticsearchInstanceOfferingsResponse (..),
    newDescribeReservedElasticsearchInstanceOfferingsResponse,

    -- * Response Lenses
    describeReservedElasticsearchInstanceOfferingsResponse_nextToken,
    describeReservedElasticsearchInstanceOfferingsResponse_reservedElasticsearchInstanceOfferings,
    describeReservedElasticsearchInstanceOfferingsResponse_httpStatus,
  )
where

import Network.AWS.ElasticSearch.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Container for parameters to
-- @DescribeReservedElasticsearchInstanceOfferings@
--
-- /See:/ 'newDescribeReservedElasticsearchInstanceOfferings' smart constructor.
data DescribeReservedElasticsearchInstanceOfferings = DescribeReservedElasticsearchInstanceOfferings'
  { -- | NextToken should be sent in case if earlier API call produced result
    -- containing NextToken. It is used for pagination.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Set this value to limit the number of results returned. If not
    -- specified, defaults to 100.
    maxResults :: Prelude.Maybe Prelude.Int,
    -- | The offering identifier filter value. Use this parameter to show only
    -- the available offering that matches the specified reservation
    -- identifier.
    reservedElasticsearchInstanceOfferingId :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeReservedElasticsearchInstanceOfferings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeReservedElasticsearchInstanceOfferings_nextToken' - NextToken should be sent in case if earlier API call produced result
-- containing NextToken. It is used for pagination.
--
-- 'maxResults', 'describeReservedElasticsearchInstanceOfferings_maxResults' - Set this value to limit the number of results returned. If not
-- specified, defaults to 100.
--
-- 'reservedElasticsearchInstanceOfferingId', 'describeReservedElasticsearchInstanceOfferings_reservedElasticsearchInstanceOfferingId' - The offering identifier filter value. Use this parameter to show only
-- the available offering that matches the specified reservation
-- identifier.
newDescribeReservedElasticsearchInstanceOfferings ::
  DescribeReservedElasticsearchInstanceOfferings
newDescribeReservedElasticsearchInstanceOfferings =
  DescribeReservedElasticsearchInstanceOfferings'
    { nextToken =
        Prelude.Nothing,
      maxResults =
        Prelude.Nothing,
      reservedElasticsearchInstanceOfferingId =
        Prelude.Nothing
    }

-- | NextToken should be sent in case if earlier API call produced result
-- containing NextToken. It is used for pagination.
describeReservedElasticsearchInstanceOfferings_nextToken :: Lens.Lens' DescribeReservedElasticsearchInstanceOfferings (Prelude.Maybe Prelude.Text)
describeReservedElasticsearchInstanceOfferings_nextToken = Lens.lens (\DescribeReservedElasticsearchInstanceOfferings' {nextToken} -> nextToken) (\s@DescribeReservedElasticsearchInstanceOfferings' {} a -> s {nextToken = a} :: DescribeReservedElasticsearchInstanceOfferings)

-- | Set this value to limit the number of results returned. If not
-- specified, defaults to 100.
describeReservedElasticsearchInstanceOfferings_maxResults :: Lens.Lens' DescribeReservedElasticsearchInstanceOfferings (Prelude.Maybe Prelude.Int)
describeReservedElasticsearchInstanceOfferings_maxResults = Lens.lens (\DescribeReservedElasticsearchInstanceOfferings' {maxResults} -> maxResults) (\s@DescribeReservedElasticsearchInstanceOfferings' {} a -> s {maxResults = a} :: DescribeReservedElasticsearchInstanceOfferings)

-- | The offering identifier filter value. Use this parameter to show only
-- the available offering that matches the specified reservation
-- identifier.
describeReservedElasticsearchInstanceOfferings_reservedElasticsearchInstanceOfferingId :: Lens.Lens' DescribeReservedElasticsearchInstanceOfferings (Prelude.Maybe Prelude.Text)
describeReservedElasticsearchInstanceOfferings_reservedElasticsearchInstanceOfferingId = Lens.lens (\DescribeReservedElasticsearchInstanceOfferings' {reservedElasticsearchInstanceOfferingId} -> reservedElasticsearchInstanceOfferingId) (\s@DescribeReservedElasticsearchInstanceOfferings' {} a -> s {reservedElasticsearchInstanceOfferingId = a} :: DescribeReservedElasticsearchInstanceOfferings)

instance
  Pager.AWSPager
    DescribeReservedElasticsearchInstanceOfferings
  where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? describeReservedElasticsearchInstanceOfferingsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? describeReservedElasticsearchInstanceOfferingsResponse_reservedElasticsearchInstanceOfferings
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& describeReservedElasticsearchInstanceOfferings_nextToken
          Lens..~ rs
            Lens.^? describeReservedElasticsearchInstanceOfferingsResponse_nextToken
              Prelude.. Lens._Just

instance
  Prelude.AWSRequest
    DescribeReservedElasticsearchInstanceOfferings
  where
  type
    Rs
      DescribeReservedElasticsearchInstanceOfferings =
      DescribeReservedElasticsearchInstanceOfferingsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeReservedElasticsearchInstanceOfferingsResponse'
            Prelude.<$> (x Prelude..?> "NextToken")
              Prelude.<*> ( x
                              Prelude..?> "ReservedElasticsearchInstanceOfferings"
                              Prelude..!@ Prelude.mempty
                          )
              Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeReservedElasticsearchInstanceOfferings

instance
  Prelude.NFData
    DescribeReservedElasticsearchInstanceOfferings

instance
  Prelude.ToHeaders
    DescribeReservedElasticsearchInstanceOfferings
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Prelude.ToPath
    DescribeReservedElasticsearchInstanceOfferings
  where
  toPath =
    Prelude.const
      "/2015-01-01/es/reservedInstanceOfferings"

instance
  Prelude.ToQuery
    DescribeReservedElasticsearchInstanceOfferings
  where
  toQuery
    DescribeReservedElasticsearchInstanceOfferings' {..} =
      Prelude.mconcat
        [ "nextToken" Prelude.=: nextToken,
          "maxResults" Prelude.=: maxResults,
          "offeringId"
            Prelude.=: reservedElasticsearchInstanceOfferingId
        ]

-- | Container for results from
-- @DescribeReservedElasticsearchInstanceOfferings@
--
-- /See:/ 'newDescribeReservedElasticsearchInstanceOfferingsResponse' smart constructor.
data DescribeReservedElasticsearchInstanceOfferingsResponse = DescribeReservedElasticsearchInstanceOfferingsResponse'
  { -- | Provides an identifier to allow retrieval of paginated results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | List of reserved Elasticsearch instance offerings
    reservedElasticsearchInstanceOfferings :: Prelude.Maybe [ReservedElasticsearchInstanceOffering],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeReservedElasticsearchInstanceOfferingsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describeReservedElasticsearchInstanceOfferingsResponse_nextToken' - Provides an identifier to allow retrieval of paginated results.
--
-- 'reservedElasticsearchInstanceOfferings', 'describeReservedElasticsearchInstanceOfferingsResponse_reservedElasticsearchInstanceOfferings' - List of reserved Elasticsearch instance offerings
--
-- 'httpStatus', 'describeReservedElasticsearchInstanceOfferingsResponse_httpStatus' - The response's http status code.
newDescribeReservedElasticsearchInstanceOfferingsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeReservedElasticsearchInstanceOfferingsResponse
newDescribeReservedElasticsearchInstanceOfferingsResponse
  pHttpStatus_ =
    DescribeReservedElasticsearchInstanceOfferingsResponse'
      { nextToken =
          Prelude.Nothing,
        reservedElasticsearchInstanceOfferings =
          Prelude.Nothing,
        httpStatus =
          pHttpStatus_
      }

-- | Provides an identifier to allow retrieval of paginated results.
describeReservedElasticsearchInstanceOfferingsResponse_nextToken :: Lens.Lens' DescribeReservedElasticsearchInstanceOfferingsResponse (Prelude.Maybe Prelude.Text)
describeReservedElasticsearchInstanceOfferingsResponse_nextToken = Lens.lens (\DescribeReservedElasticsearchInstanceOfferingsResponse' {nextToken} -> nextToken) (\s@DescribeReservedElasticsearchInstanceOfferingsResponse' {} a -> s {nextToken = a} :: DescribeReservedElasticsearchInstanceOfferingsResponse)

-- | List of reserved Elasticsearch instance offerings
describeReservedElasticsearchInstanceOfferingsResponse_reservedElasticsearchInstanceOfferings :: Lens.Lens' DescribeReservedElasticsearchInstanceOfferingsResponse (Prelude.Maybe [ReservedElasticsearchInstanceOffering])
describeReservedElasticsearchInstanceOfferingsResponse_reservedElasticsearchInstanceOfferings = Lens.lens (\DescribeReservedElasticsearchInstanceOfferingsResponse' {reservedElasticsearchInstanceOfferings} -> reservedElasticsearchInstanceOfferings) (\s@DescribeReservedElasticsearchInstanceOfferingsResponse' {} a -> s {reservedElasticsearchInstanceOfferings = a} :: DescribeReservedElasticsearchInstanceOfferingsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
describeReservedElasticsearchInstanceOfferingsResponse_httpStatus :: Lens.Lens' DescribeReservedElasticsearchInstanceOfferingsResponse Prelude.Int
describeReservedElasticsearchInstanceOfferingsResponse_httpStatus = Lens.lens (\DescribeReservedElasticsearchInstanceOfferingsResponse' {httpStatus} -> httpStatus) (\s@DescribeReservedElasticsearchInstanceOfferingsResponse' {} a -> s {httpStatus = a} :: DescribeReservedElasticsearchInstanceOfferingsResponse)

instance
  Prelude.NFData
    DescribeReservedElasticsearchInstanceOfferingsResponse
