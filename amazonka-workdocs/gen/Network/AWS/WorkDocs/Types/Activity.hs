{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkDocs.Types.Activity
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.Activity where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.WorkDocs.Types.ActivityType
import Network.AWS.WorkDocs.Types.CommentMetadata
import Network.AWS.WorkDocs.Types.Participants
import Network.AWS.WorkDocs.Types.ResourceMetadata
import Network.AWS.WorkDocs.Types.UserMetadata

-- | Describes the activity information.
--
--
--
-- /See:/ 'activity' smart constructor.
data Activity = Activity'
  { _aResourceMetadata ::
      !(Maybe ResourceMetadata),
    _aOrganizationId :: !(Maybe Text),
    _aOriginalParent :: !(Maybe ResourceMetadata),
    _aParticipants :: !(Maybe Participants),
    _aCommentMetadata :: !(Maybe CommentMetadata),
    _aTimeStamp :: !(Maybe POSIX),
    _aInitiator :: !(Maybe UserMetadata),
    _aType :: !(Maybe ActivityType),
    _aIsIndirectActivity :: !(Maybe Bool)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'Activity' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aResourceMetadata' - The metadata of the resource involved in the user action.
--
-- * 'aOrganizationId' - The ID of the organization.
--
-- * 'aOriginalParent' - The original parent of the resource. This is an optional field and is filled for move activities.
--
-- * 'aParticipants' - The list of users or groups impacted by this action. This is an optional field and is filled for the following sharing activities: DOCUMENT_SHARED, DOCUMENT_SHARED, DOCUMENT_UNSHARED, FOLDER_SHARED, FOLDER_UNSHARED.
--
-- * 'aCommentMetadata' - Metadata of the commenting activity. This is an optional field and is filled for commenting activities.
--
-- * 'aTimeStamp' - The timestamp when the action was performed.
--
-- * 'aInitiator' - The user who performed the action.
--
-- * 'aType' - The activity type.
--
-- * 'aIsIndirectActivity' - Indicates whether an activity is indirect or direct. An indirect activity results from a direct activity performed on a parent resource. For example, sharing a parent folder (the direct activity) shares all of the subfolders and documents within the parent folder (the indirect activity).
activity ::
  Activity
activity =
  Activity'
    { _aResourceMetadata = Nothing,
      _aOrganizationId = Nothing,
      _aOriginalParent = Nothing,
      _aParticipants = Nothing,
      _aCommentMetadata = Nothing,
      _aTimeStamp = Nothing,
      _aInitiator = Nothing,
      _aType = Nothing,
      _aIsIndirectActivity = Nothing
    }

-- | The metadata of the resource involved in the user action.
aResourceMetadata :: Lens' Activity (Maybe ResourceMetadata)
aResourceMetadata = lens _aResourceMetadata (\s a -> s {_aResourceMetadata = a})

-- | The ID of the organization.
aOrganizationId :: Lens' Activity (Maybe Text)
aOrganizationId = lens _aOrganizationId (\s a -> s {_aOrganizationId = a})

-- | The original parent of the resource. This is an optional field and is filled for move activities.
aOriginalParent :: Lens' Activity (Maybe ResourceMetadata)
aOriginalParent = lens _aOriginalParent (\s a -> s {_aOriginalParent = a})

-- | The list of users or groups impacted by this action. This is an optional field and is filled for the following sharing activities: DOCUMENT_SHARED, DOCUMENT_SHARED, DOCUMENT_UNSHARED, FOLDER_SHARED, FOLDER_UNSHARED.
aParticipants :: Lens' Activity (Maybe Participants)
aParticipants = lens _aParticipants (\s a -> s {_aParticipants = a})

-- | Metadata of the commenting activity. This is an optional field and is filled for commenting activities.
aCommentMetadata :: Lens' Activity (Maybe CommentMetadata)
aCommentMetadata = lens _aCommentMetadata (\s a -> s {_aCommentMetadata = a})

-- | The timestamp when the action was performed.
aTimeStamp :: Lens' Activity (Maybe UTCTime)
aTimeStamp = lens _aTimeStamp (\s a -> s {_aTimeStamp = a}) . mapping _Time

-- | The user who performed the action.
aInitiator :: Lens' Activity (Maybe UserMetadata)
aInitiator = lens _aInitiator (\s a -> s {_aInitiator = a})

-- | The activity type.
aType :: Lens' Activity (Maybe ActivityType)
aType = lens _aType (\s a -> s {_aType = a})

-- | Indicates whether an activity is indirect or direct. An indirect activity results from a direct activity performed on a parent resource. For example, sharing a parent folder (the direct activity) shares all of the subfolders and documents within the parent folder (the indirect activity).
aIsIndirectActivity :: Lens' Activity (Maybe Bool)
aIsIndirectActivity = lens _aIsIndirectActivity (\s a -> s {_aIsIndirectActivity = a})

instance FromJSON Activity where
  parseJSON =
    withObject
      "Activity"
      ( \x ->
          Activity'
            <$> (x .:? "ResourceMetadata")
            <*> (x .:? "OrganizationId")
            <*> (x .:? "OriginalParent")
            <*> (x .:? "Participants")
            <*> (x .:? "CommentMetadata")
            <*> (x .:? "TimeStamp")
            <*> (x .:? "Initiator")
            <*> (x .:? "Type")
            <*> (x .:? "IsIndirectActivity")
      )

instance Hashable Activity

instance NFData Activity
