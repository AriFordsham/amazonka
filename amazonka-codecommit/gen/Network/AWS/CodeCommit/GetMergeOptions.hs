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
-- Module      : Network.AWS.CodeCommit.GetMergeOptions
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the merge options available for merging two
-- specified branches. For details about why a merge option is not
-- available, use GetMergeConflicts or DescribeMergeConflicts.
module Network.AWS.CodeCommit.GetMergeOptions
  ( -- * Creating a Request
    GetMergeOptions (..),
    newGetMergeOptions,

    -- * Request Lenses
    getMergeOptions_conflictDetailLevel,
    getMergeOptions_conflictResolutionStrategy,
    getMergeOptions_repositoryName,
    getMergeOptions_sourceCommitSpecifier,
    getMergeOptions_destinationCommitSpecifier,

    -- * Destructuring the Response
    GetMergeOptionsResponse (..),
    newGetMergeOptionsResponse,

    -- * Response Lenses
    getMergeOptionsResponse_httpStatus,
    getMergeOptionsResponse_mergeOptions,
    getMergeOptionsResponse_sourceCommitId,
    getMergeOptionsResponse_destinationCommitId,
    getMergeOptionsResponse_baseCommitId,
  )
where

import Network.AWS.CodeCommit.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetMergeOptions' smart constructor.
data GetMergeOptions = GetMergeOptions'
  { -- | The level of conflict detail to use. If unspecified, the default
    -- FILE_LEVEL is used, which returns a not-mergeable result if the same
    -- file has differences in both branches. If LINE_LEVEL is specified, a
    -- conflict is considered not mergeable if the same file in both branches
    -- has differences on the same line.
    conflictDetailLevel :: Prelude.Maybe ConflictDetailLevelTypeEnum,
    -- | Specifies which branch to use when resolving conflicts, or whether to
    -- attempt automatically merging two versions of a file. The default is
    -- NONE, which requires any conflicts to be resolved manually before the
    -- merge operation is successful.
    conflictResolutionStrategy :: Prelude.Maybe ConflictResolutionStrategyTypeEnum,
    -- | The name of the repository that contains the commits about which you
    -- want to get merge options.
    repositoryName :: Prelude.Text,
    -- | The branch, tag, HEAD, or other fully qualified reference used to
    -- identify a commit (for example, a branch name or a full commit ID).
    sourceCommitSpecifier :: Prelude.Text,
    -- | The branch, tag, HEAD, or other fully qualified reference used to
    -- identify a commit (for example, a branch name or a full commit ID).
    destinationCommitSpecifier :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetMergeOptions' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'conflictDetailLevel', 'getMergeOptions_conflictDetailLevel' - The level of conflict detail to use. If unspecified, the default
-- FILE_LEVEL is used, which returns a not-mergeable result if the same
-- file has differences in both branches. If LINE_LEVEL is specified, a
-- conflict is considered not mergeable if the same file in both branches
-- has differences on the same line.
--
-- 'conflictResolutionStrategy', 'getMergeOptions_conflictResolutionStrategy' - Specifies which branch to use when resolving conflicts, or whether to
-- attempt automatically merging two versions of a file. The default is
-- NONE, which requires any conflicts to be resolved manually before the
-- merge operation is successful.
--
-- 'repositoryName', 'getMergeOptions_repositoryName' - The name of the repository that contains the commits about which you
-- want to get merge options.
--
-- 'sourceCommitSpecifier', 'getMergeOptions_sourceCommitSpecifier' - The branch, tag, HEAD, or other fully qualified reference used to
-- identify a commit (for example, a branch name or a full commit ID).
--
-- 'destinationCommitSpecifier', 'getMergeOptions_destinationCommitSpecifier' - The branch, tag, HEAD, or other fully qualified reference used to
-- identify a commit (for example, a branch name or a full commit ID).
newGetMergeOptions ::
  -- | 'repositoryName'
  Prelude.Text ->
  -- | 'sourceCommitSpecifier'
  Prelude.Text ->
  -- | 'destinationCommitSpecifier'
  Prelude.Text ->
  GetMergeOptions
newGetMergeOptions
  pRepositoryName_
  pSourceCommitSpecifier_
  pDestinationCommitSpecifier_ =
    GetMergeOptions'
      { conflictDetailLevel =
          Prelude.Nothing,
        conflictResolutionStrategy = Prelude.Nothing,
        repositoryName = pRepositoryName_,
        sourceCommitSpecifier = pSourceCommitSpecifier_,
        destinationCommitSpecifier =
          pDestinationCommitSpecifier_
      }

-- | The level of conflict detail to use. If unspecified, the default
-- FILE_LEVEL is used, which returns a not-mergeable result if the same
-- file has differences in both branches. If LINE_LEVEL is specified, a
-- conflict is considered not mergeable if the same file in both branches
-- has differences on the same line.
getMergeOptions_conflictDetailLevel :: Lens.Lens' GetMergeOptions (Prelude.Maybe ConflictDetailLevelTypeEnum)
getMergeOptions_conflictDetailLevel = Lens.lens (\GetMergeOptions' {conflictDetailLevel} -> conflictDetailLevel) (\s@GetMergeOptions' {} a -> s {conflictDetailLevel = a} :: GetMergeOptions)

-- | Specifies which branch to use when resolving conflicts, or whether to
-- attempt automatically merging two versions of a file. The default is
-- NONE, which requires any conflicts to be resolved manually before the
-- merge operation is successful.
getMergeOptions_conflictResolutionStrategy :: Lens.Lens' GetMergeOptions (Prelude.Maybe ConflictResolutionStrategyTypeEnum)
getMergeOptions_conflictResolutionStrategy = Lens.lens (\GetMergeOptions' {conflictResolutionStrategy} -> conflictResolutionStrategy) (\s@GetMergeOptions' {} a -> s {conflictResolutionStrategy = a} :: GetMergeOptions)

-- | The name of the repository that contains the commits about which you
-- want to get merge options.
getMergeOptions_repositoryName :: Lens.Lens' GetMergeOptions Prelude.Text
getMergeOptions_repositoryName = Lens.lens (\GetMergeOptions' {repositoryName} -> repositoryName) (\s@GetMergeOptions' {} a -> s {repositoryName = a} :: GetMergeOptions)

-- | The branch, tag, HEAD, or other fully qualified reference used to
-- identify a commit (for example, a branch name or a full commit ID).
getMergeOptions_sourceCommitSpecifier :: Lens.Lens' GetMergeOptions Prelude.Text
getMergeOptions_sourceCommitSpecifier = Lens.lens (\GetMergeOptions' {sourceCommitSpecifier} -> sourceCommitSpecifier) (\s@GetMergeOptions' {} a -> s {sourceCommitSpecifier = a} :: GetMergeOptions)

-- | The branch, tag, HEAD, or other fully qualified reference used to
-- identify a commit (for example, a branch name or a full commit ID).
getMergeOptions_destinationCommitSpecifier :: Lens.Lens' GetMergeOptions Prelude.Text
getMergeOptions_destinationCommitSpecifier = Lens.lens (\GetMergeOptions' {destinationCommitSpecifier} -> destinationCommitSpecifier) (\s@GetMergeOptions' {} a -> s {destinationCommitSpecifier = a} :: GetMergeOptions)

instance Prelude.AWSRequest GetMergeOptions where
  type Rs GetMergeOptions = GetMergeOptionsResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetMergeOptionsResponse'
            Prelude.<$> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> ( x Prelude..?> "mergeOptions"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (x Prelude..:> "sourceCommitId")
            Prelude.<*> (x Prelude..:> "destinationCommitId")
            Prelude.<*> (x Prelude..:> "baseCommitId")
      )

instance Prelude.Hashable GetMergeOptions

instance Prelude.NFData GetMergeOptions

instance Prelude.ToHeaders GetMergeOptions where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "CodeCommit_20150413.GetMergeOptions" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON GetMergeOptions where
  toJSON GetMergeOptions' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("conflictDetailLevel" Prelude..=)
              Prelude.<$> conflictDetailLevel,
            ("conflictResolutionStrategy" Prelude..=)
              Prelude.<$> conflictResolutionStrategy,
            Prelude.Just
              ("repositoryName" Prelude..= repositoryName),
            Prelude.Just
              ( "sourceCommitSpecifier"
                  Prelude..= sourceCommitSpecifier
              ),
            Prelude.Just
              ( "destinationCommitSpecifier"
                  Prelude..= destinationCommitSpecifier
              )
          ]
      )

instance Prelude.ToPath GetMergeOptions where
  toPath = Prelude.const "/"

instance Prelude.ToQuery GetMergeOptions where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetMergeOptionsResponse' smart constructor.
data GetMergeOptionsResponse = GetMergeOptionsResponse'
  { -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The merge option or strategy used to merge the code.
    mergeOptions :: [MergeOptionTypeEnum],
    -- | The commit ID of the source commit specifier that was used in the merge
    -- evaluation.
    sourceCommitId :: Prelude.Text,
    -- | The commit ID of the destination commit specifier that was used in the
    -- merge evaluation.
    destinationCommitId :: Prelude.Text,
    -- | The commit ID of the merge base.
    baseCommitId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetMergeOptionsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'httpStatus', 'getMergeOptionsResponse_httpStatus' - The response's http status code.
--
-- 'mergeOptions', 'getMergeOptionsResponse_mergeOptions' - The merge option or strategy used to merge the code.
--
-- 'sourceCommitId', 'getMergeOptionsResponse_sourceCommitId' - The commit ID of the source commit specifier that was used in the merge
-- evaluation.
--
-- 'destinationCommitId', 'getMergeOptionsResponse_destinationCommitId' - The commit ID of the destination commit specifier that was used in the
-- merge evaluation.
--
-- 'baseCommitId', 'getMergeOptionsResponse_baseCommitId' - The commit ID of the merge base.
newGetMergeOptionsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'sourceCommitId'
  Prelude.Text ->
  -- | 'destinationCommitId'
  Prelude.Text ->
  -- | 'baseCommitId'
  Prelude.Text ->
  GetMergeOptionsResponse
newGetMergeOptionsResponse
  pHttpStatus_
  pSourceCommitId_
  pDestinationCommitId_
  pBaseCommitId_ =
    GetMergeOptionsResponse'
      { httpStatus = pHttpStatus_,
        mergeOptions = Prelude.mempty,
        sourceCommitId = pSourceCommitId_,
        destinationCommitId = pDestinationCommitId_,
        baseCommitId = pBaseCommitId_
      }

-- | The response's http status code.
getMergeOptionsResponse_httpStatus :: Lens.Lens' GetMergeOptionsResponse Prelude.Int
getMergeOptionsResponse_httpStatus = Lens.lens (\GetMergeOptionsResponse' {httpStatus} -> httpStatus) (\s@GetMergeOptionsResponse' {} a -> s {httpStatus = a} :: GetMergeOptionsResponse)

-- | The merge option or strategy used to merge the code.
getMergeOptionsResponse_mergeOptions :: Lens.Lens' GetMergeOptionsResponse [MergeOptionTypeEnum]
getMergeOptionsResponse_mergeOptions = Lens.lens (\GetMergeOptionsResponse' {mergeOptions} -> mergeOptions) (\s@GetMergeOptionsResponse' {} a -> s {mergeOptions = a} :: GetMergeOptionsResponse) Prelude.. Prelude._Coerce

-- | The commit ID of the source commit specifier that was used in the merge
-- evaluation.
getMergeOptionsResponse_sourceCommitId :: Lens.Lens' GetMergeOptionsResponse Prelude.Text
getMergeOptionsResponse_sourceCommitId = Lens.lens (\GetMergeOptionsResponse' {sourceCommitId} -> sourceCommitId) (\s@GetMergeOptionsResponse' {} a -> s {sourceCommitId = a} :: GetMergeOptionsResponse)

-- | The commit ID of the destination commit specifier that was used in the
-- merge evaluation.
getMergeOptionsResponse_destinationCommitId :: Lens.Lens' GetMergeOptionsResponse Prelude.Text
getMergeOptionsResponse_destinationCommitId = Lens.lens (\GetMergeOptionsResponse' {destinationCommitId} -> destinationCommitId) (\s@GetMergeOptionsResponse' {} a -> s {destinationCommitId = a} :: GetMergeOptionsResponse)

-- | The commit ID of the merge base.
getMergeOptionsResponse_baseCommitId :: Lens.Lens' GetMergeOptionsResponse Prelude.Text
getMergeOptionsResponse_baseCommitId = Lens.lens (\GetMergeOptionsResponse' {baseCommitId} -> baseCommitId) (\s@GetMergeOptionsResponse' {} a -> s {baseCommitId = a} :: GetMergeOptionsResponse)

instance Prelude.NFData GetMergeOptionsResponse
