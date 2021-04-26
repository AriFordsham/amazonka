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
-- Module      : Network.AWS.RDS.DescribeDBSnapshotAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of DB snapshot attribute names and values for a manual DB
-- snapshot.
--
-- When sharing snapshots with other AWS accounts,
-- @DescribeDBSnapshotAttributes@ returns the @restore@ attribute and a
-- list of IDs for the AWS accounts that are authorized to copy or restore
-- the manual DB snapshot. If @all@ is included in the list of values for
-- the @restore@ attribute, then the manual DB snapshot is public and can
-- be copied or restored by all AWS accounts.
--
-- To add or remove access for an AWS account to copy or restore a manual
-- DB snapshot, or to make the manual DB snapshot public or private, use
-- the @ModifyDBSnapshotAttribute@ API action.
module Network.AWS.RDS.DescribeDBSnapshotAttributes
  ( -- * Creating a Request
    DescribeDBSnapshotAttributes (..),
    newDescribeDBSnapshotAttributes,

    -- * Request Lenses
    describeDBSnapshotAttributes_dBSnapshotIdentifier,

    -- * Destructuring the Response
    DescribeDBSnapshotAttributesResponse (..),
    newDescribeDBSnapshotAttributesResponse,

    -- * Response Lenses
    describeDBSnapshotAttributesResponse_dBSnapshotAttributesResult,
    describeDBSnapshotAttributesResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types
import Network.AWS.RDS.Types.DBSnapshotAttributesResult
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newDescribeDBSnapshotAttributes' smart constructor.
data DescribeDBSnapshotAttributes = DescribeDBSnapshotAttributes'
  { -- | The identifier for the DB snapshot to describe the attributes for.
    dBSnapshotIdentifier :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeDBSnapshotAttributes' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBSnapshotIdentifier', 'describeDBSnapshotAttributes_dBSnapshotIdentifier' - The identifier for the DB snapshot to describe the attributes for.
newDescribeDBSnapshotAttributes ::
  -- | 'dBSnapshotIdentifier'
  Prelude.Text ->
  DescribeDBSnapshotAttributes
newDescribeDBSnapshotAttributes
  pDBSnapshotIdentifier_ =
    DescribeDBSnapshotAttributes'
      { dBSnapshotIdentifier =
          pDBSnapshotIdentifier_
      }

-- | The identifier for the DB snapshot to describe the attributes for.
describeDBSnapshotAttributes_dBSnapshotIdentifier :: Lens.Lens' DescribeDBSnapshotAttributes Prelude.Text
describeDBSnapshotAttributes_dBSnapshotIdentifier = Lens.lens (\DescribeDBSnapshotAttributes' {dBSnapshotIdentifier} -> dBSnapshotIdentifier) (\s@DescribeDBSnapshotAttributes' {} a -> s {dBSnapshotIdentifier = a} :: DescribeDBSnapshotAttributes)

instance
  Prelude.AWSRequest
    DescribeDBSnapshotAttributes
  where
  type
    Rs DescribeDBSnapshotAttributes =
      DescribeDBSnapshotAttributesResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DescribeDBSnapshotAttributesResult"
      ( \s h x ->
          DescribeDBSnapshotAttributesResponse'
            Prelude.<$> (x Prelude..@? "DBSnapshotAttributesResult")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    DescribeDBSnapshotAttributes

instance Prelude.NFData DescribeDBSnapshotAttributes

instance
  Prelude.ToHeaders
    DescribeDBSnapshotAttributes
  where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath DescribeDBSnapshotAttributes where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DescribeDBSnapshotAttributes where
  toQuery DescribeDBSnapshotAttributes' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ( "DescribeDBSnapshotAttributes" ::
                         Prelude.ByteString
                     ),
        "Version"
          Prelude.=: ("2014-10-31" :: Prelude.ByteString),
        "DBSnapshotIdentifier"
          Prelude.=: dBSnapshotIdentifier
      ]

-- | /See:/ 'newDescribeDBSnapshotAttributesResponse' smart constructor.
data DescribeDBSnapshotAttributesResponse = DescribeDBSnapshotAttributesResponse'
  { dBSnapshotAttributesResult :: Prelude.Maybe DBSnapshotAttributesResult,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeDBSnapshotAttributesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBSnapshotAttributesResult', 'describeDBSnapshotAttributesResponse_dBSnapshotAttributesResult' - Undocumented member.
--
-- 'httpStatus', 'describeDBSnapshotAttributesResponse_httpStatus' - The response's http status code.
newDescribeDBSnapshotAttributesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeDBSnapshotAttributesResponse
newDescribeDBSnapshotAttributesResponse pHttpStatus_ =
  DescribeDBSnapshotAttributesResponse'
    { dBSnapshotAttributesResult =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
describeDBSnapshotAttributesResponse_dBSnapshotAttributesResult :: Lens.Lens' DescribeDBSnapshotAttributesResponse (Prelude.Maybe DBSnapshotAttributesResult)
describeDBSnapshotAttributesResponse_dBSnapshotAttributesResult = Lens.lens (\DescribeDBSnapshotAttributesResponse' {dBSnapshotAttributesResult} -> dBSnapshotAttributesResult) (\s@DescribeDBSnapshotAttributesResponse' {} a -> s {dBSnapshotAttributesResult = a} :: DescribeDBSnapshotAttributesResponse)

-- | The response's http status code.
describeDBSnapshotAttributesResponse_httpStatus :: Lens.Lens' DescribeDBSnapshotAttributesResponse Prelude.Int
describeDBSnapshotAttributesResponse_httpStatus = Lens.lens (\DescribeDBSnapshotAttributesResponse' {httpStatus} -> httpStatus) (\s@DescribeDBSnapshotAttributesResponse' {} a -> s {httpStatus = a} :: DescribeDBSnapshotAttributesResponse)

instance
  Prelude.NFData
    DescribeDBSnapshotAttributesResponse
