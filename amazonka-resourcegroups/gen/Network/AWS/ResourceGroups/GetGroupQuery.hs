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
-- Module      : Network.AWS.ResourceGroups.GetGroupQuery
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the resource query associated with the specified resource
-- group. For more information about resource queries, see
-- <https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag Create a tag-based group in Resource Groups>.
--
-- __Minimum permissions__
--
-- To run this command, you must have the following permissions:
--
-- -   @resource-groups:GetGroupQuery@
module Network.AWS.ResourceGroups.GetGroupQuery
  ( -- * Creating a Request
    GetGroupQuery (..),
    newGetGroupQuery,

    -- * Request Lenses
    getGroupQuery_groupName,
    getGroupQuery_group,

    -- * Destructuring the Response
    GetGroupQueryResponse (..),
    newGetGroupQueryResponse,

    -- * Response Lenses
    getGroupQueryResponse_groupQuery,
    getGroupQueryResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import Network.AWS.ResourceGroups.Types
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetGroupQuery' smart constructor.
data GetGroupQuery = GetGroupQuery'
  { -- | Don\'t use this parameter. Use @Group@ instead.
    groupName :: Prelude.Maybe Prelude.Text,
    -- | The name or the ARN of the resource group to query.
    group' :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetGroupQuery' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'groupName', 'getGroupQuery_groupName' - Don\'t use this parameter. Use @Group@ instead.
--
-- 'group'', 'getGroupQuery_group' - The name or the ARN of the resource group to query.
newGetGroupQuery ::
  GetGroupQuery
newGetGroupQuery =
  GetGroupQuery'
    { groupName = Prelude.Nothing,
      group' = Prelude.Nothing
    }

-- | Don\'t use this parameter. Use @Group@ instead.
getGroupQuery_groupName :: Lens.Lens' GetGroupQuery (Prelude.Maybe Prelude.Text)
getGroupQuery_groupName = Lens.lens (\GetGroupQuery' {groupName} -> groupName) (\s@GetGroupQuery' {} a -> s {groupName = a} :: GetGroupQuery)

-- | The name or the ARN of the resource group to query.
getGroupQuery_group :: Lens.Lens' GetGroupQuery (Prelude.Maybe Prelude.Text)
getGroupQuery_group = Lens.lens (\GetGroupQuery' {group'} -> group') (\s@GetGroupQuery' {} a -> s {group' = a} :: GetGroupQuery)

instance Prelude.AWSRequest GetGroupQuery where
  type Rs GetGroupQuery = GetGroupQueryResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetGroupQueryResponse'
            Prelude.<$> (x Prelude..?> "GroupQuery")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetGroupQuery

instance Prelude.NFData GetGroupQuery

instance Prelude.ToHeaders GetGroupQuery where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToJSON GetGroupQuery where
  toJSON GetGroupQuery' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("GroupName" Prelude..=) Prelude.<$> groupName,
            ("Group" Prelude..=) Prelude.<$> group'
          ]
      )

instance Prelude.ToPath GetGroupQuery where
  toPath = Prelude.const "/get-group-query"

instance Prelude.ToQuery GetGroupQuery where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetGroupQueryResponse' smart constructor.
data GetGroupQueryResponse = GetGroupQueryResponse'
  { -- | The resource query associated with the specified group. For more
    -- information about resource queries, see
    -- <https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag Create a tag-based group in Resource Groups>.
    groupQuery :: Prelude.Maybe GroupQuery,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetGroupQueryResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'groupQuery', 'getGroupQueryResponse_groupQuery' - The resource query associated with the specified group. For more
-- information about resource queries, see
-- <https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag Create a tag-based group in Resource Groups>.
--
-- 'httpStatus', 'getGroupQueryResponse_httpStatus' - The response's http status code.
newGetGroupQueryResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetGroupQueryResponse
newGetGroupQueryResponse pHttpStatus_ =
  GetGroupQueryResponse'
    { groupQuery =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The resource query associated with the specified group. For more
-- information about resource queries, see
-- <https://docs.aws.amazon.com/ARG/latest/userguide/gettingstarted-query.html#gettingstarted-query-cli-tag Create a tag-based group in Resource Groups>.
getGroupQueryResponse_groupQuery :: Lens.Lens' GetGroupQueryResponse (Prelude.Maybe GroupQuery)
getGroupQueryResponse_groupQuery = Lens.lens (\GetGroupQueryResponse' {groupQuery} -> groupQuery) (\s@GetGroupQueryResponse' {} a -> s {groupQuery = a} :: GetGroupQueryResponse)

-- | The response's http status code.
getGroupQueryResponse_httpStatus :: Lens.Lens' GetGroupQueryResponse Prelude.Int
getGroupQueryResponse_httpStatus = Lens.lens (\GetGroupQueryResponse' {httpStatus} -> httpStatus) (\s@GetGroupQueryResponse' {} a -> s {httpStatus = a} :: GetGroupQueryResponse)

instance Prelude.NFData GetGroupQueryResponse
