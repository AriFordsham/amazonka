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
-- Module      : Network.AWS.SSM.DeleteParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a list of parameters.
module Network.AWS.SSM.DeleteParameters
  ( -- * Creating a Request
    DeleteParameters (..),
    newDeleteParameters,

    -- * Request Lenses
    deleteParameters_names,

    -- * Destructuring the Response
    DeleteParametersResponse (..),
    newDeleteParametersResponse,

    -- * Response Lenses
    deleteParametersResponse_invalidParameters,
    deleteParametersResponse_deletedParameters,
    deleteParametersResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SSM.Types

-- | /See:/ 'newDeleteParameters' smart constructor.
data DeleteParameters = DeleteParameters'
  { -- | The names of the parameters to delete.
    names :: Prelude.List1 Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DeleteParameters' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'names', 'deleteParameters_names' - The names of the parameters to delete.
newDeleteParameters ::
  -- | 'names'
  Prelude.NonEmpty Prelude.Text ->
  DeleteParameters
newDeleteParameters pNames_ =
  DeleteParameters'
    { names =
        Prelude._List1 Lens.# pNames_
    }

-- | The names of the parameters to delete.
deleteParameters_names :: Lens.Lens' DeleteParameters (Prelude.NonEmpty Prelude.Text)
deleteParameters_names = Lens.lens (\DeleteParameters' {names} -> names) (\s@DeleteParameters' {} a -> s {names = a} :: DeleteParameters) Prelude.. Prelude._List1

instance Prelude.AWSRequest DeleteParameters where
  type Rs DeleteParameters = DeleteParametersResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DeleteParametersResponse'
            Prelude.<$> (x Prelude..?> "InvalidParameters")
            Prelude.<*> (x Prelude..?> "DeletedParameters")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DeleteParameters

instance Prelude.NFData DeleteParameters

instance Prelude.ToHeaders DeleteParameters where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ("AmazonSSM.DeleteParameters" :: Prelude.ByteString),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON DeleteParameters where
  toJSON DeleteParameters' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [Prelude.Just ("Names" Prelude..= names)]
      )

instance Prelude.ToPath DeleteParameters where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DeleteParameters where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDeleteParametersResponse' smart constructor.
data DeleteParametersResponse = DeleteParametersResponse'
  { -- | The names of parameters that weren\'t deleted because the parameters are
    -- not valid.
    invalidParameters :: Prelude.Maybe (Prelude.List1 Prelude.Text),
    -- | The names of the deleted parameters.
    deletedParameters :: Prelude.Maybe (Prelude.List1 Prelude.Text),
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DeleteParametersResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'invalidParameters', 'deleteParametersResponse_invalidParameters' - The names of parameters that weren\'t deleted because the parameters are
-- not valid.
--
-- 'deletedParameters', 'deleteParametersResponse_deletedParameters' - The names of the deleted parameters.
--
-- 'httpStatus', 'deleteParametersResponse_httpStatus' - The response's http status code.
newDeleteParametersResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DeleteParametersResponse
newDeleteParametersResponse pHttpStatus_ =
  DeleteParametersResponse'
    { invalidParameters =
        Prelude.Nothing,
      deletedParameters = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The names of parameters that weren\'t deleted because the parameters are
-- not valid.
deleteParametersResponse_invalidParameters :: Lens.Lens' DeleteParametersResponse (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
deleteParametersResponse_invalidParameters = Lens.lens (\DeleteParametersResponse' {invalidParameters} -> invalidParameters) (\s@DeleteParametersResponse' {} a -> s {invalidParameters = a} :: DeleteParametersResponse) Prelude.. Lens.mapping Prelude._List1

-- | The names of the deleted parameters.
deleteParametersResponse_deletedParameters :: Lens.Lens' DeleteParametersResponse (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
deleteParametersResponse_deletedParameters = Lens.lens (\DeleteParametersResponse' {deletedParameters} -> deletedParameters) (\s@DeleteParametersResponse' {} a -> s {deletedParameters = a} :: DeleteParametersResponse) Prelude.. Lens.mapping Prelude._List1

-- | The response's http status code.
deleteParametersResponse_httpStatus :: Lens.Lens' DeleteParametersResponse Prelude.Int
deleteParametersResponse_httpStatus = Lens.lens (\DeleteParametersResponse' {httpStatus} -> httpStatus) (\s@DeleteParametersResponse' {} a -> s {httpStatus = a} :: DeleteParametersResponse)

instance Prelude.NFData DeleteParametersResponse
