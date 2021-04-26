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
-- Module      : Network.AWS.Inspector.DescribeRulesPackages
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the rules packages that are specified by the ARNs of the rules
-- packages.
module Network.AWS.Inspector.DescribeRulesPackages
  ( -- * Creating a Request
    DescribeRulesPackages (..),
    newDescribeRulesPackages,

    -- * Request Lenses
    describeRulesPackages_locale,
    describeRulesPackages_rulesPackageArns,

    -- * Destructuring the Response
    DescribeRulesPackagesResponse (..),
    newDescribeRulesPackagesResponse,

    -- * Response Lenses
    describeRulesPackagesResponse_httpStatus,
    describeRulesPackagesResponse_rulesPackages,
    describeRulesPackagesResponse_failedItems,
  )
where

import Network.AWS.Inspector.Types
import Network.AWS.Inspector.Types.FailedItemDetails
import Network.AWS.Inspector.Types.RulesPackage
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newDescribeRulesPackages' smart constructor.
data DescribeRulesPackages = DescribeRulesPackages'
  { -- | The locale that you want to translate a rules package description into.
    locale :: Prelude.Maybe Locale,
    -- | The ARN that specifies the rules package that you want to describe.
    rulesPackageArns :: Prelude.List1 Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeRulesPackages' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'locale', 'describeRulesPackages_locale' - The locale that you want to translate a rules package description into.
--
-- 'rulesPackageArns', 'describeRulesPackages_rulesPackageArns' - The ARN that specifies the rules package that you want to describe.
newDescribeRulesPackages ::
  -- | 'rulesPackageArns'
  Prelude.NonEmpty Prelude.Text ->
  DescribeRulesPackages
newDescribeRulesPackages pRulesPackageArns_ =
  DescribeRulesPackages'
    { locale = Prelude.Nothing,
      rulesPackageArns =
        Prelude._List1 Lens.# pRulesPackageArns_
    }

-- | The locale that you want to translate a rules package description into.
describeRulesPackages_locale :: Lens.Lens' DescribeRulesPackages (Prelude.Maybe Locale)
describeRulesPackages_locale = Lens.lens (\DescribeRulesPackages' {locale} -> locale) (\s@DescribeRulesPackages' {} a -> s {locale = a} :: DescribeRulesPackages)

-- | The ARN that specifies the rules package that you want to describe.
describeRulesPackages_rulesPackageArns :: Lens.Lens' DescribeRulesPackages (Prelude.NonEmpty Prelude.Text)
describeRulesPackages_rulesPackageArns = Lens.lens (\DescribeRulesPackages' {rulesPackageArns} -> rulesPackageArns) (\s@DescribeRulesPackages' {} a -> s {rulesPackageArns = a} :: DescribeRulesPackages) Prelude.. Prelude._List1

instance Prelude.AWSRequest DescribeRulesPackages where
  type
    Rs DescribeRulesPackages =
      DescribeRulesPackagesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeRulesPackagesResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Prelude..?> "rulesPackages"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> ( x Prelude..?> "failedItems"
                            Prelude..!@ Prelude.mempty
                        )
      )

instance Prelude.Hashable DescribeRulesPackages

instance Prelude.NFData DescribeRulesPackages

instance Prelude.ToHeaders DescribeRulesPackages where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "InspectorService.DescribeRulesPackages" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON DescribeRulesPackages where
  toJSON DescribeRulesPackages' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("locale" Prelude..=) Prelude.<$> locale,
            Prelude.Just
              ("rulesPackageArns" Prelude..= rulesPackageArns)
          ]
      )

instance Prelude.ToPath DescribeRulesPackages where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DescribeRulesPackages where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeRulesPackagesResponse' smart constructor.
data DescribeRulesPackagesResponse = DescribeRulesPackagesResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | Information about the rules package.
    rulesPackages :: [RulesPackage],
    -- | Rules package details that cannot be described. An error code is
    -- provided for each failed item.
    failedItems :: Prelude.Map Prelude.Text FailedItemDetails
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeRulesPackagesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'describeRulesPackagesResponse_httpStatus' - The response's http status code.
--
-- 'rulesPackages', 'describeRulesPackagesResponse_rulesPackages' - Information about the rules package.
--
-- 'failedItems', 'describeRulesPackagesResponse_failedItems' - Rules package details that cannot be described. An error code is
-- provided for each failed item.
newDescribeRulesPackagesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeRulesPackagesResponse
newDescribeRulesPackagesResponse pHttpStatus_ =
  DescribeRulesPackagesResponse'
    { httpStatus =
        pHttpStatus_,
      rulesPackages = Prelude.mempty,
      failedItems = Prelude.mempty
    }

-- | The response's http status code.
describeRulesPackagesResponse_httpStatus :: Lens.Lens' DescribeRulesPackagesResponse Prelude.Int
describeRulesPackagesResponse_httpStatus = Lens.lens (\DescribeRulesPackagesResponse' {httpStatus} -> httpStatus) (\s@DescribeRulesPackagesResponse' {} a -> s {httpStatus = a} :: DescribeRulesPackagesResponse)

-- | Information about the rules package.
describeRulesPackagesResponse_rulesPackages :: Lens.Lens' DescribeRulesPackagesResponse [RulesPackage]
describeRulesPackagesResponse_rulesPackages = Lens.lens (\DescribeRulesPackagesResponse' {rulesPackages} -> rulesPackages) (\s@DescribeRulesPackagesResponse' {} a -> s {rulesPackages = a} :: DescribeRulesPackagesResponse) Prelude.. Prelude._Coerce

-- | Rules package details that cannot be described. An error code is
-- provided for each failed item.
describeRulesPackagesResponse_failedItems :: Lens.Lens' DescribeRulesPackagesResponse (Prelude.HashMap Prelude.Text FailedItemDetails)
describeRulesPackagesResponse_failedItems = Lens.lens (\DescribeRulesPackagesResponse' {failedItems} -> failedItems) (\s@DescribeRulesPackagesResponse' {} a -> s {failedItems = a} :: DescribeRulesPackagesResponse) Prelude.. Prelude._Map

instance Prelude.NFData DescribeRulesPackagesResponse
