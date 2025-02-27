{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.FMS.Types.AppsListData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.FMS.Types.AppsListData where

import Network.AWS.FMS.Types.App
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | An AWS Firewall Manager applications list.
--
-- /See:/ 'newAppsListData' smart constructor.
data AppsListData = AppsListData'
  { -- | The time that the AWS Firewall Manager applications list was last
    -- updated.
    lastUpdateTime :: Prelude.Maybe Prelude.POSIX,
    -- | The ID of the AWS Firewall Manager applications list.
    listId :: Prelude.Maybe Prelude.Text,
    -- | A map of previous version numbers to their corresponding @App@ object
    -- arrays.
    previousAppsList :: Prelude.Maybe (Prelude.HashMap Prelude.Text [App]),
    -- | The time that the AWS Firewall Manager applications list was created.
    createTime :: Prelude.Maybe Prelude.POSIX,
    -- | A unique identifier for each update to the list. When you update the
    -- list, the update token must match the token of the current version of
    -- the application list. You can retrieve the update token by getting the
    -- list.
    listUpdateToken :: Prelude.Maybe Prelude.Text,
    -- | The name of the AWS Firewall Manager applications list.
    listName :: Prelude.Text,
    -- | An array of applications in the AWS Firewall Manager applications list.
    appsList :: [App]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AppsListData' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'lastUpdateTime', 'appsListData_lastUpdateTime' - The time that the AWS Firewall Manager applications list was last
-- updated.
--
-- 'listId', 'appsListData_listId' - The ID of the AWS Firewall Manager applications list.
--
-- 'previousAppsList', 'appsListData_previousAppsList' - A map of previous version numbers to their corresponding @App@ object
-- arrays.
--
-- 'createTime', 'appsListData_createTime' - The time that the AWS Firewall Manager applications list was created.
--
-- 'listUpdateToken', 'appsListData_listUpdateToken' - A unique identifier for each update to the list. When you update the
-- list, the update token must match the token of the current version of
-- the application list. You can retrieve the update token by getting the
-- list.
--
-- 'listName', 'appsListData_listName' - The name of the AWS Firewall Manager applications list.
--
-- 'appsList', 'appsListData_appsList' - An array of applications in the AWS Firewall Manager applications list.
newAppsListData ::
  -- | 'listName'
  Prelude.Text ->
  AppsListData
newAppsListData pListName_ =
  AppsListData'
    { lastUpdateTime = Prelude.Nothing,
      listId = Prelude.Nothing,
      previousAppsList = Prelude.Nothing,
      createTime = Prelude.Nothing,
      listUpdateToken = Prelude.Nothing,
      listName = pListName_,
      appsList = Prelude.mempty
    }

-- | The time that the AWS Firewall Manager applications list was last
-- updated.
appsListData_lastUpdateTime :: Lens.Lens' AppsListData (Prelude.Maybe Prelude.UTCTime)
appsListData_lastUpdateTime = Lens.lens (\AppsListData' {lastUpdateTime} -> lastUpdateTime) (\s@AppsListData' {} a -> s {lastUpdateTime = a} :: AppsListData) Prelude.. Lens.mapping Prelude._Time

-- | The ID of the AWS Firewall Manager applications list.
appsListData_listId :: Lens.Lens' AppsListData (Prelude.Maybe Prelude.Text)
appsListData_listId = Lens.lens (\AppsListData' {listId} -> listId) (\s@AppsListData' {} a -> s {listId = a} :: AppsListData)

-- | A map of previous version numbers to their corresponding @App@ object
-- arrays.
appsListData_previousAppsList :: Lens.Lens' AppsListData (Prelude.Maybe (Prelude.HashMap Prelude.Text [App]))
appsListData_previousAppsList = Lens.lens (\AppsListData' {previousAppsList} -> previousAppsList) (\s@AppsListData' {} a -> s {previousAppsList = a} :: AppsListData) Prelude.. Lens.mapping Prelude._Coerce

-- | The time that the AWS Firewall Manager applications list was created.
appsListData_createTime :: Lens.Lens' AppsListData (Prelude.Maybe Prelude.UTCTime)
appsListData_createTime = Lens.lens (\AppsListData' {createTime} -> createTime) (\s@AppsListData' {} a -> s {createTime = a} :: AppsListData) Prelude.. Lens.mapping Prelude._Time

-- | A unique identifier for each update to the list. When you update the
-- list, the update token must match the token of the current version of
-- the application list. You can retrieve the update token by getting the
-- list.
appsListData_listUpdateToken :: Lens.Lens' AppsListData (Prelude.Maybe Prelude.Text)
appsListData_listUpdateToken = Lens.lens (\AppsListData' {listUpdateToken} -> listUpdateToken) (\s@AppsListData' {} a -> s {listUpdateToken = a} :: AppsListData)

-- | The name of the AWS Firewall Manager applications list.
appsListData_listName :: Lens.Lens' AppsListData Prelude.Text
appsListData_listName = Lens.lens (\AppsListData' {listName} -> listName) (\s@AppsListData' {} a -> s {listName = a} :: AppsListData)

-- | An array of applications in the AWS Firewall Manager applications list.
appsListData_appsList :: Lens.Lens' AppsListData [App]
appsListData_appsList = Lens.lens (\AppsListData' {appsList} -> appsList) (\s@AppsListData' {} a -> s {appsList = a} :: AppsListData) Prelude.. Prelude._Coerce

instance Prelude.FromJSON AppsListData where
  parseJSON =
    Prelude.withObject
      "AppsListData"
      ( \x ->
          AppsListData'
            Prelude.<$> (x Prelude..:? "LastUpdateTime")
            Prelude.<*> (x Prelude..:? "ListId")
            Prelude.<*> ( x Prelude..:? "PreviousAppsList"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> (x Prelude..:? "CreateTime")
            Prelude.<*> (x Prelude..:? "ListUpdateToken")
            Prelude.<*> (x Prelude..: "ListName")
            Prelude.<*> ( x Prelude..:? "AppsList"
                            Prelude..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable AppsListData

instance Prelude.NFData AppsListData

instance Prelude.ToJSON AppsListData where
  toJSON AppsListData' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("LastUpdateTime" Prelude..=)
              Prelude.<$> lastUpdateTime,
            ("ListId" Prelude..=) Prelude.<$> listId,
            ("PreviousAppsList" Prelude..=)
              Prelude.<$> previousAppsList,
            ("CreateTime" Prelude..=) Prelude.<$> createTime,
            ("ListUpdateToken" Prelude..=)
              Prelude.<$> listUpdateToken,
            Prelude.Just ("ListName" Prelude..= listName),
            Prelude.Just ("AppsList" Prelude..= appsList)
          ]
      )
