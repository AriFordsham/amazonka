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
-- Module      : Network.AWS.IAM.GetOrganizationsAccessReport
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the service last accessed data report for AWS Organizations
-- that was previously generated using the
-- @ GenerateOrganizationsAccessReport @ operation. This operation
-- retrieves the status of your report job and the report contents.
--
-- Depending on the parameters that you passed when you generated the
-- report, the data returned could include different information. For
-- details, see GenerateOrganizationsAccessReport.
--
-- To call this operation, you must be signed in to the management account
-- in your organization. SCPs must be enabled for your organization root.
-- You must have permissions to perform this operation. For more
-- information, see
-- <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_access-advisor.html Refining permissions using service last accessed data>
-- in the /IAM User Guide/.
--
-- For each service that principals in an account (root users, IAM users,
-- or IAM roles) could access using SCPs, the operation returns details
-- about the most recent access attempt. If there was no attempt, the
-- service is listed without details about the most recent attempt to
-- access the service. If the operation fails, it returns the reason that
-- it failed.
--
-- By default, the list is sorted by service namespace.
module Network.AWS.IAM.GetOrganizationsAccessReport
  ( -- * Creating a Request
    GetOrganizationsAccessReport (..),
    newGetOrganizationsAccessReport,

    -- * Request Lenses
    getOrganizationsAccessReport_sortKey,
    getOrganizationsAccessReport_maxItems,
    getOrganizationsAccessReport_marker,
    getOrganizationsAccessReport_jobId,

    -- * Destructuring the Response
    GetOrganizationsAccessReportResponse (..),
    newGetOrganizationsAccessReportResponse,

    -- * Response Lenses
    getOrganizationsAccessReportResponse_accessDetails,
    getOrganizationsAccessReportResponse_isTruncated,
    getOrganizationsAccessReportResponse_jobCompletionDate,
    getOrganizationsAccessReportResponse_numberOfServicesNotAccessed,
    getOrganizationsAccessReportResponse_numberOfServicesAccessible,
    getOrganizationsAccessReportResponse_marker,
    getOrganizationsAccessReportResponse_errorDetails,
    getOrganizationsAccessReportResponse_httpStatus,
    getOrganizationsAccessReportResponse_jobStatus,
    getOrganizationsAccessReportResponse_jobCreationDate,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.IAM.Types.AccessDetail
import Network.AWS.IAM.Types.ErrorDetails
import Network.AWS.IAM.Types.JobStatusType
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetOrganizationsAccessReport' smart constructor.
data GetOrganizationsAccessReport = GetOrganizationsAccessReport'
  { -- | The key that is used to sort the results. If you choose the namespace
    -- key, the results are returned in alphabetical order. If you choose the
    -- time key, the results are sorted numerically by the date and time.
    sortKey :: Prelude.Maybe SortKeyType,
    -- | Use this only when paginating results to indicate the maximum number of
    -- items you want in the response. If additional items exist beyond the
    -- maximum you specify, the @IsTruncated@ response element is @true@.
    --
    -- If you do not include this parameter, the number of items defaults to
    -- 100. Note that IAM might return fewer results, even when there are more
    -- results available. In that case, the @IsTruncated@ response element
    -- returns @true@, and @Marker@ contains a value to include in the
    -- subsequent call that tells the service where to continue from.
    maxItems :: Prelude.Maybe Prelude.Nat,
    -- | Use this parameter only when paginating results and only after you
    -- receive a response indicating that the results are truncated. Set it to
    -- the value of the @Marker@ element in the response that you received to
    -- indicate where the next call should start.
    marker :: Prelude.Maybe Prelude.Text,
    -- | The identifier of the request generated by the
    -- GenerateOrganizationsAccessReport operation.
    jobId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetOrganizationsAccessReport' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'sortKey', 'getOrganizationsAccessReport_sortKey' - The key that is used to sort the results. If you choose the namespace
-- key, the results are returned in alphabetical order. If you choose the
-- time key, the results are sorted numerically by the date and time.
--
-- 'maxItems', 'getOrganizationsAccessReport_maxItems' - Use this only when paginating results to indicate the maximum number of
-- items you want in the response. If additional items exist beyond the
-- maximum you specify, the @IsTruncated@ response element is @true@.
--
-- If you do not include this parameter, the number of items defaults to
-- 100. Note that IAM might return fewer results, even when there are more
-- results available. In that case, the @IsTruncated@ response element
-- returns @true@, and @Marker@ contains a value to include in the
-- subsequent call that tells the service where to continue from.
--
-- 'marker', 'getOrganizationsAccessReport_marker' - Use this parameter only when paginating results and only after you
-- receive a response indicating that the results are truncated. Set it to
-- the value of the @Marker@ element in the response that you received to
-- indicate where the next call should start.
--
-- 'jobId', 'getOrganizationsAccessReport_jobId' - The identifier of the request generated by the
-- GenerateOrganizationsAccessReport operation.
newGetOrganizationsAccessReport ::
  -- | 'jobId'
  Prelude.Text ->
  GetOrganizationsAccessReport
newGetOrganizationsAccessReport pJobId_ =
  GetOrganizationsAccessReport'
    { sortKey =
        Prelude.Nothing,
      maxItems = Prelude.Nothing,
      marker = Prelude.Nothing,
      jobId = pJobId_
    }

-- | The key that is used to sort the results. If you choose the namespace
-- key, the results are returned in alphabetical order. If you choose the
-- time key, the results are sorted numerically by the date and time.
getOrganizationsAccessReport_sortKey :: Lens.Lens' GetOrganizationsAccessReport (Prelude.Maybe SortKeyType)
getOrganizationsAccessReport_sortKey = Lens.lens (\GetOrganizationsAccessReport' {sortKey} -> sortKey) (\s@GetOrganizationsAccessReport' {} a -> s {sortKey = a} :: GetOrganizationsAccessReport)

-- | Use this only when paginating results to indicate the maximum number of
-- items you want in the response. If additional items exist beyond the
-- maximum you specify, the @IsTruncated@ response element is @true@.
--
-- If you do not include this parameter, the number of items defaults to
-- 100. Note that IAM might return fewer results, even when there are more
-- results available. In that case, the @IsTruncated@ response element
-- returns @true@, and @Marker@ contains a value to include in the
-- subsequent call that tells the service where to continue from.
getOrganizationsAccessReport_maxItems :: Lens.Lens' GetOrganizationsAccessReport (Prelude.Maybe Prelude.Natural)
getOrganizationsAccessReport_maxItems = Lens.lens (\GetOrganizationsAccessReport' {maxItems} -> maxItems) (\s@GetOrganizationsAccessReport' {} a -> s {maxItems = a} :: GetOrganizationsAccessReport) Prelude.. Lens.mapping Prelude._Nat

-- | Use this parameter only when paginating results and only after you
-- receive a response indicating that the results are truncated. Set it to
-- the value of the @Marker@ element in the response that you received to
-- indicate where the next call should start.
getOrganizationsAccessReport_marker :: Lens.Lens' GetOrganizationsAccessReport (Prelude.Maybe Prelude.Text)
getOrganizationsAccessReport_marker = Lens.lens (\GetOrganizationsAccessReport' {marker} -> marker) (\s@GetOrganizationsAccessReport' {} a -> s {marker = a} :: GetOrganizationsAccessReport)

-- | The identifier of the request generated by the
-- GenerateOrganizationsAccessReport operation.
getOrganizationsAccessReport_jobId :: Lens.Lens' GetOrganizationsAccessReport Prelude.Text
getOrganizationsAccessReport_jobId = Lens.lens (\GetOrganizationsAccessReport' {jobId} -> jobId) (\s@GetOrganizationsAccessReport' {} a -> s {jobId = a} :: GetOrganizationsAccessReport)

instance
  Prelude.AWSRequest
    GetOrganizationsAccessReport
  where
  type
    Rs GetOrganizationsAccessReport =
      GetOrganizationsAccessReportResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "GetOrganizationsAccessReportResult"
      ( \s h x ->
          GetOrganizationsAccessReportResponse'
            Prelude.<$> ( x Prelude..@? "AccessDetails"
                            Prelude..!@ Prelude.mempty
                            Prelude.>>= Prelude.may (Prelude.parseXMLList "member")
                        )
            Prelude.<*> (x Prelude..@? "IsTruncated")
            Prelude.<*> (x Prelude..@? "JobCompletionDate")
            Prelude.<*> (x Prelude..@? "NumberOfServicesNotAccessed")
            Prelude.<*> (x Prelude..@? "NumberOfServicesAccessible")
            Prelude.<*> (x Prelude..@? "Marker")
            Prelude.<*> (x Prelude..@? "ErrorDetails")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Prelude..@ "JobStatus")
            Prelude.<*> (x Prelude..@ "JobCreationDate")
      )

instance
  Prelude.Hashable
    GetOrganizationsAccessReport

instance Prelude.NFData GetOrganizationsAccessReport

instance
  Prelude.ToHeaders
    GetOrganizationsAccessReport
  where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath GetOrganizationsAccessReport where
  toPath = Prelude.const "/"

instance Prelude.ToQuery GetOrganizationsAccessReport where
  toQuery GetOrganizationsAccessReport' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ( "GetOrganizationsAccessReport" ::
                         Prelude.ByteString
                     ),
        "Version"
          Prelude.=: ("2010-05-08" :: Prelude.ByteString),
        "SortKey" Prelude.=: sortKey,
        "MaxItems" Prelude.=: maxItems,
        "Marker" Prelude.=: marker,
        "JobId" Prelude.=: jobId
      ]

-- | /See:/ 'newGetOrganizationsAccessReportResponse' smart constructor.
data GetOrganizationsAccessReportResponse = GetOrganizationsAccessReportResponse'
  { -- | An object that contains details about the most recent attempt to access
    -- the service.
    accessDetails :: Prelude.Maybe [AccessDetail],
    -- | A flag that indicates whether there are more items to return. If your
    -- results were truncated, you can make a subsequent pagination request
    -- using the @Marker@ request parameter to retrieve more items. Note that
    -- IAM might return fewer than the @MaxItems@ number of results even when
    -- there are more results available. We recommend that you check
    -- @IsTruncated@ after every call to ensure that you receive all your
    -- results.
    isTruncated :: Prelude.Maybe Prelude.Bool,
    -- | The date and time,
    -- in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format>, when the
    -- generated report job was completed or failed.
    --
    -- This field is null if the job is still in progress, as indicated by a
    -- job status value of @IN_PROGRESS@.
    jobCompletionDate :: Prelude.Maybe Prelude.ISO8601,
    -- | The number of services that account principals are allowed but did not
    -- attempt to access.
    numberOfServicesNotAccessed :: Prelude.Maybe Prelude.Int,
    -- | The number of services that the applicable SCPs allow account principals
    -- to access.
    numberOfServicesAccessible :: Prelude.Maybe Prelude.Int,
    -- | When @IsTruncated@ is @true@, this element is present and contains the
    -- value to use for the @Marker@ parameter in a subsequent pagination
    -- request.
    marker :: Prelude.Maybe Prelude.Text,
    errorDetails :: Prelude.Maybe ErrorDetails,
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The status of the job.
    jobStatus :: JobStatusType,
    -- | The date and time,
    -- in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format>, when the
    -- report job was created.
    jobCreationDate :: Prelude.ISO8601
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetOrganizationsAccessReportResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'accessDetails', 'getOrganizationsAccessReportResponse_accessDetails' - An object that contains details about the most recent attempt to access
-- the service.
--
-- 'isTruncated', 'getOrganizationsAccessReportResponse_isTruncated' - A flag that indicates whether there are more items to return. If your
-- results were truncated, you can make a subsequent pagination request
-- using the @Marker@ request parameter to retrieve more items. Note that
-- IAM might return fewer than the @MaxItems@ number of results even when
-- there are more results available. We recommend that you check
-- @IsTruncated@ after every call to ensure that you receive all your
-- results.
--
-- 'jobCompletionDate', 'getOrganizationsAccessReportResponse_jobCompletionDate' - The date and time,
-- in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format>, when the
-- generated report job was completed or failed.
--
-- This field is null if the job is still in progress, as indicated by a
-- job status value of @IN_PROGRESS@.
--
-- 'numberOfServicesNotAccessed', 'getOrganizationsAccessReportResponse_numberOfServicesNotAccessed' - The number of services that account principals are allowed but did not
-- attempt to access.
--
-- 'numberOfServicesAccessible', 'getOrganizationsAccessReportResponse_numberOfServicesAccessible' - The number of services that the applicable SCPs allow account principals
-- to access.
--
-- 'marker', 'getOrganizationsAccessReportResponse_marker' - When @IsTruncated@ is @true@, this element is present and contains the
-- value to use for the @Marker@ parameter in a subsequent pagination
-- request.
--
-- 'errorDetails', 'getOrganizationsAccessReportResponse_errorDetails' - Undocumented member.
--
-- 'httpStatus', 'getOrganizationsAccessReportResponse_httpStatus' - The response's http status code.
--
-- 'jobStatus', 'getOrganizationsAccessReportResponse_jobStatus' - The status of the job.
--
-- 'jobCreationDate', 'getOrganizationsAccessReportResponse_jobCreationDate' - The date and time,
-- in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format>, when the
-- report job was created.
newGetOrganizationsAccessReportResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'jobStatus'
  JobStatusType ->
  -- | 'jobCreationDate'
  Prelude.UTCTime ->
  GetOrganizationsAccessReportResponse
newGetOrganizationsAccessReportResponse
  pHttpStatus_
  pJobStatus_
  pJobCreationDate_ =
    GetOrganizationsAccessReportResponse'
      { accessDetails =
          Prelude.Nothing,
        isTruncated = Prelude.Nothing,
        jobCompletionDate = Prelude.Nothing,
        numberOfServicesNotAccessed =
          Prelude.Nothing,
        numberOfServicesAccessible =
          Prelude.Nothing,
        marker = Prelude.Nothing,
        errorDetails = Prelude.Nothing,
        httpStatus = pHttpStatus_,
        jobStatus = pJobStatus_,
        jobCreationDate =
          Prelude._Time
            Lens.# pJobCreationDate_
      }

-- | An object that contains details about the most recent attempt to access
-- the service.
getOrganizationsAccessReportResponse_accessDetails :: Lens.Lens' GetOrganizationsAccessReportResponse (Prelude.Maybe [AccessDetail])
getOrganizationsAccessReportResponse_accessDetails = Lens.lens (\GetOrganizationsAccessReportResponse' {accessDetails} -> accessDetails) (\s@GetOrganizationsAccessReportResponse' {} a -> s {accessDetails = a} :: GetOrganizationsAccessReportResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | A flag that indicates whether there are more items to return. If your
-- results were truncated, you can make a subsequent pagination request
-- using the @Marker@ request parameter to retrieve more items. Note that
-- IAM might return fewer than the @MaxItems@ number of results even when
-- there are more results available. We recommend that you check
-- @IsTruncated@ after every call to ensure that you receive all your
-- results.
getOrganizationsAccessReportResponse_isTruncated :: Lens.Lens' GetOrganizationsAccessReportResponse (Prelude.Maybe Prelude.Bool)
getOrganizationsAccessReportResponse_isTruncated = Lens.lens (\GetOrganizationsAccessReportResponse' {isTruncated} -> isTruncated) (\s@GetOrganizationsAccessReportResponse' {} a -> s {isTruncated = a} :: GetOrganizationsAccessReportResponse)

-- | The date and time,
-- in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format>, when the
-- generated report job was completed or failed.
--
-- This field is null if the job is still in progress, as indicated by a
-- job status value of @IN_PROGRESS@.
getOrganizationsAccessReportResponse_jobCompletionDate :: Lens.Lens' GetOrganizationsAccessReportResponse (Prelude.Maybe Prelude.UTCTime)
getOrganizationsAccessReportResponse_jobCompletionDate = Lens.lens (\GetOrganizationsAccessReportResponse' {jobCompletionDate} -> jobCompletionDate) (\s@GetOrganizationsAccessReportResponse' {} a -> s {jobCompletionDate = a} :: GetOrganizationsAccessReportResponse) Prelude.. Lens.mapping Prelude._Time

-- | The number of services that account principals are allowed but did not
-- attempt to access.
getOrganizationsAccessReportResponse_numberOfServicesNotAccessed :: Lens.Lens' GetOrganizationsAccessReportResponse (Prelude.Maybe Prelude.Int)
getOrganizationsAccessReportResponse_numberOfServicesNotAccessed = Lens.lens (\GetOrganizationsAccessReportResponse' {numberOfServicesNotAccessed} -> numberOfServicesNotAccessed) (\s@GetOrganizationsAccessReportResponse' {} a -> s {numberOfServicesNotAccessed = a} :: GetOrganizationsAccessReportResponse)

-- | The number of services that the applicable SCPs allow account principals
-- to access.
getOrganizationsAccessReportResponse_numberOfServicesAccessible :: Lens.Lens' GetOrganizationsAccessReportResponse (Prelude.Maybe Prelude.Int)
getOrganizationsAccessReportResponse_numberOfServicesAccessible = Lens.lens (\GetOrganizationsAccessReportResponse' {numberOfServicesAccessible} -> numberOfServicesAccessible) (\s@GetOrganizationsAccessReportResponse' {} a -> s {numberOfServicesAccessible = a} :: GetOrganizationsAccessReportResponse)

-- | When @IsTruncated@ is @true@, this element is present and contains the
-- value to use for the @Marker@ parameter in a subsequent pagination
-- request.
getOrganizationsAccessReportResponse_marker :: Lens.Lens' GetOrganizationsAccessReportResponse (Prelude.Maybe Prelude.Text)
getOrganizationsAccessReportResponse_marker = Lens.lens (\GetOrganizationsAccessReportResponse' {marker} -> marker) (\s@GetOrganizationsAccessReportResponse' {} a -> s {marker = a} :: GetOrganizationsAccessReportResponse)

-- | Undocumented member.
getOrganizationsAccessReportResponse_errorDetails :: Lens.Lens' GetOrganizationsAccessReportResponse (Prelude.Maybe ErrorDetails)
getOrganizationsAccessReportResponse_errorDetails = Lens.lens (\GetOrganizationsAccessReportResponse' {errorDetails} -> errorDetails) (\s@GetOrganizationsAccessReportResponse' {} a -> s {errorDetails = a} :: GetOrganizationsAccessReportResponse)

-- | The response's http status code.
getOrganizationsAccessReportResponse_httpStatus :: Lens.Lens' GetOrganizationsAccessReportResponse Prelude.Int
getOrganizationsAccessReportResponse_httpStatus = Lens.lens (\GetOrganizationsAccessReportResponse' {httpStatus} -> httpStatus) (\s@GetOrganizationsAccessReportResponse' {} a -> s {httpStatus = a} :: GetOrganizationsAccessReportResponse)

-- | The status of the job.
getOrganizationsAccessReportResponse_jobStatus :: Lens.Lens' GetOrganizationsAccessReportResponse JobStatusType
getOrganizationsAccessReportResponse_jobStatus = Lens.lens (\GetOrganizationsAccessReportResponse' {jobStatus} -> jobStatus) (\s@GetOrganizationsAccessReportResponse' {} a -> s {jobStatus = a} :: GetOrganizationsAccessReportResponse)

-- | The date and time,
-- in <http://www.iso.org/iso/iso8601 ISO 8601 date-time format>, when the
-- report job was created.
getOrganizationsAccessReportResponse_jobCreationDate :: Lens.Lens' GetOrganizationsAccessReportResponse Prelude.UTCTime
getOrganizationsAccessReportResponse_jobCreationDate = Lens.lens (\GetOrganizationsAccessReportResponse' {jobCreationDate} -> jobCreationDate) (\s@GetOrganizationsAccessReportResponse' {} a -> s {jobCreationDate = a} :: GetOrganizationsAccessReportResponse) Prelude.. Prelude._Time

instance
  Prelude.NFData
    GetOrganizationsAccessReportResponse
