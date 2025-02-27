{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.LexModels.Types
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types
  ( -- * Service Configuration
    defaultService,

    -- * Errors
    _NotFoundException,
    _BadRequestException,
    _ResourceInUseException,
    _LimitExceededException,
    _ConflictException,
    _InternalFailureException,
    _PreconditionFailedException,

    -- * ChannelStatus
    ChannelStatus (..),

    -- * ChannelType
    ChannelType (..),

    -- * ContentType
    ContentType (..),

    -- * Destination
    Destination (..),

    -- * ExportStatus
    ExportStatus (..),

    -- * ExportType
    ExportType (..),

    -- * FulfillmentActivityType
    FulfillmentActivityType (..),

    -- * ImportStatus
    ImportStatus (..),

    -- * LexStatus
    LexStatus (..),

    -- * Locale
    Locale (..),

    -- * LogType
    LogType (..),

    -- * MergeStrategy
    MergeStrategy (..),

    -- * ObfuscationSetting
    ObfuscationSetting (..),

    -- * ProcessBehavior
    ProcessBehavior (..),

    -- * ResourceType
    ResourceType (..),

    -- * SlotConstraint
    SlotConstraint (..),

    -- * SlotValueSelectionStrategy
    SlotValueSelectionStrategy (..),

    -- * StatusType
    StatusType (..),

    -- * BotAliasMetadata
    BotAliasMetadata (..),
    newBotAliasMetadata,
    botAliasMetadata_createdDate,
    botAliasMetadata_botName,
    botAliasMetadata_lastUpdatedDate,
    botAliasMetadata_botVersion,
    botAliasMetadata_name,
    botAliasMetadata_description,
    botAliasMetadata_checksum,
    botAliasMetadata_conversationLogs,

    -- * BotChannelAssociation
    BotChannelAssociation (..),
    newBotChannelAssociation,
    botChannelAssociation_botAlias,
    botChannelAssociation_createdDate,
    botChannelAssociation_status,
    botChannelAssociation_botConfiguration,
    botChannelAssociation_botName,
    botChannelAssociation_name,
    botChannelAssociation_failureReason,
    botChannelAssociation_description,
    botChannelAssociation_type,

    -- * BotMetadata
    BotMetadata (..),
    newBotMetadata,
    botMetadata_createdDate,
    botMetadata_status,
    botMetadata_lastUpdatedDate,
    botMetadata_version,
    botMetadata_name,
    botMetadata_description,

    -- * BuiltinIntentMetadata
    BuiltinIntentMetadata (..),
    newBuiltinIntentMetadata,
    builtinIntentMetadata_signature,
    builtinIntentMetadata_supportedLocales,

    -- * BuiltinIntentSlot
    BuiltinIntentSlot (..),
    newBuiltinIntentSlot,
    builtinIntentSlot_name,

    -- * BuiltinSlotTypeMetadata
    BuiltinSlotTypeMetadata (..),
    newBuiltinSlotTypeMetadata,
    builtinSlotTypeMetadata_signature,
    builtinSlotTypeMetadata_supportedLocales,

    -- * CodeHook
    CodeHook (..),
    newCodeHook,
    codeHook_uri,
    codeHook_messageVersion,

    -- * ConversationLogsRequest
    ConversationLogsRequest (..),
    newConversationLogsRequest,
    conversationLogsRequest_logSettings,
    conversationLogsRequest_iamRoleArn,

    -- * ConversationLogsResponse
    ConversationLogsResponse (..),
    newConversationLogsResponse,
    conversationLogsResponse_iamRoleArn,
    conversationLogsResponse_logSettings,

    -- * EnumerationValue
    EnumerationValue (..),
    newEnumerationValue,
    enumerationValue_synonyms,
    enumerationValue_value,

    -- * FollowUpPrompt
    FollowUpPrompt (..),
    newFollowUpPrompt,
    followUpPrompt_prompt,
    followUpPrompt_rejectionStatement,

    -- * FulfillmentActivity
    FulfillmentActivity (..),
    newFulfillmentActivity,
    fulfillmentActivity_codeHook,
    fulfillmentActivity_type,

    -- * InputContext
    InputContext (..),
    newInputContext,
    inputContext_name,

    -- * Intent
    Intent (..),
    newIntent,
    intent_intentName,
    intent_intentVersion,

    -- * IntentMetadata
    IntentMetadata (..),
    newIntentMetadata,
    intentMetadata_createdDate,
    intentMetadata_lastUpdatedDate,
    intentMetadata_version,
    intentMetadata_name,
    intentMetadata_description,

    -- * KendraConfiguration
    KendraConfiguration (..),
    newKendraConfiguration,
    kendraConfiguration_queryFilterString,
    kendraConfiguration_kendraIndex,
    kendraConfiguration_role,

    -- * LogSettingsRequest
    LogSettingsRequest (..),
    newLogSettingsRequest,
    logSettingsRequest_kmsKeyArn,
    logSettingsRequest_logType,
    logSettingsRequest_destination,
    logSettingsRequest_resourceArn,

    -- * LogSettingsResponse
    LogSettingsResponse (..),
    newLogSettingsResponse,
    logSettingsResponse_resourceArn,
    logSettingsResponse_logType,
    logSettingsResponse_kmsKeyArn,
    logSettingsResponse_destination,
    logSettingsResponse_resourcePrefix,

    -- * Message
    Message (..),
    newMessage,
    message_groupNumber,
    message_contentType,
    message_content,

    -- * OutputContext
    OutputContext (..),
    newOutputContext,
    outputContext_name,
    outputContext_timeToLiveInSeconds,
    outputContext_turnsToLive,

    -- * Prompt
    Prompt (..),
    newPrompt,
    prompt_responseCard,
    prompt_messages,
    prompt_maxAttempts,

    -- * Slot
    Slot (..),
    newSlot,
    slot_responseCard,
    slot_valueElicitationPrompt,
    slot_slotType,
    slot_slotTypeVersion,
    slot_priority,
    slot_sampleUtterances,
    slot_description,
    slot_defaultValueSpec,
    slot_obfuscationSetting,
    slot_name,
    slot_slotConstraint,

    -- * SlotDefaultValue
    SlotDefaultValue (..),
    newSlotDefaultValue,
    slotDefaultValue_defaultValue,

    -- * SlotDefaultValueSpec
    SlotDefaultValueSpec (..),
    newSlotDefaultValueSpec,
    slotDefaultValueSpec_defaultValueList,

    -- * SlotTypeConfiguration
    SlotTypeConfiguration (..),
    newSlotTypeConfiguration,
    slotTypeConfiguration_regexConfiguration,

    -- * SlotTypeMetadata
    SlotTypeMetadata (..),
    newSlotTypeMetadata,
    slotTypeMetadata_createdDate,
    slotTypeMetadata_lastUpdatedDate,
    slotTypeMetadata_version,
    slotTypeMetadata_name,
    slotTypeMetadata_description,

    -- * SlotTypeRegexConfiguration
    SlotTypeRegexConfiguration (..),
    newSlotTypeRegexConfiguration,
    slotTypeRegexConfiguration_pattern,

    -- * Statement
    Statement (..),
    newStatement,
    statement_responseCard,
    statement_messages,

    -- * Tag
    Tag (..),
    newTag,
    tag_key,
    tag_value,

    -- * UtteranceData
    UtteranceData (..),
    newUtteranceData,
    utteranceData_utteranceString,
    utteranceData_distinctUsers,
    utteranceData_count,
    utteranceData_firstUtteredDate,
    utteranceData_lastUtteredDate,

    -- * UtteranceList
    UtteranceList (..),
    newUtteranceList,
    utteranceList_botVersion,
    utteranceList_utterances,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.LexModels.Types.BotAliasMetadata
import Network.AWS.LexModels.Types.BotChannelAssociation
import Network.AWS.LexModels.Types.BotMetadata
import Network.AWS.LexModels.Types.BuiltinIntentMetadata
import Network.AWS.LexModels.Types.BuiltinIntentSlot
import Network.AWS.LexModels.Types.BuiltinSlotTypeMetadata
import Network.AWS.LexModels.Types.ChannelStatus
import Network.AWS.LexModels.Types.ChannelType
import Network.AWS.LexModels.Types.CodeHook
import Network.AWS.LexModels.Types.ContentType
import Network.AWS.LexModels.Types.ConversationLogsRequest
import Network.AWS.LexModels.Types.ConversationLogsResponse
import Network.AWS.LexModels.Types.Destination
import Network.AWS.LexModels.Types.EnumerationValue
import Network.AWS.LexModels.Types.ExportStatus
import Network.AWS.LexModels.Types.ExportType
import Network.AWS.LexModels.Types.FollowUpPrompt
import Network.AWS.LexModels.Types.FulfillmentActivity
import Network.AWS.LexModels.Types.FulfillmentActivityType
import Network.AWS.LexModels.Types.ImportStatus
import Network.AWS.LexModels.Types.InputContext
import Network.AWS.LexModels.Types.Intent
import Network.AWS.LexModels.Types.IntentMetadata
import Network.AWS.LexModels.Types.KendraConfiguration
import Network.AWS.LexModels.Types.LexStatus
import Network.AWS.LexModels.Types.Locale
import Network.AWS.LexModels.Types.LogSettingsRequest
import Network.AWS.LexModels.Types.LogSettingsResponse
import Network.AWS.LexModels.Types.LogType
import Network.AWS.LexModels.Types.MergeStrategy
import Network.AWS.LexModels.Types.Message
import Network.AWS.LexModels.Types.ObfuscationSetting
import Network.AWS.LexModels.Types.OutputContext
import Network.AWS.LexModels.Types.ProcessBehavior
import Network.AWS.LexModels.Types.Prompt
import Network.AWS.LexModels.Types.ResourceType
import Network.AWS.LexModels.Types.Slot
import Network.AWS.LexModels.Types.SlotConstraint
import Network.AWS.LexModels.Types.SlotDefaultValue
import Network.AWS.LexModels.Types.SlotDefaultValueSpec
import Network.AWS.LexModels.Types.SlotTypeConfiguration
import Network.AWS.LexModels.Types.SlotTypeMetadata
import Network.AWS.LexModels.Types.SlotTypeRegexConfiguration
import Network.AWS.LexModels.Types.SlotValueSelectionStrategy
import Network.AWS.LexModels.Types.Statement
import Network.AWS.LexModels.Types.StatusType
import Network.AWS.LexModels.Types.Tag
import Network.AWS.LexModels.Types.UtteranceData
import Network.AWS.LexModels.Types.UtteranceList
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Sign.V4 as Sign

-- | API version @2017-04-19@ of the Amazon Lex Model Building Service SDK configuration.
defaultService :: Prelude.Service
defaultService =
  Prelude.Service
    { Prelude._svcAbbrev = "LexModels",
      Prelude._svcSigner = Sign.v4,
      Prelude._svcEndpointPrefix = "models.lex",
      Prelude._svcSigningName = "lex",
      Prelude._svcVersion = "2017-04-19",
      Prelude._svcEndpoint =
        Prelude.defaultEndpoint defaultService,
      Prelude._svcTimeout = Prelude.Just 70,
      Prelude._svcCheck = Prelude.statusSuccess,
      Prelude._svcError =
        Prelude.parseJSONError "LexModels",
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

-- | The resource specified in the request was not found. Check the resource
-- and try again.
_NotFoundException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_NotFoundException =
  Prelude._MatchServiceError
    defaultService
    "NotFoundException"
    Prelude.. Prelude.hasStatus 404

-- | The request is not well formed. For example, a value is invalid or a
-- required field is missing. Check the field values, and try again.
_BadRequestException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_BadRequestException =
  Prelude._MatchServiceError
    defaultService
    "BadRequestException"
    Prelude.. Prelude.hasStatus 400

-- | The resource that you are attempting to delete is referred to by another
-- resource. Use this information to remove references to the resource that
-- you are trying to delete.
--
-- The body of the exception contains a JSON object that describes the
-- resource.
--
-- @{ \"resourceType\": BOT | BOTALIAS | BOTCHANNEL | INTENT,@
--
-- @\"resourceReference\": {@
--
-- @\"name\": string, \"version\": string } }@
_ResourceInUseException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ResourceInUseException =
  Prelude._MatchServiceError
    defaultService
    "ResourceInUseException"
    Prelude.. Prelude.hasStatus 400

-- | The request exceeded a limit. Try your request again.
_LimitExceededException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_LimitExceededException =
  Prelude._MatchServiceError
    defaultService
    "LimitExceededException"
    Prelude.. Prelude.hasStatus 429

-- | There was a conflict processing the request. Try your request again.
_ConflictException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_ConflictException =
  Prelude._MatchServiceError
    defaultService
    "ConflictException"
    Prelude.. Prelude.hasStatus 409

-- | An internal Amazon Lex error occurred. Try your request again.
_InternalFailureException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_InternalFailureException =
  Prelude._MatchServiceError
    defaultService
    "InternalFailureException"
    Prelude.. Prelude.hasStatus 500

-- | The checksum of the resource that you are trying to change does not
-- match the checksum in the request. Check the resource\'s checksum and
-- try again.
_PreconditionFailedException :: Prelude.AsError a => Lens.Getting (Prelude.First Prelude.ServiceError) a Prelude.ServiceError
_PreconditionFailedException =
  Prelude._MatchServiceError
    defaultService
    "PreconditionFailedException"
    Prelude.. Prelude.hasStatus 412
