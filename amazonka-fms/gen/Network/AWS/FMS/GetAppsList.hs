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
-- Module      : Network.AWS.FMS.GetAppsList
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the specified AWS Firewall Manager
-- applications list.
module Network.AWS.FMS.GetAppsList
  ( -- * Creating a Request
    GetAppsList (..),
    newGetAppsList,

    -- * Request Lenses
    getAppsList_defaultList,
    getAppsList_listId,

    -- * Destructuring the Response
    GetAppsListResponse (..),
    newGetAppsListResponse,

    -- * Response Lenses
    getAppsListResponse_appsList,
    getAppsListResponse_appsListArn,
    getAppsListResponse_httpStatus,
  )
where

import Network.AWS.FMS.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetAppsList' smart constructor.
data GetAppsList = GetAppsList'
  { -- | Specifies whether the list to retrieve is a default list owned by AWS
    -- Firewall Manager.
    defaultList :: Prelude.Maybe Prelude.Bool,
    -- | The ID of the AWS Firewall Manager applications list that you want the
    -- details for.
    listId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetAppsList' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'defaultList', 'getAppsList_defaultList' - Specifies whether the list to retrieve is a default list owned by AWS
-- Firewall Manager.
--
-- 'listId', 'getAppsList_listId' - The ID of the AWS Firewall Manager applications list that you want the
-- details for.
newGetAppsList ::
  -- | 'listId'
  Prelude.Text ->
  GetAppsList
newGetAppsList pListId_ =
  GetAppsList'
    { defaultList = Prelude.Nothing,
      listId = pListId_
    }

-- | Specifies whether the list to retrieve is a default list owned by AWS
-- Firewall Manager.
getAppsList_defaultList :: Lens.Lens' GetAppsList (Prelude.Maybe Prelude.Bool)
getAppsList_defaultList = Lens.lens (\GetAppsList' {defaultList} -> defaultList) (\s@GetAppsList' {} a -> s {defaultList = a} :: GetAppsList)

-- | The ID of the AWS Firewall Manager applications list that you want the
-- details for.
getAppsList_listId :: Lens.Lens' GetAppsList Prelude.Text
getAppsList_listId = Lens.lens (\GetAppsList' {listId} -> listId) (\s@GetAppsList' {} a -> s {listId = a} :: GetAppsList)

instance Prelude.AWSRequest GetAppsList where
  type Rs GetAppsList = GetAppsListResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetAppsListResponse'
            Prelude.<$> (x Prelude..?> "AppsList")
            Prelude.<*> (x Prelude..?> "AppsListArn")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetAppsList

instance Prelude.NFData GetAppsList

instance Prelude.ToHeaders GetAppsList where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "AWSFMS_20180101.GetAppsList" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON GetAppsList where
  toJSON GetAppsList' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("DefaultList" Prelude..=) Prelude.<$> defaultList,
            Prelude.Just ("ListId" Prelude..= listId)
          ]
      )

instance Prelude.ToPath GetAppsList where
  toPath = Prelude.const "/"

instance Prelude.ToQuery GetAppsList where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetAppsListResponse' smart constructor.
data GetAppsListResponse = GetAppsListResponse'
  { -- | Information about the specified AWS Firewall Manager applications list.
    appsList :: Prelude.Maybe AppsListData,
    -- | The Amazon Resource Name (ARN) of the applications list.
    appsListArn :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetAppsListResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'appsList', 'getAppsListResponse_appsList' - Information about the specified AWS Firewall Manager applications list.
--
-- 'appsListArn', 'getAppsListResponse_appsListArn' - The Amazon Resource Name (ARN) of the applications list.
--
-- 'httpStatus', 'getAppsListResponse_httpStatus' - The response's http status code.
newGetAppsListResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetAppsListResponse
newGetAppsListResponse pHttpStatus_ =
  GetAppsListResponse'
    { appsList = Prelude.Nothing,
      appsListArn = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Information about the specified AWS Firewall Manager applications list.
getAppsListResponse_appsList :: Lens.Lens' GetAppsListResponse (Prelude.Maybe AppsListData)
getAppsListResponse_appsList = Lens.lens (\GetAppsListResponse' {appsList} -> appsList) (\s@GetAppsListResponse' {} a -> s {appsList = a} :: GetAppsListResponse)

-- | The Amazon Resource Name (ARN) of the applications list.
getAppsListResponse_appsListArn :: Lens.Lens' GetAppsListResponse (Prelude.Maybe Prelude.Text)
getAppsListResponse_appsListArn = Lens.lens (\GetAppsListResponse' {appsListArn} -> appsListArn) (\s@GetAppsListResponse' {} a -> s {appsListArn = a} :: GetAppsListResponse)

-- | The response's http status code.
getAppsListResponse_httpStatus :: Lens.Lens' GetAppsListResponse Prelude.Int
getAppsListResponse_httpStatus = Lens.lens (\GetAppsListResponse' {httpStatus} -> httpStatus) (\s@GetAppsListResponse' {} a -> s {httpStatus = a} :: GetAppsListResponse)

instance Prelude.NFData GetAppsListResponse
