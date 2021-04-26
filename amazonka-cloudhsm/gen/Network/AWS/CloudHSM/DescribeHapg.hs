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
-- Module      : Network.AWS.CloudHSM.DescribeHapg
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This is documentation for __AWS CloudHSM Classic__. For more
-- information, see
-- <http://aws.amazon.com/cloudhsm/faqs-classic/ AWS CloudHSM Classic FAQs>,
-- the
-- <http://docs.aws.amazon.com/cloudhsm/classic/userguide/ AWS CloudHSM Classic User Guide>,
-- and the
-- <http://docs.aws.amazon.com/cloudhsm/classic/APIReference/ AWS CloudHSM Classic API Reference>.
--
-- __For information about the current version of AWS CloudHSM__, see
-- <http://aws.amazon.com/cloudhsm/ AWS CloudHSM>, the
-- <http://docs.aws.amazon.com/cloudhsm/latest/userguide/ AWS CloudHSM User Guide>,
-- and the
-- <http://docs.aws.amazon.com/cloudhsm/latest/APIReference/ AWS CloudHSM API Reference>.
--
-- Retrieves information about a high-availability partition group.
module Network.AWS.CloudHSM.DescribeHapg
  ( -- * Creating a Request
    DescribeHapg (..),
    newDescribeHapg,

    -- * Request Lenses
    describeHapg_hapgArn,

    -- * Destructuring the Response
    DescribeHapgResponse (..),
    newDescribeHapgResponse,

    -- * Response Lenses
    describeHapgResponse_hsmsPendingDeletion,
    describeHapgResponse_hapgArn,
    describeHapgResponse_partitionSerialList,
    describeHapgResponse_lastModifiedTimestamp,
    describeHapgResponse_state,
    describeHapgResponse_label,
    describeHapgResponse_hapgSerial,
    describeHapgResponse_hsmsPendingRegistration,
    describeHapgResponse_hsmsLastActionFailed,
    describeHapgResponse_httpStatus,
  )
where

import Network.AWS.CloudHSM.Types
import Network.AWS.CloudHSM.Types.CloudHsmObjectState
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Contains the inputs for the DescribeHapg action.
--
-- /See:/ 'newDescribeHapg' smart constructor.
data DescribeHapg = DescribeHapg'
  { -- | The ARN of the high-availability partition group to describe.
    hapgArn :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeHapg' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'hapgArn', 'describeHapg_hapgArn' - The ARN of the high-availability partition group to describe.
newDescribeHapg ::
  -- | 'hapgArn'
  Prelude.Text ->
  DescribeHapg
newDescribeHapg pHapgArn_ =
  DescribeHapg' {hapgArn = pHapgArn_}

-- | The ARN of the high-availability partition group to describe.
describeHapg_hapgArn :: Lens.Lens' DescribeHapg Prelude.Text
describeHapg_hapgArn = Lens.lens (\DescribeHapg' {hapgArn} -> hapgArn) (\s@DescribeHapg' {} a -> s {hapgArn = a} :: DescribeHapg)

instance Prelude.AWSRequest DescribeHapg where
  type Rs DescribeHapg = DescribeHapgResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeHapgResponse'
            Prelude.<$> ( x Prelude..?> "HsmsPendingDeletion"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (x Prelude..?> "HapgArn")
            Prelude.<*> ( x Prelude..?> "PartitionSerialList"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (x Prelude..?> "LastModifiedTimestamp")
            Prelude.<*> (x Prelude..?> "State")
            Prelude.<*> (x Prelude..?> "Label")
            Prelude.<*> (x Prelude..?> "HapgSerial")
            Prelude.<*> ( x Prelude..?> "HsmsPendingRegistration"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> ( x Prelude..?> "HsmsLastActionFailed"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeHapg

instance Prelude.NFData DescribeHapg

instance Prelude.ToHeaders DescribeHapg where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "CloudHsmFrontendService.DescribeHapg" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON DescribeHapg where
  toJSON DescribeHapg' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [Prelude.Just ("HapgArn" Prelude..= hapgArn)]
      )

instance Prelude.ToPath DescribeHapg where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DescribeHapg where
  toQuery = Prelude.const Prelude.mempty

-- | Contains the output of the DescribeHapg action.
--
-- /See:/ 'newDescribeHapgResponse' smart constructor.
data DescribeHapgResponse = DescribeHapgResponse'
  { hsmsPendingDeletion :: Prelude.Maybe [Prelude.Text],
    -- | The ARN of the high-availability partition group.
    hapgArn :: Prelude.Maybe Prelude.Text,
    -- | The list of partition serial numbers that belong to the
    -- high-availability partition group.
    partitionSerialList :: Prelude.Maybe [Prelude.Text],
    -- | The date and time the high-availability partition group was last
    -- modified.
    lastModifiedTimestamp :: Prelude.Maybe Prelude.Text,
    -- | The state of the high-availability partition group.
    state :: Prelude.Maybe CloudHsmObjectState,
    -- | The label for the high-availability partition group.
    label :: Prelude.Maybe Prelude.Text,
    -- | The serial number of the high-availability partition group.
    hapgSerial :: Prelude.Maybe Prelude.Text,
    hsmsPendingRegistration :: Prelude.Maybe [Prelude.Text],
    hsmsLastActionFailed :: Prelude.Maybe [Prelude.Text],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeHapgResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'hsmsPendingDeletion', 'describeHapgResponse_hsmsPendingDeletion' -
--
-- 'hapgArn', 'describeHapgResponse_hapgArn' - The ARN of the high-availability partition group.
--
-- 'partitionSerialList', 'describeHapgResponse_partitionSerialList' - The list of partition serial numbers that belong to the
-- high-availability partition group.
--
-- 'lastModifiedTimestamp', 'describeHapgResponse_lastModifiedTimestamp' - The date and time the high-availability partition group was last
-- modified.
--
-- 'state', 'describeHapgResponse_state' - The state of the high-availability partition group.
--
-- 'label', 'describeHapgResponse_label' - The label for the high-availability partition group.
--
-- 'hapgSerial', 'describeHapgResponse_hapgSerial' - The serial number of the high-availability partition group.
--
-- 'hsmsPendingRegistration', 'describeHapgResponse_hsmsPendingRegistration' -
--
-- 'hsmsLastActionFailed', 'describeHapgResponse_hsmsLastActionFailed' -
--
-- 'httpStatus', 'describeHapgResponse_httpStatus' - The response's http status code.
newDescribeHapgResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeHapgResponse
newDescribeHapgResponse pHttpStatus_ =
  DescribeHapgResponse'
    { hsmsPendingDeletion =
        Prelude.Nothing,
      hapgArn = Prelude.Nothing,
      partitionSerialList = Prelude.Nothing,
      lastModifiedTimestamp = Prelude.Nothing,
      state = Prelude.Nothing,
      label = Prelude.Nothing,
      hapgSerial = Prelude.Nothing,
      hsmsPendingRegistration = Prelude.Nothing,
      hsmsLastActionFailed = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- |
describeHapgResponse_hsmsPendingDeletion :: Lens.Lens' DescribeHapgResponse (Prelude.Maybe [Prelude.Text])
describeHapgResponse_hsmsPendingDeletion = Lens.lens (\DescribeHapgResponse' {hsmsPendingDeletion} -> hsmsPendingDeletion) (\s@DescribeHapgResponse' {} a -> s {hsmsPendingDeletion = a} :: DescribeHapgResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The ARN of the high-availability partition group.
describeHapgResponse_hapgArn :: Lens.Lens' DescribeHapgResponse (Prelude.Maybe Prelude.Text)
describeHapgResponse_hapgArn = Lens.lens (\DescribeHapgResponse' {hapgArn} -> hapgArn) (\s@DescribeHapgResponse' {} a -> s {hapgArn = a} :: DescribeHapgResponse)

-- | The list of partition serial numbers that belong to the
-- high-availability partition group.
describeHapgResponse_partitionSerialList :: Lens.Lens' DescribeHapgResponse (Prelude.Maybe [Prelude.Text])
describeHapgResponse_partitionSerialList = Lens.lens (\DescribeHapgResponse' {partitionSerialList} -> partitionSerialList) (\s@DescribeHapgResponse' {} a -> s {partitionSerialList = a} :: DescribeHapgResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The date and time the high-availability partition group was last
-- modified.
describeHapgResponse_lastModifiedTimestamp :: Lens.Lens' DescribeHapgResponse (Prelude.Maybe Prelude.Text)
describeHapgResponse_lastModifiedTimestamp = Lens.lens (\DescribeHapgResponse' {lastModifiedTimestamp} -> lastModifiedTimestamp) (\s@DescribeHapgResponse' {} a -> s {lastModifiedTimestamp = a} :: DescribeHapgResponse)

-- | The state of the high-availability partition group.
describeHapgResponse_state :: Lens.Lens' DescribeHapgResponse (Prelude.Maybe CloudHsmObjectState)
describeHapgResponse_state = Lens.lens (\DescribeHapgResponse' {state} -> state) (\s@DescribeHapgResponse' {} a -> s {state = a} :: DescribeHapgResponse)

-- | The label for the high-availability partition group.
describeHapgResponse_label :: Lens.Lens' DescribeHapgResponse (Prelude.Maybe Prelude.Text)
describeHapgResponse_label = Lens.lens (\DescribeHapgResponse' {label} -> label) (\s@DescribeHapgResponse' {} a -> s {label = a} :: DescribeHapgResponse)

-- | The serial number of the high-availability partition group.
describeHapgResponse_hapgSerial :: Lens.Lens' DescribeHapgResponse (Prelude.Maybe Prelude.Text)
describeHapgResponse_hapgSerial = Lens.lens (\DescribeHapgResponse' {hapgSerial} -> hapgSerial) (\s@DescribeHapgResponse' {} a -> s {hapgSerial = a} :: DescribeHapgResponse)

-- |
describeHapgResponse_hsmsPendingRegistration :: Lens.Lens' DescribeHapgResponse (Prelude.Maybe [Prelude.Text])
describeHapgResponse_hsmsPendingRegistration = Lens.lens (\DescribeHapgResponse' {hsmsPendingRegistration} -> hsmsPendingRegistration) (\s@DescribeHapgResponse' {} a -> s {hsmsPendingRegistration = a} :: DescribeHapgResponse) Prelude.. Lens.mapping Prelude._Coerce

-- |
describeHapgResponse_hsmsLastActionFailed :: Lens.Lens' DescribeHapgResponse (Prelude.Maybe [Prelude.Text])
describeHapgResponse_hsmsLastActionFailed = Lens.lens (\DescribeHapgResponse' {hsmsLastActionFailed} -> hsmsLastActionFailed) (\s@DescribeHapgResponse' {} a -> s {hsmsLastActionFailed = a} :: DescribeHapgResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
describeHapgResponse_httpStatus :: Lens.Lens' DescribeHapgResponse Prelude.Int
describeHapgResponse_httpStatus = Lens.lens (\DescribeHapgResponse' {httpStatus} -> httpStatus) (\s@DescribeHapgResponse' {} a -> s {httpStatus = a} :: DescribeHapgResponse)

instance Prelude.NFData DescribeHapgResponse
