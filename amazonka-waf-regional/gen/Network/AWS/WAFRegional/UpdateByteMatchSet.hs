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
-- Module      : Network.AWS.WAFRegional.UpdateByteMatchSet
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- This is __AWS WAF Classic__ documentation. For more information, see
-- <https://docs.aws.amazon.com/waf/latest/developerguide/classic-waf-chapter.html AWS WAF Classic>
-- in the developer guide.
--
-- __For the latest version of AWS WAF__, use the AWS WAFV2 API and see the
-- <https://docs.aws.amazon.com/waf/latest/developerguide/waf-chapter.html AWS WAF Developer Guide>.
-- With the latest version, AWS WAF has a single set of endpoints for
-- regional and global use.
--
-- Inserts or deletes ByteMatchTuple objects (filters) in a ByteMatchSet.
-- For each @ByteMatchTuple@ object, you specify the following values:
--
-- -   Whether to insert or delete the object from the array. If you want
--     to change a @ByteMatchSetUpdate@ object, you delete the existing
--     object and add a new one.
--
-- -   The part of a web request that you want AWS WAF to inspect, such as
--     a query string or the value of the @User-Agent@ header.
--
-- -   The bytes (typically a string that corresponds with ASCII
--     characters) that you want AWS WAF to look for. For more information,
--     including how you specify the values for the AWS WAF API and the AWS
--     CLI or SDKs, see @TargetString@ in the ByteMatchTuple data type.
--
-- -   Where to look, such as at the beginning or the end of a query
--     string.
--
-- -   Whether to perform any conversions on the request, such as
--     converting it to lowercase, before inspecting it for the specified
--     string.
--
-- For example, you can add a @ByteMatchSetUpdate@ object that matches web
-- requests in which @User-Agent@ headers contain the string @BadBot@. You
-- can then configure AWS WAF to block those requests.
--
-- To create and configure a @ByteMatchSet@, perform the following steps:
--
-- 1.  Create a @ByteMatchSet.@ For more information, see
--     CreateByteMatchSet.
--
-- 2.  Use GetChangeToken to get the change token that you provide in the
--     @ChangeToken@ parameter of an @UpdateByteMatchSet@ request.
--
-- 3.  Submit an @UpdateByteMatchSet@ request to specify the part of the
--     request that you want AWS WAF to inspect (for example, the header or
--     the URI) and the value that you want AWS WAF to watch for.
--
-- For more information about how to use the AWS WAF API to allow or block
-- HTTP requests, see the
-- <https://docs.aws.amazon.com/waf/latest/developerguide/ AWS WAF Developer Guide>.
module Network.AWS.WAFRegional.UpdateByteMatchSet
  ( -- * Creating a Request
    UpdateByteMatchSet (..),
    newUpdateByteMatchSet,

    -- * Request Lenses
    updateByteMatchSet_byteMatchSetId,
    updateByteMatchSet_changeToken,
    updateByteMatchSet_updates,

    -- * Destructuring the Response
    UpdateByteMatchSetResponse (..),
    newUpdateByteMatchSetResponse,

    -- * Response Lenses
    updateByteMatchSetResponse_changeToken,
    updateByteMatchSetResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.WAFRegional.Types

-- | /See:/ 'newUpdateByteMatchSet' smart constructor.
data UpdateByteMatchSet = UpdateByteMatchSet'
  { -- | The @ByteMatchSetId@ of the ByteMatchSet that you want to update.
    -- @ByteMatchSetId@ is returned by CreateByteMatchSet and by
    -- ListByteMatchSets.
    byteMatchSetId :: Prelude.Text,
    -- | The value returned by the most recent call to GetChangeToken.
    changeToken :: Prelude.Text,
    -- | An array of @ByteMatchSetUpdate@ objects that you want to insert into or
    -- delete from a ByteMatchSet. For more information, see the applicable
    -- data types:
    --
    -- -   ByteMatchSetUpdate: Contains @Action@ and @ByteMatchTuple@
    --
    -- -   ByteMatchTuple: Contains @FieldToMatch@, @PositionalConstraint@,
    --     @TargetString@, and @TextTransformation@
    --
    -- -   FieldToMatch: Contains @Data@ and @Type@
    updates :: Prelude.NonEmpty ByteMatchSetUpdate
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'UpdateByteMatchSet' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'byteMatchSetId', 'updateByteMatchSet_byteMatchSetId' - The @ByteMatchSetId@ of the ByteMatchSet that you want to update.
-- @ByteMatchSetId@ is returned by CreateByteMatchSet and by
-- ListByteMatchSets.
--
-- 'changeToken', 'updateByteMatchSet_changeToken' - The value returned by the most recent call to GetChangeToken.
--
-- 'updates', 'updateByteMatchSet_updates' - An array of @ByteMatchSetUpdate@ objects that you want to insert into or
-- delete from a ByteMatchSet. For more information, see the applicable
-- data types:
--
-- -   ByteMatchSetUpdate: Contains @Action@ and @ByteMatchTuple@
--
-- -   ByteMatchTuple: Contains @FieldToMatch@, @PositionalConstraint@,
--     @TargetString@, and @TextTransformation@
--
-- -   FieldToMatch: Contains @Data@ and @Type@
newUpdateByteMatchSet ::
  -- | 'byteMatchSetId'
  Prelude.Text ->
  -- | 'changeToken'
  Prelude.Text ->
  -- | 'updates'
  Prelude.NonEmpty ByteMatchSetUpdate ->
  UpdateByteMatchSet
newUpdateByteMatchSet
  pByteMatchSetId_
  pChangeToken_
  pUpdates_ =
    UpdateByteMatchSet'
      { byteMatchSetId =
          pByteMatchSetId_,
        changeToken = pChangeToken_,
        updates = Prelude._Coerce Lens.# pUpdates_
      }

-- | The @ByteMatchSetId@ of the ByteMatchSet that you want to update.
-- @ByteMatchSetId@ is returned by CreateByteMatchSet and by
-- ListByteMatchSets.
updateByteMatchSet_byteMatchSetId :: Lens.Lens' UpdateByteMatchSet Prelude.Text
updateByteMatchSet_byteMatchSetId = Lens.lens (\UpdateByteMatchSet' {byteMatchSetId} -> byteMatchSetId) (\s@UpdateByteMatchSet' {} a -> s {byteMatchSetId = a} :: UpdateByteMatchSet)

-- | The value returned by the most recent call to GetChangeToken.
updateByteMatchSet_changeToken :: Lens.Lens' UpdateByteMatchSet Prelude.Text
updateByteMatchSet_changeToken = Lens.lens (\UpdateByteMatchSet' {changeToken} -> changeToken) (\s@UpdateByteMatchSet' {} a -> s {changeToken = a} :: UpdateByteMatchSet)

-- | An array of @ByteMatchSetUpdate@ objects that you want to insert into or
-- delete from a ByteMatchSet. For more information, see the applicable
-- data types:
--
-- -   ByteMatchSetUpdate: Contains @Action@ and @ByteMatchTuple@
--
-- -   ByteMatchTuple: Contains @FieldToMatch@, @PositionalConstraint@,
--     @TargetString@, and @TextTransformation@
--
-- -   FieldToMatch: Contains @Data@ and @Type@
updateByteMatchSet_updates :: Lens.Lens' UpdateByteMatchSet (Prelude.NonEmpty ByteMatchSetUpdate)
updateByteMatchSet_updates = Lens.lens (\UpdateByteMatchSet' {updates} -> updates) (\s@UpdateByteMatchSet' {} a -> s {updates = a} :: UpdateByteMatchSet) Prelude.. Prelude._Coerce

instance Prelude.AWSRequest UpdateByteMatchSet where
  type
    Rs UpdateByteMatchSet =
      UpdateByteMatchSetResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateByteMatchSetResponse'
            Prelude.<$> (x Prelude..?> "ChangeToken")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateByteMatchSet

instance Prelude.NFData UpdateByteMatchSet

instance Prelude.ToHeaders UpdateByteMatchSet where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "AWSWAF_Regional_20161128.UpdateByteMatchSet" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON UpdateByteMatchSet where
  toJSON UpdateByteMatchSet' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ("ByteMatchSetId" Prelude..= byteMatchSetId),
            Prelude.Just ("ChangeToken" Prelude..= changeToken),
            Prelude.Just ("Updates" Prelude..= updates)
          ]
      )

instance Prelude.ToPath UpdateByteMatchSet where
  toPath = Prelude.const "/"

instance Prelude.ToQuery UpdateByteMatchSet where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newUpdateByteMatchSetResponse' smart constructor.
data UpdateByteMatchSetResponse = UpdateByteMatchSetResponse'
  { -- | The @ChangeToken@ that you used to submit the @UpdateByteMatchSet@
    -- request. You can also use this value to query the status of the request.
    -- For more information, see GetChangeTokenStatus.
    changeToken :: Prelude.Maybe Prelude.Text,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'UpdateByteMatchSetResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'changeToken', 'updateByteMatchSetResponse_changeToken' - The @ChangeToken@ that you used to submit the @UpdateByteMatchSet@
-- request. You can also use this value to query the status of the request.
-- For more information, see GetChangeTokenStatus.
--
-- 'httpStatus', 'updateByteMatchSetResponse_httpStatus' - The response's http status code.
newUpdateByteMatchSetResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateByteMatchSetResponse
newUpdateByteMatchSetResponse pHttpStatus_ =
  UpdateByteMatchSetResponse'
    { changeToken =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The @ChangeToken@ that you used to submit the @UpdateByteMatchSet@
-- request. You can also use this value to query the status of the request.
-- For more information, see GetChangeTokenStatus.
updateByteMatchSetResponse_changeToken :: Lens.Lens' UpdateByteMatchSetResponse (Prelude.Maybe Prelude.Text)
updateByteMatchSetResponse_changeToken = Lens.lens (\UpdateByteMatchSetResponse' {changeToken} -> changeToken) (\s@UpdateByteMatchSetResponse' {} a -> s {changeToken = a} :: UpdateByteMatchSetResponse)

-- | The response's http status code.
updateByteMatchSetResponse_httpStatus :: Lens.Lens' UpdateByteMatchSetResponse Prelude.Int
updateByteMatchSetResponse_httpStatus = Lens.lens (\UpdateByteMatchSetResponse' {httpStatus} -> httpStatus) (\s@UpdateByteMatchSetResponse' {} a -> s {httpStatus = a} :: UpdateByteMatchSetResponse)

instance Prelude.NFData UpdateByteMatchSetResponse
