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
-- Module      : Network.AWS.GuardDuty.GetFindingsStatistics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists Amazon GuardDuty findings statistics for the specified detector
-- ID.
module Network.AWS.GuardDuty.GetFindingsStatistics
  ( -- * Creating a Request
    GetFindingsStatistics (..),
    newGetFindingsStatistics,

    -- * Request Lenses
    getFindingsStatistics_findingCriteria,
    getFindingsStatistics_detectorId,
    getFindingsStatistics_findingStatisticTypes,

    -- * Destructuring the Response
    GetFindingsStatisticsResponse (..),
    newGetFindingsStatisticsResponse,

    -- * Response Lenses
    getFindingsStatisticsResponse_httpStatus,
    getFindingsStatisticsResponse_findingStatistics,
  )
where

import Network.AWS.GuardDuty.Types
import Network.AWS.GuardDuty.Types.FindingStatistics
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetFindingsStatistics' smart constructor.
data GetFindingsStatistics = GetFindingsStatistics'
  { -- | Represents the criteria that is used for querying findings.
    findingCriteria :: Prelude.Maybe FindingCriteria,
    -- | The ID of the detector that specifies the GuardDuty service whose
    -- findings\' statistics you want to retrieve.
    detectorId :: Prelude.Text,
    -- | The types of finding statistics to retrieve.
    findingStatisticTypes :: [FindingStatisticType]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetFindingsStatistics' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'findingCriteria', 'getFindingsStatistics_findingCriteria' - Represents the criteria that is used for querying findings.
--
-- 'detectorId', 'getFindingsStatistics_detectorId' - The ID of the detector that specifies the GuardDuty service whose
-- findings\' statistics you want to retrieve.
--
-- 'findingStatisticTypes', 'getFindingsStatistics_findingStatisticTypes' - The types of finding statistics to retrieve.
newGetFindingsStatistics ::
  -- | 'detectorId'
  Prelude.Text ->
  GetFindingsStatistics
newGetFindingsStatistics pDetectorId_ =
  GetFindingsStatistics'
    { findingCriteria =
        Prelude.Nothing,
      detectorId = pDetectorId_,
      findingStatisticTypes = Prelude.mempty
    }

-- | Represents the criteria that is used for querying findings.
getFindingsStatistics_findingCriteria :: Lens.Lens' GetFindingsStatistics (Prelude.Maybe FindingCriteria)
getFindingsStatistics_findingCriteria = Lens.lens (\GetFindingsStatistics' {findingCriteria} -> findingCriteria) (\s@GetFindingsStatistics' {} a -> s {findingCriteria = a} :: GetFindingsStatistics)

-- | The ID of the detector that specifies the GuardDuty service whose
-- findings\' statistics you want to retrieve.
getFindingsStatistics_detectorId :: Lens.Lens' GetFindingsStatistics Prelude.Text
getFindingsStatistics_detectorId = Lens.lens (\GetFindingsStatistics' {detectorId} -> detectorId) (\s@GetFindingsStatistics' {} a -> s {detectorId = a} :: GetFindingsStatistics)

-- | The types of finding statistics to retrieve.
getFindingsStatistics_findingStatisticTypes :: Lens.Lens' GetFindingsStatistics [FindingStatisticType]
getFindingsStatistics_findingStatisticTypes = Lens.lens (\GetFindingsStatistics' {findingStatisticTypes} -> findingStatisticTypes) (\s@GetFindingsStatistics' {} a -> s {findingStatisticTypes = a} :: GetFindingsStatistics) Prelude.. Prelude._Coerce

instance Prelude.AWSRequest GetFindingsStatistics where
  type
    Rs GetFindingsStatistics =
      GetFindingsStatisticsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetFindingsStatisticsResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Prelude..:> "findingStatistics")
      )

instance Prelude.Hashable GetFindingsStatistics

instance Prelude.NFData GetFindingsStatistics

instance Prelude.ToHeaders GetFindingsStatistics where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON GetFindingsStatistics where
  toJSON GetFindingsStatistics' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("findingCriteria" Prelude..=)
              Prelude.<$> findingCriteria,
            Prelude.Just
              ( "findingStatisticTypes"
                  Prelude..= findingStatisticTypes
              )
          ]
      )

instance Prelude.ToPath GetFindingsStatistics where
  toPath GetFindingsStatistics' {..} =
    Prelude.mconcat
      [ "/detector/",
        Prelude.toBS detectorId,
        "/findings/statistics"
      ]

instance Prelude.ToQuery GetFindingsStatistics where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetFindingsStatisticsResponse' smart constructor.
data GetFindingsStatisticsResponse = GetFindingsStatisticsResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The finding statistics object.
    findingStatistics :: FindingStatistics
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetFindingsStatisticsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getFindingsStatisticsResponse_httpStatus' - The response's http status code.
--
-- 'findingStatistics', 'getFindingsStatisticsResponse_findingStatistics' - The finding statistics object.
newGetFindingsStatisticsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'findingStatistics'
  FindingStatistics ->
  GetFindingsStatisticsResponse
newGetFindingsStatisticsResponse
  pHttpStatus_
  pFindingStatistics_ =
    GetFindingsStatisticsResponse'
      { httpStatus =
          pHttpStatus_,
        findingStatistics = pFindingStatistics_
      }

-- | The response's http status code.
getFindingsStatisticsResponse_httpStatus :: Lens.Lens' GetFindingsStatisticsResponse Prelude.Int
getFindingsStatisticsResponse_httpStatus = Lens.lens (\GetFindingsStatisticsResponse' {httpStatus} -> httpStatus) (\s@GetFindingsStatisticsResponse' {} a -> s {httpStatus = a} :: GetFindingsStatisticsResponse)

-- | The finding statistics object.
getFindingsStatisticsResponse_findingStatistics :: Lens.Lens' GetFindingsStatisticsResponse FindingStatistics
getFindingsStatisticsResponse_findingStatistics = Lens.lens (\GetFindingsStatisticsResponse' {findingStatistics} -> findingStatistics) (\s@GetFindingsStatisticsResponse' {} a -> s {findingStatistics = a} :: GetFindingsStatisticsResponse)

instance Prelude.NFData GetFindingsStatisticsResponse
