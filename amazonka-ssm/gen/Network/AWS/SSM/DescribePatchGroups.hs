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
-- Module      : Network.AWS.SSM.DescribePatchGroups
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all patch groups that have been registered with patch baselines.
--
-- This operation returns paginated results.
module Network.AWS.SSM.DescribePatchGroups
  ( -- * Creating a Request
    DescribePatchGroups (..),
    newDescribePatchGroups,

    -- * Request Lenses
    describePatchGroups_nextToken,
    describePatchGroups_maxResults,
    describePatchGroups_filters,

    -- * Destructuring the Response
    DescribePatchGroupsResponse (..),
    newDescribePatchGroupsResponse,

    -- * Response Lenses
    describePatchGroupsResponse_mappings,
    describePatchGroupsResponse_nextToken,
    describePatchGroupsResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SSM.Types
import Network.AWS.SSM.Types.PatchGroupPatchBaselineMapping

-- | /See:/ 'newDescribePatchGroups' smart constructor.
data DescribePatchGroups = DescribePatchGroups'
  { -- | The token for the next set of items to return. (You received this token
    -- from a previous call.)
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of patch groups to return (per page).
    maxResults :: Prelude.Maybe Prelude.Nat,
    -- | One or more filters. Use a filter to return a more specific list of
    -- results.
    --
    -- For @DescribePatchGroups@,valid filter keys include the following:
    --
    -- -   @NAME_PREFIX@: The name of the patch group. Wildcards (*) are
    --     accepted.
    --
    -- -   @OPERATING_SYSTEM@: The supported operating system type to return
    --     results for. For valid operating system values, see
    --     GetDefaultPatchBaselineRequest$OperatingSystem in
    --     CreatePatchBaseline.
    --
    --     Examples:
    --
    --     -   @--filters Key=NAME_PREFIX,Values=MyPatchGroup*@
    --
    --     -   @--filters Key=OPERATING_SYSTEM,Values=AMAZON_LINUX_2@
    filters :: Prelude.Maybe [PatchOrchestratorFilter]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribePatchGroups' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'describePatchGroups_nextToken' - The token for the next set of items to return. (You received this token
-- from a previous call.)
--
-- 'maxResults', 'describePatchGroups_maxResults' - The maximum number of patch groups to return (per page).
--
-- 'filters', 'describePatchGroups_filters' - One or more filters. Use a filter to return a more specific list of
-- results.
--
-- For @DescribePatchGroups@,valid filter keys include the following:
--
-- -   @NAME_PREFIX@: The name of the patch group. Wildcards (*) are
--     accepted.
--
-- -   @OPERATING_SYSTEM@: The supported operating system type to return
--     results for. For valid operating system values, see
--     GetDefaultPatchBaselineRequest$OperatingSystem in
--     CreatePatchBaseline.
--
--     Examples:
--
--     -   @--filters Key=NAME_PREFIX,Values=MyPatchGroup*@
--
--     -   @--filters Key=OPERATING_SYSTEM,Values=AMAZON_LINUX_2@
newDescribePatchGroups ::
  DescribePatchGroups
newDescribePatchGroups =
  DescribePatchGroups'
    { nextToken = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      filters = Prelude.Nothing
    }

-- | The token for the next set of items to return. (You received this token
-- from a previous call.)
describePatchGroups_nextToken :: Lens.Lens' DescribePatchGroups (Prelude.Maybe Prelude.Text)
describePatchGroups_nextToken = Lens.lens (\DescribePatchGroups' {nextToken} -> nextToken) (\s@DescribePatchGroups' {} a -> s {nextToken = a} :: DescribePatchGroups)

-- | The maximum number of patch groups to return (per page).
describePatchGroups_maxResults :: Lens.Lens' DescribePatchGroups (Prelude.Maybe Prelude.Natural)
describePatchGroups_maxResults = Lens.lens (\DescribePatchGroups' {maxResults} -> maxResults) (\s@DescribePatchGroups' {} a -> s {maxResults = a} :: DescribePatchGroups) Prelude.. Lens.mapping Prelude._Nat

-- | One or more filters. Use a filter to return a more specific list of
-- results.
--
-- For @DescribePatchGroups@,valid filter keys include the following:
--
-- -   @NAME_PREFIX@: The name of the patch group. Wildcards (*) are
--     accepted.
--
-- -   @OPERATING_SYSTEM@: The supported operating system type to return
--     results for. For valid operating system values, see
--     GetDefaultPatchBaselineRequest$OperatingSystem in
--     CreatePatchBaseline.
--
--     Examples:
--
--     -   @--filters Key=NAME_PREFIX,Values=MyPatchGroup*@
--
--     -   @--filters Key=OPERATING_SYSTEM,Values=AMAZON_LINUX_2@
describePatchGroups_filters :: Lens.Lens' DescribePatchGroups (Prelude.Maybe [PatchOrchestratorFilter])
describePatchGroups_filters = Lens.lens (\DescribePatchGroups' {filters} -> filters) (\s@DescribePatchGroups' {} a -> s {filters = a} :: DescribePatchGroups) Prelude.. Lens.mapping Prelude._Coerce

instance Pager.AWSPager DescribePatchGroups where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? describePatchGroupsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? describePatchGroupsResponse_mappings
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& describePatchGroups_nextToken
          Lens..~ rs
          Lens.^? describePatchGroupsResponse_nextToken
            Prelude.. Lens._Just

instance Prelude.AWSRequest DescribePatchGroups where
  type
    Rs DescribePatchGroups =
      DescribePatchGroupsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribePatchGroupsResponse'
            Prelude.<$> (x Prelude..?> "Mappings" Prelude..!@ Prelude.mempty)
            Prelude.<*> (x Prelude..?> "NextToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribePatchGroups

instance Prelude.NFData DescribePatchGroups

instance Prelude.ToHeaders DescribePatchGroups where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "AmazonSSM.DescribePatchGroups" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON DescribePatchGroups where
  toJSON DescribePatchGroups' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("NextToken" Prelude..=) Prelude.<$> nextToken,
            ("MaxResults" Prelude..=) Prelude.<$> maxResults,
            ("Filters" Prelude..=) Prelude.<$> filters
          ]
      )

instance Prelude.ToPath DescribePatchGroups where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DescribePatchGroups where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribePatchGroupsResponse' smart constructor.
data DescribePatchGroupsResponse = DescribePatchGroupsResponse'
  { -- | Each entry in the array contains:
    --
    -- PatchGroup: string (between 1 and 256 characters, Regex:
    -- ^([\\p{L}\\p{Z}\\p{N}_.:\/=+\\-\@]*)$)
    --
    -- PatchBaselineIdentity: A PatchBaselineIdentity element.
    mappings :: Prelude.Maybe [PatchGroupPatchBaselineMapping],
    -- | The token to use when requesting the next set of items. If there are no
    -- additional items to return, the string is empty.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribePatchGroupsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'mappings', 'describePatchGroupsResponse_mappings' - Each entry in the array contains:
--
-- PatchGroup: string (between 1 and 256 characters, Regex:
-- ^([\\p{L}\\p{Z}\\p{N}_.:\/=+\\-\@]*)$)
--
-- PatchBaselineIdentity: A PatchBaselineIdentity element.
--
-- 'nextToken', 'describePatchGroupsResponse_nextToken' - The token to use when requesting the next set of items. If there are no
-- additional items to return, the string is empty.
--
-- 'httpStatus', 'describePatchGroupsResponse_httpStatus' - The response's http status code.
newDescribePatchGroupsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribePatchGroupsResponse
newDescribePatchGroupsResponse pHttpStatus_ =
  DescribePatchGroupsResponse'
    { mappings =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Each entry in the array contains:
--
-- PatchGroup: string (between 1 and 256 characters, Regex:
-- ^([\\p{L}\\p{Z}\\p{N}_.:\/=+\\-\@]*)$)
--
-- PatchBaselineIdentity: A PatchBaselineIdentity element.
describePatchGroupsResponse_mappings :: Lens.Lens' DescribePatchGroupsResponse (Prelude.Maybe [PatchGroupPatchBaselineMapping])
describePatchGroupsResponse_mappings = Lens.lens (\DescribePatchGroupsResponse' {mappings} -> mappings) (\s@DescribePatchGroupsResponse' {} a -> s {mappings = a} :: DescribePatchGroupsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The token to use when requesting the next set of items. If there are no
-- additional items to return, the string is empty.
describePatchGroupsResponse_nextToken :: Lens.Lens' DescribePatchGroupsResponse (Prelude.Maybe Prelude.Text)
describePatchGroupsResponse_nextToken = Lens.lens (\DescribePatchGroupsResponse' {nextToken} -> nextToken) (\s@DescribePatchGroupsResponse' {} a -> s {nextToken = a} :: DescribePatchGroupsResponse)

-- | The response's http status code.
describePatchGroupsResponse_httpStatus :: Lens.Lens' DescribePatchGroupsResponse Prelude.Int
describePatchGroupsResponse_httpStatus = Lens.lens (\DescribePatchGroupsResponse' {httpStatus} -> httpStatus) (\s@DescribePatchGroupsResponse' {} a -> s {httpStatus = a} :: DescribePatchGroupsResponse)

instance Prelude.NFData DescribePatchGroupsResponse
