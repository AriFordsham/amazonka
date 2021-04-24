{-# OPTIONS_GHC -fno-warn-orphans #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Test.AWS.Gen.FMS
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Test.AWS.Gen.FMS where

import Data.Proxy
import Network.AWS.FMS
import Test.AWS.FMS.Internal
import Test.AWS.Fixture
import Test.AWS.Prelude
import Test.Tasty

-- Auto-generated: the actual test selection needs to be manually placed into
-- the top-level so that real test data can be incrementally added.
--
-- This commented snippet is what the entire set should look like:

-- fixtures :: TestTree
-- fixtures =
--     [ testGroup "request"
--         [ requestDeleteNotificationChannel $
--             deleteNotificationChannel
--
--         , requestListPolicies $
--             listPolicies
--
--         , requestDeletePolicy $
--             deletePolicy
--
--         , requestListAppsLists $
--             listAppsLists
--
--         , requestGetProtectionStatus $
--             getProtectionStatus
--
--         , requestPutAppsList $
--             putAppsList
--
--         , requestListProtocolsLists $
--             listProtocolsLists
--
--         , requestGetAppsList $
--             getAppsList
--
--         , requestPutProtocolsList $
--             putProtocolsList
--
--         , requestListComplianceStatus $
--             listComplianceStatus
--
--         , requestUntagResource $
--             untagResource
--
--         , requestTagResource $
--             tagResource
--
--         , requestGetNotificationChannel $
--             getNotificationChannel
--
--         , requestAssociateAdminAccount $
--             associateAdminAccount
--
--         , requestPutNotificationChannel $
--             putNotificationChannel
--
--         , requestDisassociateAdminAccount $
--             disassociateAdminAccount
--
--         , requestPutPolicy $
--             putPolicy
--
--         , requestDeleteAppsList $
--             deleteAppsList
--
--         , requestGetProtocolsList $
--             getProtocolsList
--
--         , requestGetPolicy $
--             getPolicy
--
--         , requestDeleteProtocolsList $
--             deleteProtocolsList
--
--         , requestGetAdminAccount $
--             getAdminAccount
--
--         , requestListMemberAccounts $
--             listMemberAccounts
--
--         , requestGetViolationDetails $
--             getViolationDetails
--
--         , requestListTagsForResource $
--             listTagsForResource
--
--         , requestGetComplianceDetail $
--             getComplianceDetail
--
--           ]

--     , testGroup "response"
--         [ responseDeleteNotificationChannel $
--             deleteNotificationChannelResponse
--
--         , responseListPolicies $
--             listPoliciesResponse
--
--         , responseDeletePolicy $
--             deletePolicyResponse
--
--         , responseListAppsLists $
--             listAppsListsResponse
--
--         , responseGetProtectionStatus $
--             getProtectionStatusResponse
--
--         , responsePutAppsList $
--             putAppsListResponse
--
--         , responseListProtocolsLists $
--             listProtocolsListsResponse
--
--         , responseGetAppsList $
--             getAppsListResponse
--
--         , responsePutProtocolsList $
--             putProtocolsListResponse
--
--         , responseListComplianceStatus $
--             listComplianceStatusResponse
--
--         , responseUntagResource $
--             untagResourceResponse
--
--         , responseTagResource $
--             tagResourceResponse
--
--         , responseGetNotificationChannel $
--             getNotificationChannelResponse
--
--         , responseAssociateAdminAccount $
--             associateAdminAccountResponse
--
--         , responsePutNotificationChannel $
--             putNotificationChannelResponse
--
--         , responseDisassociateAdminAccount $
--             disassociateAdminAccountResponse
--
--         , responsePutPolicy $
--             putPolicyResponse
--
--         , responseDeleteAppsList $
--             deleteAppsListResponse
--
--         , responseGetProtocolsList $
--             getProtocolsListResponse
--
--         , responseGetPolicy $
--             getPolicyResponse
--
--         , responseDeleteProtocolsList $
--             deleteProtocolsListResponse
--
--         , responseGetAdminAccount $
--             getAdminAccountResponse
--
--         , responseListMemberAccounts $
--             listMemberAccountsResponse
--
--         , responseGetViolationDetails $
--             getViolationDetailsResponse
--
--         , responseListTagsForResource $
--             listTagsForResourceResponse
--
--         , responseGetComplianceDetail $
--             getComplianceDetailResponse
--
--           ]
--     ]

-- Requests

requestDeleteNotificationChannel :: DeleteNotificationChannel -> TestTree
requestDeleteNotificationChannel =
  req
    "DeleteNotificationChannel"
    "fixture/DeleteNotificationChannel.yaml"

requestListPolicies :: ListPolicies -> TestTree
requestListPolicies =
  req
    "ListPolicies"
    "fixture/ListPolicies.yaml"

requestDeletePolicy :: DeletePolicy -> TestTree
requestDeletePolicy =
  req
    "DeletePolicy"
    "fixture/DeletePolicy.yaml"

requestListAppsLists :: ListAppsLists -> TestTree
requestListAppsLists =
  req
    "ListAppsLists"
    "fixture/ListAppsLists.yaml"

requestGetProtectionStatus :: GetProtectionStatus -> TestTree
requestGetProtectionStatus =
  req
    "GetProtectionStatus"
    "fixture/GetProtectionStatus.yaml"

requestPutAppsList :: PutAppsList -> TestTree
requestPutAppsList =
  req
    "PutAppsList"
    "fixture/PutAppsList.yaml"

requestListProtocolsLists :: ListProtocolsLists -> TestTree
requestListProtocolsLists =
  req
    "ListProtocolsLists"
    "fixture/ListProtocolsLists.yaml"

requestGetAppsList :: GetAppsList -> TestTree
requestGetAppsList =
  req
    "GetAppsList"
    "fixture/GetAppsList.yaml"

requestPutProtocolsList :: PutProtocolsList -> TestTree
requestPutProtocolsList =
  req
    "PutProtocolsList"
    "fixture/PutProtocolsList.yaml"

requestListComplianceStatus :: ListComplianceStatus -> TestTree
requestListComplianceStatus =
  req
    "ListComplianceStatus"
    "fixture/ListComplianceStatus.yaml"

requestUntagResource :: UntagResource -> TestTree
requestUntagResource =
  req
    "UntagResource"
    "fixture/UntagResource.yaml"

requestTagResource :: TagResource -> TestTree
requestTagResource =
  req
    "TagResource"
    "fixture/TagResource.yaml"

requestGetNotificationChannel :: GetNotificationChannel -> TestTree
requestGetNotificationChannel =
  req
    "GetNotificationChannel"
    "fixture/GetNotificationChannel.yaml"

requestAssociateAdminAccount :: AssociateAdminAccount -> TestTree
requestAssociateAdminAccount =
  req
    "AssociateAdminAccount"
    "fixture/AssociateAdminAccount.yaml"

requestPutNotificationChannel :: PutNotificationChannel -> TestTree
requestPutNotificationChannel =
  req
    "PutNotificationChannel"
    "fixture/PutNotificationChannel.yaml"

requestDisassociateAdminAccount :: DisassociateAdminAccount -> TestTree
requestDisassociateAdminAccount =
  req
    "DisassociateAdminAccount"
    "fixture/DisassociateAdminAccount.yaml"

requestPutPolicy :: PutPolicy -> TestTree
requestPutPolicy =
  req
    "PutPolicy"
    "fixture/PutPolicy.yaml"

requestDeleteAppsList :: DeleteAppsList -> TestTree
requestDeleteAppsList =
  req
    "DeleteAppsList"
    "fixture/DeleteAppsList.yaml"

requestGetProtocolsList :: GetProtocolsList -> TestTree
requestGetProtocolsList =
  req
    "GetProtocolsList"
    "fixture/GetProtocolsList.yaml"

requestGetPolicy :: GetPolicy -> TestTree
requestGetPolicy =
  req
    "GetPolicy"
    "fixture/GetPolicy.yaml"

requestDeleteProtocolsList :: DeleteProtocolsList -> TestTree
requestDeleteProtocolsList =
  req
    "DeleteProtocolsList"
    "fixture/DeleteProtocolsList.yaml"

requestGetAdminAccount :: GetAdminAccount -> TestTree
requestGetAdminAccount =
  req
    "GetAdminAccount"
    "fixture/GetAdminAccount.yaml"

requestListMemberAccounts :: ListMemberAccounts -> TestTree
requestListMemberAccounts =
  req
    "ListMemberAccounts"
    "fixture/ListMemberAccounts.yaml"

requestGetViolationDetails :: GetViolationDetails -> TestTree
requestGetViolationDetails =
  req
    "GetViolationDetails"
    "fixture/GetViolationDetails.yaml"

requestListTagsForResource :: ListTagsForResource -> TestTree
requestListTagsForResource =
  req
    "ListTagsForResource"
    "fixture/ListTagsForResource.yaml"

requestGetComplianceDetail :: GetComplianceDetail -> TestTree
requestGetComplianceDetail =
  req
    "GetComplianceDetail"
    "fixture/GetComplianceDetail.yaml"

-- Responses

responseDeleteNotificationChannel :: DeleteNotificationChannelResponse -> TestTree
responseDeleteNotificationChannel =
  res
    "DeleteNotificationChannelResponse"
    "fixture/DeleteNotificationChannelResponse.proto"
    fms
    (Proxy :: Proxy DeleteNotificationChannel)

responseListPolicies :: ListPoliciesResponse -> TestTree
responseListPolicies =
  res
    "ListPoliciesResponse"
    "fixture/ListPoliciesResponse.proto"
    fms
    (Proxy :: Proxy ListPolicies)

responseDeletePolicy :: DeletePolicyResponse -> TestTree
responseDeletePolicy =
  res
    "DeletePolicyResponse"
    "fixture/DeletePolicyResponse.proto"
    fms
    (Proxy :: Proxy DeletePolicy)

responseListAppsLists :: ListAppsListsResponse -> TestTree
responseListAppsLists =
  res
    "ListAppsListsResponse"
    "fixture/ListAppsListsResponse.proto"
    fms
    (Proxy :: Proxy ListAppsLists)

responseGetProtectionStatus :: GetProtectionStatusResponse -> TestTree
responseGetProtectionStatus =
  res
    "GetProtectionStatusResponse"
    "fixture/GetProtectionStatusResponse.proto"
    fms
    (Proxy :: Proxy GetProtectionStatus)

responsePutAppsList :: PutAppsListResponse -> TestTree
responsePutAppsList =
  res
    "PutAppsListResponse"
    "fixture/PutAppsListResponse.proto"
    fms
    (Proxy :: Proxy PutAppsList)

responseListProtocolsLists :: ListProtocolsListsResponse -> TestTree
responseListProtocolsLists =
  res
    "ListProtocolsListsResponse"
    "fixture/ListProtocolsListsResponse.proto"
    fms
    (Proxy :: Proxy ListProtocolsLists)

responseGetAppsList :: GetAppsListResponse -> TestTree
responseGetAppsList =
  res
    "GetAppsListResponse"
    "fixture/GetAppsListResponse.proto"
    fms
    (Proxy :: Proxy GetAppsList)

responsePutProtocolsList :: PutProtocolsListResponse -> TestTree
responsePutProtocolsList =
  res
    "PutProtocolsListResponse"
    "fixture/PutProtocolsListResponse.proto"
    fms
    (Proxy :: Proxy PutProtocolsList)

responseListComplianceStatus :: ListComplianceStatusResponse -> TestTree
responseListComplianceStatus =
  res
    "ListComplianceStatusResponse"
    "fixture/ListComplianceStatusResponse.proto"
    fms
    (Proxy :: Proxy ListComplianceStatus)

responseUntagResource :: UntagResourceResponse -> TestTree
responseUntagResource =
  res
    "UntagResourceResponse"
    "fixture/UntagResourceResponse.proto"
    fms
    (Proxy :: Proxy UntagResource)

responseTagResource :: TagResourceResponse -> TestTree
responseTagResource =
  res
    "TagResourceResponse"
    "fixture/TagResourceResponse.proto"
    fms
    (Proxy :: Proxy TagResource)

responseGetNotificationChannel :: GetNotificationChannelResponse -> TestTree
responseGetNotificationChannel =
  res
    "GetNotificationChannelResponse"
    "fixture/GetNotificationChannelResponse.proto"
    fms
    (Proxy :: Proxy GetNotificationChannel)

responseAssociateAdminAccount :: AssociateAdminAccountResponse -> TestTree
responseAssociateAdminAccount =
  res
    "AssociateAdminAccountResponse"
    "fixture/AssociateAdminAccountResponse.proto"
    fms
    (Proxy :: Proxy AssociateAdminAccount)

responsePutNotificationChannel :: PutNotificationChannelResponse -> TestTree
responsePutNotificationChannel =
  res
    "PutNotificationChannelResponse"
    "fixture/PutNotificationChannelResponse.proto"
    fms
    (Proxy :: Proxy PutNotificationChannel)

responseDisassociateAdminAccount :: DisassociateAdminAccountResponse -> TestTree
responseDisassociateAdminAccount =
  res
    "DisassociateAdminAccountResponse"
    "fixture/DisassociateAdminAccountResponse.proto"
    fms
    (Proxy :: Proxy DisassociateAdminAccount)

responsePutPolicy :: PutPolicyResponse -> TestTree
responsePutPolicy =
  res
    "PutPolicyResponse"
    "fixture/PutPolicyResponse.proto"
    fms
    (Proxy :: Proxy PutPolicy)

responseDeleteAppsList :: DeleteAppsListResponse -> TestTree
responseDeleteAppsList =
  res
    "DeleteAppsListResponse"
    "fixture/DeleteAppsListResponse.proto"
    fms
    (Proxy :: Proxy DeleteAppsList)

responseGetProtocolsList :: GetProtocolsListResponse -> TestTree
responseGetProtocolsList =
  res
    "GetProtocolsListResponse"
    "fixture/GetProtocolsListResponse.proto"
    fms
    (Proxy :: Proxy GetProtocolsList)

responseGetPolicy :: GetPolicyResponse -> TestTree
responseGetPolicy =
  res
    "GetPolicyResponse"
    "fixture/GetPolicyResponse.proto"
    fms
    (Proxy :: Proxy GetPolicy)

responseDeleteProtocolsList :: DeleteProtocolsListResponse -> TestTree
responseDeleteProtocolsList =
  res
    "DeleteProtocolsListResponse"
    "fixture/DeleteProtocolsListResponse.proto"
    fms
    (Proxy :: Proxy DeleteProtocolsList)

responseGetAdminAccount :: GetAdminAccountResponse -> TestTree
responseGetAdminAccount =
  res
    "GetAdminAccountResponse"
    "fixture/GetAdminAccountResponse.proto"
    fms
    (Proxy :: Proxy GetAdminAccount)

responseListMemberAccounts :: ListMemberAccountsResponse -> TestTree
responseListMemberAccounts =
  res
    "ListMemberAccountsResponse"
    "fixture/ListMemberAccountsResponse.proto"
    fms
    (Proxy :: Proxy ListMemberAccounts)

responseGetViolationDetails :: GetViolationDetailsResponse -> TestTree
responseGetViolationDetails =
  res
    "GetViolationDetailsResponse"
    "fixture/GetViolationDetailsResponse.proto"
    fms
    (Proxy :: Proxy GetViolationDetails)

responseListTagsForResource :: ListTagsForResourceResponse -> TestTree
responseListTagsForResource =
  res
    "ListTagsForResourceResponse"
    "fixture/ListTagsForResourceResponse.proto"
    fms
    (Proxy :: Proxy ListTagsForResource)

responseGetComplianceDetail :: GetComplianceDetailResponse -> TestTree
responseGetComplianceDetail =
  res
    "GetComplianceDetailResponse"
    "fixture/GetComplianceDetailResponse.proto"
    fms
    (Proxy :: Proxy GetComplianceDetail)
