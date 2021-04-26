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
-- Module      : Network.AWS.StorageGateway.ListTagsForResource
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the tags that have been added to the specified resource. This
-- operation is supported in storage gateways of all types.
--
-- This operation returns paginated results.
module Network.AWS.StorageGateway.ListTagsForResource
  ( -- * Creating a Request
    ListTagsForResource (..),
    newListTagsForResource,

    -- * Request Lenses
    listTagsForResource_limit,
    listTagsForResource_marker,
    listTagsForResource_resourceARN,

    -- * Destructuring the Response
    ListTagsForResourceResponse (..),
    newListTagsForResourceResponse,

    -- * Response Lenses
    listTagsForResourceResponse_resourceARN,
    listTagsForResourceResponse_tags,
    listTagsForResourceResponse_marker,
    listTagsForResourceResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.StorageGateway.Types
import Network.AWS.StorageGateway.Types.Tag

-- | ListTagsForResourceInput
--
-- /See:/ 'newListTagsForResource' smart constructor.
data ListTagsForResource = ListTagsForResource'
  { -- | Specifies that the list of tags returned be limited to the specified
    -- number of items.
    limit :: Prelude.Maybe Prelude.Nat,
    -- | An opaque string that indicates the position at which to begin returning
    -- the list of tags.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the resource for which you want to
    -- list tags.
    resourceARN :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListTagsForResource' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'limit', 'listTagsForResource_limit' - Specifies that the list of tags returned be limited to the specified
-- number of items.
--
-- 'marker', 'listTagsForResource_marker' - An opaque string that indicates the position at which to begin returning
-- the list of tags.
--
-- 'resourceARN', 'listTagsForResource_resourceARN' - The Amazon Resource Name (ARN) of the resource for which you want to
-- list tags.
newListTagsForResource ::
  -- | 'resourceARN'
  Prelude.Text ->
  ListTagsForResource
newListTagsForResource pResourceARN_ =
  ListTagsForResource'
    { limit = Prelude.Nothing,
      marker = Prelude.Nothing,
      resourceARN = pResourceARN_
    }

-- | Specifies that the list of tags returned be limited to the specified
-- number of items.
listTagsForResource_limit :: Lens.Lens' ListTagsForResource (Prelude.Maybe Prelude.Natural)
listTagsForResource_limit = Lens.lens (\ListTagsForResource' {limit} -> limit) (\s@ListTagsForResource' {} a -> s {limit = a} :: ListTagsForResource) Prelude.. Lens.mapping Prelude._Nat

-- | An opaque string that indicates the position at which to begin returning
-- the list of tags.
listTagsForResource_marker :: Lens.Lens' ListTagsForResource (Prelude.Maybe Prelude.Text)
listTagsForResource_marker = Lens.lens (\ListTagsForResource' {marker} -> marker) (\s@ListTagsForResource' {} a -> s {marker = a} :: ListTagsForResource)

-- | The Amazon Resource Name (ARN) of the resource for which you want to
-- list tags.
listTagsForResource_resourceARN :: Lens.Lens' ListTagsForResource Prelude.Text
listTagsForResource_resourceARN = Lens.lens (\ListTagsForResource' {resourceARN} -> resourceARN) (\s@ListTagsForResource' {} a -> s {resourceARN = a} :: ListTagsForResource)

instance Pager.AWSPager ListTagsForResource where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? listTagsForResourceResponse_marker
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? listTagsForResourceResponse_tags
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& listTagsForResource_marker
          Lens..~ rs
          Lens.^? listTagsForResourceResponse_marker
            Prelude.. Lens._Just

instance Prelude.AWSRequest ListTagsForResource where
  type
    Rs ListTagsForResource =
      ListTagsForResourceResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListTagsForResourceResponse'
            Prelude.<$> (x Prelude..?> "ResourceARN")
            Prelude.<*> (x Prelude..?> "Tags" Prelude..!@ Prelude.mempty)
            Prelude.<*> (x Prelude..?> "Marker")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListTagsForResource

instance Prelude.NFData ListTagsForResource

instance Prelude.ToHeaders ListTagsForResource where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "StorageGateway_20130630.ListTagsForResource" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON ListTagsForResource where
  toJSON ListTagsForResource' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("Limit" Prelude..=) Prelude.<$> limit,
            ("Marker" Prelude..=) Prelude.<$> marker,
            Prelude.Just ("ResourceARN" Prelude..= resourceARN)
          ]
      )

instance Prelude.ToPath ListTagsForResource where
  toPath = Prelude.const "/"

instance Prelude.ToQuery ListTagsForResource where
  toQuery = Prelude.const Prelude.mempty

-- | ListTagsForResourceOutput
--
-- /See:/ 'newListTagsForResourceResponse' smart constructor.
data ListTagsForResourceResponse = ListTagsForResourceResponse'
  { -- | The Amazon Resource Name (ARN) of the resource for which you want to
    -- list tags.
    resourceARN :: Prelude.Maybe Prelude.Text,
    -- | An array that contains the tags for the specified resource.
    tags :: Prelude.Maybe [Tag],
    -- | An opaque string that indicates the position at which to stop returning
    -- the list of tags.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListTagsForResourceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceARN', 'listTagsForResourceResponse_resourceARN' - The Amazon Resource Name (ARN) of the resource for which you want to
-- list tags.
--
-- 'tags', 'listTagsForResourceResponse_tags' - An array that contains the tags for the specified resource.
--
-- 'marker', 'listTagsForResourceResponse_marker' - An opaque string that indicates the position at which to stop returning
-- the list of tags.
--
-- 'httpStatus', 'listTagsForResourceResponse_httpStatus' - The response's http status code.
newListTagsForResourceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListTagsForResourceResponse
newListTagsForResourceResponse pHttpStatus_ =
  ListTagsForResourceResponse'
    { resourceARN =
        Prelude.Nothing,
      tags = Prelude.Nothing,
      marker = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The Amazon Resource Name (ARN) of the resource for which you want to
-- list tags.
listTagsForResourceResponse_resourceARN :: Lens.Lens' ListTagsForResourceResponse (Prelude.Maybe Prelude.Text)
listTagsForResourceResponse_resourceARN = Lens.lens (\ListTagsForResourceResponse' {resourceARN} -> resourceARN) (\s@ListTagsForResourceResponse' {} a -> s {resourceARN = a} :: ListTagsForResourceResponse)

-- | An array that contains the tags for the specified resource.
listTagsForResourceResponse_tags :: Lens.Lens' ListTagsForResourceResponse (Prelude.Maybe [Tag])
listTagsForResourceResponse_tags = Lens.lens (\ListTagsForResourceResponse' {tags} -> tags) (\s@ListTagsForResourceResponse' {} a -> s {tags = a} :: ListTagsForResourceResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | An opaque string that indicates the position at which to stop returning
-- the list of tags.
listTagsForResourceResponse_marker :: Lens.Lens' ListTagsForResourceResponse (Prelude.Maybe Prelude.Text)
listTagsForResourceResponse_marker = Lens.lens (\ListTagsForResourceResponse' {marker} -> marker) (\s@ListTagsForResourceResponse' {} a -> s {marker = a} :: ListTagsForResourceResponse)

-- | The response's http status code.
listTagsForResourceResponse_httpStatus :: Lens.Lens' ListTagsForResourceResponse Prelude.Int
listTagsForResourceResponse_httpStatus = Lens.lens (\ListTagsForResourceResponse' {httpStatus} -> httpStatus) (\s@ListTagsForResourceResponse' {} a -> s {httpStatus = a} :: ListTagsForResourceResponse)

instance Prelude.NFData ListTagsForResourceResponse
