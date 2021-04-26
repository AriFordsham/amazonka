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
-- Module      : Network.AWS.IoT.DescribeRoleAlias
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes a role alias.
module Network.AWS.IoT.DescribeRoleAlias
  ( -- * Creating a Request
    DescribeRoleAlias (..),
    newDescribeRoleAlias,

    -- * Request Lenses
    describeRoleAlias_roleAlias,

    -- * Destructuring the Response
    DescribeRoleAliasResponse (..),
    newDescribeRoleAliasResponse,

    -- * Response Lenses
    describeRoleAliasResponse_roleAliasDescription,
    describeRoleAliasResponse_httpStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.IoT.Types.RoleAliasDescription
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeRoleAlias' smart constructor.
data DescribeRoleAlias = DescribeRoleAlias'
  { -- | The role alias to describe.
    roleAlias :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeRoleAlias' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'roleAlias', 'describeRoleAlias_roleAlias' - The role alias to describe.
newDescribeRoleAlias ::
  -- | 'roleAlias'
  Prelude.Text ->
  DescribeRoleAlias
newDescribeRoleAlias pRoleAlias_ =
  DescribeRoleAlias' {roleAlias = pRoleAlias_}

-- | The role alias to describe.
describeRoleAlias_roleAlias :: Lens.Lens' DescribeRoleAlias Prelude.Text
describeRoleAlias_roleAlias = Lens.lens (\DescribeRoleAlias' {roleAlias} -> roleAlias) (\s@DescribeRoleAlias' {} a -> s {roleAlias = a} :: DescribeRoleAlias)

instance Prelude.AWSRequest DescribeRoleAlias where
  type Rs DescribeRoleAlias = DescribeRoleAliasResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeRoleAliasResponse'
            Prelude.<$> (x Prelude..?> "roleAliasDescription")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeRoleAlias

instance Prelude.NFData DescribeRoleAlias

instance Prelude.ToHeaders DescribeRoleAlias where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath DescribeRoleAlias where
  toPath DescribeRoleAlias' {..} =
    Prelude.mconcat
      ["/role-aliases/", Prelude.toBS roleAlias]

instance Prelude.ToQuery DescribeRoleAlias where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeRoleAliasResponse' smart constructor.
data DescribeRoleAliasResponse = DescribeRoleAliasResponse'
  { -- | The role alias description.
    roleAliasDescription :: Prelude.Maybe RoleAliasDescription,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeRoleAliasResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'roleAliasDescription', 'describeRoleAliasResponse_roleAliasDescription' - The role alias description.
--
-- 'httpStatus', 'describeRoleAliasResponse_httpStatus' - The response's http status code.
newDescribeRoleAliasResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeRoleAliasResponse
newDescribeRoleAliasResponse pHttpStatus_ =
  DescribeRoleAliasResponse'
    { roleAliasDescription =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The role alias description.
describeRoleAliasResponse_roleAliasDescription :: Lens.Lens' DescribeRoleAliasResponse (Prelude.Maybe RoleAliasDescription)
describeRoleAliasResponse_roleAliasDescription = Lens.lens (\DescribeRoleAliasResponse' {roleAliasDescription} -> roleAliasDescription) (\s@DescribeRoleAliasResponse' {} a -> s {roleAliasDescription = a} :: DescribeRoleAliasResponse)

-- | The response's http status code.
describeRoleAliasResponse_httpStatus :: Lens.Lens' DescribeRoleAliasResponse Prelude.Int
describeRoleAliasResponse_httpStatus = Lens.lens (\DescribeRoleAliasResponse' {httpStatus} -> httpStatus) (\s@DescribeRoleAliasResponse' {} a -> s {httpStatus = a} :: DescribeRoleAliasResponse)

instance Prelude.NFData DescribeRoleAliasResponse
