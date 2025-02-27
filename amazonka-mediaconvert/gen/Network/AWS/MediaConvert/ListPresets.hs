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
-- Module      : Network.AWS.MediaConvert.ListPresets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieve a JSON array of up to twenty of your presets. This will return
-- the presets themselves, not just a list of them. To retrieve the next
-- twenty presets, use the nextToken string returned with the array.
--
-- This operation returns paginated results.
module Network.AWS.MediaConvert.ListPresets
  ( -- * Creating a Request
    ListPresets (..),
    newListPresets,

    -- * Request Lenses
    listPresets_nextToken,
    listPresets_listBy,
    listPresets_maxResults,
    listPresets_category,
    listPresets_order,

    -- * Destructuring the Response
    ListPresetsResponse (..),
    newListPresetsResponse,

    -- * Response Lenses
    listPresetsResponse_nextToken,
    listPresetsResponse_presets,
    listPresetsResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaConvert.Types
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListPresets' smart constructor.
data ListPresets = ListPresets'
  { -- | Use this string, provided with the response to a previous request, to
    -- request the next batch of presets.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Optional. When you request a list of presets, you can choose to list
    -- them alphabetically by NAME or chronologically by CREATION_DATE. If you
    -- don\'t specify, the service will list them by name.
    listBy :: Prelude.Maybe PresetListBy,
    -- | Optional. Number of presets, up to twenty, that will be returned at one
    -- time
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | Optionally, specify a preset category to limit responses to only presets
    -- from that category.
    category :: Prelude.Maybe Prelude.Text,
    -- | Optional. When you request lists of resources, you can specify whether
    -- they are sorted in ASCENDING or DESCENDING order. Default varies by
    -- resource.
    order :: Prelude.Maybe Order
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListPresets' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listPresets_nextToken' - Use this string, provided with the response to a previous request, to
-- request the next batch of presets.
--
-- 'listBy', 'listPresets_listBy' - Optional. When you request a list of presets, you can choose to list
-- them alphabetically by NAME or chronologically by CREATION_DATE. If you
-- don\'t specify, the service will list them by name.
--
-- 'maxResults', 'listPresets_maxResults' - Optional. Number of presets, up to twenty, that will be returned at one
-- time
--
-- 'category', 'listPresets_category' - Optionally, specify a preset category to limit responses to only presets
-- from that category.
--
-- 'order', 'listPresets_order' - Optional. When you request lists of resources, you can specify whether
-- they are sorted in ASCENDING or DESCENDING order. Default varies by
-- resource.
newListPresets ::
  ListPresets
newListPresets =
  ListPresets'
    { nextToken = Prelude.Nothing,
      listBy = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      category = Prelude.Nothing,
      order = Prelude.Nothing
    }

-- | Use this string, provided with the response to a previous request, to
-- request the next batch of presets.
listPresets_nextToken :: Lens.Lens' ListPresets (Prelude.Maybe Prelude.Text)
listPresets_nextToken = Lens.lens (\ListPresets' {nextToken} -> nextToken) (\s@ListPresets' {} a -> s {nextToken = a} :: ListPresets)

-- | Optional. When you request a list of presets, you can choose to list
-- them alphabetically by NAME or chronologically by CREATION_DATE. If you
-- don\'t specify, the service will list them by name.
listPresets_listBy :: Lens.Lens' ListPresets (Prelude.Maybe PresetListBy)
listPresets_listBy = Lens.lens (\ListPresets' {listBy} -> listBy) (\s@ListPresets' {} a -> s {listBy = a} :: ListPresets)

-- | Optional. Number of presets, up to twenty, that will be returned at one
-- time
listPresets_maxResults :: Lens.Lens' ListPresets (Prelude.Maybe Prelude.Natural)
listPresets_maxResults = Lens.lens (\ListPresets' {maxResults} -> maxResults) (\s@ListPresets' {} a -> s {maxResults = a} :: ListPresets)

-- | Optionally, specify a preset category to limit responses to only presets
-- from that category.
listPresets_category :: Lens.Lens' ListPresets (Prelude.Maybe Prelude.Text)
listPresets_category = Lens.lens (\ListPresets' {category} -> category) (\s@ListPresets' {} a -> s {category = a} :: ListPresets)

-- | Optional. When you request lists of resources, you can specify whether
-- they are sorted in ASCENDING or DESCENDING order. Default varies by
-- resource.
listPresets_order :: Lens.Lens' ListPresets (Prelude.Maybe Order)
listPresets_order = Lens.lens (\ListPresets' {order} -> order) (\s@ListPresets' {} a -> s {order = a} :: ListPresets)

instance Pager.AWSPager ListPresets where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? listPresetsResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? listPresetsResponse_presets Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& listPresets_nextToken
          Lens..~ rs
          Lens.^? listPresetsResponse_nextToken Prelude.. Lens._Just

instance Prelude.AWSRequest ListPresets where
  type Rs ListPresets = ListPresetsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListPresetsResponse'
            Prelude.<$> (x Prelude..?> "nextToken")
            Prelude.<*> (x Prelude..?> "presets" Prelude..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListPresets

instance Prelude.NFData ListPresets

instance Prelude.ToHeaders ListPresets where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToPath ListPresets where
  toPath = Prelude.const "/2017-08-29/presets"

instance Prelude.ToQuery ListPresets where
  toQuery ListPresets' {..} =
    Prelude.mconcat
      [ "nextToken" Prelude.=: nextToken,
        "listBy" Prelude.=: listBy,
        "maxResults" Prelude.=: maxResults,
        "category" Prelude.=: category,
        "order" Prelude.=: order
      ]

-- | /See:/ 'newListPresetsResponse' smart constructor.
data ListPresetsResponse = ListPresetsResponse'
  { -- | Use this string to request the next batch of presets.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | List of presets
    presets :: Prelude.Maybe [Preset],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListPresetsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listPresetsResponse_nextToken' - Use this string to request the next batch of presets.
--
-- 'presets', 'listPresetsResponse_presets' - List of presets
--
-- 'httpStatus', 'listPresetsResponse_httpStatus' - The response's http status code.
newListPresetsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListPresetsResponse
newListPresetsResponse pHttpStatus_ =
  ListPresetsResponse'
    { nextToken = Prelude.Nothing,
      presets = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Use this string to request the next batch of presets.
listPresetsResponse_nextToken :: Lens.Lens' ListPresetsResponse (Prelude.Maybe Prelude.Text)
listPresetsResponse_nextToken = Lens.lens (\ListPresetsResponse' {nextToken} -> nextToken) (\s@ListPresetsResponse' {} a -> s {nextToken = a} :: ListPresetsResponse)

-- | List of presets
listPresetsResponse_presets :: Lens.Lens' ListPresetsResponse (Prelude.Maybe [Preset])
listPresetsResponse_presets = Lens.lens (\ListPresetsResponse' {presets} -> presets) (\s@ListPresetsResponse' {} a -> s {presets = a} :: ListPresetsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
listPresetsResponse_httpStatus :: Lens.Lens' ListPresetsResponse Prelude.Int
listPresetsResponse_httpStatus = Lens.lens (\ListPresetsResponse' {httpStatus} -> httpStatus) (\s@ListPresetsResponse' {} a -> s {httpStatus = a} :: ListPresetsResponse)

instance Prelude.NFData ListPresetsResponse
