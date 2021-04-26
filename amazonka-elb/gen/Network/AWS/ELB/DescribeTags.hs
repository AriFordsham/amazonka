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
-- Module      : Network.AWS.ELB.DescribeTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the tags associated with the specified load balancers.
module Network.AWS.ELB.DescribeTags
  ( -- * Creating a Request
    DescribeTags (..),
    newDescribeTags,

    -- * Request Lenses
    describeTags_loadBalancerNames,

    -- * Destructuring the Response
    DescribeTagsResponse (..),
    newDescribeTagsResponse,

    -- * Response Lenses
    describeTagsResponse_tagDescriptions,
    describeTagsResponse_httpStatus,
  )
where

import Network.AWS.ELB.Types
import Network.AWS.ELB.Types.TagDescription
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Contains the parameters for DescribeTags.
--
-- /See:/ 'newDescribeTags' smart constructor.
data DescribeTags = DescribeTags'
  { -- | The names of the load balancers.
    loadBalancerNames :: Prelude.List1 Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeTags' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'loadBalancerNames', 'describeTags_loadBalancerNames' - The names of the load balancers.
newDescribeTags ::
  -- | 'loadBalancerNames'
  Prelude.NonEmpty Prelude.Text ->
  DescribeTags
newDescribeTags pLoadBalancerNames_ =
  DescribeTags'
    { loadBalancerNames =
        Prelude._List1 Lens.# pLoadBalancerNames_
    }

-- | The names of the load balancers.
describeTags_loadBalancerNames :: Lens.Lens' DescribeTags (Prelude.NonEmpty Prelude.Text)
describeTags_loadBalancerNames = Lens.lens (\DescribeTags' {loadBalancerNames} -> loadBalancerNames) (\s@DescribeTags' {} a -> s {loadBalancerNames = a} :: DescribeTags) Prelude.. Prelude._List1

instance Prelude.AWSRequest DescribeTags where
  type Rs DescribeTags = DescribeTagsResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DescribeTagsResult"
      ( \s h x ->
          DescribeTagsResponse'
            Prelude.<$> ( x Prelude..@? "TagDescriptions"
                            Prelude..!@ Prelude.mempty
                            Prelude.>>= Prelude.may (Prelude.parseXMLList "member")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeTags

instance Prelude.NFData DescribeTags

instance Prelude.ToHeaders DescribeTags where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath DescribeTags where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DescribeTags where
  toQuery DescribeTags' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("DescribeTags" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2012-06-01" :: Prelude.ByteString),
        "LoadBalancerNames"
          Prelude.=: Prelude.toQueryList "member" loadBalancerNames
      ]

-- | Contains the output for DescribeTags.
--
-- /See:/ 'newDescribeTagsResponse' smart constructor.
data DescribeTagsResponse = DescribeTagsResponse'
  { -- | Information about the tags.
    tagDescriptions :: Prelude.Maybe [TagDescription],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeTagsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tagDescriptions', 'describeTagsResponse_tagDescriptions' - Information about the tags.
--
-- 'httpStatus', 'describeTagsResponse_httpStatus' - The response's http status code.
newDescribeTagsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeTagsResponse
newDescribeTagsResponse pHttpStatus_ =
  DescribeTagsResponse'
    { tagDescriptions =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the tags.
describeTagsResponse_tagDescriptions :: Lens.Lens' DescribeTagsResponse (Prelude.Maybe [TagDescription])
describeTagsResponse_tagDescriptions = Lens.lens (\DescribeTagsResponse' {tagDescriptions} -> tagDescriptions) (\s@DescribeTagsResponse' {} a -> s {tagDescriptions = a} :: DescribeTagsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
describeTagsResponse_httpStatus :: Lens.Lens' DescribeTagsResponse Prelude.Int
describeTagsResponse_httpStatus = Lens.lens (\DescribeTagsResponse' {httpStatus} -> httpStatus) (\s@DescribeTagsResponse' {} a -> s {httpStatus = a} :: DescribeTagsResponse)

instance Prelude.NFData DescribeTagsResponse
