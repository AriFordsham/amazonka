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
-- Module      : Network.AWS.Greengrass.GetConnectorDefinitionVersion
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves information about a connector definition version, including
-- the connectors that the version contains. Connectors are prebuilt
-- modules that interact with local infrastructure, device protocols, AWS,
-- and other cloud services.
module Network.AWS.Greengrass.GetConnectorDefinitionVersion
  ( -- * Creating a Request
    GetConnectorDefinitionVersion (..),
    newGetConnectorDefinitionVersion,

    -- * Request Lenses
    getConnectorDefinitionVersion_nextToken,
    getConnectorDefinitionVersion_connectorDefinitionId,
    getConnectorDefinitionVersion_connectorDefinitionVersionId,

    -- * Destructuring the Response
    GetConnectorDefinitionVersionResponse (..),
    newGetConnectorDefinitionVersionResponse,

    -- * Response Lenses
    getConnectorDefinitionVersionResponse_creationTimestamp,
    getConnectorDefinitionVersionResponse_nextToken,
    getConnectorDefinitionVersionResponse_arn,
    getConnectorDefinitionVersionResponse_id,
    getConnectorDefinitionVersionResponse_version,
    getConnectorDefinitionVersionResponse_definition,
    getConnectorDefinitionVersionResponse_httpStatus,
  )
where

import Network.AWS.Greengrass.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetConnectorDefinitionVersion' smart constructor.
data GetConnectorDefinitionVersion = GetConnectorDefinitionVersion'
  { -- | The token for the next set of results, or \'\'null\'\' if there are no
    -- additional results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The ID of the connector definition.
    connectorDefinitionId :: Prelude.Text,
    -- | The ID of the connector definition version. This value maps to the
    -- \'\'Version\'\' property of the corresponding \'\'VersionInformation\'\'
    -- object, which is returned by \'\'ListConnectorDefinitionVersions\'\'
    -- requests. If the version is the last one that was associated with a
    -- connector definition, the value also maps to the \'\'LatestVersion\'\'
    -- property of the corresponding \'\'DefinitionInformation\'\' object.
    connectorDefinitionVersionId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetConnectorDefinitionVersion' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getConnectorDefinitionVersion_nextToken' - The token for the next set of results, or \'\'null\'\' if there are no
-- additional results.
--
-- 'connectorDefinitionId', 'getConnectorDefinitionVersion_connectorDefinitionId' - The ID of the connector definition.
--
-- 'connectorDefinitionVersionId', 'getConnectorDefinitionVersion_connectorDefinitionVersionId' - The ID of the connector definition version. This value maps to the
-- \'\'Version\'\' property of the corresponding \'\'VersionInformation\'\'
-- object, which is returned by \'\'ListConnectorDefinitionVersions\'\'
-- requests. If the version is the last one that was associated with a
-- connector definition, the value also maps to the \'\'LatestVersion\'\'
-- property of the corresponding \'\'DefinitionInformation\'\' object.
newGetConnectorDefinitionVersion ::
  -- | 'connectorDefinitionId'
  Prelude.Text ->
  -- | 'connectorDefinitionVersionId'
  Prelude.Text ->
  GetConnectorDefinitionVersion
newGetConnectorDefinitionVersion
  pConnectorDefinitionId_
  pConnectorDefinitionVersionId_ =
    GetConnectorDefinitionVersion'
      { nextToken =
          Prelude.Nothing,
        connectorDefinitionId =
          pConnectorDefinitionId_,
        connectorDefinitionVersionId =
          pConnectorDefinitionVersionId_
      }

-- | The token for the next set of results, or \'\'null\'\' if there are no
-- additional results.
getConnectorDefinitionVersion_nextToken :: Lens.Lens' GetConnectorDefinitionVersion (Prelude.Maybe Prelude.Text)
getConnectorDefinitionVersion_nextToken = Lens.lens (\GetConnectorDefinitionVersion' {nextToken} -> nextToken) (\s@GetConnectorDefinitionVersion' {} a -> s {nextToken = a} :: GetConnectorDefinitionVersion)

-- | The ID of the connector definition.
getConnectorDefinitionVersion_connectorDefinitionId :: Lens.Lens' GetConnectorDefinitionVersion Prelude.Text
getConnectorDefinitionVersion_connectorDefinitionId = Lens.lens (\GetConnectorDefinitionVersion' {connectorDefinitionId} -> connectorDefinitionId) (\s@GetConnectorDefinitionVersion' {} a -> s {connectorDefinitionId = a} :: GetConnectorDefinitionVersion)

-- | The ID of the connector definition version. This value maps to the
-- \'\'Version\'\' property of the corresponding \'\'VersionInformation\'\'
-- object, which is returned by \'\'ListConnectorDefinitionVersions\'\'
-- requests. If the version is the last one that was associated with a
-- connector definition, the value also maps to the \'\'LatestVersion\'\'
-- property of the corresponding \'\'DefinitionInformation\'\' object.
getConnectorDefinitionVersion_connectorDefinitionVersionId :: Lens.Lens' GetConnectorDefinitionVersion Prelude.Text
getConnectorDefinitionVersion_connectorDefinitionVersionId = Lens.lens (\GetConnectorDefinitionVersion' {connectorDefinitionVersionId} -> connectorDefinitionVersionId) (\s@GetConnectorDefinitionVersion' {} a -> s {connectorDefinitionVersionId = a} :: GetConnectorDefinitionVersion)

instance
  Prelude.AWSRequest
    GetConnectorDefinitionVersion
  where
  type
    Rs GetConnectorDefinitionVersion =
      GetConnectorDefinitionVersionResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetConnectorDefinitionVersionResponse'
            Prelude.<$> (x Prelude..?> "CreationTimestamp")
            Prelude.<*> (x Prelude..?> "NextToken")
            Prelude.<*> (x Prelude..?> "Arn")
            Prelude.<*> (x Prelude..?> "Id")
            Prelude.<*> (x Prelude..?> "Version")
            Prelude.<*> (x Prelude..?> "Definition")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance
  Prelude.Hashable
    GetConnectorDefinitionVersion

instance Prelude.NFData GetConnectorDefinitionVersion

instance
  Prelude.ToHeaders
    GetConnectorDefinitionVersion
  where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToPath GetConnectorDefinitionVersion where
  toPath GetConnectorDefinitionVersion' {..} =
    Prelude.mconcat
      [ "/greengrass/definition/connectors/",
        Prelude.toBS connectorDefinitionId,
        "/versions/",
        Prelude.toBS connectorDefinitionVersionId
      ]

instance
  Prelude.ToQuery
    GetConnectorDefinitionVersion
  where
  toQuery GetConnectorDefinitionVersion' {..} =
    Prelude.mconcat ["NextToken" Prelude.=: nextToken]

-- | /See:/ 'newGetConnectorDefinitionVersionResponse' smart constructor.
data GetConnectorDefinitionVersionResponse = GetConnectorDefinitionVersionResponse'
  { -- | The time, in milliseconds since the epoch, when the connector definition
    -- version was created.
    creationTimestamp :: Prelude.Maybe Prelude.Text,
    -- | The token for the next set of results, or \'\'null\'\' if there are no
    -- additional results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the connector definition version.
    arn :: Prelude.Maybe Prelude.Text,
    -- | The ID of the connector definition version.
    id :: Prelude.Maybe Prelude.Text,
    -- | The version of the connector definition version.
    version :: Prelude.Maybe Prelude.Text,
    -- | Information about the connector definition version.
    definition :: Prelude.Maybe ConnectorDefinitionVersion,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetConnectorDefinitionVersionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'creationTimestamp', 'getConnectorDefinitionVersionResponse_creationTimestamp' - The time, in milliseconds since the epoch, when the connector definition
-- version was created.
--
-- 'nextToken', 'getConnectorDefinitionVersionResponse_nextToken' - The token for the next set of results, or \'\'null\'\' if there are no
-- additional results.
--
-- 'arn', 'getConnectorDefinitionVersionResponse_arn' - The ARN of the connector definition version.
--
-- 'id', 'getConnectorDefinitionVersionResponse_id' - The ID of the connector definition version.
--
-- 'version', 'getConnectorDefinitionVersionResponse_version' - The version of the connector definition version.
--
-- 'definition', 'getConnectorDefinitionVersionResponse_definition' - Information about the connector definition version.
--
-- 'httpStatus', 'getConnectorDefinitionVersionResponse_httpStatus' - The response's http status code.
newGetConnectorDefinitionVersionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetConnectorDefinitionVersionResponse
newGetConnectorDefinitionVersionResponse pHttpStatus_ =
  GetConnectorDefinitionVersionResponse'
    { creationTimestamp =
        Prelude.Nothing,
      nextToken = Prelude.Nothing,
      arn = Prelude.Nothing,
      id = Prelude.Nothing,
      version = Prelude.Nothing,
      definition = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The time, in milliseconds since the epoch, when the connector definition
-- version was created.
getConnectorDefinitionVersionResponse_creationTimestamp :: Lens.Lens' GetConnectorDefinitionVersionResponse (Prelude.Maybe Prelude.Text)
getConnectorDefinitionVersionResponse_creationTimestamp = Lens.lens (\GetConnectorDefinitionVersionResponse' {creationTimestamp} -> creationTimestamp) (\s@GetConnectorDefinitionVersionResponse' {} a -> s {creationTimestamp = a} :: GetConnectorDefinitionVersionResponse)

-- | The token for the next set of results, or \'\'null\'\' if there are no
-- additional results.
getConnectorDefinitionVersionResponse_nextToken :: Lens.Lens' GetConnectorDefinitionVersionResponse (Prelude.Maybe Prelude.Text)
getConnectorDefinitionVersionResponse_nextToken = Lens.lens (\GetConnectorDefinitionVersionResponse' {nextToken} -> nextToken) (\s@GetConnectorDefinitionVersionResponse' {} a -> s {nextToken = a} :: GetConnectorDefinitionVersionResponse)

-- | The ARN of the connector definition version.
getConnectorDefinitionVersionResponse_arn :: Lens.Lens' GetConnectorDefinitionVersionResponse (Prelude.Maybe Prelude.Text)
getConnectorDefinitionVersionResponse_arn = Lens.lens (\GetConnectorDefinitionVersionResponse' {arn} -> arn) (\s@GetConnectorDefinitionVersionResponse' {} a -> s {arn = a} :: GetConnectorDefinitionVersionResponse)

-- | The ID of the connector definition version.
getConnectorDefinitionVersionResponse_id :: Lens.Lens' GetConnectorDefinitionVersionResponse (Prelude.Maybe Prelude.Text)
getConnectorDefinitionVersionResponse_id = Lens.lens (\GetConnectorDefinitionVersionResponse' {id} -> id) (\s@GetConnectorDefinitionVersionResponse' {} a -> s {id = a} :: GetConnectorDefinitionVersionResponse)

-- | The version of the connector definition version.
getConnectorDefinitionVersionResponse_version :: Lens.Lens' GetConnectorDefinitionVersionResponse (Prelude.Maybe Prelude.Text)
getConnectorDefinitionVersionResponse_version = Lens.lens (\GetConnectorDefinitionVersionResponse' {version} -> version) (\s@GetConnectorDefinitionVersionResponse' {} a -> s {version = a} :: GetConnectorDefinitionVersionResponse)

-- | Information about the connector definition version.
getConnectorDefinitionVersionResponse_definition :: Lens.Lens' GetConnectorDefinitionVersionResponse (Prelude.Maybe ConnectorDefinitionVersion)
getConnectorDefinitionVersionResponse_definition = Lens.lens (\GetConnectorDefinitionVersionResponse' {definition} -> definition) (\s@GetConnectorDefinitionVersionResponse' {} a -> s {definition = a} :: GetConnectorDefinitionVersionResponse)

-- | The response's http status code.
getConnectorDefinitionVersionResponse_httpStatus :: Lens.Lens' GetConnectorDefinitionVersionResponse Prelude.Int
getConnectorDefinitionVersionResponse_httpStatus = Lens.lens (\GetConnectorDefinitionVersionResponse' {httpStatus} -> httpStatus) (\s@GetConnectorDefinitionVersionResponse' {} a -> s {httpStatus = a} :: GetConnectorDefinitionVersionResponse)

instance
  Prelude.NFData
    GetConnectorDefinitionVersionResponse
