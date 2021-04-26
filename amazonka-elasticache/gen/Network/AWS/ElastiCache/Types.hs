{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _SubnetInUse,
    _CacheSubnetGroupQuotaExceededFault,
    _InvalidVPCNetworkStateFault,
    _CacheClusterNotFoundFault,
    _InvalidReplicationGroupStateFault,
    _SubnetNotAllowedFault,
    _CacheSubnetGroupAlreadyExistsFault,
    _TestFailoverNotAvailableFault,
    _GlobalReplicationGroupAlreadyExistsFault,
    _SnapshotFeatureNotSupportedFault,
    _UserGroupQuotaExceededFault,
    _InvalidKMSKeyFault,
    _InvalidCacheSecurityGroupStateFault,
    _ReservedCacheNodeNotFoundFault,
    _ServiceLinkedRoleNotFoundFault,
    _APICallRateForCustomerExceededFault,
    _InvalidCacheParameterGroupStateFault,
    _UserQuotaExceededFault,
    _NoOperationFault,
    _InvalidParameterCombinationException,
    _CacheParameterGroupAlreadyExistsFault,
    _SnapshotQuotaExceededFault,
    _TagNotFoundFault,
    _CacheSubnetQuotaExceededFault,
    _SnapshotAlreadyExistsFault,
    _NodeQuotaForCustomerExceededFault,
    _UserNotFoundFault,
    _InsufficientCacheClusterCapacityFault,
    _InvalidUserStateFault,
    _ServiceUpdateNotFoundFault,
    _SnapshotNotFoundFault,
    _UserGroupAlreadyExistsFault,
    _InvalidUserGroupStateFault,
    _InvalidCacheClusterStateFault,
    _UserGroupNotFoundFault,
    _NodeGroupsPerReplicationGroupQuotaExceededFault,
    _ReplicationGroupAlreadyExistsFault,
    _AuthorizationAlreadyExistsFault,
    _ReservedCacheNodeQuotaExceededFault,
    _InvalidParameterValueException,
    _CacheSecurityGroupNotFoundFault,
    _ReservedCacheNodeAlreadyExistsFault,
    _CacheSubnetGroupInUse,
    _InvalidGlobalReplicationGroupStateFault,
    _GlobalReplicationGroupNotFoundFault,
    _CacheSubnetGroupNotFoundFault,
    _CacheSecurityGroupAlreadyExistsFault,
    _InvalidARNFault,
    _NodeGroupNotFoundFault,
    _NodeQuotaForClusterExceededFault,
    _ReplicationGroupAlreadyUnderMigrationFault,
    _DefaultUserRequired,
    _CacheParameterGroupNotFoundFault,
    _DuplicateUserNameFault,
    _InvalidSnapshotStateFault,
    _ReplicationGroupNotUnderMigrationFault,
    _UserAlreadyExistsFault,
    _DefaultUserAssociatedToUserGroupFault,
    _CacheParameterGroupQuotaExceededFault,
    _AuthorizationNotFoundFault,
    _ReservedCacheNodesOfferingNotFoundFault,
    _InvalidSubnet,
    _ClusterQuotaForCustomerExceededFault,
    _ReplicationGroupNotFoundFault,
    _CacheClusterAlreadyExistsFault,
    _TagQuotaPerResourceExceeded,
    _CacheSecurityGroupQuotaExceededFault,

    -- * AZMode
    AZMode (..),

    -- * AuthTokenUpdateStatus
    AuthTokenUpdateStatus (..),

    -- * AuthTokenUpdateStrategyType
    AuthTokenUpdateStrategyType (..),

    -- * AuthenticationType
    AuthenticationType (..),

    -- * AutomaticFailoverStatus
    AutomaticFailoverStatus (..),

    -- * ChangeType
    ChangeType (..),

    -- * MultiAZStatus
    MultiAZStatus (..),

    -- * NodeUpdateInitiatedBy
    NodeUpdateInitiatedBy (..),

    -- * NodeUpdateStatus
    NodeUpdateStatus (..),

    -- * OutpostMode
    OutpostMode (..),

    -- * PendingAutomaticFailoverStatus
    PendingAutomaticFailoverStatus (..),

    -- * ServiceUpdateSeverity
    ServiceUpdateSeverity (..),

    -- * ServiceUpdateStatus
    ServiceUpdateStatus (..),

    -- * ServiceUpdateType
    ServiceUpdateType (..),

    -- * SlaMet
    SlaMet (..),

    -- * SourceType
    SourceType (..),

    -- * UpdateActionStatus
    UpdateActionStatus (..),

    -- * Authentication
    Authentication (..),
    newAuthentication,

    -- * AvailabilityZone
    AvailabilityZone (..),
    newAvailabilityZone,

    -- * CacheCluster
    CacheCluster (..),
    newCacheCluster,

    -- * CacheEngineVersion
    CacheEngineVersion (..),
    newCacheEngineVersion,

    -- * CacheNode
    CacheNode (..),
    newCacheNode,

    -- * CacheNodeTypeSpecificParameter
    CacheNodeTypeSpecificParameter (..),
    newCacheNodeTypeSpecificParameter,

    -- * CacheNodeTypeSpecificValue
    CacheNodeTypeSpecificValue (..),
    newCacheNodeTypeSpecificValue,

    -- * CacheNodeUpdateStatus
    CacheNodeUpdateStatus (..),
    newCacheNodeUpdateStatus,

    -- * CacheParameterGroup
    CacheParameterGroup (..),
    newCacheParameterGroup,

    -- * CacheParameterGroupNameMessage
    CacheParameterGroupNameMessage (..),
    newCacheParameterGroupNameMessage,

    -- * CacheParameterGroupStatus
    CacheParameterGroupStatus (..),
    newCacheParameterGroupStatus,

    -- * CacheSecurityGroup
    CacheSecurityGroup (..),
    newCacheSecurityGroup,

    -- * CacheSecurityGroupMembership
    CacheSecurityGroupMembership (..),
    newCacheSecurityGroupMembership,

    -- * CacheSubnetGroup
    CacheSubnetGroup (..),
    newCacheSubnetGroup,

    -- * ConfigureShard
    ConfigureShard (..),
    newConfigureShard,

    -- * CustomerNodeEndpoint
    CustomerNodeEndpoint (..),
    newCustomerNodeEndpoint,

    -- * EC2SecurityGroup
    EC2SecurityGroup (..),
    newEC2SecurityGroup,

    -- * Endpoint
    Endpoint (..),
    newEndpoint,

    -- * EngineDefaults
    EngineDefaults (..),
    newEngineDefaults,

    -- * Event
    Event (..),
    newEvent,

    -- * Filter
    Filter (..),
    newFilter,

    -- * GlobalNodeGroup
    GlobalNodeGroup (..),
    newGlobalNodeGroup,

    -- * GlobalReplicationGroup
    GlobalReplicationGroup (..),
    newGlobalReplicationGroup,

    -- * GlobalReplicationGroupInfo
    GlobalReplicationGroupInfo (..),
    newGlobalReplicationGroupInfo,

    -- * GlobalReplicationGroupMember
    GlobalReplicationGroupMember (..),
    newGlobalReplicationGroupMember,

    -- * NodeGroup
    NodeGroup (..),
    newNodeGroup,

    -- * NodeGroupConfiguration
    NodeGroupConfiguration (..),
    newNodeGroupConfiguration,

    -- * NodeGroupMember
    NodeGroupMember (..),
    newNodeGroupMember,

    -- * NodeGroupMemberUpdateStatus
    NodeGroupMemberUpdateStatus (..),
    newNodeGroupMemberUpdateStatus,

    -- * NodeGroupUpdateStatus
    NodeGroupUpdateStatus (..),
    newNodeGroupUpdateStatus,

    -- * NodeSnapshot
    NodeSnapshot (..),
    newNodeSnapshot,

    -- * NotificationConfiguration
    NotificationConfiguration (..),
    newNotificationConfiguration,

    -- * Parameter
    Parameter (..),
    newParameter,

    -- * ParameterNameValue
    ParameterNameValue (..),
    newParameterNameValue,

    -- * PendingModifiedValues
    PendingModifiedValues (..),
    newPendingModifiedValues,

    -- * ProcessedUpdateAction
    ProcessedUpdateAction (..),
    newProcessedUpdateAction,

    -- * RecurringCharge
    RecurringCharge (..),
    newRecurringCharge,

    -- * RegionalConfiguration
    RegionalConfiguration (..),
    newRegionalConfiguration,

    -- * ReplicationGroup
    ReplicationGroup (..),
    newReplicationGroup,

    -- * ReplicationGroupPendingModifiedValues
    ReplicationGroupPendingModifiedValues (..),
    newReplicationGroupPendingModifiedValues,

    -- * ReservedCacheNode
    ReservedCacheNode (..),
    newReservedCacheNode,

    -- * ReservedCacheNodesOffering
    ReservedCacheNodesOffering (..),
    newReservedCacheNodesOffering,

    -- * ReshardingConfiguration
    ReshardingConfiguration (..),
    newReshardingConfiguration,

    -- * ReshardingStatus
    ReshardingStatus (..),
    newReshardingStatus,

    -- * SecurityGroupMembership
    SecurityGroupMembership (..),
    newSecurityGroupMembership,

    -- * ServiceUpdate
    ServiceUpdate (..),
    newServiceUpdate,

    -- * SlotMigration
    SlotMigration (..),
    newSlotMigration,

    -- * Snapshot
    Snapshot (..),
    newSnapshot,

    -- * Subnet
    Subnet (..),
    newSubnet,

    -- * SubnetOutpost
    SubnetOutpost (..),
    newSubnetOutpost,

    -- * Tag
    Tag (..),
    newTag,

    -- * TagListMessage
    TagListMessage (..),
    newTagListMessage,

    -- * TimeRangeFilter
    TimeRangeFilter (..),
    newTimeRangeFilter,

    -- * UnprocessedUpdateAction
    UnprocessedUpdateAction (..),
    newUnprocessedUpdateAction,

    -- * UpdateAction
    UpdateAction (..),
    newUpdateAction,

    -- * UpdateActionResultsMessage
    UpdateActionResultsMessage (..),
    newUpdateActionResultsMessage,

    -- * User
    User (..),
    newUser,

    -- * UserGroup
    UserGroup (..),
    newUserGroup,

    -- * UserGroupPendingChanges
    UserGroupPendingChanges (..),
    newUserGroupPendingChanges,

    -- * UserGroupsUpdateStatus
    UserGroupsUpdateStatus (..),
    newUserGroupsUpdateStatus,
  )
where

import Network.AWS.ElastiCache.Types.AZMode
import Network.AWS.ElastiCache.Types.AuthTokenUpdateStatus
import Network.AWS.ElastiCache.Types.AuthTokenUpdateStrategyType
import Network.AWS.ElastiCache.Types.Authentication
import Network.AWS.ElastiCache.Types.AuthenticationType
import Network.AWS.ElastiCache.Types.AutomaticFailoverStatus
import Network.AWS.ElastiCache.Types.AvailabilityZone
import Network.AWS.ElastiCache.Types.CacheCluster
import Network.AWS.ElastiCache.Types.CacheEngineVersion
import Network.AWS.ElastiCache.Types.CacheNode
import Network.AWS.ElastiCache.Types.CacheNodeTypeSpecificParameter
import Network.AWS.ElastiCache.Types.CacheNodeTypeSpecificValue
import Network.AWS.ElastiCache.Types.CacheNodeUpdateStatus
import Network.AWS.ElastiCache.Types.CacheParameterGroup
import Network.AWS.ElastiCache.Types.CacheParameterGroupNameMessage
import Network.AWS.ElastiCache.Types.CacheParameterGroupStatus
import Network.AWS.ElastiCache.Types.CacheSecurityGroup
import Network.AWS.ElastiCache.Types.CacheSecurityGroupMembership
import Network.AWS.ElastiCache.Types.CacheSubnetGroup
import Network.AWS.ElastiCache.Types.ChangeType
import Network.AWS.ElastiCache.Types.ConfigureShard
import Network.AWS.ElastiCache.Types.CustomerNodeEndpoint
import Network.AWS.ElastiCache.Types.EC2SecurityGroup
import Network.AWS.ElastiCache.Types.Endpoint
import Network.AWS.ElastiCache.Types.EngineDefaults
import Network.AWS.ElastiCache.Types.Event
import Network.AWS.ElastiCache.Types.Filter
import Network.AWS.ElastiCache.Types.GlobalNodeGroup
import Network.AWS.ElastiCache.Types.GlobalReplicationGroup
import Network.AWS.ElastiCache.Types.GlobalReplicationGroupInfo
import Network.AWS.ElastiCache.Types.GlobalReplicationGroupMember
import Network.AWS.ElastiCache.Types.MultiAZStatus
import Network.AWS.ElastiCache.Types.NodeGroup
import Network.AWS.ElastiCache.Types.NodeGroupConfiguration
import Network.AWS.ElastiCache.Types.NodeGroupMember
import Network.AWS.ElastiCache.Types.NodeGroupMemberUpdateStatus
import Network.AWS.ElastiCache.Types.NodeGroupUpdateStatus
import Network.AWS.ElastiCache.Types.NodeSnapshot
import Network.AWS.ElastiCache.Types.NodeUpdateInitiatedBy
import Network.AWS.ElastiCache.Types.NodeUpdateStatus
import Network.AWS.ElastiCache.Types.NotificationConfiguration
import Network.AWS.ElastiCache.Types.OutpostMode
import Network.AWS.ElastiCache.Types.Parameter
import Network.AWS.ElastiCache.Types.ParameterNameValue
import Network.AWS.ElastiCache.Types.PendingAutomaticFailoverStatus
import Network.AWS.ElastiCache.Types.PendingModifiedValues
import Network.AWS.ElastiCache.Types.ProcessedUpdateAction
import Network.AWS.ElastiCache.Types.RecurringCharge
import Network.AWS.ElastiCache.Types.RegionalConfiguration
import Network.AWS.ElastiCache.Types.ReplicationGroup
import Network.AWS.ElastiCache.Types.ReplicationGroupPendingModifiedValues
import Network.AWS.ElastiCache.Types.ReservedCacheNode
import Network.AWS.ElastiCache.Types.ReservedCacheNodesOffering
import Network.AWS.ElastiCache.Types.ReshardingConfiguration
import Network.AWS.ElastiCache.Types.ReshardingStatus
import Network.AWS.ElastiCache.Types.SecurityGroupMembership
import Network.AWS.ElastiCache.Types.ServiceUpdate
import Network.AWS.ElastiCache.Types.ServiceUpdateSeverity
import Network.AWS.ElastiCache.Types.ServiceUpdateStatus
import Network.AWS.ElastiCache.Types.ServiceUpdateType
import Network.AWS.ElastiCache.Types.SlaMet
import Network.AWS.ElastiCache.Types.SlotMigration
import Network.AWS.ElastiCache.Types.Snapshot
import Network.AWS.ElastiCache.Types.SourceType
import Network.AWS.ElastiCache.Types.Subnet
import Network.AWS.ElastiCache.Types.SubnetOutpost
import Network.AWS.ElastiCache.Types.Tag
import Network.AWS.ElastiCache.Types.TagListMessage
import Network.AWS.ElastiCache.Types.TimeRangeFilter
import Network.AWS.ElastiCache.Types.UnprocessedUpdateAction
import Network.AWS.ElastiCache.Types.UpdateAction
import Network.AWS.ElastiCache.Types.UpdateActionResultsMessage
import Network.AWS.ElastiCache.Types.UpdateActionStatus
import Network.AWS.ElastiCache.Types.User
import Network.AWS.ElastiCache.Types.UserGroup
import Network.AWS.ElastiCache.Types.UserGroupPendingChanges
import Network.AWS.ElastiCache.Types.UserGroupsUpdateStatus
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2015-02-02@ of the Amazon ElastiCache SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "ElastiCache",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcPrefix = "elasticache",
      Prelude._svcVersion = "2015-02-02",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseXMLError "ElastiCache",
      Prelude._svcRetry = retry
    }
  where
    retry =
      Prelude.Exponential
        { Prelude._retryBase = 5.0e-2,
          Prelude._retryGrowth = 2,
          Prelude._retryAttempts = 5,
          Prelude._retryCheck = check
        }
    check e
      | Lens.has (Prelude.hasStatus 504) e =
        Prelude.Just "gateway_timeout"
      | Lens.has
          ( Prelude.hasCode
              "ProvisionedThroughputExceededException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throughput_exceeded"
      | Lens.has (Prelude.hasStatus 503) e =
        Prelude.Just "service_unavailable"
      | Lens.has (Prelude.hasStatus 502) e =
        Prelude.Just "bad_gateway"
      | Lens.has (Prelude.hasStatus 429) e =
        Prelude.Just "too_many_requests"
      | Lens.has
          ( Prelude.hasCode "RequestThrottledException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "request_throttled_exception"
      | Lens.has
          ( Prelude.hasCode "ThrottledException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttled_exception"
      | Lens.has (Prelude.hasStatus 509) e =
        Prelude.Just "limit_exceeded"
      | Lens.has (Prelude.hasStatus 500) e =
        Prelude.Just "general_server_error"
      | Lens.has
          ( Prelude.hasCode "ThrottlingException"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttling_exception"
      | Lens.has
          ( Prelude.hasCode "Throttling"
              Prelude.. Prelude.hasStatus 400
          )
          e =
        Prelude.Just "throttling"
      | Prelude.otherwise = Prelude.Nothing

-- | The requested subnet is being used by another cache subnet group.
_SubnetInUse :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_SubnetInUse =
  Prelude._MatchServiceError
    defaultService
    "SubnetInUse"
    Prelude.. Prelude.hasStatus 400

-- | The request cannot be processed because it would exceed the allowed
-- number of cache subnet groups.
_CacheSubnetGroupQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CacheSubnetGroupQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "CacheSubnetGroupQuotaExceeded"
    Prelude.. Prelude.hasStatus 400

-- | The VPC network is in an invalid state.
_InvalidVPCNetworkStateFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidVPCNetworkStateFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidVPCNetworkStateFault"
    Prelude.. Prelude.hasStatus 400

-- | The requested cluster ID does not refer to an existing cluster.
_CacheClusterNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CacheClusterNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "CacheClusterNotFound"
    Prelude.. Prelude.hasStatus 404

-- | The requested replication group is not in the @available@ state.
_InvalidReplicationGroupStateFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidReplicationGroupStateFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidReplicationGroupState"
    Prelude.. Prelude.hasStatus 400

-- | At least one subnet ID does not match the other subnet IDs. This
-- mismatch typically occurs when a user sets one subnet ID to a regional
-- Availability Zone and a different one to an outpost. Or when a user sets
-- the subnet ID to an Outpost when not subscribed on this service.
_SubnetNotAllowedFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_SubnetNotAllowedFault =
  Prelude._MatchServiceError
    defaultService
    "SubnetNotAllowedFault"
    Prelude.. Prelude.hasStatus 400

-- | The requested cache subnet group name is already in use by an existing
-- cache subnet group.
_CacheSubnetGroupAlreadyExistsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CacheSubnetGroupAlreadyExistsFault =
  Prelude._MatchServiceError
    defaultService
    "CacheSubnetGroupAlreadyExists"
    Prelude.. Prelude.hasStatus 400

-- | The @TestFailover@ action is not available.
_TestFailoverNotAvailableFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TestFailoverNotAvailableFault =
  Prelude._MatchServiceError
    defaultService
    "TestFailoverNotAvailableFault"
    Prelude.. Prelude.hasStatus 400

-- | The Global Datastore name already exists.
_GlobalReplicationGroupAlreadyExistsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_GlobalReplicationGroupAlreadyExistsFault =
  Prelude._MatchServiceError
    defaultService
    "GlobalReplicationGroupAlreadyExistsFault"
    Prelude.. Prelude.hasStatus 400

-- | You attempted one of the following operations:
--
-- -   Creating a snapshot of a Redis cluster running on a @cache.t1.micro@
--     cache node.
--
-- -   Creating a snapshot of a cluster that is running Memcached rather
--     than Redis.
--
-- Neither of these are supported by ElastiCache.
_SnapshotFeatureNotSupportedFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_SnapshotFeatureNotSupportedFault =
  Prelude._MatchServiceError
    defaultService
    "SnapshotFeatureNotSupportedFault"
    Prelude.. Prelude.hasStatus 400

-- | The number of users exceeds the user group limit.
_UserGroupQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UserGroupQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "UserGroupQuotaExceeded"
    Prelude.. Prelude.hasStatus 400

-- | The KMS key supplied is not valid.
_InvalidKMSKeyFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidKMSKeyFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidKMSKeyFault"
    Prelude.. Prelude.hasStatus 400

-- | The current state of the cache security group does not allow deletion.
_InvalidCacheSecurityGroupStateFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidCacheSecurityGroupStateFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidCacheSecurityGroupState"
    Prelude.. Prelude.hasStatus 400

-- | The requested reserved cache node was not found.
_ReservedCacheNodeNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ReservedCacheNodeNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "ReservedCacheNodeNotFound"
    Prelude.. Prelude.hasStatus 404

-- | The specified service linked role (SLR) was not found.
_ServiceLinkedRoleNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ServiceLinkedRoleNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "ServiceLinkedRoleNotFoundFault"
    Prelude.. Prelude.hasStatus 400

-- | The customer has exceeded the allowed rate of API calls.
_APICallRateForCustomerExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_APICallRateForCustomerExceededFault =
  Prelude._MatchServiceError
    defaultService
    "APICallRateForCustomerExceeded"
    Prelude.. Prelude.hasStatus 400

-- | The current state of the cache parameter group does not allow the
-- requested operation to occur.
_InvalidCacheParameterGroupStateFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidCacheParameterGroupStateFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidCacheParameterGroupState"
    Prelude.. Prelude.hasStatus 400

-- | The quota of users has been exceeded.
_UserQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UserQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "UserQuotaExceeded"
    Prelude.. Prelude.hasStatus 400

-- | The operation was not performed because no changes were required.
_NoOperationFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NoOperationFault =
  Prelude._MatchServiceError
    defaultService
    "NoOperationFault"
    Prelude.. Prelude.hasStatus 400

-- | Two or more incompatible parameters were specified.
_InvalidParameterCombinationException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidParameterCombinationException =
  Prelude._MatchServiceError
    defaultService
    "InvalidParameterCombination"
    Prelude.. Prelude.hasStatus 400

-- | A cache parameter group with the requested name already exists.
_CacheParameterGroupAlreadyExistsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CacheParameterGroupAlreadyExistsFault =
  Prelude._MatchServiceError
    defaultService
    "CacheParameterGroupAlreadyExists"
    Prelude.. Prelude.hasStatus 400

-- | The request cannot be processed because it would exceed the maximum
-- number of snapshots.
_SnapshotQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_SnapshotQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "SnapshotQuotaExceededFault"
    Prelude.. Prelude.hasStatus 400

-- | The requested tag was not found on this resource.
_TagNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TagNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "TagNotFound"
    Prelude.. Prelude.hasStatus 404

-- | The request cannot be processed because it would exceed the allowed
-- number of subnets in a cache subnet group.
_CacheSubnetQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CacheSubnetQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "CacheSubnetQuotaExceededFault"
    Prelude.. Prelude.hasStatus 400

-- | You already have a snapshot with the given name.
_SnapshotAlreadyExistsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_SnapshotAlreadyExistsFault =
  Prelude._MatchServiceError
    defaultService
    "SnapshotAlreadyExistsFault"
    Prelude.. Prelude.hasStatus 400

-- | The request cannot be processed because it would exceed the allowed
-- number of cache nodes per customer.
_NodeQuotaForCustomerExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NodeQuotaForCustomerExceededFault =
  Prelude._MatchServiceError
    defaultService
    "NodeQuotaForCustomerExceeded"
    Prelude.. Prelude.hasStatus 400

-- | The user does not exist or could not be found.
_UserNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UserNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "UserNotFound"
    Prelude.. Prelude.hasStatus 404

-- | The requested cache node type is not available in the specified
-- Availability Zone. For more information, see
-- <http://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/ErrorMessages.html#ErrorMessages.INSUFFICIENT_CACHE_CLUSTER_CAPACITY InsufficientCacheClusterCapacity>
-- in the ElastiCache User Guide.
_InsufficientCacheClusterCapacityFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InsufficientCacheClusterCapacityFault =
  Prelude._MatchServiceError
    defaultService
    "InsufficientCacheClusterCapacity"
    Prelude.. Prelude.hasStatus 400

-- | The user is not in active state.
_InvalidUserStateFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidUserStateFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidUserState"
    Prelude.. Prelude.hasStatus 400

-- | The service update doesn\'t exist
_ServiceUpdateNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ServiceUpdateNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "ServiceUpdateNotFoundFault"
    Prelude.. Prelude.hasStatus 404

-- | The requested snapshot name does not refer to an existing snapshot.
_SnapshotNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_SnapshotNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "SnapshotNotFoundFault"
    Prelude.. Prelude.hasStatus 404

-- | The user group with this ID already exists.
_UserGroupAlreadyExistsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UserGroupAlreadyExistsFault =
  Prelude._MatchServiceError
    defaultService
    "UserGroupAlreadyExists"
    Prelude.. Prelude.hasStatus 400

-- | The user group is not in an active state.
_InvalidUserGroupStateFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidUserGroupStateFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidUserGroupState"
    Prelude.. Prelude.hasStatus 400

-- | The requested cluster is not in the @available@ state.
_InvalidCacheClusterStateFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidCacheClusterStateFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidCacheClusterState"
    Prelude.. Prelude.hasStatus 400

-- | The user group was not found or does not exist
_UserGroupNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UserGroupNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "UserGroupNotFound"
    Prelude.. Prelude.hasStatus 404

-- | The request cannot be processed because it would exceed the maximum
-- allowed number of node groups (shards) in a single replication group.
-- The default maximum is 90
_NodeGroupsPerReplicationGroupQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NodeGroupsPerReplicationGroupQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "NodeGroupsPerReplicationGroupQuotaExceeded"
    Prelude.. Prelude.hasStatus 400

-- | The specified replication group already exists.
_ReplicationGroupAlreadyExistsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ReplicationGroupAlreadyExistsFault =
  Prelude._MatchServiceError
    defaultService
    "ReplicationGroupAlreadyExists"
    Prelude.. Prelude.hasStatus 400

-- | The specified Amazon EC2 security group is already authorized for the
-- specified cache security group.
_AuthorizationAlreadyExistsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AuthorizationAlreadyExistsFault =
  Prelude._MatchServiceError
    defaultService
    "AuthorizationAlreadyExists"
    Prelude.. Prelude.hasStatus 400

-- | The request cannot be processed because it would exceed the user\'s
-- cache node quota.
_ReservedCacheNodeQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ReservedCacheNodeQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "ReservedCacheNodeQuotaExceeded"
    Prelude.. Prelude.hasStatus 400

-- | The value for a parameter is invalid.
_InvalidParameterValueException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidParameterValueException =
  Prelude._MatchServiceError
    defaultService
    "InvalidParameterValue"
    Prelude.. Prelude.hasStatus 400

-- | The requested cache security group name does not refer to an existing
-- cache security group.
_CacheSecurityGroupNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CacheSecurityGroupNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "CacheSecurityGroupNotFound"
    Prelude.. Prelude.hasStatus 404

-- | You already have a reservation with the given identifier.
_ReservedCacheNodeAlreadyExistsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ReservedCacheNodeAlreadyExistsFault =
  Prelude._MatchServiceError
    defaultService
    "ReservedCacheNodeAlreadyExists"
    Prelude.. Prelude.hasStatus 404

-- | The requested cache subnet group is currently in use.
_CacheSubnetGroupInUse :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CacheSubnetGroupInUse =
  Prelude._MatchServiceError
    defaultService
    "CacheSubnetGroupInUse"
    Prelude.. Prelude.hasStatus 400

-- | The Global Datastore is not available or in primary-only state.
_InvalidGlobalReplicationGroupStateFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidGlobalReplicationGroupStateFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidGlobalReplicationGroupState"
    Prelude.. Prelude.hasStatus 400

-- | The Global Datastore does not exist
_GlobalReplicationGroupNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_GlobalReplicationGroupNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "GlobalReplicationGroupNotFoundFault"
    Prelude.. Prelude.hasStatus 404

-- | The requested cache subnet group name does not refer to an existing
-- cache subnet group.
_CacheSubnetGroupNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CacheSubnetGroupNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "CacheSubnetGroupNotFoundFault"
    Prelude.. Prelude.hasStatus 400

-- | A cache security group with the specified name already exists.
_CacheSecurityGroupAlreadyExistsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CacheSecurityGroupAlreadyExistsFault =
  Prelude._MatchServiceError
    defaultService
    "CacheSecurityGroupAlreadyExists"
    Prelude.. Prelude.hasStatus 400

-- | The requested Amazon Resource Name (ARN) does not refer to an existing
-- resource.
_InvalidARNFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidARNFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidARN"
    Prelude.. Prelude.hasStatus 400

-- | The node group specified by the @NodeGroupId@ parameter could not be
-- found. Please verify that the node group exists and that you spelled the
-- @NodeGroupId@ value correctly.
_NodeGroupNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NodeGroupNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "NodeGroupNotFoundFault"
    Prelude.. Prelude.hasStatus 404

-- | The request cannot be processed because it would exceed the allowed
-- number of cache nodes in a single cluster.
_NodeQuotaForClusterExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NodeQuotaForClusterExceededFault =
  Prelude._MatchServiceError
    defaultService
    "NodeQuotaForClusterExceeded"
    Prelude.. Prelude.hasStatus 400

-- | The targeted replication group is not available.
_ReplicationGroupAlreadyUnderMigrationFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ReplicationGroupAlreadyUnderMigrationFault =
  Prelude._MatchServiceError
    defaultService
    "ReplicationGroupAlreadyUnderMigrationFault"
    Prelude.. Prelude.hasStatus 400

-- | You must add default user to a user group.
_DefaultUserRequired :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DefaultUserRequired =
  Prelude._MatchServiceError
    defaultService
    "DefaultUserRequired"
    Prelude.. Prelude.hasStatus 400

-- | The requested cache parameter group name does not refer to an existing
-- cache parameter group.
_CacheParameterGroupNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CacheParameterGroupNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "CacheParameterGroupNotFound"
    Prelude.. Prelude.hasStatus 404

-- | A user with this username already exists.
_DuplicateUserNameFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DuplicateUserNameFault =
  Prelude._MatchServiceError
    defaultService
    "DuplicateUserName"
    Prelude.. Prelude.hasStatus 400

-- | The current state of the snapshot does not allow the requested operation
-- to occur.
_InvalidSnapshotStateFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidSnapshotStateFault =
  Prelude._MatchServiceError
    defaultService
    "InvalidSnapshotState"
    Prelude.. Prelude.hasStatus 400

-- | The designated replication group is not available for data migration.
_ReplicationGroupNotUnderMigrationFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ReplicationGroupNotUnderMigrationFault =
  Prelude._MatchServiceError
    defaultService
    "ReplicationGroupNotUnderMigrationFault"
    Prelude.. Prelude.hasStatus 400

-- | A user with this ID already exists.
_UserAlreadyExistsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_UserAlreadyExistsFault =
  Prelude._MatchServiceError
    defaultService
    "UserAlreadyExists"
    Prelude.. Prelude.hasStatus 400

-- |
_DefaultUserAssociatedToUserGroupFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_DefaultUserAssociatedToUserGroupFault =
  Prelude._MatchServiceError
    defaultService
    "DefaultUserAssociatedToUserGroup"
    Prelude.. Prelude.hasStatus 400

-- | The request cannot be processed because it would exceed the maximum
-- number of cache security groups.
_CacheParameterGroupQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CacheParameterGroupQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "CacheParameterGroupQuotaExceeded"
    Prelude.. Prelude.hasStatus 400

-- | The specified Amazon EC2 security group is not authorized for the
-- specified cache security group.
_AuthorizationNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_AuthorizationNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "AuthorizationNotFound"
    Prelude.. Prelude.hasStatus 404

-- | The requested cache node offering does not exist.
_ReservedCacheNodesOfferingNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ReservedCacheNodesOfferingNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "ReservedCacheNodesOfferingNotFound"
    Prelude.. Prelude.hasStatus 404

-- | An invalid subnet identifier was specified.
_InvalidSubnet :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InvalidSubnet =
  Prelude._MatchServiceError
    defaultService
    "InvalidSubnet"
    Prelude.. Prelude.hasStatus 400

-- | The request cannot be processed because it would exceed the allowed
-- number of clusters per customer.
_ClusterQuotaForCustomerExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ClusterQuotaForCustomerExceededFault =
  Prelude._MatchServiceError
    defaultService
    "ClusterQuotaForCustomerExceeded"
    Prelude.. Prelude.hasStatus 400

-- | The specified replication group does not exist.
_ReplicationGroupNotFoundFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ReplicationGroupNotFoundFault =
  Prelude._MatchServiceError
    defaultService
    "ReplicationGroupNotFoundFault"
    Prelude.. Prelude.hasStatus 404

-- | You already have a cluster with the given identifier.
_CacheClusterAlreadyExistsFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CacheClusterAlreadyExistsFault =
  Prelude._MatchServiceError
    defaultService
    "CacheClusterAlreadyExists"
    Prelude.. Prelude.hasStatus 400

-- | The request cannot be processed because it would cause the resource to
-- have more than the allowed number of tags. The maximum number of tags
-- permitted on a resource is 50.
_TagQuotaPerResourceExceeded :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_TagQuotaPerResourceExceeded =
  Prelude._MatchServiceError
    defaultService
    "TagQuotaPerResourceExceeded"
    Prelude.. Prelude.hasStatus 400

-- | The request cannot be processed because it would exceed the allowed
-- number of cache security groups.
_CacheSecurityGroupQuotaExceededFault :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_CacheSecurityGroupQuotaExceededFault =
  Prelude._MatchServiceError
    defaultService
    "QuotaExceeded.CacheSecurityGroup"
    Prelude.. Prelude.hasStatus 400
