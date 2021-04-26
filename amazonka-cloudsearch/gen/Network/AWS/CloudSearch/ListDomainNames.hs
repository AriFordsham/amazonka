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
-- Module      : Network.AWS.CloudSearch.ListDomainNames
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all search domains owned by an account.
module Network.AWS.CloudSearch.ListDomainNames
  ( -- * Creating a Request
    ListDomainNames (..),
    newListDomainNames,

    -- * Destructuring the Response
    ListDomainNamesResponse (..),
    newListDomainNamesResponse,

    -- * Response Lenses
    listDomainNamesResponse_domainNames,
    listDomainNamesResponse_httpStatus,
  )
where

import Network.AWS.CloudSearch.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newListDomainNames' smart constructor.
data ListDomainNames = ListDomainNames'
  {
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListDomainNames' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
newListDomainNames ::
  ListDomainNames
newListDomainNames = ListDomainNames'

instance Prelude.AWSRequest ListDomainNames where
  type Rs ListDomainNames = ListDomainNamesResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "ListDomainNamesResult"
      ( \s h x ->
          ListDomainNamesResponse'
            Prelude.<$> ( x Prelude..@? "DomainNames"
                            Prelude..!@ Prelude.mempty
                            Prelude.>>= Prelude.may
                              (Prelude.parseXMLMap "entry" "key" "value")
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListDomainNames

instance Prelude.NFData ListDomainNames

instance Prelude.ToHeaders ListDomainNames where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath ListDomainNames where
  toPath = Prelude.const "/"

instance Prelude.ToQuery ListDomainNames where
  toQuery =
    Prelude.const
      ( Prelude.mconcat
          [ "Action"
              Prelude.=: ("ListDomainNames" :: Prelude.ByteString),
            "Version"
              Prelude.=: ("2013-01-01" :: Prelude.ByteString)
          ]
      )

-- | The result of a @ListDomainNames@ request. Contains a list of the
-- domains owned by an account.
--
-- /See:/ 'newListDomainNamesResponse' smart constructor.
data ListDomainNamesResponse = ListDomainNamesResponse'
  { -- | The names of the search domains owned by an account.
    domainNames :: Prelude.Maybe (Prelude.Map Prelude.Text Prelude.Text),
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListDomainNamesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainNames', 'listDomainNamesResponse_domainNames' - The names of the search domains owned by an account.
--
-- 'httpStatus', 'listDomainNamesResponse_httpStatus' - The response's http status code.
newListDomainNamesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListDomainNamesResponse
newListDomainNamesResponse pHttpStatus_ =
  ListDomainNamesResponse'
    { domainNames =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The names of the search domains owned by an account.
listDomainNamesResponse_domainNames :: Lens.Lens' ListDomainNamesResponse (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
listDomainNamesResponse_domainNames = Lens.lens (\ListDomainNamesResponse' {domainNames} -> domainNames) (\s@ListDomainNamesResponse' {} a -> s {domainNames = a} :: ListDomainNamesResponse) Prelude.. Lens.mapping Prelude._Map

-- | The response's http status code.
listDomainNamesResponse_httpStatus :: Lens.Lens' ListDomainNamesResponse Prelude.Int
listDomainNamesResponse_httpStatus = Lens.lens (\ListDomainNamesResponse' {httpStatus} -> httpStatus) (\s@ListDomainNamesResponse' {} a -> s {httpStatus = a} :: ListDomainNamesResponse)

instance Prelude.NFData ListDomainNamesResponse
