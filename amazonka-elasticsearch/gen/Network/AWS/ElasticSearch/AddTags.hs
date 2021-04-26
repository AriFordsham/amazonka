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
-- Module      : Network.AWS.ElasticSearch.AddTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Attaches tags to an existing Elasticsearch domain. Tags are a set of
-- case-sensitive key value pairs. An Elasticsearch domain may have up to
-- 10 tags. See
-- <http://docs.aws.amazon.com/elasticsearch-service/latest/developerguide/es-managedomains.html#es-managedomains-awsresorcetagging Tagging Amazon Elasticsearch Service Domains for more information.>
module Network.AWS.ElasticSearch.AddTags
  ( -- * Creating a Request
    AddTags (..),
    newAddTags,

    -- * Request Lenses
    addTags_aRN,
    addTags_tagList,

    -- * Destructuring the Response
    AddTagsResponse (..),
    newAddTagsResponse,
  )
where

import Network.AWS.ElasticSearch.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Container for the parameters to the @AddTags@ operation. Specify the
-- tags that you want to attach to the Elasticsearch domain.
--
-- /See:/ 'newAddTags' smart constructor.
data AddTags = AddTags'
  { -- | Specify the @ARN@ for which you want to add the tags.
    aRN :: Prelude.Text,
    -- | List of @Tag@ that need to be added for the Elasticsearch domain.
    tagList :: [Tag]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AddTags' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'aRN', 'addTags_aRN' - Specify the @ARN@ for which you want to add the tags.
--
-- 'tagList', 'addTags_tagList' - List of @Tag@ that need to be added for the Elasticsearch domain.
newAddTags ::
  -- | 'aRN'
  Prelude.Text ->
  AddTags
newAddTags pARN_ =
  AddTags' {aRN = pARN_, tagList = Prelude.mempty}

-- | Specify the @ARN@ for which you want to add the tags.
addTags_aRN :: Lens.Lens' AddTags Prelude.Text
addTags_aRN = Lens.lens (\AddTags' {aRN} -> aRN) (\s@AddTags' {} a -> s {aRN = a} :: AddTags)

-- | List of @Tag@ that need to be added for the Elasticsearch domain.
addTags_tagList :: Lens.Lens' AddTags [Tag]
addTags_tagList = Lens.lens (\AddTags' {tagList} -> tagList) (\s@AddTags' {} a -> s {tagList = a} :: AddTags) Prelude.. Prelude._Coerce

instance Prelude.AWSRequest AddTags where
  type Rs AddTags = AddTagsResponse
  request = Request.postJSON defaultService
  response = Response.receiveNull AddTagsResponse'

instance Prelude.Hashable AddTags

instance Prelude.NFData AddTags

instance Prelude.ToHeaders AddTags where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToJSON AddTags where
  toJSON AddTags' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just ("ARN" Prelude..= aRN),
            Prelude.Just ("TagList" Prelude..= tagList)
          ]
      )

instance Prelude.ToPath AddTags where
  toPath = Prelude.const "/2015-01-01/tags"

instance Prelude.ToQuery AddTags where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newAddTagsResponse' smart constructor.
data AddTagsResponse = AddTagsResponse'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AddTagsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newAddTagsResponse ::
  AddTagsResponse
newAddTagsResponse = AddTagsResponse'

instance Prelude.NFData AddTagsResponse
