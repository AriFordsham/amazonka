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
-- Module      : Network.AWS.CodeCommit.GetDifferences
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the differences in a valid commit specifier
-- (such as a branch, tag, HEAD, commit ID, or other fully qualified
-- reference). Results can be limited to a specified path.
--
-- This operation returns paginated results.
module Network.AWS.CodeCommit.GetDifferences
  ( -- * Creating a Request
    GetDifferences (..),
    newGetDifferences,

    -- * Request Lenses
    getDifferences_nextToken,
    getDifferences_beforeCommitSpecifier,
    getDifferences_maxResults,
    getDifferences_beforePath,
    getDifferences_afterPath,
    getDifferences_repositoryName,
    getDifferences_afterCommitSpecifier,

    -- * Destructuring the Response
    GetDifferencesResponse (..),
    newGetDifferencesResponse,

    -- * Response Lenses
    getDifferencesResponse_nextToken,
    getDifferencesResponse_differences,
    getDifferencesResponse_httpStatus,
  )
where

import Network.AWS.CodeCommit.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetDifferences' smart constructor.
data GetDifferences = GetDifferences'
  { -- | An enumeration token that, when provided in a request, returns the next
    -- batch of the results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The branch, tag, HEAD, or other fully qualified reference used to
    -- identify a commit (for example, the full commit ID). Optional. If not
    -- specified, all changes before the @afterCommitSpecifier@ value are
    -- shown. If you do not use @beforeCommitSpecifier@ in your request,
    -- consider limiting the results with @maxResults@.
    beforeCommitSpecifier :: Prelude.Maybe Prelude.Text,
    -- | A non-zero, non-negative integer used to limit the number of returned
    -- results.
    maxResults :: Prelude.Maybe Prelude.Int,
    -- | The file path in which to check for differences. Limits the results to
    -- this path. Can also be used to specify the previous name of a directory
    -- or folder. If @beforePath@ and @afterPath@ are not specified,
    -- differences are shown for all paths.
    beforePath :: Prelude.Maybe Prelude.Text,
    -- | The file path in which to check differences. Limits the results to this
    -- path. Can also be used to specify the changed name of a directory or
    -- folder, if it has changed. If not specified, differences are shown for
    -- all paths.
    afterPath :: Prelude.Maybe Prelude.Text,
    -- | The name of the repository where you want to get differences.
    repositoryName :: Prelude.Text,
    -- | The branch, tag, HEAD, or other fully qualified reference used to
    -- identify a commit.
    afterCommitSpecifier :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetDifferences' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getDifferences_nextToken' - An enumeration token that, when provided in a request, returns the next
-- batch of the results.
--
-- 'beforeCommitSpecifier', 'getDifferences_beforeCommitSpecifier' - The branch, tag, HEAD, or other fully qualified reference used to
-- identify a commit (for example, the full commit ID). Optional. If not
-- specified, all changes before the @afterCommitSpecifier@ value are
-- shown. If you do not use @beforeCommitSpecifier@ in your request,
-- consider limiting the results with @maxResults@.
--
-- 'maxResults', 'getDifferences_maxResults' - A non-zero, non-negative integer used to limit the number of returned
-- results.
--
-- 'beforePath', 'getDifferences_beforePath' - The file path in which to check for differences. Limits the results to
-- this path. Can also be used to specify the previous name of a directory
-- or folder. If @beforePath@ and @afterPath@ are not specified,
-- differences are shown for all paths.
--
-- 'afterPath', 'getDifferences_afterPath' - The file path in which to check differences. Limits the results to this
-- path. Can also be used to specify the changed name of a directory or
-- folder, if it has changed. If not specified, differences are shown for
-- all paths.
--
-- 'repositoryName', 'getDifferences_repositoryName' - The name of the repository where you want to get differences.
--
-- 'afterCommitSpecifier', 'getDifferences_afterCommitSpecifier' - The branch, tag, HEAD, or other fully qualified reference used to
-- identify a commit.
newGetDifferences ::
  -- | 'repositoryName'
  Prelude.Text ->
  -- | 'afterCommitSpecifier'
  Prelude.Text ->
  GetDifferences
newGetDifferences
  pRepositoryName_
  pAfterCommitSpecifier_ =
    GetDifferences'
      { nextToken = Prelude.Nothing,
        beforeCommitSpecifier = Prelude.Nothing,
        maxResults = Prelude.Nothing,
        beforePath = Prelude.Nothing,
        afterPath = Prelude.Nothing,
        repositoryName = pRepositoryName_,
        afterCommitSpecifier = pAfterCommitSpecifier_
      }

-- | An enumeration token that, when provided in a request, returns the next
-- batch of the results.
getDifferences_nextToken :: Lens.Lens' GetDifferences (Prelude.Maybe Prelude.Text)
getDifferences_nextToken = Lens.lens (\GetDifferences' {nextToken} -> nextToken) (\s@GetDifferences' {} a -> s {nextToken = a} :: GetDifferences)

-- | The branch, tag, HEAD, or other fully qualified reference used to
-- identify a commit (for example, the full commit ID). Optional. If not
-- specified, all changes before the @afterCommitSpecifier@ value are
-- shown. If you do not use @beforeCommitSpecifier@ in your request,
-- consider limiting the results with @maxResults@.
getDifferences_beforeCommitSpecifier :: Lens.Lens' GetDifferences (Prelude.Maybe Prelude.Text)
getDifferences_beforeCommitSpecifier = Lens.lens (\GetDifferences' {beforeCommitSpecifier} -> beforeCommitSpecifier) (\s@GetDifferences' {} a -> s {beforeCommitSpecifier = a} :: GetDifferences)

-- | A non-zero, non-negative integer used to limit the number of returned
-- results.
getDifferences_maxResults :: Lens.Lens' GetDifferences (Prelude.Maybe Prelude.Int)
getDifferences_maxResults = Lens.lens (\GetDifferences' {maxResults} -> maxResults) (\s@GetDifferences' {} a -> s {maxResults = a} :: GetDifferences)

-- | The file path in which to check for differences. Limits the results to
-- this path. Can also be used to specify the previous name of a directory
-- or folder. If @beforePath@ and @afterPath@ are not specified,
-- differences are shown for all paths.
getDifferences_beforePath :: Lens.Lens' GetDifferences (Prelude.Maybe Prelude.Text)
getDifferences_beforePath = Lens.lens (\GetDifferences' {beforePath} -> beforePath) (\s@GetDifferences' {} a -> s {beforePath = a} :: GetDifferences)

-- | The file path in which to check differences. Limits the results to this
-- path. Can also be used to specify the changed name of a directory or
-- folder, if it has changed. If not specified, differences are shown for
-- all paths.
getDifferences_afterPath :: Lens.Lens' GetDifferences (Prelude.Maybe Prelude.Text)
getDifferences_afterPath = Lens.lens (\GetDifferences' {afterPath} -> afterPath) (\s@GetDifferences' {} a -> s {afterPath = a} :: GetDifferences)

-- | The name of the repository where you want to get differences.
getDifferences_repositoryName :: Lens.Lens' GetDifferences Prelude.Text
getDifferences_repositoryName = Lens.lens (\GetDifferences' {repositoryName} -> repositoryName) (\s@GetDifferences' {} a -> s {repositoryName = a} :: GetDifferences)

-- | The branch, tag, HEAD, or other fully qualified reference used to
-- identify a commit.
getDifferences_afterCommitSpecifier :: Lens.Lens' GetDifferences Prelude.Text
getDifferences_afterCommitSpecifier = Lens.lens (\GetDifferences' {afterCommitSpecifier} -> afterCommitSpecifier) (\s@GetDifferences' {} a -> s {afterCommitSpecifier = a} :: GetDifferences)

instance Pager.AWSPager GetDifferences where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? getDifferencesResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? getDifferencesResponse_differences
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& getDifferences_nextToken
          Lens..~ rs
          Lens.^? getDifferencesResponse_nextToken Prelude.. Lens._Just

instance Prelude.AWSRequest GetDifferences where
  type Rs GetDifferences = GetDifferencesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetDifferencesResponse'
            Prelude.<$> (x Prelude..?> "NextToken")
            Prelude.<*> ( x Prelude..?> "differences"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetDifferences

instance Prelude.NFData GetDifferences

instance Prelude.ToHeaders GetDifferences where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "CodeCommit_20150413.GetDifferences" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON GetDifferences where
  toJSON GetDifferences' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("NextToken" Prelude..=) Prelude.<$> nextToken,
            ("beforeCommitSpecifier" Prelude..=)
              Prelude.<$> beforeCommitSpecifier,
            ("MaxResults" Prelude..=) Prelude.<$> maxResults,
            ("beforePath" Prelude..=) Prelude.<$> beforePath,
            ("afterPath" Prelude..=) Prelude.<$> afterPath,
            Prelude.Just
              ("repositoryName" Prelude..= repositoryName),
            Prelude.Just
              ( "afterCommitSpecifier"
                  Prelude..= afterCommitSpecifier
              )
          ]
      )

instance Prelude.ToPath GetDifferences where
  toPath = Prelude.const "/"

instance Prelude.ToQuery GetDifferences where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetDifferencesResponse' smart constructor.
data GetDifferencesResponse = GetDifferencesResponse'
  { -- | An enumeration token that can be used in a request to return the next
    -- batch of the results.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | A data type object that contains information about the differences,
    -- including whether the difference is added, modified, or deleted (A, D,
    -- M).
    differences :: Prelude.Maybe [Difference],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetDifferencesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getDifferencesResponse_nextToken' - An enumeration token that can be used in a request to return the next
-- batch of the results.
--
-- 'differences', 'getDifferencesResponse_differences' - A data type object that contains information about the differences,
-- including whether the difference is added, modified, or deleted (A, D,
-- M).
--
-- 'httpStatus', 'getDifferencesResponse_httpStatus' - The response's http status code.
newGetDifferencesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetDifferencesResponse
newGetDifferencesResponse pHttpStatus_ =
  GetDifferencesResponse'
    { nextToken =
        Prelude.Nothing,
      differences = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | An enumeration token that can be used in a request to return the next
-- batch of the results.
getDifferencesResponse_nextToken :: Lens.Lens' GetDifferencesResponse (Prelude.Maybe Prelude.Text)
getDifferencesResponse_nextToken = Lens.lens (\GetDifferencesResponse' {nextToken} -> nextToken) (\s@GetDifferencesResponse' {} a -> s {nextToken = a} :: GetDifferencesResponse)

-- | A data type object that contains information about the differences,
-- including whether the difference is added, modified, or deleted (A, D,
-- M).
getDifferencesResponse_differences :: Lens.Lens' GetDifferencesResponse (Prelude.Maybe [Difference])
getDifferencesResponse_differences = Lens.lens (\GetDifferencesResponse' {differences} -> differences) (\s@GetDifferencesResponse' {} a -> s {differences = a} :: GetDifferencesResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
getDifferencesResponse_httpStatus :: Lens.Lens' GetDifferencesResponse Prelude.Int
getDifferencesResponse_httpStatus = Lens.lens (\GetDifferencesResponse' {httpStatus} -> httpStatus) (\s@GetDifferencesResponse' {} a -> s {httpStatus = a} :: GetDifferencesResponse)

instance Prelude.NFData GetDifferencesResponse
