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
-- Module      : Network.AWS.QLDB.GetRevision
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a revision data object for a specified document ID and block
-- address. Also returns a proof of the specified revision for verification
-- if @DigestTipAddress@ is provided.
module Network.AWS.QLDB.GetRevision
  ( -- * Creating a Request
    GetRevision (..),
    newGetRevision,

    -- * Request Lenses
    getRevision_digestTipAddress,
    getRevision_name,
    getRevision_blockAddress,
    getRevision_documentId,

    -- * Destructuring the Response
    GetRevisionResponse (..),
    newGetRevisionResponse,

    -- * Response Lenses
    getRevisionResponse_proof,
    getRevisionResponse_httpStatus,
    getRevisionResponse_revision,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.QLDB.Types
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetRevision' smart constructor.
data GetRevision = GetRevision'
  { -- | The latest block location covered by the digest for which to request a
    -- proof. An address is an Amazon Ion structure that has two fields:
    -- @strandId@ and @sequenceNo@.
    --
    -- For example: @{strandId:\"BlFTjlSXze9BIh1KOszcE3\",sequenceNo:49}@
    digestTipAddress :: Prelude.Maybe (Prelude.Sensitive ValueHolder),
    -- | The name of the ledger.
    name :: Prelude.Text,
    -- | The block location of the document revision to be verified. An address
    -- is an Amazon Ion structure that has two fields: @strandId@ and
    -- @sequenceNo@.
    --
    -- For example: @{strandId:\"BlFTjlSXze9BIh1KOszcE3\",sequenceNo:14}@
    blockAddress :: Prelude.Sensitive ValueHolder,
    -- | The unique ID of the document to be verified.
    documentId :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetRevision' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'digestTipAddress', 'getRevision_digestTipAddress' - The latest block location covered by the digest for which to request a
-- proof. An address is an Amazon Ion structure that has two fields:
-- @strandId@ and @sequenceNo@.
--
-- For example: @{strandId:\"BlFTjlSXze9BIh1KOszcE3\",sequenceNo:49}@
--
-- 'name', 'getRevision_name' - The name of the ledger.
--
-- 'blockAddress', 'getRevision_blockAddress' - The block location of the document revision to be verified. An address
-- is an Amazon Ion structure that has two fields: @strandId@ and
-- @sequenceNo@.
--
-- For example: @{strandId:\"BlFTjlSXze9BIh1KOszcE3\",sequenceNo:14}@
--
-- 'documentId', 'getRevision_documentId' - The unique ID of the document to be verified.
newGetRevision ::
  -- | 'name'
  Prelude.Text ->
  -- | 'blockAddress'
  ValueHolder ->
  -- | 'documentId'
  Prelude.Text ->
  GetRevision
newGetRevision pName_ pBlockAddress_ pDocumentId_ =
  GetRevision'
    { digestTipAddress = Prelude.Nothing,
      name = pName_,
      blockAddress =
        Prelude._Sensitive Lens.# pBlockAddress_,
      documentId = pDocumentId_
    }

-- | The latest block location covered by the digest for which to request a
-- proof. An address is an Amazon Ion structure that has two fields:
-- @strandId@ and @sequenceNo@.
--
-- For example: @{strandId:\"BlFTjlSXze9BIh1KOszcE3\",sequenceNo:49}@
getRevision_digestTipAddress :: Lens.Lens' GetRevision (Prelude.Maybe ValueHolder)
getRevision_digestTipAddress = Lens.lens (\GetRevision' {digestTipAddress} -> digestTipAddress) (\s@GetRevision' {} a -> s {digestTipAddress = a} :: GetRevision) Prelude.. Lens.mapping Prelude._Sensitive

-- | The name of the ledger.
getRevision_name :: Lens.Lens' GetRevision Prelude.Text
getRevision_name = Lens.lens (\GetRevision' {name} -> name) (\s@GetRevision' {} a -> s {name = a} :: GetRevision)

-- | The block location of the document revision to be verified. An address
-- is an Amazon Ion structure that has two fields: @strandId@ and
-- @sequenceNo@.
--
-- For example: @{strandId:\"BlFTjlSXze9BIh1KOszcE3\",sequenceNo:14}@
getRevision_blockAddress :: Lens.Lens' GetRevision ValueHolder
getRevision_blockAddress = Lens.lens (\GetRevision' {blockAddress} -> blockAddress) (\s@GetRevision' {} a -> s {blockAddress = a} :: GetRevision) Prelude.. Prelude._Sensitive

-- | The unique ID of the document to be verified.
getRevision_documentId :: Lens.Lens' GetRevision Prelude.Text
getRevision_documentId = Lens.lens (\GetRevision' {documentId} -> documentId) (\s@GetRevision' {} a -> s {documentId = a} :: GetRevision)

instance Prelude.AWSRequest GetRevision where
  type Rs GetRevision = GetRevisionResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetRevisionResponse'
            Prelude.<$> (x Prelude..?> "Proof")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
            Prelude.<*> (x Prelude..:> "Revision")
      )

instance Prelude.Hashable GetRevision

instance Prelude.NFData GetRevision

instance Prelude.ToHeaders GetRevision where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.0" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON GetRevision where
  toJSON GetRevision' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("DigestTipAddress" Prelude..=)
              Prelude.<$> digestTipAddress,
            Prelude.Just
              ("BlockAddress" Prelude..= blockAddress),
            Prelude.Just ("DocumentId" Prelude..= documentId)
          ]
      )

instance Prelude.ToPath GetRevision where
  toPath GetRevision' {..} =
    Prelude.mconcat
      ["/ledgers/", Prelude.toBS name, "/revision"]

instance Prelude.ToQuery GetRevision where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newGetRevisionResponse' smart constructor.
data GetRevisionResponse = GetRevisionResponse'
  { -- | The proof object in Amazon Ion format returned by a @GetRevision@
    -- request. A proof contains the list of hash values that are required to
    -- recalculate the specified digest using a Merkle tree, starting with the
    -- specified document revision.
    proof :: Prelude.Maybe (Prelude.Sensitive ValueHolder),
    -- | The response's http status code.
    httpStatus :: Prelude.Int,
    -- | The document revision data object in Amazon Ion format.
    revision :: Prelude.Sensitive ValueHolder
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetRevisionResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'proof', 'getRevisionResponse_proof' - The proof object in Amazon Ion format returned by a @GetRevision@
-- request. A proof contains the list of hash values that are required to
-- recalculate the specified digest using a Merkle tree, starting with the
-- specified document revision.
--
-- 'httpStatus', 'getRevisionResponse_httpStatus' - The response's http status code.
--
-- 'revision', 'getRevisionResponse_revision' - The document revision data object in Amazon Ion format.
newGetRevisionResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  -- | 'revision'
  ValueHolder ->
  GetRevisionResponse
newGetRevisionResponse pHttpStatus_ pRevision_ =
  GetRevisionResponse'
    { proof = Prelude.Nothing,
      httpStatus = pHttpStatus_,
      revision = Prelude._Sensitive Lens.# pRevision_
    }

-- | The proof object in Amazon Ion format returned by a @GetRevision@
-- request. A proof contains the list of hash values that are required to
-- recalculate the specified digest using a Merkle tree, starting with the
-- specified document revision.
getRevisionResponse_proof :: Lens.Lens' GetRevisionResponse (Prelude.Maybe ValueHolder)
getRevisionResponse_proof = Lens.lens (\GetRevisionResponse' {proof} -> proof) (\s@GetRevisionResponse' {} a -> s {proof = a} :: GetRevisionResponse) Prelude.. Lens.mapping Prelude._Sensitive

-- | The response's http status code.
getRevisionResponse_httpStatus :: Lens.Lens' GetRevisionResponse Prelude.Int
getRevisionResponse_httpStatus = Lens.lens (\GetRevisionResponse' {httpStatus} -> httpStatus) (\s@GetRevisionResponse' {} a -> s {httpStatus = a} :: GetRevisionResponse)

-- | The document revision data object in Amazon Ion format.
getRevisionResponse_revision :: Lens.Lens' GetRevisionResponse ValueHolder
getRevisionResponse_revision = Lens.lens (\GetRevisionResponse' {revision} -> revision) (\s@GetRevisionResponse' {} a -> s {revision = a} :: GetRevisionResponse) Prelude.. Prelude._Sensitive

instance Prelude.NFData GetRevisionResponse
