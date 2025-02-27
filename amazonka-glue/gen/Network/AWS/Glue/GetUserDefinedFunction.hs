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
-- Module      : Network.AWS.Glue.GetUserDefinedFunction
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves a specified function definition from the Data Catalog.
module Network.AWS.Glue.GetUserDefinedFunction
  ( -- * Creating a Request
    GetUserDefinedFunction (..),
    newGetUserDefinedFunction,

    -- * Request Lenses
    getUserDefinedFunction_catalogId,
    getUserDefinedFunction_databaseName,
    getUserDefinedFunction_functionName,

    -- * Destructuring the Response
    GetUserDefinedFunctionResponse (..),
    newGetUserDefinedFunctionResponse,

    -- * Response Lenses
    getUserDefinedFunctionResponse_userDefinedFunction,
    getUserDefinedFunctionResponse_httpStatus,
  )
where

import Network.AWS.Glue.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetUserDefinedFunction' smart constructor.
data GetUserDefinedFunction = GetUserDefinedFunction'
  { -- | The ID of the Data Catalog where the function to be retrieved is
    -- located. If none is provided, the AWS account ID is used by default.
    catalogId :: Prelude.Maybe Prelude.Text,
    -- | The name of the catalog database where the function is located.
    databaseName :: Prelude.Text,
    -- | The name of the function.
    functionName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetUserDefinedFunction' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'catalogId', 'getUserDefinedFunction_catalogId' - The ID of the Data Catalog where the function to be retrieved is
-- located. If none is provided, the AWS account ID is used by default.
--
-- 'databaseName', 'getUserDefinedFunction_databaseName' - The name of the catalog database where the function is located.
--
-- 'functionName', 'getUserDefinedFunction_functionName' - The name of the function.
newGetUserDefinedFunction ::
  -- | 'databaseName'
  Prelude.Text ->
  -- | 'functionName'
  Prelude.Text ->
  GetUserDefinedFunction
newGetUserDefinedFunction
  pDatabaseName_
  pFunctionName_ =
    GetUserDefinedFunction'
      { catalogId =
          Prelude.Nothing,
        databaseName = pDatabaseName_,
        functionName = pFunctionName_
      }

-- | The ID of the Data Catalog where the function to be retrieved is
-- located. If none is provided, the AWS account ID is used by default.
getUserDefinedFunction_catalogId :: Lens.Lens' GetUserDefinedFunction (Prelude.Maybe Prelude.Text)
getUserDefinedFunction_catalogId = Lens.lens (\GetUserDefinedFunction' {catalogId} -> catalogId) (\s@GetUserDefinedFunction' {} a -> s {catalogId = a} :: GetUserDefinedFunction)

-- | The name of the catalog database where the function is located.
getUserDefinedFunction_databaseName :: Lens.Lens' GetUserDefinedFunction Prelude.Text
getUserDefinedFunction_databaseName = Lens.lens (\GetUserDefinedFunction' {databaseName} -> databaseName) (\s@GetUserDefinedFunction' {} a -> s {databaseName = a} :: GetUserDefinedFunction)

-- | The name of the function.
getUserDefinedFunction_functionName :: Lens.Lens' GetUserDefinedFunction Prelude.Text
getUserDefinedFunction_functionName = Lens.lens (\GetUserDefinedFunction' {functionName} -> functionName) (\s@GetUserDefinedFunction' {} a -> s {functionName = a} :: GetUserDefinedFunction)

instance Prelude.AWSRequest GetUserDefinedFunction where
  type
    Rs GetUserDefinedFunction =
      GetUserDefinedFunctionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetUserDefinedFunctionResponse'
            Prelude.<$> (x Prelude..?> "UserDefinedFunction")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetUserDefinedFunction

instance Prelude.NFData GetUserDefinedFunction

instance Prelude.ToHeaders GetUserDefinedFunction where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "AWSGlue.GetUserDefinedFunction" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON GetUserDefinedFunction where
  toJSON GetUserDefinedFunction' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("CatalogId" Prelude..=) Prelude.<$> catalogId,
            Prelude.Just
              ("DatabaseName" Prelude..= databaseName),
            Prelude.Just
              ("FunctionName" Prelude..= functionName)
          ]
      )

instance Prelude.ToPath GetUserDefinedFunction where
  toPath = Prelude.const "/"

instance Prelude.ToQuery GetUserDefinedFunction where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetUserDefinedFunctionResponse' smart constructor.
data GetUserDefinedFunctionResponse = GetUserDefinedFunctionResponse'
  { -- | The requested function definition.
    userDefinedFunction :: Prelude.Maybe UserDefinedFunction,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetUserDefinedFunctionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'userDefinedFunction', 'getUserDefinedFunctionResponse_userDefinedFunction' - The requested function definition.
--
-- 'httpStatus', 'getUserDefinedFunctionResponse_httpStatus' - The response's http status code.
newGetUserDefinedFunctionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetUserDefinedFunctionResponse
newGetUserDefinedFunctionResponse pHttpStatus_ =
  GetUserDefinedFunctionResponse'
    { userDefinedFunction =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The requested function definition.
getUserDefinedFunctionResponse_userDefinedFunction :: Lens.Lens' GetUserDefinedFunctionResponse (Prelude.Maybe UserDefinedFunction)
getUserDefinedFunctionResponse_userDefinedFunction = Lens.lens (\GetUserDefinedFunctionResponse' {userDefinedFunction} -> userDefinedFunction) (\s@GetUserDefinedFunctionResponse' {} a -> s {userDefinedFunction = a} :: GetUserDefinedFunctionResponse)

-- | The response's http status code.
getUserDefinedFunctionResponse_httpStatus :: Lens.Lens' GetUserDefinedFunctionResponse Prelude.Int
getUserDefinedFunctionResponse_httpStatus = Lens.lens (\GetUserDefinedFunctionResponse' {httpStatus} -> httpStatus) (\s@GetUserDefinedFunctionResponse' {} a -> s {httpStatus = a} :: GetUserDefinedFunctionResponse)

instance
  Prelude.NFData
    GetUserDefinedFunctionResponse
