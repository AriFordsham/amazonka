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
-- Module      : Network.AWS.KinesisAnalytics.AddApplicationOutput
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This documentation is for version 1 of the Amazon Kinesis Data Analytics
-- API, which only supports SQL applications. Version 2 of the API supports
-- SQL and Java applications. For more information about version 2, see
-- </kinesisanalytics/latest/apiv2/Welcome.html Amazon Kinesis Data Analytics API V2 Documentation>.
--
-- Adds an external destination to your Amazon Kinesis Analytics
-- application.
--
-- If you want Amazon Kinesis Analytics to deliver data from an
-- in-application stream within your application to an external destination
-- (such as an Amazon Kinesis stream, an Amazon Kinesis Firehose delivery
-- stream, or an AWS Lambda function), you add the relevant configuration
-- to your application using this operation. You can configure one or more
-- outputs for your application. Each output configuration maps an
-- in-application stream and an external destination.
--
-- You can use one of the output configurations to deliver data from your
-- in-application error stream to an external destination so that you can
-- analyze the errors. For more information, see
-- <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/how-it-works-output.html Understanding Application Output (Destination)>.
--
-- Any configuration update, including adding a streaming source using this
-- operation, results in a new version of the application. You can use the
-- <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html DescribeApplication>
-- operation to find the current application version.
--
-- For the limits on the number of application inputs and outputs you can
-- configure, see
-- <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/limits.html Limits>.
--
-- This operation requires permissions to perform the
-- @kinesisanalytics:AddApplicationOutput@ action.
module Network.AWS.KinesisAnalytics.AddApplicationOutput
  ( -- * Creating a Request
    AddApplicationOutput (..),
    newAddApplicationOutput,

    -- * Request Lenses
    addApplicationOutput_applicationName,
    addApplicationOutput_currentApplicationVersionId,
    addApplicationOutput_output,

    -- * Destructuring the Response
    AddApplicationOutputResponse (..),
    newAddApplicationOutputResponse,

    -- * Response Lenses
    addApplicationOutputResponse_httpStatus,
  )
where

import Network.AWS.KinesisAnalytics.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- |
--
-- /See:/ 'newAddApplicationOutput' smart constructor.
data AddApplicationOutput = AddApplicationOutput'
  { -- | Name of the application to which you want to add the output
    -- configuration.
    applicationName :: Prelude.Text,
    -- | Version of the application to which you want to add the output
    -- configuration. You can use the
    -- <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html DescribeApplication>
    -- operation to get the current application version. If the version
    -- specified is not the current version, the
    -- @ConcurrentModificationException@ is returned.
    currentApplicationVersionId :: Prelude.Natural,
    -- | An array of objects, each describing one output configuration. In the
    -- output configuration, you specify the name of an in-application stream,
    -- a destination (that is, an Amazon Kinesis stream, an Amazon Kinesis
    -- Firehose delivery stream, or an AWS Lambda function), and record the
    -- formation to use when writing to the destination.
    output :: Output
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AddApplicationOutput' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'applicationName', 'addApplicationOutput_applicationName' - Name of the application to which you want to add the output
-- configuration.
--
-- 'currentApplicationVersionId', 'addApplicationOutput_currentApplicationVersionId' - Version of the application to which you want to add the output
-- configuration. You can use the
-- <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html DescribeApplication>
-- operation to get the current application version. If the version
-- specified is not the current version, the
-- @ConcurrentModificationException@ is returned.
--
-- 'output', 'addApplicationOutput_output' - An array of objects, each describing one output configuration. In the
-- output configuration, you specify the name of an in-application stream,
-- a destination (that is, an Amazon Kinesis stream, an Amazon Kinesis
-- Firehose delivery stream, or an AWS Lambda function), and record the
-- formation to use when writing to the destination.
newAddApplicationOutput ::
  -- | 'applicationName'
  Prelude.Text ->
  -- | 'currentApplicationVersionId'
  Prelude.Natural ->
  -- | 'output'
  Output ->
  AddApplicationOutput
newAddApplicationOutput
  pApplicationName_
  pCurrentApplicationVersionId_
  pOutput_ =
    AddApplicationOutput'
      { applicationName =
          pApplicationName_,
        currentApplicationVersionId =
          pCurrentApplicationVersionId_,
        output = pOutput_
      }

-- | Name of the application to which you want to add the output
-- configuration.
addApplicationOutput_applicationName :: Lens.Lens' AddApplicationOutput Prelude.Text
addApplicationOutput_applicationName = Lens.lens (\AddApplicationOutput' {applicationName} -> applicationName) (\s@AddApplicationOutput' {} a -> s {applicationName = a} :: AddApplicationOutput)

-- | Version of the application to which you want to add the output
-- configuration. You can use the
-- <https://docs.aws.amazon.com/kinesisanalytics/latest/dev/API_DescribeApplication.html DescribeApplication>
-- operation to get the current application version. If the version
-- specified is not the current version, the
-- @ConcurrentModificationException@ is returned.
addApplicationOutput_currentApplicationVersionId :: Lens.Lens' AddApplicationOutput Prelude.Natural
addApplicationOutput_currentApplicationVersionId = Lens.lens (\AddApplicationOutput' {currentApplicationVersionId} -> currentApplicationVersionId) (\s@AddApplicationOutput' {} a -> s {currentApplicationVersionId = a} :: AddApplicationOutput)

-- | An array of objects, each describing one output configuration. In the
-- output configuration, you specify the name of an in-application stream,
-- a destination (that is, an Amazon Kinesis stream, an Amazon Kinesis
-- Firehose delivery stream, or an AWS Lambda function), and record the
-- formation to use when writing to the destination.
addApplicationOutput_output :: Lens.Lens' AddApplicationOutput Output
addApplicationOutput_output = Lens.lens (\AddApplicationOutput' {output} -> output) (\s@AddApplicationOutput' {} a -> s {output = a} :: AddApplicationOutput)

instance Prelude.AWSRequest AddApplicationOutput where
  type
    Rs AddApplicationOutput =
      AddApplicationOutputResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveEmpty
      ( \s h x ->
          AddApplicationOutputResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable AddApplicationOutput

instance Prelude.NFData AddApplicationOutput

instance Prelude.ToHeaders AddApplicationOutput where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "KinesisAnalytics_20150814.AddApplicationOutput" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON AddApplicationOutput where
  toJSON AddApplicationOutput' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("ApplicationName" Prelude..= applicationName),
            Prelude.Just
              ( "CurrentApplicationVersionId"
                  Prelude..= currentApplicationVersionId
              ),
            Prelude.Just ("Output" Prelude..= output)
          ]
      )

instance Prelude.ToPath AddApplicationOutput where
  toPath = Prelude.const "/"

instance Prelude.ToQuery AddApplicationOutput where
  toQuery = Prelude.const Prelude.mempty

-- |
--
-- /See:/ 'newAddApplicationOutputResponse' smart constructor.
data AddApplicationOutputResponse = AddApplicationOutputResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AddApplicationOutputResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'addApplicationOutputResponse_httpStatus' - The response's http status code.
newAddApplicationOutputResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  AddApplicationOutputResponse
newAddApplicationOutputResponse pHttpStatus_ =
  AddApplicationOutputResponse'
    { httpStatus =
        pHttpStatus_
    }

-- | The response's http status code.
addApplicationOutputResponse_httpStatus :: Lens.Lens' AddApplicationOutputResponse Prelude.Int
addApplicationOutputResponse_httpStatus = Lens.lens (\AddApplicationOutputResponse' {httpStatus} -> httpStatus) (\s@AddApplicationOutputResponse' {} a -> s {httpStatus = a} :: AddApplicationOutputResponse)

instance Prelude.NFData AddApplicationOutputResponse
