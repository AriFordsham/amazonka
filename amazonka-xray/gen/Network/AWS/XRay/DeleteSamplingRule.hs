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
-- Module      : Network.AWS.XRay.DeleteSamplingRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a sampling rule.
module Network.AWS.XRay.DeleteSamplingRule
  ( -- * Creating a Request
    deleteSamplingRule,
    DeleteSamplingRule,

    -- * Request Lenses
    dsrRuleName,
    dsrRuleARN,

    -- * Destructuring the Response
    deleteSamplingRuleResponse,
    DeleteSamplingRuleResponse,

    -- * Response Lenses
    dsrrrsSamplingRuleRecord,
    dsrrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.XRay.Types

-- | /See:/ 'deleteSamplingRule' smart constructor.
data DeleteSamplingRule = DeleteSamplingRule'
  { _dsrRuleName ::
      !(Maybe Text),
    _dsrRuleARN :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteSamplingRule' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrRuleName' - The name of the sampling rule. Specify a rule by either name or ARN, but not both.
--
-- * 'dsrRuleARN' - The ARN of the sampling rule. Specify a rule by either name or ARN, but not both.
deleteSamplingRule ::
  DeleteSamplingRule
deleteSamplingRule =
  DeleteSamplingRule'
    { _dsrRuleName = Nothing,
      _dsrRuleARN = Nothing
    }

-- | The name of the sampling rule. Specify a rule by either name or ARN, but not both.
dsrRuleName :: Lens' DeleteSamplingRule (Maybe Text)
dsrRuleName = lens _dsrRuleName (\s a -> s {_dsrRuleName = a})

-- | The ARN of the sampling rule. Specify a rule by either name or ARN, but not both.
dsrRuleARN :: Lens' DeleteSamplingRule (Maybe Text)
dsrRuleARN = lens _dsrRuleARN (\s a -> s {_dsrRuleARN = a})

instance AWSRequest DeleteSamplingRule where
  type
    Rs DeleteSamplingRule =
      DeleteSamplingRuleResponse
  request = postJSON xRay
  response =
    receiveJSON
      ( \s h x ->
          DeleteSamplingRuleResponse'
            <$> (x .?> "SamplingRuleRecord") <*> (pure (fromEnum s))
      )

instance Hashable DeleteSamplingRule

instance NFData DeleteSamplingRule

instance ToHeaders DeleteSamplingRule where
  toHeaders = const mempty

instance ToJSON DeleteSamplingRule where
  toJSON DeleteSamplingRule' {..} =
    object
      ( catMaybes
          [ ("RuleName" .=) <$> _dsrRuleName,
            ("RuleARN" .=) <$> _dsrRuleARN
          ]
      )

instance ToPath DeleteSamplingRule where
  toPath = const "/DeleteSamplingRule"

instance ToQuery DeleteSamplingRule where
  toQuery = const mempty

-- | /See:/ 'deleteSamplingRuleResponse' smart constructor.
data DeleteSamplingRuleResponse = DeleteSamplingRuleResponse'
  { _dsrrrsSamplingRuleRecord ::
      !( Maybe
           SamplingRuleRecord
       ),
    _dsrrrsResponseStatus ::
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

-- | Creates a value of 'DeleteSamplingRuleResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrrrsSamplingRuleRecord' - The deleted rule definition and metadata.
--
-- * 'dsrrrsResponseStatus' - -- | The response status code.
deleteSamplingRuleResponse ::
  -- | 'dsrrrsResponseStatus'
  Int ->
  DeleteSamplingRuleResponse
deleteSamplingRuleResponse pResponseStatus_ =
  DeleteSamplingRuleResponse'
    { _dsrrrsSamplingRuleRecord =
        Nothing,
      _dsrrrsResponseStatus = pResponseStatus_
    }

-- | The deleted rule definition and metadata.
dsrrrsSamplingRuleRecord :: Lens' DeleteSamplingRuleResponse (Maybe SamplingRuleRecord)
dsrrrsSamplingRuleRecord = lens _dsrrrsSamplingRuleRecord (\s a -> s {_dsrrrsSamplingRuleRecord = a})

-- | -- | The response status code.
dsrrrsResponseStatus :: Lens' DeleteSamplingRuleResponse Int
dsrrrsResponseStatus = lens _dsrrrsResponseStatus (\s a -> s {_dsrrrsResponseStatus = a})

instance NFData DeleteSamplingRuleResponse
