{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.ProjectBadge
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.ProjectBadge where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Information about the build badge for the build project.
--
--
--
-- /See:/ 'projectBadge' smart constructor.
data ProjectBadge = ProjectBadge'
  { _pbBadgeRequestURL ::
      !(Maybe Text),
    _pbBadgeEnabled :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ProjectBadge' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pbBadgeRequestURL' - The publicly-accessible URL through which you can access the build badge for your project.
--
-- * 'pbBadgeEnabled' - Set this to true to generate a publicly accessible URL for your project's build badge.
projectBadge ::
  ProjectBadge
projectBadge =
  ProjectBadge'
    { _pbBadgeRequestURL = Nothing,
      _pbBadgeEnabled = Nothing
    }

-- | The publicly-accessible URL through which you can access the build badge for your project.
pbBadgeRequestURL :: Lens' ProjectBadge (Maybe Text)
pbBadgeRequestURL = lens _pbBadgeRequestURL (\s a -> s {_pbBadgeRequestURL = a})

-- | Set this to true to generate a publicly accessible URL for your project's build badge.
pbBadgeEnabled :: Lens' ProjectBadge (Maybe Bool)
pbBadgeEnabled = lens _pbBadgeEnabled (\s a -> s {_pbBadgeEnabled = a})

instance FromJSON ProjectBadge where
  parseJSON =
    withObject
      "ProjectBadge"
      ( \x ->
          ProjectBadge'
            <$> (x .:? "badgeRequestUrl") <*> (x .:? "badgeEnabled")
      )

instance Hashable ProjectBadge

instance NFData ProjectBadge
