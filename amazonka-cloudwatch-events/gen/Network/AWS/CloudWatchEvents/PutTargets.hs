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
-- Module      : Network.AWS.CloudWatchEvents.PutTargets
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds the specified targets to the specified rule, or updates the targets if they are already associated with the rule.
--
--
-- Targets are the resources that are invoked when a rule is triggered.
--
-- You can configure the following as targets for Events:
--
--     * EC2 instances
--
--     * SSM Run Command
--
--     * SSM Automation
--
--     * AWS Lambda functions
--
--     * Data streams in Amazon Kinesis Data Streams
--
--     * Data delivery streams in Amazon Kinesis Data Firehose
--
--     * Amazon ECS tasks
--
--     * AWS Step Functions state machines
--
--     * AWS Batch jobs
--
--     * AWS CodeBuild projects
--
--     * Pipelines in AWS CodePipeline
--
--     * Amazon Inspector assessment templates
--
--     * Amazon SNS topics
--
--     * Amazon SQS queues, including FIFO queues
--
--     * The default event bus of another AWS account
--
--     * Amazon API Gateway REST APIs
--
--     * Redshift Clusters to invoke Data API ExecuteStatement on
--
--     * Custom/SaaS HTTPS APIs via EventBridge API Destinations
--
--
--
-- Creating rules with built-in targets is supported only in the AWS Management Console. The built-in targets are @EC2 CreateSnapshot API call@ , @EC2 RebootInstances API call@ , @EC2 StopInstances API call@ , and @EC2 TerminateInstances API call@ .
--
-- For some target types, @PutTargets@ provides target-specific parameters. If the target is a Kinesis data stream, you can optionally specify which shard the event goes to by using the @KinesisParameters@ argument. To invoke a command on multiple EC2 instances with one rule, you can use the @RunCommandParameters@ field.
--
-- To be able to make API calls against the resources that you own, Amazon EventBridge (CloudWatch Events) needs the appropriate permissions. For AWS Lambda and Amazon SNS resources, EventBridge relies on resource-based policies. For EC2 instances, Kinesis data streams, AWS Step Functions state machines and API Gateway REST APIs, EventBridge relies on IAM roles that you specify in the @RoleARN@ argument in @PutTargets@ . For more information, see <https://docs.aws.amazon.com/eventbridge/latest/userguide/auth-and-access-control-eventbridge.html Authentication and Access Control> in the /Amazon EventBridge User Guide/ .
--
-- If another AWS account is in the same region and has granted you permission (using @PutPermission@ ), you can send events to that account. Set that account's event bus as a target of the rules in your account. To send the matched events to the other account, specify that account's event bus as the @Arn@ value when you run @PutTargets@ . If your account sends events to another account, your account is charged for each sent event. Each event sent to another account is charged as a custom event. The account receiving the event is not charged. For more information, see <https://aws.amazon.com/eventbridge/pricing/ Amazon EventBridge (CloudWatch Events) Pricing> .
--
-- If you are setting the event bus of another account as the target, and that account granted permission to your account through an organization instead of directly by the account ID, then you must specify a @RoleArn@ with proper permissions in the @Target@ structure. For more information, see <https://docs.aws.amazon.com/eventbridge/latest/userguide/eventbridge-cross-account-event-delivery.html Sending and Receiving Events Between AWS Accounts> in the /Amazon EventBridge User Guide/ .
--
-- For more information about enabling cross-account events, see 'PutPermission' .
--
-- __Input__ , __InputPath__ , and __InputTransformer__ are mutually exclusive and optional parameters of a target. When a rule is triggered due to a matched event:
--
--     * If none of the following arguments are specified for a target, then the entire event is passed to the target in JSON format (unless the target is Amazon EC2 Run Command or Amazon ECS task, in which case nothing from the event is passed to the target).
--
--     * If __Input__ is specified in the form of valid JSON, then the matched event is overridden with this constant.
--
--     * If __InputPath__ is specified in the form of JSONPath (for example, @> .detail@ ), then only the part of the event specified in the path is passed to the target (for example, only the detail part of the event is passed).
--
--     * If __InputTransformer__ is specified, then one or more specified JSONPaths are extracted from the event and used as values in a template that you specify as the input to the target.
--
--
--
-- When you specify @InputPath@ or @InputTransformer@ , you must use JSON dot notation, not bracket notation.
--
-- When you add targets to a rule and the associated rule triggers soon after, new or updated targets might not be immediately invoked. Allow a short period of time for changes to take effect.
--
-- This action can partially fail if too many requests are made at the same time. If that happens, @FailedEntryCount@ is non-zero in the response and each entry in @FailedEntries@ provides the ID of the failed target and the error code.
module Network.AWS.CloudWatchEvents.PutTargets
  ( -- * Creating a Request
    putTargets,
    PutTargets,

    -- * Request Lenses
    ptEventBusName,
    ptRule,
    ptTargets,

    -- * Destructuring the Response
    putTargetsResponse,
    PutTargetsResponse,

    -- * Response Lenses
    ptrrsFailedEntryCount,
    ptrrsFailedEntries,
    ptrrsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putTargets' smart constructor.
data PutTargets = PutTargets'
  { _ptEventBusName ::
      !(Maybe Text),
    _ptRule :: !Text,
    _ptTargets :: !(List1 Target)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutTargets' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptEventBusName' - The name or ARN of the event bus associated with the rule. If you omit this, the default event bus is used.
--
-- * 'ptRule' - The name of the rule.
--
-- * 'ptTargets' - The targets to update or add to the rule.
putTargets ::
  -- | 'ptRule'
  Text ->
  -- | 'ptTargets'
  NonEmpty Target ->
  PutTargets
putTargets pRule_ pTargets_ =
  PutTargets'
    { _ptEventBusName = Nothing,
      _ptRule = pRule_,
      _ptTargets = _List1 # pTargets_
    }

-- | The name or ARN of the event bus associated with the rule. If you omit this, the default event bus is used.
ptEventBusName :: Lens' PutTargets (Maybe Text)
ptEventBusName = lens _ptEventBusName (\s a -> s {_ptEventBusName = a})

-- | The name of the rule.
ptRule :: Lens' PutTargets Text
ptRule = lens _ptRule (\s a -> s {_ptRule = a})

-- | The targets to update or add to the rule.
ptTargets :: Lens' PutTargets (NonEmpty Target)
ptTargets = lens _ptTargets (\s a -> s {_ptTargets = a}) . _List1

instance AWSRequest PutTargets where
  type Rs PutTargets = PutTargetsResponse
  request = postJSON cloudWatchEvents
  response =
    receiveJSON
      ( \s h x ->
          PutTargetsResponse'
            <$> (x .?> "FailedEntryCount")
            <*> (x .?> "FailedEntries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable PutTargets

instance NFData PutTargets

instance ToHeaders PutTargets where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.PutTargets" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutTargets where
  toJSON PutTargets' {..} =
    object
      ( catMaybes
          [ ("EventBusName" .=) <$> _ptEventBusName,
            Just ("Rule" .= _ptRule),
            Just ("Targets" .= _ptTargets)
          ]
      )

instance ToPath PutTargets where
  toPath = const "/"

instance ToQuery PutTargets where
  toQuery = const mempty

-- | /See:/ 'putTargetsResponse' smart constructor.
data PutTargetsResponse = PutTargetsResponse'
  { _ptrrsFailedEntryCount ::
      !(Maybe Int),
    _ptrrsFailedEntries ::
      !(Maybe [PutTargetsResultEntry]),
    _ptrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutTargetsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ptrrsFailedEntryCount' - The number of failed entries.
--
-- * 'ptrrsFailedEntries' - The failed target entries.
--
-- * 'ptrrsResponseStatus' - -- | The response status code.
putTargetsResponse ::
  -- | 'ptrrsResponseStatus'
  Int ->
  PutTargetsResponse
putTargetsResponse pResponseStatus_ =
  PutTargetsResponse'
    { _ptrrsFailedEntryCount =
        Nothing,
      _ptrrsFailedEntries = Nothing,
      _ptrrsResponseStatus = pResponseStatus_
    }

-- | The number of failed entries.
ptrrsFailedEntryCount :: Lens' PutTargetsResponse (Maybe Int)
ptrrsFailedEntryCount = lens _ptrrsFailedEntryCount (\s a -> s {_ptrrsFailedEntryCount = a})

-- | The failed target entries.
ptrrsFailedEntries :: Lens' PutTargetsResponse [PutTargetsResultEntry]
ptrrsFailedEntries = lens _ptrrsFailedEntries (\s a -> s {_ptrrsFailedEntries = a}) . _Default . _Coerce

-- | -- | The response status code.
ptrrsResponseStatus :: Lens' PutTargetsResponse Int
ptrrsResponseStatus = lens _ptrrsResponseStatus (\s a -> s {_ptrrsResponseStatus = a})

instance NFData PutTargetsResponse
