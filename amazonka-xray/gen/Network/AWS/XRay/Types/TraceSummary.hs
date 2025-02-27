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
-- Module      : Network.AWS.XRay.Types.TraceSummary
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.TraceSummary where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.XRay.Types.AvailabilityZoneDetail
import Network.AWS.XRay.Types.ErrorRootCause
import Network.AWS.XRay.Types.FaultRootCause
import Network.AWS.XRay.Types.Http
import Network.AWS.XRay.Types.InstanceIdDetail
import Network.AWS.XRay.Types.ResourceARNDetail
import Network.AWS.XRay.Types.ResponseTimeRootCause
import Network.AWS.XRay.Types.ServiceId
import Network.AWS.XRay.Types.TraceUser
import Network.AWS.XRay.Types.ValueWithServiceIds

-- | Metadata generated from the segment documents in a trace.
--
-- /See:/ 'newTraceSummary' smart constructor.
data TraceSummary = TraceSummary'
  { -- | A list of EC2 instance IDs for any instance corresponding to the trace
    -- segments.
    instanceIds :: Prelude.Maybe [InstanceIdDetail],
    -- | A collection of ErrorRootCause structures corresponding to the trace
    -- segments.
    errorRootCauses :: Prelude.Maybe [ErrorRootCause],
    -- | A list of Availability Zones for any zone corresponding to the trace
    -- segments.
    availabilityZones :: Prelude.Maybe [AvailabilityZoneDetail],
    -- | The length of time in seconds between the start and end times of the
    -- root segment. If the service performs work asynchronously, the response
    -- time measures the time before the response is sent to the user, while
    -- the duration measures the amount of time before the last traced activity
    -- completes.
    responseTime :: Prelude.Maybe Prelude.Double,
    -- | The length of time in seconds between the start time of the root segment
    -- and the end time of the last segment that completed.
    duration :: Prelude.Maybe Prelude.Double,
    -- | The matched time stamp of a defined event.
    matchedEventTime :: Prelude.Maybe Prelude.POSIX,
    -- | Service IDs from the trace\'s segment documents.
    serviceIds :: Prelude.Maybe [ServiceId],
    -- | The root segment document has a 500 series error.
    hasFault :: Prelude.Maybe Prelude.Bool,
    -- | The root of a trace.
    entryPoint :: Prelude.Maybe ServiceId,
    -- | The unique identifier for the request that generated the trace\'s
    -- segments and subsegments.
    id :: Prelude.Maybe Prelude.Text,
    -- | Annotations from the trace\'s segment documents.
    annotations :: Prelude.Maybe (Prelude.HashMap Prelude.Text [ValueWithServiceIds]),
    -- | A list of resource ARNs for any resource corresponding to the trace
    -- segments.
    resourceARNs :: Prelude.Maybe [ResourceARNDetail],
    -- | One or more of the segment documents is in progress.
    isPartial :: Prelude.Maybe Prelude.Bool,
    -- | A collection of FaultRootCause structures corresponding to the trace
    -- segments.
    faultRootCauses :: Prelude.Maybe [FaultRootCause],
    -- | The revision number of a trace.
    revision :: Prelude.Maybe Prelude.Int,
    -- | Information about the HTTP request served by the trace.
    http :: Prelude.Maybe Http,
    -- | The root segment document has a 400 series error.
    hasError :: Prelude.Maybe Prelude.Bool,
    -- | Users from the trace\'s segment documents.
    users :: Prelude.Maybe [TraceUser],
    -- | One or more of the segment documents has a 429 throttling error.
    hasThrottle :: Prelude.Maybe Prelude.Bool,
    -- | A collection of ResponseTimeRootCause structures corresponding to the
    -- trace segments.
    responseTimeRootCauses :: Prelude.Maybe [ResponseTimeRootCause]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'TraceSummary' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceIds', 'traceSummary_instanceIds' - A list of EC2 instance IDs for any instance corresponding to the trace
-- segments.
--
-- 'errorRootCauses', 'traceSummary_errorRootCauses' - A collection of ErrorRootCause structures corresponding to the trace
-- segments.
--
-- 'availabilityZones', 'traceSummary_availabilityZones' - A list of Availability Zones for any zone corresponding to the trace
-- segments.
--
-- 'responseTime', 'traceSummary_responseTime' - The length of time in seconds between the start and end times of the
-- root segment. If the service performs work asynchronously, the response
-- time measures the time before the response is sent to the user, while
-- the duration measures the amount of time before the last traced activity
-- completes.
--
-- 'duration', 'traceSummary_duration' - The length of time in seconds between the start time of the root segment
-- and the end time of the last segment that completed.
--
-- 'matchedEventTime', 'traceSummary_matchedEventTime' - The matched time stamp of a defined event.
--
-- 'serviceIds', 'traceSummary_serviceIds' - Service IDs from the trace\'s segment documents.
--
-- 'hasFault', 'traceSummary_hasFault' - The root segment document has a 500 series error.
--
-- 'entryPoint', 'traceSummary_entryPoint' - The root of a trace.
--
-- 'id', 'traceSummary_id' - The unique identifier for the request that generated the trace\'s
-- segments and subsegments.
--
-- 'annotations', 'traceSummary_annotations' - Annotations from the trace\'s segment documents.
--
-- 'resourceARNs', 'traceSummary_resourceARNs' - A list of resource ARNs for any resource corresponding to the trace
-- segments.
--
-- 'isPartial', 'traceSummary_isPartial' - One or more of the segment documents is in progress.
--
-- 'faultRootCauses', 'traceSummary_faultRootCauses' - A collection of FaultRootCause structures corresponding to the trace
-- segments.
--
-- 'revision', 'traceSummary_revision' - The revision number of a trace.
--
-- 'http', 'traceSummary_http' - Information about the HTTP request served by the trace.
--
-- 'hasError', 'traceSummary_hasError' - The root segment document has a 400 series error.
--
-- 'users', 'traceSummary_users' - Users from the trace\'s segment documents.
--
-- 'hasThrottle', 'traceSummary_hasThrottle' - One or more of the segment documents has a 429 throttling error.
--
-- 'responseTimeRootCauses', 'traceSummary_responseTimeRootCauses' - A collection of ResponseTimeRootCause structures corresponding to the
-- trace segments.
newTraceSummary ::
  TraceSummary
newTraceSummary =
  TraceSummary'
    { instanceIds = Prelude.Nothing,
      errorRootCauses = Prelude.Nothing,
      availabilityZones = Prelude.Nothing,
      responseTime = Prelude.Nothing,
      duration = Prelude.Nothing,
      matchedEventTime = Prelude.Nothing,
      serviceIds = Prelude.Nothing,
      hasFault = Prelude.Nothing,
      entryPoint = Prelude.Nothing,
      id = Prelude.Nothing,
      annotations = Prelude.Nothing,
      resourceARNs = Prelude.Nothing,
      isPartial = Prelude.Nothing,
      faultRootCauses = Prelude.Nothing,
      revision = Prelude.Nothing,
      http = Prelude.Nothing,
      hasError = Prelude.Nothing,
      users = Prelude.Nothing,
      hasThrottle = Prelude.Nothing,
      responseTimeRootCauses = Prelude.Nothing
    }

-- | A list of EC2 instance IDs for any instance corresponding to the trace
-- segments.
traceSummary_instanceIds :: Lens.Lens' TraceSummary (Prelude.Maybe [InstanceIdDetail])
traceSummary_instanceIds = Lens.lens (\TraceSummary' {instanceIds} -> instanceIds) (\s@TraceSummary' {} a -> s {instanceIds = a} :: TraceSummary) Prelude.. Lens.mapping Prelude._Coerce

-- | A collection of ErrorRootCause structures corresponding to the trace
-- segments.
traceSummary_errorRootCauses :: Lens.Lens' TraceSummary (Prelude.Maybe [ErrorRootCause])
traceSummary_errorRootCauses = Lens.lens (\TraceSummary' {errorRootCauses} -> errorRootCauses) (\s@TraceSummary' {} a -> s {errorRootCauses = a} :: TraceSummary) Prelude.. Lens.mapping Prelude._Coerce

-- | A list of Availability Zones for any zone corresponding to the trace
-- segments.
traceSummary_availabilityZones :: Lens.Lens' TraceSummary (Prelude.Maybe [AvailabilityZoneDetail])
traceSummary_availabilityZones = Lens.lens (\TraceSummary' {availabilityZones} -> availabilityZones) (\s@TraceSummary' {} a -> s {availabilityZones = a} :: TraceSummary) Prelude.. Lens.mapping Prelude._Coerce

-- | The length of time in seconds between the start and end times of the
-- root segment. If the service performs work asynchronously, the response
-- time measures the time before the response is sent to the user, while
-- the duration measures the amount of time before the last traced activity
-- completes.
traceSummary_responseTime :: Lens.Lens' TraceSummary (Prelude.Maybe Prelude.Double)
traceSummary_responseTime = Lens.lens (\TraceSummary' {responseTime} -> responseTime) (\s@TraceSummary' {} a -> s {responseTime = a} :: TraceSummary)

-- | The length of time in seconds between the start time of the root segment
-- and the end time of the last segment that completed.
traceSummary_duration :: Lens.Lens' TraceSummary (Prelude.Maybe Prelude.Double)
traceSummary_duration = Lens.lens (\TraceSummary' {duration} -> duration) (\s@TraceSummary' {} a -> s {duration = a} :: TraceSummary)

-- | The matched time stamp of a defined event.
traceSummary_matchedEventTime :: Lens.Lens' TraceSummary (Prelude.Maybe Prelude.UTCTime)
traceSummary_matchedEventTime = Lens.lens (\TraceSummary' {matchedEventTime} -> matchedEventTime) (\s@TraceSummary' {} a -> s {matchedEventTime = a} :: TraceSummary) Prelude.. Lens.mapping Prelude._Time

-- | Service IDs from the trace\'s segment documents.
traceSummary_serviceIds :: Lens.Lens' TraceSummary (Prelude.Maybe [ServiceId])
traceSummary_serviceIds = Lens.lens (\TraceSummary' {serviceIds} -> serviceIds) (\s@TraceSummary' {} a -> s {serviceIds = a} :: TraceSummary) Prelude.. Lens.mapping Prelude._Coerce

-- | The root segment document has a 500 series error.
traceSummary_hasFault :: Lens.Lens' TraceSummary (Prelude.Maybe Prelude.Bool)
traceSummary_hasFault = Lens.lens (\TraceSummary' {hasFault} -> hasFault) (\s@TraceSummary' {} a -> s {hasFault = a} :: TraceSummary)

-- | The root of a trace.
traceSummary_entryPoint :: Lens.Lens' TraceSummary (Prelude.Maybe ServiceId)
traceSummary_entryPoint = Lens.lens (\TraceSummary' {entryPoint} -> entryPoint) (\s@TraceSummary' {} a -> s {entryPoint = a} :: TraceSummary)

-- | The unique identifier for the request that generated the trace\'s
-- segments and subsegments.
traceSummary_id :: Lens.Lens' TraceSummary (Prelude.Maybe Prelude.Text)
traceSummary_id = Lens.lens (\TraceSummary' {id} -> id) (\s@TraceSummary' {} a -> s {id = a} :: TraceSummary)

-- | Annotations from the trace\'s segment documents.
traceSummary_annotations :: Lens.Lens' TraceSummary (Prelude.Maybe (Prelude.HashMap Prelude.Text [ValueWithServiceIds]))
traceSummary_annotations = Lens.lens (\TraceSummary' {annotations} -> annotations) (\s@TraceSummary' {} a -> s {annotations = a} :: TraceSummary) Prelude.. Lens.mapping Prelude._Coerce

-- | A list of resource ARNs for any resource corresponding to the trace
-- segments.
traceSummary_resourceARNs :: Lens.Lens' TraceSummary (Prelude.Maybe [ResourceARNDetail])
traceSummary_resourceARNs = Lens.lens (\TraceSummary' {resourceARNs} -> resourceARNs) (\s@TraceSummary' {} a -> s {resourceARNs = a} :: TraceSummary) Prelude.. Lens.mapping Prelude._Coerce

-- | One or more of the segment documents is in progress.
traceSummary_isPartial :: Lens.Lens' TraceSummary (Prelude.Maybe Prelude.Bool)
traceSummary_isPartial = Lens.lens (\TraceSummary' {isPartial} -> isPartial) (\s@TraceSummary' {} a -> s {isPartial = a} :: TraceSummary)

-- | A collection of FaultRootCause structures corresponding to the trace
-- segments.
traceSummary_faultRootCauses :: Lens.Lens' TraceSummary (Prelude.Maybe [FaultRootCause])
traceSummary_faultRootCauses = Lens.lens (\TraceSummary' {faultRootCauses} -> faultRootCauses) (\s@TraceSummary' {} a -> s {faultRootCauses = a} :: TraceSummary) Prelude.. Lens.mapping Prelude._Coerce

-- | The revision number of a trace.
traceSummary_revision :: Lens.Lens' TraceSummary (Prelude.Maybe Prelude.Int)
traceSummary_revision = Lens.lens (\TraceSummary' {revision} -> revision) (\s@TraceSummary' {} a -> s {revision = a} :: TraceSummary)

-- | Information about the HTTP request served by the trace.
traceSummary_http :: Lens.Lens' TraceSummary (Prelude.Maybe Http)
traceSummary_http = Lens.lens (\TraceSummary' {http} -> http) (\s@TraceSummary' {} a -> s {http = a} :: TraceSummary)

-- | The root segment document has a 400 series error.
traceSummary_hasError :: Lens.Lens' TraceSummary (Prelude.Maybe Prelude.Bool)
traceSummary_hasError = Lens.lens (\TraceSummary' {hasError} -> hasError) (\s@TraceSummary' {} a -> s {hasError = a} :: TraceSummary)

-- | Users from the trace\'s segment documents.
traceSummary_users :: Lens.Lens' TraceSummary (Prelude.Maybe [TraceUser])
traceSummary_users = Lens.lens (\TraceSummary' {users} -> users) (\s@TraceSummary' {} a -> s {users = a} :: TraceSummary) Prelude.. Lens.mapping Prelude._Coerce

-- | One or more of the segment documents has a 429 throttling error.
traceSummary_hasThrottle :: Lens.Lens' TraceSummary (Prelude.Maybe Prelude.Bool)
traceSummary_hasThrottle = Lens.lens (\TraceSummary' {hasThrottle} -> hasThrottle) (\s@TraceSummary' {} a -> s {hasThrottle = a} :: TraceSummary)

-- | A collection of ResponseTimeRootCause structures corresponding to the
-- trace segments.
traceSummary_responseTimeRootCauses :: Lens.Lens' TraceSummary (Prelude.Maybe [ResponseTimeRootCause])
traceSummary_responseTimeRootCauses = Lens.lens (\TraceSummary' {responseTimeRootCauses} -> responseTimeRootCauses) (\s@TraceSummary' {} a -> s {responseTimeRootCauses = a} :: TraceSummary) Prelude.. Lens.mapping Prelude._Coerce

instance Prelude.FromJSON TraceSummary where
  parseJSON =
    Prelude.withObject
      "TraceSummary"
      ( \x ->
          TraceSummary'
            Prelude.<$> ( x Prelude..:? "InstanceIds"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> ( x Prelude..:? "ErrorRootCauses"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> ( x Prelude..:? "AvailabilityZones"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> (x Prelude..:? "ResponseTime")
            Prelude.<*> (x Prelude..:? "Duration")
            Prelude.<*> (x Prelude..:? "MatchedEventTime")
            Prelude.<*> ( x Prelude..:? "ServiceIds"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> (x Prelude..:? "HasFault")
            Prelude.<*> (x Prelude..:? "EntryPoint")
            Prelude.<*> (x Prelude..:? "Id")
            Prelude.<*> ( x Prelude..:? "Annotations"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> ( x Prelude..:? "ResourceARNs"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> (x Prelude..:? "IsPartial")
            Prelude.<*> ( x Prelude..:? "FaultRootCauses"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> (x Prelude..:? "Revision")
            Prelude.<*> (x Prelude..:? "Http")
            Prelude.<*> (x Prelude..:? "HasError")
            Prelude.<*> (x Prelude..:? "Users" Prelude..!= Prelude.mempty)
            Prelude.<*> (x Prelude..:? "HasThrottle")
            Prelude.<*> ( x Prelude..:? "ResponseTimeRootCauses"
                            Prelude..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable TraceSummary

instance Prelude.NFData TraceSummary
