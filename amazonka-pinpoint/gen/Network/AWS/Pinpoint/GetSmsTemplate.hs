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
-- Module      : Network.AWS.Pinpoint.GetSmsTemplate
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the content and settings of a message template for messages
-- that are sent through the SMS channel.
module Network.AWS.Pinpoint.GetSmsTemplate
  ( -- * Creating a Request
    GetSmsTemplate (..),
    newGetSmsTemplate,

    -- * Request Lenses
    getSmsTemplate_version,
    getSmsTemplate_templateName,

    -- * Destructuring the Response
    GetSmsTemplateResponse (..),
    newGetSmsTemplateResponse,

    -- * Response Lenses
    getSmsTemplateResponse_httpStatus,
    getSmsTemplateResponse_sMSTemplateResponse,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.Pinpoint.Types
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetSmsTemplate' smart constructor.
data GetSmsTemplate = GetSmsTemplate'
  { -- | The unique identifier for the version of the message template to update,
    -- retrieve information about, or delete. To retrieve identifiers and other
    -- information for all the versions of a template, use the Template
    -- Versions resource.
    --
    -- If specified, this value must match the identifier for an existing
    -- template version. If specified for an update operation, this value must
    -- match the identifier for the latest existing version of the template.
    -- This restriction helps ensure that race conditions don\'t occur.
    --
    -- If you don\'t specify a value for this parameter, Amazon Pinpoint does
    -- the following:
    --
    -- -   For a get operation, retrieves information about the active version
    --     of the template.
    --
    -- -   For an update operation, saves the updates to (overwrites) the
    --     latest existing version of the template, if the create-new-version
    --     parameter isn\'t used or is set to false.
    --
    -- -   For a delete operation, deletes the template, including all versions
    --     of the template.
    version :: Prelude.Maybe Prelude.Text,
    -- | The name of the message template. A template name must start with an
    -- alphanumeric character and can contain a maximum of 128 characters. The
    -- characters can be alphanumeric characters, underscores (_), or hyphens
    -- (-). Template names are case sensitive.
    templateName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetSmsTemplate' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'version', 'getSmsTemplate_version' - The unique identifier for the version of the message template to update,
-- retrieve information about, or delete. To retrieve identifiers and other
-- information for all the versions of a template, use the Template
-- Versions resource.
--
-- If specified, this value must match the identifier for an existing
-- template version. If specified for an update operation, this value must
-- match the identifier for the latest existing version of the template.
-- This restriction helps ensure that race conditions don\'t occur.
--
-- If you don\'t specify a value for this parameter, Amazon Pinpoint does
-- the following:
--
-- -   For a get operation, retrieves information about the active version
--     of the template.
--
-- -   For an update operation, saves the updates to (overwrites) the
--     latest existing version of the template, if the create-new-version
--     parameter isn\'t used or is set to false.
--
-- -   For a delete operation, deletes the template, including all versions
--     of the template.
--
-- 'templateName', 'getSmsTemplate_templateName' - The name of the message template. A template name must start with an
-- alphanumeric character and can contain a maximum of 128 characters. The
-- characters can be alphanumeric characters, underscores (_), or hyphens
-- (-). Template names are case sensitive.
newGetSmsTemplate ::
  -- | 'templateName'
  Prelude.Text ->
  GetSmsTemplate
newGetSmsTemplate pTemplateName_ =
  GetSmsTemplate'
    { version = Prelude.Nothing,
      templateName = pTemplateName_
    }

-- | The unique identifier for the version of the message template to update,
-- retrieve information about, or delete. To retrieve identifiers and other
-- information for all the versions of a template, use the Template
-- Versions resource.
--
-- If specified, this value must match the identifier for an existing
-- template version. If specified for an update operation, this value must
-- match the identifier for the latest existing version of the template.
-- This restriction helps ensure that race conditions don\'t occur.
--
-- If you don\'t specify a value for this parameter, Amazon Pinpoint does
-- the following:
--
-- -   For a get operation, retrieves information about the active version
--     of the template.
--
-- -   For an update operation, saves the updates to (overwrites) the
--     latest existing version of the template, if the create-new-version
--     parameter isn\'t used or is set to false.
--
-- -   For a delete operation, deletes the template, including all versions
--     of the template.
getSmsTemplate_version :: Lens.Lens' GetSmsTemplate (Prelude.Maybe Prelude.Text)
getSmsTemplate_version = Lens.lens (\GetSmsTemplate' {version} -> version) (\s@GetSmsTemplate' {} a -> s {version = a} :: GetSmsTemplate)

-- | The name of the message template. A template name must start with an
-- alphanumeric character and can contain a maximum of 128 characters. The
-- characters can be alphanumeric characters, underscores (_), or hyphens
-- (-). Template names are case sensitive.
getSmsTemplate_templateName :: Lens.Lens' GetSmsTemplate Prelude.Text
getSmsTemplate_templateName = Lens.lens (\GetSmsTemplate' {templateName} -> templateName) (\s@GetSmsTemplate' {} a -> s {templateName = a} :: GetSmsTemplate)

instance Prelude.AWSRequest GetSmsTemplate where
  type Rs GetSmsTemplate = GetSmsTemplateResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetSmsTemplateResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (Prelude.eitherParseJSON x)
      )

instance Prelude.Hashable GetSmsTemplate

instance Prelude.NFData GetSmsTemplate

instance Prelude.ToHeaders GetSmsTemplate where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToPath GetSmsTemplate where
  toPath GetSmsTemplate' {..} =
    Prelude.mconcat
      ["/v1/templates/", Prelude.toBS templateName, "/sms"]

instance Prelude.ToQuery GetSmsTemplate where
  toQuery GetSmsTemplate' {..} =
    Prelude.mconcat ["version" Prelude.=: version]

-- | /See:/ 'newGetSmsTemplateResponse' smart constructor.
data GetSmsTemplateResponse = GetSmsTemplateResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    sMSTemplateResponse :: SMSTemplateResponse
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetSmsTemplateResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getSmsTemplateResponse_httpStatus' - The response's http status code.
--
-- 'sMSTemplateResponse', 'getSmsTemplateResponse_sMSTemplateResponse' - Undocumented member.
newGetSmsTemplateResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'sMSTemplateResponse'
  SMSTemplateResponse ->
  GetSmsTemplateResponse
newGetSmsTemplateResponse
  pHttpStatus_
  pSMSTemplateResponse_ =
    GetSmsTemplateResponse'
      { httpStatus = pHttpStatus_,
        sMSTemplateResponse = pSMSTemplateResponse_
      }

-- | The response's http status code.
getSmsTemplateResponse_httpStatus :: Lens.Lens' GetSmsTemplateResponse Prelude.Int
getSmsTemplateResponse_httpStatus = Lens.lens (\GetSmsTemplateResponse' {httpStatus} -> httpStatus) (\s@GetSmsTemplateResponse' {} a -> s {httpStatus = a} :: GetSmsTemplateResponse)

-- | Undocumented member.
getSmsTemplateResponse_sMSTemplateResponse :: Lens.Lens' GetSmsTemplateResponse SMSTemplateResponse
getSmsTemplateResponse_sMSTemplateResponse = Lens.lens (\GetSmsTemplateResponse' {sMSTemplateResponse} -> sMSTemplateResponse) (\s@GetSmsTemplateResponse' {} a -> s {sMSTemplateResponse = a} :: GetSmsTemplateResponse)

instance Prelude.NFData GetSmsTemplateResponse
