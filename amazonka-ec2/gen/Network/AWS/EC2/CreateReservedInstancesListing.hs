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
-- Module      : Network.AWS.EC2.CreateReservedInstancesListing
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a listing for Amazon EC2 Standard Reserved Instances to be sold
-- in the Reserved Instance Marketplace. You can submit one Standard
-- Reserved Instance listing at a time. To get a list of your Standard
-- Reserved Instances, you can use the DescribeReservedInstances operation.
--
-- Only Standard Reserved Instances can be sold in the Reserved Instance
-- Marketplace. Convertible Reserved Instances cannot be sold.
--
-- The Reserved Instance Marketplace matches sellers who want to resell
-- Standard Reserved Instance capacity that they no longer need with buyers
-- who want to purchase additional capacity. Reserved Instances bought and
-- sold through the Reserved Instance Marketplace work like any other
-- Reserved Instances.
--
-- To sell your Standard Reserved Instances, you must first register as a
-- seller in the Reserved Instance Marketplace. After completing the
-- registration process, you can create a Reserved Instance Marketplace
-- listing of some or all of your Standard Reserved Instances, and specify
-- the upfront price to receive for them. Your Standard Reserved Instance
-- listings then become available for purchase. To view the details of your
-- Standard Reserved Instance listing, you can use the
-- DescribeReservedInstancesListings operation.
--
-- For more information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ri-market-general.html Reserved Instance Marketplace>
-- in the /Amazon EC2 User Guide/.
module Network.AWS.EC2.CreateReservedInstancesListing
  ( -- * Creating a Request
    CreateReservedInstancesListing (..),
    newCreateReservedInstancesListing,

    -- * Request Lenses
    createReservedInstancesListing_clientToken,
    createReservedInstancesListing_instanceCount,
    createReservedInstancesListing_priceSchedules,
    createReservedInstancesListing_reservedInstancesId,

    -- * Destructuring the Response
    CreateReservedInstancesListingResponse (..),
    newCreateReservedInstancesListingResponse,

    -- * Response Lenses
    createReservedInstancesListingResponse_reservedInstancesListings,
    createReservedInstancesListingResponse_httpStatus,
  )
where

import Network.AWS.EC2.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Contains the parameters for CreateReservedInstancesListing.
--
-- /See:/ 'newCreateReservedInstancesListing' smart constructor.
data CreateReservedInstancesListing = CreateReservedInstancesListing'
  { -- | Unique, case-sensitive identifier you provide to ensure idempotency of
    -- your listings. This helps avoid duplicate listings. For more
    -- information, see
    -- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency>.
    clientToken :: Prelude.Text,
    -- | The number of instances that are a part of a Reserved Instance account
    -- to be listed in the Reserved Instance Marketplace. This number should be
    -- less than or equal to the instance count associated with the Reserved
    -- Instance ID specified in this call.
    instanceCount :: Prelude.Int,
    -- | A list specifying the price of the Standard Reserved Instance for each
    -- month remaining in the Reserved Instance term.
    priceSchedules :: [PriceScheduleSpecification],
    -- | The ID of the active Standard Reserved Instance.
    reservedInstancesId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateReservedInstancesListing' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'clientToken', 'createReservedInstancesListing_clientToken' - Unique, case-sensitive identifier you provide to ensure idempotency of
-- your listings. This helps avoid duplicate listings. For more
-- information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency>.
--
-- 'instanceCount', 'createReservedInstancesListing_instanceCount' - The number of instances that are a part of a Reserved Instance account
-- to be listed in the Reserved Instance Marketplace. This number should be
-- less than or equal to the instance count associated with the Reserved
-- Instance ID specified in this call.
--
-- 'priceSchedules', 'createReservedInstancesListing_priceSchedules' - A list specifying the price of the Standard Reserved Instance for each
-- month remaining in the Reserved Instance term.
--
-- 'reservedInstancesId', 'createReservedInstancesListing_reservedInstancesId' - The ID of the active Standard Reserved Instance.
newCreateReservedInstancesListing ::
  -- | 'clientToken'
  Prelude.Text ->
  -- | 'instanceCount'
  Prelude.Int ->
  -- | 'reservedInstancesId'
  Prelude.Text ->
  CreateReservedInstancesListing
newCreateReservedInstancesListing
  pClientToken_
  pInstanceCount_
  pReservedInstancesId_ =
    CreateReservedInstancesListing'
      { clientToken =
          pClientToken_,
        instanceCount = pInstanceCount_,
        priceSchedules = Prelude.mempty,
        reservedInstancesId = pReservedInstancesId_
      }

-- | Unique, case-sensitive identifier you provide to ensure idempotency of
-- your listings. This helps avoid duplicate listings. For more
-- information, see
-- <https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html Ensuring Idempotency>.
createReservedInstancesListing_clientToken :: Lens.Lens' CreateReservedInstancesListing Prelude.Text
createReservedInstancesListing_clientToken = Lens.lens (\CreateReservedInstancesListing' {clientToken} -> clientToken) (\s@CreateReservedInstancesListing' {} a -> s {clientToken = a} :: CreateReservedInstancesListing)

-- | The number of instances that are a part of a Reserved Instance account
-- to be listed in the Reserved Instance Marketplace. This number should be
-- less than or equal to the instance count associated with the Reserved
-- Instance ID specified in this call.
createReservedInstancesListing_instanceCount :: Lens.Lens' CreateReservedInstancesListing Prelude.Int
createReservedInstancesListing_instanceCount = Lens.lens (\CreateReservedInstancesListing' {instanceCount} -> instanceCount) (\s@CreateReservedInstancesListing' {} a -> s {instanceCount = a} :: CreateReservedInstancesListing)

-- | A list specifying the price of the Standard Reserved Instance for each
-- month remaining in the Reserved Instance term.
createReservedInstancesListing_priceSchedules :: Lens.Lens' CreateReservedInstancesListing [PriceScheduleSpecification]
createReservedInstancesListing_priceSchedules = Lens.lens (\CreateReservedInstancesListing' {priceSchedules} -> priceSchedules) (\s@CreateReservedInstancesListing' {} a -> s {priceSchedules = a} :: CreateReservedInstancesListing) Prelude.. Prelude._Coerce

-- | The ID of the active Standard Reserved Instance.
createReservedInstancesListing_reservedInstancesId :: Lens.Lens' CreateReservedInstancesListing Prelude.Text
createReservedInstancesListing_reservedInstancesId = Lens.lens (\CreateReservedInstancesListing' {reservedInstancesId} -> reservedInstancesId) (\s@CreateReservedInstancesListing' {} a -> s {reservedInstancesId = a} :: CreateReservedInstancesListing)

instance
  Prelude.AWSRequest
    CreateReservedInstancesListing
  where
  type
    Rs CreateReservedInstancesListing =
      CreateReservedInstancesListingResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXML
      ( \s h x ->
          CreateReservedInstancesListingResponse'
            Prelude.<$> ( x Prelude..@? "reservedInstancesListingsSet"
                            Prelude..!@ Prelude.mempty
                            Prelude.>>= Prelude.may (Prelude.parseXMLList "item")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    CreateReservedInstancesListing

instance
  Prelude.NFData
    CreateReservedInstancesListing

instance
  Prelude.ToHeaders
    CreateReservedInstancesListing
  where
  toHeaders = Prelude.const Prelude.mempty

instance
  Prelude.ToPath
    CreateReservedInstancesListing
  where
  toPath = Prelude.const "/"

instance
  Prelude.ToQuery
    CreateReservedInstancesListing
  where
  toQuery CreateReservedInstancesListing' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ( "CreateReservedInstancesListing" ::
                         Prelude.ByteString
                     ),
        "Version"
          Prelude.=: ("2016-11-15" :: Prelude.ByteString),
        "ClientToken" Prelude.=: clientToken,
        "InstanceCount" Prelude.=: instanceCount,
        Prelude.toQueryList "PriceSchedules" priceSchedules,
        "ReservedInstancesId" Prelude.=: reservedInstancesId
      ]

-- | Contains the output of CreateReservedInstancesListing.
--
-- /See:/ 'newCreateReservedInstancesListingResponse' smart constructor.
data CreateReservedInstancesListingResponse = CreateReservedInstancesListingResponse'
  { -- | Information about the Standard Reserved Instance listing.
    reservedInstancesListings :: Prelude.Maybe [ReservedInstancesListing],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateReservedInstancesListingResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'reservedInstancesListings', 'createReservedInstancesListingResponse_reservedInstancesListings' - Information about the Standard Reserved Instance listing.
--
-- 'httpStatus', 'createReservedInstancesListingResponse_httpStatus' - The response's http status code.
newCreateReservedInstancesListingResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateReservedInstancesListingResponse
newCreateReservedInstancesListingResponse
  pHttpStatus_ =
    CreateReservedInstancesListingResponse'
      { reservedInstancesListings =
          Prelude.Nothing,
        httpStatus = pHttpStatus_
      }

-- | Information about the Standard Reserved Instance listing.
createReservedInstancesListingResponse_reservedInstancesListings :: Lens.Lens' CreateReservedInstancesListingResponse (Prelude.Maybe [ReservedInstancesListing])
createReservedInstancesListingResponse_reservedInstancesListings = Lens.lens (\CreateReservedInstancesListingResponse' {reservedInstancesListings} -> reservedInstancesListings) (\s@CreateReservedInstancesListingResponse' {} a -> s {reservedInstancesListings = a} :: CreateReservedInstancesListingResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
createReservedInstancesListingResponse_httpStatus :: Lens.Lens' CreateReservedInstancesListingResponse Prelude.Int
createReservedInstancesListingResponse_httpStatus = Lens.lens (\CreateReservedInstancesListingResponse' {httpStatus} -> httpStatus) (\s@CreateReservedInstancesListingResponse' {} a -> s {httpStatus = a} :: CreateReservedInstancesListingResponse)

instance
  Prelude.NFData
    CreateReservedInstancesListingResponse
