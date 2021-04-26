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
-- Module      : Network.AWS.DirectoryService.DescribeEventTopics
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Obtains information about which SNS topics receive status messages from
-- the specified directory.
--
-- If no input parameters are provided, such as DirectoryId or TopicName,
-- this request describes all of the associations in the account.
module Network.AWS.DirectoryService.DescribeEventTopics
  ( -- * Creating a Request
    DescribeEventTopics (..),
    newDescribeEventTopics,

    -- * Request Lenses
    describeEventTopics_directoryId,
    describeEventTopics_topicNames,

    -- * Destructuring the Response
    DescribeEventTopicsResponse (..),
    newDescribeEventTopicsResponse,

    -- * Response Lenses
    describeEventTopicsResponse_eventTopics,
    describeEventTopicsResponse_httpStatus,
  )
where

import Network.AWS.DirectoryService.Types
import Network.AWS.DirectoryService.Types.EventTopic
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Describes event topics.
--
-- /See:/ 'newDescribeEventTopics' smart constructor.
data DescribeEventTopics = DescribeEventTopics'
  { -- | The Directory ID for which to get the list of associated SNS topics. If
    -- this member is null, associations for all Directory IDs are returned.
    directoryId :: Prelude.Maybe Prelude.Text,
    -- | A list of SNS topic names for which to obtain the information. If this
    -- member is null, all associations for the specified Directory ID are
    -- returned.
    --
    -- An empty list results in an @InvalidParameterException@ being thrown.
    topicNames :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeEventTopics' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'directoryId', 'describeEventTopics_directoryId' - The Directory ID for which to get the list of associated SNS topics. If
-- this member is null, associations for all Directory IDs are returned.
--
-- 'topicNames', 'describeEventTopics_topicNames' - A list of SNS topic names for which to obtain the information. If this
-- member is null, all associations for the specified Directory ID are
-- returned.
--
-- An empty list results in an @InvalidParameterException@ being thrown.
newDescribeEventTopics ::
  DescribeEventTopics
newDescribeEventTopics =
  DescribeEventTopics'
    { directoryId = Prelude.Nothing,
      topicNames = Prelude.Nothing
    }

-- | The Directory ID for which to get the list of associated SNS topics. If
-- this member is null, associations for all Directory IDs are returned.
describeEventTopics_directoryId :: Lens.Lens' DescribeEventTopics (Prelude.Maybe Prelude.Text)
describeEventTopics_directoryId = Lens.lens (\DescribeEventTopics' {directoryId} -> directoryId) (\s@DescribeEventTopics' {} a -> s {directoryId = a} :: DescribeEventTopics)

-- | A list of SNS topic names for which to obtain the information. If this
-- member is null, all associations for the specified Directory ID are
-- returned.
--
-- An empty list results in an @InvalidParameterException@ being thrown.
describeEventTopics_topicNames :: Lens.Lens' DescribeEventTopics (Prelude.Maybe [Prelude.Text])
describeEventTopics_topicNames = Lens.lens (\DescribeEventTopics' {topicNames} -> topicNames) (\s@DescribeEventTopics' {} a -> s {topicNames = a} :: DescribeEventTopics) Prelude.. Lens.mapping Prelude._Coerce

instance Prelude.AWSRequest DescribeEventTopics where
  type
    Rs DescribeEventTopics =
      DescribeEventTopicsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeEventTopicsResponse'
            Prelude.<$> ( x Prelude..?> "EventTopics"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeEventTopics

instance Prelude.NFData DescribeEventTopics

instance Prelude.ToHeaders DescribeEventTopics where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "DirectoryService_20150416.DescribeEventTopics" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON DescribeEventTopics where
  toJSON DescribeEventTopics' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("DirectoryId" Prelude..=) Prelude.<$> directoryId,
            ("TopicNames" Prelude..=) Prelude.<$> topicNames
          ]
      )

instance Prelude.ToPath DescribeEventTopics where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DescribeEventTopics where
  toQuery = Prelude.const Prelude.mempty

-- | The result of a DescribeEventTopic request.
--
-- /See:/ 'newDescribeEventTopicsResponse' smart constructor.
data DescribeEventTopicsResponse = DescribeEventTopicsResponse'
  { -- | A list of SNS topic names that receive status messages from the
    -- specified Directory ID.
    eventTopics :: Prelude.Maybe [EventTopic],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeEventTopicsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'eventTopics', 'describeEventTopicsResponse_eventTopics' - A list of SNS topic names that receive status messages from the
-- specified Directory ID.
--
-- 'httpStatus', 'describeEventTopicsResponse_httpStatus' - The response's http status code.
newDescribeEventTopicsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeEventTopicsResponse
newDescribeEventTopicsResponse pHttpStatus_ =
  DescribeEventTopicsResponse'
    { eventTopics =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A list of SNS topic names that receive status messages from the
-- specified Directory ID.
describeEventTopicsResponse_eventTopics :: Lens.Lens' DescribeEventTopicsResponse (Prelude.Maybe [EventTopic])
describeEventTopicsResponse_eventTopics = Lens.lens (\DescribeEventTopicsResponse' {eventTopics} -> eventTopics) (\s@DescribeEventTopicsResponse' {} a -> s {eventTopics = a} :: DescribeEventTopicsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
describeEventTopicsResponse_httpStatus :: Lens.Lens' DescribeEventTopicsResponse Prelude.Int
describeEventTopicsResponse_httpStatus = Lens.lens (\DescribeEventTopicsResponse' {httpStatus} -> httpStatus) (\s@DescribeEventTopicsResponse' {} a -> s {httpStatus = a} :: DescribeEventTopicsResponse)

instance Prelude.NFData DescribeEventTopicsResponse
