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
-- Module      : Network.AWS.MediaLive.CreateInputSecurityGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a Input Security Group
module Network.AWS.MediaLive.CreateInputSecurityGroup
  ( -- * Creating a Request
    CreateInputSecurityGroup (..),
    newCreateInputSecurityGroup,

    -- * Request Lenses
    createInputSecurityGroup_tags,
    createInputSecurityGroup_whitelistRules,

    -- * Destructuring the Response
    CreateInputSecurityGroupResponse (..),
    newCreateInputSecurityGroupResponse,

    -- * Response Lenses
    createInputSecurityGroupResponse_securityGroup,
    createInputSecurityGroupResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaLive.Types
import Network.AWS.MediaLive.Types.InputSecurityGroup
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | The IPv4 CIDRs to whitelist for this Input Security Group
--
-- /See:/ 'newCreateInputSecurityGroup' smart constructor.
data CreateInputSecurityGroup = CreateInputSecurityGroup'
  { -- | A collection of key-value pairs.
    tags :: Prelude.Maybe (Prelude.Map Prelude.Text Prelude.Text),
    -- | List of IPv4 CIDR addresses to whitelist
    whitelistRules :: Prelude.Maybe [InputWhitelistRuleCidr]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateInputSecurityGroup' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'tags', 'createInputSecurityGroup_tags' - A collection of key-value pairs.
--
-- 'whitelistRules', 'createInputSecurityGroup_whitelistRules' - List of IPv4 CIDR addresses to whitelist
newCreateInputSecurityGroup ::
  CreateInputSecurityGroup
newCreateInputSecurityGroup =
  CreateInputSecurityGroup'
    { tags = Prelude.Nothing,
      whitelistRules = Prelude.Nothing
    }

-- | A collection of key-value pairs.
createInputSecurityGroup_tags :: Lens.Lens' CreateInputSecurityGroup (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
createInputSecurityGroup_tags = Lens.lens (\CreateInputSecurityGroup' {tags} -> tags) (\s@CreateInputSecurityGroup' {} a -> s {tags = a} :: CreateInputSecurityGroup) Prelude.. Lens.mapping Prelude._Map

-- | List of IPv4 CIDR addresses to whitelist
createInputSecurityGroup_whitelistRules :: Lens.Lens' CreateInputSecurityGroup (Prelude.Maybe [InputWhitelistRuleCidr])
createInputSecurityGroup_whitelistRules = Lens.lens (\CreateInputSecurityGroup' {whitelistRules} -> whitelistRules) (\s@CreateInputSecurityGroup' {} a -> s {whitelistRules = a} :: CreateInputSecurityGroup) Prelude.. Lens.mapping Prelude._Coerce

instance Prelude.AWSRequest CreateInputSecurityGroup where
  type
    Rs CreateInputSecurityGroup =
      CreateInputSecurityGroupResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          CreateInputSecurityGroupResponse'
            Prelude.<$> (x Prelude..?> "securityGroup")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable CreateInputSecurityGroup

instance Prelude.NFData CreateInputSecurityGroup

instance Prelude.ToHeaders CreateInputSecurityGroup where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON CreateInputSecurityGroup where
  toJSON CreateInputSecurityGroup' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("tags" Prelude..=) Prelude.<$> tags,
            ("whitelistRules" Prelude..=)
              Prelude.<$> whitelistRules
          ]
      )

instance Prelude.ToPath CreateInputSecurityGroup where
  toPath = Prelude.const "/prod/inputSecurityGroups"

instance Prelude.ToQuery CreateInputSecurityGroup where
  toQuery = Prelude.const Prelude.mempty

-- | Placeholder documentation for CreateInputSecurityGroupResponse
--
-- /See:/ 'newCreateInputSecurityGroupResponse' smart constructor.
data CreateInputSecurityGroupResponse = CreateInputSecurityGroupResponse'
  { securityGroup :: Prelude.Maybe InputSecurityGroup,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'CreateInputSecurityGroupResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'securityGroup', 'createInputSecurityGroupResponse_securityGroup' - Undocumented member.
--
-- 'httpStatus', 'createInputSecurityGroupResponse_httpStatus' - The response's http status code.
newCreateInputSecurityGroupResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  CreateInputSecurityGroupResponse
newCreateInputSecurityGroupResponse pHttpStatus_ =
  CreateInputSecurityGroupResponse'
    { securityGroup =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
createInputSecurityGroupResponse_securityGroup :: Lens.Lens' CreateInputSecurityGroupResponse (Prelude.Maybe InputSecurityGroup)
createInputSecurityGroupResponse_securityGroup = Lens.lens (\CreateInputSecurityGroupResponse' {securityGroup} -> securityGroup) (\s@CreateInputSecurityGroupResponse' {} a -> s {securityGroup = a} :: CreateInputSecurityGroupResponse)

-- | The response's http status code.
createInputSecurityGroupResponse_httpStatus :: Lens.Lens' CreateInputSecurityGroupResponse Prelude.Int
createInputSecurityGroupResponse_httpStatus = Lens.lens (\CreateInputSecurityGroupResponse' {httpStatus} -> httpStatus) (\s@CreateInputSecurityGroupResponse' {} a -> s {httpStatus = a} :: CreateInputSecurityGroupResponse)

instance
  Prelude.NFData
    CreateInputSecurityGroupResponse
