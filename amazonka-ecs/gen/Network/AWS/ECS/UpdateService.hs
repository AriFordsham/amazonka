{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.UpdateService
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- /Important:/ Updating the task placement strategies and constraints on an Amazon ECS service remains in preview and is a Beta Service as defined by and subject to the Beta Service Participation Service Terms located at <https://aws.amazon.com/service-terms https://aws.amazon.com/service-terms> ("Beta Terms"). These Beta Terms apply to your participation in this preview.
--
--
-- Modifies the parameters of a service.
--
-- For services using the rolling update (@ECS@ ) deployment controller, the desired count, deployment configuration, network configuration, task placement constraints and strategies, or task definition used can be updated.
--
-- For services using the blue/green (@CODE_DEPLOY@ ) deployment controller, only the desired count, deployment configuration, task placement constraints and strategies, and health check grace period can be updated using this API. If the network configuration, platform version, or task definition need to be updated, a new AWS CodeDeploy deployment should be created. For more information, see <https://docs.aws.amazon.com/codedeploy/latest/APIReference/API_CreateDeployment.html CreateDeployment> in the /AWS CodeDeploy API Reference/ .
--
-- For services using an external deployment controller, you can update only the desired count, task placement constraints and strategies, and health check grace period using this API. If the launch type, load balancer, network configuration, platform version, or task definition need to be updated, you should create a new task set. For more information, see 'CreateTaskSet' .
--
-- You can add to or subtract from the number of instantiations of a task definition in a service by specifying the cluster that the service is running in and a new @desiredCount@ parameter.
--
-- If you have updated the Docker image of your application, you can create a new task definition with that image and deploy it to your service. The service scheduler uses the minimum healthy percent and maximum percent parameters (in the service's deployment configuration) to determine the deployment strategy.
--
-- You can also update the deployment configuration of a service. When a deployment is triggered by updating the task definition of a service, the service scheduler uses the deployment configuration parameters, @minimumHealthyPercent@ and @maximumPercent@ , to determine the deployment strategy.
--
--     * If @minimumHealthyPercent@ is below 100%, the scheduler can ignore @desiredCount@ temporarily during a deployment. For example, if @desiredCount@ is four tasks, a minimum of 50% allows the scheduler to stop two existing tasks before starting two new tasks. Tasks for services that do not use a load balancer are considered healthy if they are in the @RUNNING@ state. Tasks for services that use a load balancer are considered healthy if they are in the @RUNNING@ state and the container instance they are hosted on is reported as healthy by the load balancer.
--
--     * The @maximumPercent@ parameter represents an upper limit on the number of running tasks during a deployment, which enables you to define the deployment batch size. For example, if @desiredCount@ is four tasks, a maximum of 200% starts four new tasks before stopping the four older tasks (provided that the cluster resources required to do this are available).
--
--
--
-- When 'UpdateService' stops a task during a deployment, the equivalent of @docker stop@ is issued to the containers running in the task. This results in a @SIGTERM@ and a 30-second timeout, after which @SIGKILL@ is sent and the containers are forcibly stopped. If the container handles the @SIGTERM@ gracefully and exits within 30 seconds from receiving it, no @SIGKILL@ is sent.
--
-- When the service scheduler launches new tasks, it determines task placement in your cluster with the following logic:
--
--     * Determine which of the container instances in your cluster can support your service's task definition (for example, they have the required CPU, memory, ports, and container instance attributes).
--
--     * By default, the service scheduler attempts to balance tasks across Availability Zones in this manner (although you can choose a different placement strategy):
--
--     * Sort the valid container instances by the fewest number of running tasks for this service in the same Availability Zone as the instance. For example, if zone A has one running service task and zones B and C each have zero, valid container instances in either zone B or C are considered optimal for placement.
--
--     * Place the new service task on a valid container instance in an optimal Availability Zone (based on the previous steps), favoring container instances with the fewest number of running tasks for this service.
--
--
--
--
--
-- When the service scheduler stops running tasks, it attempts to maintain balance across the Availability Zones in your cluster using the following logic:
--
--     * Sort the container instances by the largest number of running tasks for this service in the same Availability Zone as the instance. For example, if zone A has one running service task and zones B and C each have two, container instances in either zone B or C are considered optimal for termination.
--
--     * Stop the task on a container instance in an optimal Availability Zone (based on the previous steps), favoring container instances with the largest number of running tasks for this service.
module Network.AWS.ECS.UpdateService
  ( -- * Creating a Request
    updateService,
    UpdateService,

    -- * Request Lenses
    usDeploymentConfiguration,
    usNetworkConfiguration,
    usCapacityProviderStrategy,
    usDesiredCount,
    usPlatformVersion,
    usPlacementStrategy,
    usPlacementConstraints,
    usHealthCheckGracePeriodSeconds,
    usForceNewDeployment,
    usTaskDefinition,
    usCluster,
    usService,

    -- * Destructuring the Response
    updateServiceResponse,
    UpdateServiceResponse,

    -- * Response Lenses
    usrrsService,
    usrrsResponseStatus,
  )
where

import Network.AWS.ECS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateService' smart constructor.
data UpdateService = UpdateService'
  { _usDeploymentConfiguration ::
      !(Maybe DeploymentConfiguration),
    _usNetworkConfiguration ::
      !(Maybe NetworkConfiguration),
    _usCapacityProviderStrategy ::
      !(Maybe [CapacityProviderStrategyItem]),
    _usDesiredCount :: !(Maybe Int),
    _usPlatformVersion :: !(Maybe Text),
    _usPlacementStrategy ::
      !(Maybe [PlacementStrategy]),
    _usPlacementConstraints ::
      !(Maybe [PlacementConstraint]),
    _usHealthCheckGracePeriodSeconds ::
      !(Maybe Int),
    _usForceNewDeployment :: !(Maybe Bool),
    _usTaskDefinition :: !(Maybe Text),
    _usCluster :: !(Maybe Text),
    _usService :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateService' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usDeploymentConfiguration' - Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.
--
-- * 'usNetworkConfiguration' - Undocumented member.
--
-- * 'usCapacityProviderStrategy' - The capacity provider strategy to update the service to use. If the service is using the default capacity provider strategy for the cluster, the service can be updated to use one or more capacity providers as opposed to the default capacity provider strategy. However, when a service is using a capacity provider strategy that is not the default capacity provider strategy, the service cannot be updated to use the cluster's default capacity provider strategy. A capacity provider strategy consists of one or more capacity providers along with the @base@ and @weight@ to assign to them. A capacity provider must be associated with the cluster to be used in a capacity provider strategy. The 'PutClusterCapacityProviders' API is used to associate a capacity provider with a cluster. Only capacity providers with an @ACTIVE@ or @UPDATING@ status can be used. If specifying a capacity provider that uses an Auto Scaling group, the capacity provider must already be created. New capacity providers can be created with the 'CreateCapacityProvider' API operation. To use a AWS Fargate capacity provider, specify either the @FARGATE@ or @FARGATE_SPOT@ capacity providers. The AWS Fargate capacity providers are available to all accounts and only need to be associated with a cluster to be used. The 'PutClusterCapacityProviders' API operation is used to update the list of available capacity providers for a cluster after the cluster is created.
--
-- * 'usDesiredCount' - The number of instantiations of the task to place and keep running in your service.
--
-- * 'usPlatformVersion' - The platform version on which your tasks in the service are running. A platform version is only specified for tasks using the Fargate launch type. If a platform version is not specified, the @LATEST@ platform version is used by default. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html AWS Fargate Platform Versions> in the /Amazon Elastic Container Service Developer Guide/ .
--
-- * 'usPlacementStrategy' - The task placement strategy objects to update the service to use. If no value is specified, the existing placement strategy for the service will remain unchanged. If this value is specified, it will override the existing placement strategy defined for the service. To remove an existing placement strategy, specify an empty object. You can specify a maximum of five strategy rules per service.
--
-- * 'usPlacementConstraints' - An array of task placement constraint objects to update the service to use. If no value is specified, the existing placement constraints for the service will remain unchanged. If this value is specified, it will override any existing placement constraints defined for the service. To remove all existing placement constraints, specify an empty array. You can specify a maximum of 10 constraints per task (this limit includes constraints in the task definition and those specified at runtime).
--
-- * 'usHealthCheckGracePeriodSeconds' - The period of time, in seconds, that the Amazon ECS service scheduler should ignore unhealthy Elastic Load Balancing target health checks after a task has first started. This is only valid if your service is configured to use a load balancer. If your service's tasks take a while to start and respond to Elastic Load Balancing health checks, you can specify a health check grace period of up to 2,147,483,647 seconds. During that time, the Amazon ECS service scheduler ignores the Elastic Load Balancing health check status. This grace period can prevent the ECS service scheduler from marking tasks as unhealthy and stopping them before they have time to come up.
--
-- * 'usForceNewDeployment' - Whether to force a new deployment of the service. Deployments are not forced by default. You can use this option to trigger a new deployment with no service definition changes. For example, you can update a service's tasks to use a newer Docker image with the same image/tag combination (@my_image:latest@ ) or to roll Fargate tasks onto a newer platform version.
--
-- * 'usTaskDefinition' - The @family@ and @revision@ (@family:revision@ ) or full ARN of the task definition to run in your service. If a @revision@ is not specified, the latest @ACTIVE@ revision is used. If you modify the task definition with @UpdateService@ , Amazon ECS spawns a task with the new version of the task definition and then stops an old task after the new version is running.
--
-- * 'usCluster' - The short name or full Amazon Resource Name (ARN) of the cluster that your service is running on. If you do not specify a cluster, the default cluster is assumed.
--
-- * 'usService' - The name of the service to update.
updateService ::
  -- | 'usService'
  Text ->
  UpdateService
updateService pService_ =
  UpdateService'
    { _usDeploymentConfiguration =
        Nothing,
      _usNetworkConfiguration = Nothing,
      _usCapacityProviderStrategy = Nothing,
      _usDesiredCount = Nothing,
      _usPlatformVersion = Nothing,
      _usPlacementStrategy = Nothing,
      _usPlacementConstraints = Nothing,
      _usHealthCheckGracePeriodSeconds = Nothing,
      _usForceNewDeployment = Nothing,
      _usTaskDefinition = Nothing,
      _usCluster = Nothing,
      _usService = pService_
    }

-- | Optional deployment parameters that control how many tasks run during the deployment and the ordering of stopping and starting tasks.
usDeploymentConfiguration :: Lens' UpdateService (Maybe DeploymentConfiguration)
usDeploymentConfiguration = lens _usDeploymentConfiguration (\s a -> s {_usDeploymentConfiguration = a})

-- | Undocumented member.
usNetworkConfiguration :: Lens' UpdateService (Maybe NetworkConfiguration)
usNetworkConfiguration = lens _usNetworkConfiguration (\s a -> s {_usNetworkConfiguration = a})

-- | The capacity provider strategy to update the service to use. If the service is using the default capacity provider strategy for the cluster, the service can be updated to use one or more capacity providers as opposed to the default capacity provider strategy. However, when a service is using a capacity provider strategy that is not the default capacity provider strategy, the service cannot be updated to use the cluster's default capacity provider strategy. A capacity provider strategy consists of one or more capacity providers along with the @base@ and @weight@ to assign to them. A capacity provider must be associated with the cluster to be used in a capacity provider strategy. The 'PutClusterCapacityProviders' API is used to associate a capacity provider with a cluster. Only capacity providers with an @ACTIVE@ or @UPDATING@ status can be used. If specifying a capacity provider that uses an Auto Scaling group, the capacity provider must already be created. New capacity providers can be created with the 'CreateCapacityProvider' API operation. To use a AWS Fargate capacity provider, specify either the @FARGATE@ or @FARGATE_SPOT@ capacity providers. The AWS Fargate capacity providers are available to all accounts and only need to be associated with a cluster to be used. The 'PutClusterCapacityProviders' API operation is used to update the list of available capacity providers for a cluster after the cluster is created.
usCapacityProviderStrategy :: Lens' UpdateService [CapacityProviderStrategyItem]
usCapacityProviderStrategy = lens _usCapacityProviderStrategy (\s a -> s {_usCapacityProviderStrategy = a}) . _Default . _Coerce

-- | The number of instantiations of the task to place and keep running in your service.
usDesiredCount :: Lens' UpdateService (Maybe Int)
usDesiredCount = lens _usDesiredCount (\s a -> s {_usDesiredCount = a})

-- | The platform version on which your tasks in the service are running. A platform version is only specified for tasks using the Fargate launch type. If a platform version is not specified, the @LATEST@ platform version is used by default. For more information, see <https://docs.aws.amazon.com/AmazonECS/latest/developerguide/platform_versions.html AWS Fargate Platform Versions> in the /Amazon Elastic Container Service Developer Guide/ .
usPlatformVersion :: Lens' UpdateService (Maybe Text)
usPlatformVersion = lens _usPlatformVersion (\s a -> s {_usPlatformVersion = a})

-- | The task placement strategy objects to update the service to use. If no value is specified, the existing placement strategy for the service will remain unchanged. If this value is specified, it will override the existing placement strategy defined for the service. To remove an existing placement strategy, specify an empty object. You can specify a maximum of five strategy rules per service.
usPlacementStrategy :: Lens' UpdateService [PlacementStrategy]
usPlacementStrategy = lens _usPlacementStrategy (\s a -> s {_usPlacementStrategy = a}) . _Default . _Coerce

-- | An array of task placement constraint objects to update the service to use. If no value is specified, the existing placement constraints for the service will remain unchanged. If this value is specified, it will override any existing placement constraints defined for the service. To remove all existing placement constraints, specify an empty array. You can specify a maximum of 10 constraints per task (this limit includes constraints in the task definition and those specified at runtime).
usPlacementConstraints :: Lens' UpdateService [PlacementConstraint]
usPlacementConstraints = lens _usPlacementConstraints (\s a -> s {_usPlacementConstraints = a}) . _Default . _Coerce

-- | The period of time, in seconds, that the Amazon ECS service scheduler should ignore unhealthy Elastic Load Balancing target health checks after a task has first started. This is only valid if your service is configured to use a load balancer. If your service's tasks take a while to start and respond to Elastic Load Balancing health checks, you can specify a health check grace period of up to 2,147,483,647 seconds. During that time, the Amazon ECS service scheduler ignores the Elastic Load Balancing health check status. This grace period can prevent the ECS service scheduler from marking tasks as unhealthy and stopping them before they have time to come up.
usHealthCheckGracePeriodSeconds :: Lens' UpdateService (Maybe Int)
usHealthCheckGracePeriodSeconds = lens _usHealthCheckGracePeriodSeconds (\s a -> s {_usHealthCheckGracePeriodSeconds = a})

-- | Whether to force a new deployment of the service. Deployments are not forced by default. You can use this option to trigger a new deployment with no service definition changes. For example, you can update a service's tasks to use a newer Docker image with the same image/tag combination (@my_image:latest@ ) or to roll Fargate tasks onto a newer platform version.
usForceNewDeployment :: Lens' UpdateService (Maybe Bool)
usForceNewDeployment = lens _usForceNewDeployment (\s a -> s {_usForceNewDeployment = a})

-- | The @family@ and @revision@ (@family:revision@ ) or full ARN of the task definition to run in your service. If a @revision@ is not specified, the latest @ACTIVE@ revision is used. If you modify the task definition with @UpdateService@ , Amazon ECS spawns a task with the new version of the task definition and then stops an old task after the new version is running.
usTaskDefinition :: Lens' UpdateService (Maybe Text)
usTaskDefinition = lens _usTaskDefinition (\s a -> s {_usTaskDefinition = a})

-- | The short name or full Amazon Resource Name (ARN) of the cluster that your service is running on. If you do not specify a cluster, the default cluster is assumed.
usCluster :: Lens' UpdateService (Maybe Text)
usCluster = lens _usCluster (\s a -> s {_usCluster = a})

-- | The name of the service to update.
usService :: Lens' UpdateService Text
usService = lens _usService (\s a -> s {_usService = a})

instance AWSRequest UpdateService where
  type Rs UpdateService = UpdateServiceResponse
  request = postJSON ecs
  response =
    receiveJSON
      ( \s h x ->
          UpdateServiceResponse'
            <$> (x .?> "service") <*> (pure (fromEnum s))
      )

instance Hashable UpdateService

instance NFData UpdateService

instance ToHeaders UpdateService where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerServiceV20141113.UpdateService" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateService where
  toJSON UpdateService' {..} =
    object
      ( catMaybes
          [ ("deploymentConfiguration" .=)
              <$> _usDeploymentConfiguration,
            ("networkConfiguration" .=)
              <$> _usNetworkConfiguration,
            ("capacityProviderStrategy" .=)
              <$> _usCapacityProviderStrategy,
            ("desiredCount" .=) <$> _usDesiredCount,
            ("platformVersion" .=) <$> _usPlatformVersion,
            ("placementStrategy" .=) <$> _usPlacementStrategy,
            ("placementConstraints" .=)
              <$> _usPlacementConstraints,
            ("healthCheckGracePeriodSeconds" .=)
              <$> _usHealthCheckGracePeriodSeconds,
            ("forceNewDeployment" .=) <$> _usForceNewDeployment,
            ("taskDefinition" .=) <$> _usTaskDefinition,
            ("cluster" .=) <$> _usCluster,
            Just ("service" .= _usService)
          ]
      )

instance ToPath UpdateService where
  toPath = const "/"

instance ToQuery UpdateService where
  toQuery = const mempty

-- | /See:/ 'updateServiceResponse' smart constructor.
data UpdateServiceResponse = UpdateServiceResponse'
  { _usrrsService ::
      !(Maybe ContainerService),
    _usrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'UpdateServiceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'usrrsService' - The full description of your service following the update call.
--
-- * 'usrrsResponseStatus' - -- | The response status code.
updateServiceResponse ::
  -- | 'usrrsResponseStatus'
  Int ->
  UpdateServiceResponse
updateServiceResponse pResponseStatus_ =
  UpdateServiceResponse'
    { _usrrsService = Nothing,
      _usrrsResponseStatus = pResponseStatus_
    }

-- | The full description of your service following the update call.
usrrsService :: Lens' UpdateServiceResponse (Maybe ContainerService)
usrrsService = lens _usrrsService (\s a -> s {_usrrsService = a})

-- | -- | The response status code.
usrrsResponseStatus :: Lens' UpdateServiceResponse Int
usrrsResponseStatus = lens _usrrsResponseStatus (\s a -> s {_usrrsResponseStatus = a})

instance NFData UpdateServiceResponse
