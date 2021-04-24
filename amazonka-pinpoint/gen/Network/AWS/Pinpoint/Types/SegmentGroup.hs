{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.SegmentGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.SegmentGroup where

import Network.AWS.Lens
import Network.AWS.Pinpoint.Types.SegmentDimensions
import Network.AWS.Pinpoint.Types.SegmentReference
import Network.AWS.Pinpoint.Types.SourceType
import Network.AWS.Pinpoint.Types.Type
import Network.AWS.Prelude

-- | Specifies the base segments and dimensions for a segment, and the relationships between these base segments and dimensions.
--
--
--
-- /See:/ 'segmentGroup' smart constructor.
data SegmentGroup = SegmentGroup'
  { _sgDimensions ::
      !(Maybe [SegmentDimensions]),
    _sgType :: !(Maybe Type),
    _sgSourceSegments ::
      !(Maybe [SegmentReference]),
    _sgSourceType :: !(Maybe SourceType)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'SegmentGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sgDimensions' - An array that defines the dimensions for the segment.
--
-- * 'sgType' - Specifies how to handle multiple dimensions for the segment. For example, if you specify three dimensions for the segment, whether the resulting segment includes endpoints that match all, any, or none of the dimensions.
--
-- * 'sgSourceSegments' - The base segment to build the segment on. A base segment, also referred to as a /source segment/ , defines the initial population of endpoints for a segment. When you add dimensions to a segment, Amazon Pinpoint filters the base segment by using the dimensions that you specify. You can specify more than one dimensional segment or only one imported segment. If you specify an imported segment, the Amazon Pinpoint console displays a segment size estimate that indicates the size of the imported segment without any filters applied to it.
--
-- * 'sgSourceType' - Specifies how to handle multiple base segments for the segment. For example, if you specify three base segments for the segment, whether the resulting segment is based on all, any, or none of the base segments.
segmentGroup ::
  SegmentGroup
segmentGroup =
  SegmentGroup'
    { _sgDimensions = Nothing,
      _sgType = Nothing,
      _sgSourceSegments = Nothing,
      _sgSourceType = Nothing
    }

-- | An array that defines the dimensions for the segment.
sgDimensions :: Lens' SegmentGroup [SegmentDimensions]
sgDimensions = lens _sgDimensions (\s a -> s {_sgDimensions = a}) . _Default . _Coerce

-- | Specifies how to handle multiple dimensions for the segment. For example, if you specify three dimensions for the segment, whether the resulting segment includes endpoints that match all, any, or none of the dimensions.
sgType :: Lens' SegmentGroup (Maybe Type)
sgType = lens _sgType (\s a -> s {_sgType = a})

-- | The base segment to build the segment on. A base segment, also referred to as a /source segment/ , defines the initial population of endpoints for a segment. When you add dimensions to a segment, Amazon Pinpoint filters the base segment by using the dimensions that you specify. You can specify more than one dimensional segment or only one imported segment. If you specify an imported segment, the Amazon Pinpoint console displays a segment size estimate that indicates the size of the imported segment without any filters applied to it.
sgSourceSegments :: Lens' SegmentGroup [SegmentReference]
sgSourceSegments = lens _sgSourceSegments (\s a -> s {_sgSourceSegments = a}) . _Default . _Coerce

-- | Specifies how to handle multiple base segments for the segment. For example, if you specify three base segments for the segment, whether the resulting segment is based on all, any, or none of the base segments.
sgSourceType :: Lens' SegmentGroup (Maybe SourceType)
sgSourceType = lens _sgSourceType (\s a -> s {_sgSourceType = a})

instance FromJSON SegmentGroup where
  parseJSON =
    withObject
      "SegmentGroup"
      ( \x ->
          SegmentGroup'
            <$> (x .:? "Dimensions" .!= mempty)
            <*> (x .:? "Type")
            <*> (x .:? "SourceSegments" .!= mempty)
            <*> (x .:? "SourceType")
      )

instance Hashable SegmentGroup

instance NFData SegmentGroup

instance ToJSON SegmentGroup where
  toJSON SegmentGroup' {..} =
    object
      ( catMaybes
          [ ("Dimensions" .=) <$> _sgDimensions,
            ("Type" .=) <$> _sgType,
            ("SourceSegments" .=) <$> _sgSourceSegments,
            ("SourceType" .=) <$> _sgSourceType
          ]
      )
