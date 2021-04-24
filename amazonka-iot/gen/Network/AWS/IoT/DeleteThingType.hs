{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IoT.DeleteThingType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified thing type. You cannot delete a thing type if it has things associated with it. To delete a thing type, first mark it as deprecated by calling 'DeprecateThingType' , then remove any associated things by calling 'UpdateThing' to change the thing type on any associated thing, and finally use 'DeleteThingType' to delete the thing type.
module Network.AWS.IoT.DeleteThingType
  ( -- * Creating a Request
    deleteThingType,
    DeleteThingType,

    -- * Request Lenses
    delThingTypeName,

    -- * Destructuring the Response
    deleteThingTypeResponse,
    DeleteThingTypeResponse,

    -- * Response Lenses
    dttrrsResponseStatus,
  )
where

import Network.AWS.IoT.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the DeleteThingType operation.
--
--
--
-- /See:/ 'deleteThingType' smart constructor.
newtype DeleteThingType = DeleteThingType'
  { _delThingTypeName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteThingType' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delThingTypeName' - The name of the thing type.
deleteThingType ::
  -- | 'delThingTypeName'
  Text ->
  DeleteThingType
deleteThingType pThingTypeName_ =
  DeleteThingType'
    { _delThingTypeName =
        pThingTypeName_
    }

-- | The name of the thing type.
delThingTypeName :: Lens' DeleteThingType Text
delThingTypeName = lens _delThingTypeName (\s a -> s {_delThingTypeName = a})

instance AWSRequest DeleteThingType where
  type Rs DeleteThingType = DeleteThingTypeResponse
  request = delete ioT
  response =
    receiveEmpty
      ( \s h x ->
          DeleteThingTypeResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteThingType

instance NFData DeleteThingType

instance ToHeaders DeleteThingType where
  toHeaders = const mempty

instance ToPath DeleteThingType where
  toPath DeleteThingType' {..} =
    mconcat ["/thing-types/", toBS _delThingTypeName]

instance ToQuery DeleteThingType where
  toQuery = const mempty

-- | The output for the DeleteThingType operation.
--
--
--
-- /See:/ 'deleteThingTypeResponse' smart constructor.
newtype DeleteThingTypeResponse = DeleteThingTypeResponse'
  { _dttrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteThingTypeResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dttrrsResponseStatus' - -- | The response status code.
deleteThingTypeResponse ::
  -- | 'dttrrsResponseStatus'
  Int ->
  DeleteThingTypeResponse
deleteThingTypeResponse pResponseStatus_ =
  DeleteThingTypeResponse'
    { _dttrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dttrrsResponseStatus :: Lens' DeleteThingTypeResponse Int
dttrrsResponseStatus = lens _dttrrsResponseStatus (\s a -> s {_dttrrsResponseStatus = a})

instance NFData DeleteThingTypeResponse
