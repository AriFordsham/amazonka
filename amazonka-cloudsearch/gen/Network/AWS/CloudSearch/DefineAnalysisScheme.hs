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
-- Module      : Network.AWS.CloudSearch.DefineAnalysisScheme
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Configures an analysis scheme that can be applied to a @text@ or
-- @text-array@ field to define language-specific text processing options.
-- For more information, see
-- <http://docs.aws.amazon.com/cloudsearch/latest/developerguide/configuring-analysis-schemes.html Configuring Analysis Schemes>
-- in the /Amazon CloudSearch Developer Guide/.
module Network.AWS.CloudSearch.DefineAnalysisScheme
  ( -- * Creating a Request
    DefineAnalysisScheme (..),
    newDefineAnalysisScheme,

    -- * Request Lenses
    defineAnalysisScheme_domainName,
    defineAnalysisScheme_analysisScheme,

    -- * Destructuring the Response
    DefineAnalysisSchemeResponse (..),
    newDefineAnalysisSchemeResponse,

    -- * Response Lenses
    defineAnalysisSchemeResponse_httpStatus,
    defineAnalysisSchemeResponse_analysisScheme,
  )
where

import Network.AWS.CloudSearch.Types
import Network.AWS.CloudSearch.Types.AnalysisSchemeStatus
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Container for the parameters to the @DefineAnalysisScheme@ operation.
-- Specifies the name of the domain you want to update and the analysis
-- scheme configuration.
--
-- /See:/ 'newDefineAnalysisScheme' smart constructor.
data DefineAnalysisScheme = DefineAnalysisScheme'
  { domainName :: Prelude.Text,
    analysisScheme :: AnalysisScheme
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DefineAnalysisScheme' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'domainName', 'defineAnalysisScheme_domainName' - Undocumented member.
--
-- 'analysisScheme', 'defineAnalysisScheme_analysisScheme' - Undocumented member.
newDefineAnalysisScheme ::
  -- | 'domainName'
  Prelude.Text ->
  -- | 'analysisScheme'
  AnalysisScheme ->
  DefineAnalysisScheme
newDefineAnalysisScheme pDomainName_ pAnalysisScheme_ =
  DefineAnalysisScheme'
    { domainName = pDomainName_,
      analysisScheme = pAnalysisScheme_
    }

-- | Undocumented member.
defineAnalysisScheme_domainName :: Lens.Lens' DefineAnalysisScheme Prelude.Text
defineAnalysisScheme_domainName = Lens.lens (\DefineAnalysisScheme' {domainName} -> domainName) (\s@DefineAnalysisScheme' {} a -> s {domainName = a} :: DefineAnalysisScheme)

-- | Undocumented member.
defineAnalysisScheme_analysisScheme :: Lens.Lens' DefineAnalysisScheme AnalysisScheme
defineAnalysisScheme_analysisScheme = Lens.lens (\DefineAnalysisScheme' {analysisScheme} -> analysisScheme) (\s@DefineAnalysisScheme' {} a -> s {analysisScheme = a} :: DefineAnalysisScheme)

instance Prelude.AWSRequest DefineAnalysisScheme where
  type
    Rs DefineAnalysisScheme =
      DefineAnalysisSchemeResponse
  request = Request.postQuery defaultService
  response =
    Response.receiveXMLWrapper
      "DefineAnalysisSchemeResult"
      ( \s h x ->
          DefineAnalysisSchemeResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Prelude..@ "AnalysisScheme")
      )

instance Prelude.Hashable DefineAnalysisScheme

instance Prelude.NFData DefineAnalysisScheme

instance Prelude.ToHeaders DefineAnalysisScheme where
  toHeaders = Prelude.const Prelude.mempty

instance Prelude.ToPath DefineAnalysisScheme where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DefineAnalysisScheme where
  toQuery DefineAnalysisScheme' {..} =
    Prelude.mconcat
      [ "Action"
          Prelude.=: ("DefineAnalysisScheme" :: Prelude.ByteString),
        "Version"
          Prelude.=: ("2013-01-01" :: Prelude.ByteString),
        "DomainName" Prelude.=: domainName,
        "AnalysisScheme" Prelude.=: analysisScheme
      ]

-- | The result of a @DefineAnalysisScheme@ request. Contains the status of
-- the newly-configured analysis scheme.
--
-- /See:/ 'newDefineAnalysisSchemeResponse' smart constructor.
data DefineAnalysisSchemeResponse = DefineAnalysisSchemeResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    analysisScheme :: AnalysisSchemeStatus
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DefineAnalysisSchemeResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'defineAnalysisSchemeResponse_httpStatus' - The response's http status code.
--
-- 'analysisScheme', 'defineAnalysisSchemeResponse_analysisScheme' - Undocumented member.
newDefineAnalysisSchemeResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'analysisScheme'
  AnalysisSchemeStatus ->
  DefineAnalysisSchemeResponse
newDefineAnalysisSchemeResponse
  pHttpStatus_
  pAnalysisScheme_ =
    DefineAnalysisSchemeResponse'
      { httpStatus =
          pHttpStatus_,
        analysisScheme = pAnalysisScheme_
      }

-- | The response's http status code.
defineAnalysisSchemeResponse_httpStatus :: Lens.Lens' DefineAnalysisSchemeResponse Prelude.Int
defineAnalysisSchemeResponse_httpStatus = Lens.lens (\DefineAnalysisSchemeResponse' {httpStatus} -> httpStatus) (\s@DefineAnalysisSchemeResponse' {} a -> s {httpStatus = a} :: DefineAnalysisSchemeResponse)

-- | Undocumented member.
defineAnalysisSchemeResponse_analysisScheme :: Lens.Lens' DefineAnalysisSchemeResponse AnalysisSchemeStatus
defineAnalysisSchemeResponse_analysisScheme = Lens.lens (\DefineAnalysisSchemeResponse' {analysisScheme} -> analysisScheme) (\s@DefineAnalysisSchemeResponse' {} a -> s {analysisScheme = a} :: DefineAnalysisSchemeResponse)

instance Prelude.NFData DefineAnalysisSchemeResponse
