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
-- Module      : Network.AWS.IoT.ListAttachedPolicies
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the policies attached to the specified thing group.
--
-- This operation returns paginated results.
module Network.AWS.IoT.ListAttachedPolicies
  ( -- * Creating a Request
    ListAttachedPolicies (..),
    newListAttachedPolicies,

    -- * Request Lenses
    listAttachedPolicies_pageSize,
    listAttachedPolicies_recursive,
    listAttachedPolicies_marker,
    listAttachedPolicies_target,

    -- * Destructuring the Response
    ListAttachedPoliciesResponse (..),
    newListAttachedPoliciesResponse,

    -- * Response Lenses
    listAttachedPoliciesResponse_policies,
    listAttachedPoliciesResponse_nextMarker,
    listAttachedPoliciesResponse_httpStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.IoT.Types.Policy
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListAttachedPolicies' smart constructor.
data ListAttachedPolicies = ListAttachedPolicies'
  { -- | The maximum number of results to be returned per request.
    pageSize :: Prelude.Maybe Prelude.Nat,
    -- | When true, recursively list attached policies.
    recursive :: Prelude.Maybe Prelude.Bool,
    -- | The token to retrieve the next set of results.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The group or principal for which the policies will be listed. Valid
    -- principals are CertificateArn
    -- (arn:aws:iot:/region/:/accountId/:cert\//certificateId/), thingGroupArn
    -- (arn:aws:iot:/region/:/accountId/:thinggroup\//groupName/) and CognitoId
    -- (/region/:/id/).
    target :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListAttachedPolicies' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'pageSize', 'listAttachedPolicies_pageSize' - The maximum number of results to be returned per request.
--
-- 'recursive', 'listAttachedPolicies_recursive' - When true, recursively list attached policies.
--
-- 'marker', 'listAttachedPolicies_marker' - The token to retrieve the next set of results.
--
-- 'target', 'listAttachedPolicies_target' - The group or principal for which the policies will be listed. Valid
-- principals are CertificateArn
-- (arn:aws:iot:/region/:/accountId/:cert\//certificateId/), thingGroupArn
-- (arn:aws:iot:/region/:/accountId/:thinggroup\//groupName/) and CognitoId
-- (/region/:/id/).
newListAttachedPolicies ::
  -- | 'target'
  Prelude.Text ->
  ListAttachedPolicies
newListAttachedPolicies pTarget_ =
  ListAttachedPolicies'
    { pageSize = Prelude.Nothing,
      recursive = Prelude.Nothing,
      marker = Prelude.Nothing,
      target = pTarget_
    }

-- | The maximum number of results to be returned per request.
listAttachedPolicies_pageSize :: Lens.Lens' ListAttachedPolicies (Prelude.Maybe Prelude.Natural)
listAttachedPolicies_pageSize = Lens.lens (\ListAttachedPolicies' {pageSize} -> pageSize) (\s@ListAttachedPolicies' {} a -> s {pageSize = a} :: ListAttachedPolicies) Prelude.. Lens.mapping Prelude._Nat

-- | When true, recursively list attached policies.
listAttachedPolicies_recursive :: Lens.Lens' ListAttachedPolicies (Prelude.Maybe Prelude.Bool)
listAttachedPolicies_recursive = Lens.lens (\ListAttachedPolicies' {recursive} -> recursive) (\s@ListAttachedPolicies' {} a -> s {recursive = a} :: ListAttachedPolicies)

-- | The token to retrieve the next set of results.
listAttachedPolicies_marker :: Lens.Lens' ListAttachedPolicies (Prelude.Maybe Prelude.Text)
listAttachedPolicies_marker = Lens.lens (\ListAttachedPolicies' {marker} -> marker) (\s@ListAttachedPolicies' {} a -> s {marker = a} :: ListAttachedPolicies)

-- | The group or principal for which the policies will be listed. Valid
-- principals are CertificateArn
-- (arn:aws:iot:/region/:/accountId/:cert\//certificateId/), thingGroupArn
-- (arn:aws:iot:/region/:/accountId/:thinggroup\//groupName/) and CognitoId
-- (/region/:/id/).
listAttachedPolicies_target :: Lens.Lens' ListAttachedPolicies Prelude.Text
listAttachedPolicies_target = Lens.lens (\ListAttachedPolicies' {target} -> target) (\s@ListAttachedPolicies' {} a -> s {target = a} :: ListAttachedPolicies)

instance Pager.AWSPager ListAttachedPolicies where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? listAttachedPoliciesResponse_nextMarker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? listAttachedPoliciesResponse_policies
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& listAttachedPolicies_marker
          Lens..~ rs
          Lens.^? listAttachedPoliciesResponse_nextMarker
            Prelude.. Lens._Just

instance Prelude.AWSRequest ListAttachedPolicies where
  type
    Rs ListAttachedPolicies =
      ListAttachedPoliciesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListAttachedPoliciesResponse'
            Prelude.<$> (x Prelude..?> "policies" Prelude..!@ Prelude.mempty)
            Prelude.<*> (x Prelude..?> "nextMarker")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListAttachedPolicies

instance Prelude.NFData ListAttachedPolicies

instance Prelude.ToHeaders ListAttachedPolicies where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToJSON ListAttachedPolicies where
  toJSON =
    Prelude.const (Prelude.Object Prelude.mempty)

instance Prelude.ToPath ListAttachedPolicies where
  toPath ListAttachedPolicies' {..} =
    Prelude.mconcat
      ["/attached-policies/", Prelude.toBS target]

instance Prelude.ToQuery ListAttachedPolicies where
  toQuery ListAttachedPolicies' {..} =
    Prelude.mconcat
      [ "pageSize" Prelude.=: pageSize,
        "recursive" Prelude.=: recursive,
        "marker" Prelude.=: marker
      ]

-- | /See:/ 'newListAttachedPoliciesResponse' smart constructor.
data ListAttachedPoliciesResponse = ListAttachedPoliciesResponse'
  { -- | The policies.
    policies :: Prelude.Maybe [Policy],
    -- | The token to retrieve the next set of results, or \`\`null\`\` if there
    -- are no more results.
    nextMarker :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListAttachedPoliciesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'policies', 'listAttachedPoliciesResponse_policies' - The policies.
--
-- 'nextMarker', 'listAttachedPoliciesResponse_nextMarker' - The token to retrieve the next set of results, or \`\`null\`\` if there
-- are no more results.
--
-- 'httpStatus', 'listAttachedPoliciesResponse_httpStatus' - The response's http status code.
newListAttachedPoliciesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListAttachedPoliciesResponse
newListAttachedPoliciesResponse pHttpStatus_ =
  ListAttachedPoliciesResponse'
    { policies =
        Prelude.Nothing,
      nextMarker = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The policies.
listAttachedPoliciesResponse_policies :: Lens.Lens' ListAttachedPoliciesResponse (Prelude.Maybe [Policy])
listAttachedPoliciesResponse_policies = Lens.lens (\ListAttachedPoliciesResponse' {policies} -> policies) (\s@ListAttachedPoliciesResponse' {} a -> s {policies = a} :: ListAttachedPoliciesResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The token to retrieve the next set of results, or \`\`null\`\` if there
-- are no more results.
listAttachedPoliciesResponse_nextMarker :: Lens.Lens' ListAttachedPoliciesResponse (Prelude.Maybe Prelude.Text)
listAttachedPoliciesResponse_nextMarker = Lens.lens (\ListAttachedPoliciesResponse' {nextMarker} -> nextMarker) (\s@ListAttachedPoliciesResponse' {} a -> s {nextMarker = a} :: ListAttachedPoliciesResponse)

-- | The response's http status code.
listAttachedPoliciesResponse_httpStatus :: Lens.Lens' ListAttachedPoliciesResponse Prelude.Int
listAttachedPoliciesResponse_httpStatus = Lens.lens (\ListAttachedPoliciesResponse' {httpStatus} -> httpStatus) (\s@ListAttachedPoliciesResponse' {} a -> s {httpStatus = a} :: ListAttachedPoliciesResponse)

instance Prelude.NFData ListAttachedPoliciesResponse
