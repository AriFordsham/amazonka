{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.ReportWithRawData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.ReportWithRawData where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains the unmodified data for the report. For more information, see .
--
--
--
-- /See:/ 'reportWithRawData' smart constructor.
data ReportWithRawData = ReportWithRawData'
  { _rwrdReportARN ::
      !(Maybe Text),
    _rwrdData :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ReportWithRawData' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rwrdReportARN' - The ARN of the report.
--
-- * 'rwrdData' - The value of the requested data field from the report.
reportWithRawData ::
  ReportWithRawData
reportWithRawData =
  ReportWithRawData'
    { _rwrdReportARN = Nothing,
      _rwrdData = Nothing
    }

-- | The ARN of the report.
rwrdReportARN :: Lens' ReportWithRawData (Maybe Text)
rwrdReportARN = lens _rwrdReportARN (\s a -> s {_rwrdReportARN = a})

-- | The value of the requested data field from the report.
rwrdData :: Lens' ReportWithRawData (Maybe Text)
rwrdData = lens _rwrdData (\s a -> s {_rwrdData = a})

instance FromJSON ReportWithRawData where
  parseJSON =
    withObject
      "ReportWithRawData"
      ( \x ->
          ReportWithRawData'
            <$> (x .:? "reportArn") <*> (x .:? "data")
      )

instance Hashable ReportWithRawData

instance NFData ReportWithRawData
