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
-- Module      : Network.AWS.MachineLearning.AddTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds one or more tags to an object, up to a limit of 10. Each tag
-- consists of a key and an optional value. If you add a tag using a key
-- that is already associated with the ML object, @AddTags@ updates the
-- tag\'s value.
module Network.AWS.MachineLearning.AddTags
  ( -- * Creating a Request
    AddTags (..),
    newAddTags,

    -- * Request Lenses
    addTags_tags,
    addTags_resourceId,
    addTags_resourceType,

    -- * Destructuring the Response
    AddTagsResponse (..),
    newAddTagsResponse,

    -- * Response Lenses
    addTagsResponse_resourceId,
    addTagsResponse_resourceType,
    addTagsResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.MachineLearning.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newAddTags' smart constructor.
data AddTags = AddTags'
  { -- | The key-value pairs to use to create tags. If you specify a key without
    -- specifying a value, Amazon ML creates a tag with the specified key and a
    -- value of null.
    tags :: [Tag],
    -- | The ID of the ML object to tag. For example, @exampleModelId@.
    resourceId :: Prelude.Text,
    -- | The type of the ML object to tag.
    resourceType :: TaggableResourceType
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
-- 'tags', 'addTags_tags' - The key-value pairs to use to create tags. If you specify a key without
-- specifying a value, Amazon ML creates a tag with the specified key and a
-- value of null.
--
-- 'resourceId', 'addTags_resourceId' - The ID of the ML object to tag. For example, @exampleModelId@.
--
-- 'resourceType', 'addTags_resourceType' - The type of the ML object to tag.
newAddTags ::
  -- | 'resourceId'
  Prelude.Text ->
  -- | 'resourceType'
  TaggableResourceType ->
  AddTags
newAddTags pResourceId_ pResourceType_ =
  AddTags'
    { tags = Prelude.mempty,
      resourceId = pResourceId_,
      resourceType = pResourceType_
    }

-- | The key-value pairs to use to create tags. If you specify a key without
-- specifying a value, Amazon ML creates a tag with the specified key and a
-- value of null.
addTags_tags :: Lens.Lens' AddTags [Tag]
addTags_tags = Lens.lens (\AddTags' {tags} -> tags) (\s@AddTags' {} a -> s {tags = a} :: AddTags) Prelude.. Prelude._Coerce

-- | The ID of the ML object to tag. For example, @exampleModelId@.
addTags_resourceId :: Lens.Lens' AddTags Prelude.Text
addTags_resourceId = Lens.lens (\AddTags' {resourceId} -> resourceId) (\s@AddTags' {} a -> s {resourceId = a} :: AddTags)

-- | The type of the ML object to tag.
addTags_resourceType :: Lens.Lens' AddTags TaggableResourceType
addTags_resourceType = Lens.lens (\AddTags' {resourceType} -> resourceType) (\s@AddTags' {} a -> s {resourceType = a} :: AddTags)

instance Prelude.AWSRequest AddTags where
  type Rs AddTags = AddTagsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          AddTagsResponse'
            Prelude.<$> (x Prelude..?> "ResourceId")
            Prelude.<*> (x Prelude..?> "ResourceType")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable AddTags

instance Prelude.NFData AddTags

instance Prelude.ToHeaders AddTags where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ("AmazonML_20141212.AddTags" :: Prelude.ByteString),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON AddTags where
  toJSON AddTags' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just ("Tags" Prelude..= tags),
            Prelude.Just ("ResourceId" Prelude..= resourceId),
            Prelude.Just
              ("ResourceType" Prelude..= resourceType)
          ]
      )

instance Prelude.ToPath AddTags where
  toPath = Prelude.const "/"

instance Prelude.ToQuery AddTags where
  toQuery = Prelude.const Prelude.mempty

-- | Amazon ML returns the following elements.
--
-- /See:/ 'newAddTagsResponse' smart constructor.
data AddTagsResponse = AddTagsResponse'
  { -- | The ID of the ML object that was tagged.
    resourceId :: Prelude.Maybe Prelude.Text,
    -- | The type of the ML object that was tagged.
    resourceType :: Prelude.Maybe TaggableResourceType,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AddTagsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'resourceId', 'addTagsResponse_resourceId' - The ID of the ML object that was tagged.
--
-- 'resourceType', 'addTagsResponse_resourceType' - The type of the ML object that was tagged.
--
-- 'httpStatus', 'addTagsResponse_httpStatus' - The response's http status code.
newAddTagsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  AddTagsResponse
newAddTagsResponse pHttpStatus_ =
  AddTagsResponse'
    { resourceId = Prelude.Nothing,
      resourceType = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The ID of the ML object that was tagged.
addTagsResponse_resourceId :: Lens.Lens' AddTagsResponse (Prelude.Maybe Prelude.Text)
addTagsResponse_resourceId = Lens.lens (\AddTagsResponse' {resourceId} -> resourceId) (\s@AddTagsResponse' {} a -> s {resourceId = a} :: AddTagsResponse)

-- | The type of the ML object that was tagged.
addTagsResponse_resourceType :: Lens.Lens' AddTagsResponse (Prelude.Maybe TaggableResourceType)
addTagsResponse_resourceType = Lens.lens (\AddTagsResponse' {resourceType} -> resourceType) (\s@AddTagsResponse' {} a -> s {resourceType = a} :: AddTagsResponse)

-- | The response's http status code.
addTagsResponse_httpStatus :: Lens.Lens' AddTagsResponse Prelude.Int
addTagsResponse_httpStatus = Lens.lens (\AddTagsResponse' {httpStatus} -> httpStatus) (\s@AddTagsResponse' {} a -> s {httpStatus = a} :: AddTagsResponse)

instance Prelude.NFData AddTagsResponse
