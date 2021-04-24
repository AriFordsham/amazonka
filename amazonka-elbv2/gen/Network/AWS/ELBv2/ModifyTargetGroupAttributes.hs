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
-- Module      : Network.AWS.ELBv2.ModifyTargetGroupAttributes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Modifies the specified attributes of the specified target group.
module Network.AWS.ELBv2.ModifyTargetGroupAttributes
  ( -- * Creating a Request
    modifyTargetGroupAttributes,
    ModifyTargetGroupAttributes,

    -- * Request Lenses
    mtgaTargetGroupARN,
    mtgaAttributes,

    -- * Destructuring the Response
    modifyTargetGroupAttributesResponse,
    ModifyTargetGroupAttributesResponse,

    -- * Response Lenses
    mtgarrsAttributes,
    mtgarrsResponseStatus,
  )
where

import Network.AWS.ELBv2.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'modifyTargetGroupAttributes' smart constructor.
data ModifyTargetGroupAttributes = ModifyTargetGroupAttributes'
  { _mtgaTargetGroupARN ::
      !Text,
    _mtgaAttributes ::
      ![TargetGroupAttribute]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ModifyTargetGroupAttributes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtgaTargetGroupARN' - The Amazon Resource Name (ARN) of the target group.
--
-- * 'mtgaAttributes' - The attributes.
modifyTargetGroupAttributes ::
  -- | 'mtgaTargetGroupARN'
  Text ->
  ModifyTargetGroupAttributes
modifyTargetGroupAttributes pTargetGroupARN_ =
  ModifyTargetGroupAttributes'
    { _mtgaTargetGroupARN =
        pTargetGroupARN_,
      _mtgaAttributes = mempty
    }

-- | The Amazon Resource Name (ARN) of the target group.
mtgaTargetGroupARN :: Lens' ModifyTargetGroupAttributes Text
mtgaTargetGroupARN = lens _mtgaTargetGroupARN (\s a -> s {_mtgaTargetGroupARN = a})

-- | The attributes.
mtgaAttributes :: Lens' ModifyTargetGroupAttributes [TargetGroupAttribute]
mtgaAttributes = lens _mtgaAttributes (\s a -> s {_mtgaAttributes = a}) . _Coerce

instance AWSRequest ModifyTargetGroupAttributes where
  type
    Rs ModifyTargetGroupAttributes =
      ModifyTargetGroupAttributesResponse
  request = postQuery eLBv2
  response =
    receiveXMLWrapper
      "ModifyTargetGroupAttributesResult"
      ( \s h x ->
          ModifyTargetGroupAttributesResponse'
            <$> ( x .@? "Attributes" .!@ mempty
                    >>= may (parseXMLList "member")
                )
            <*> (pure (fromEnum s))
      )

instance Hashable ModifyTargetGroupAttributes

instance NFData ModifyTargetGroupAttributes

instance ToHeaders ModifyTargetGroupAttributes where
  toHeaders = const mempty

instance ToPath ModifyTargetGroupAttributes where
  toPath = const "/"

instance ToQuery ModifyTargetGroupAttributes where
  toQuery ModifyTargetGroupAttributes' {..} =
    mconcat
      [ "Action"
          =: ("ModifyTargetGroupAttributes" :: ByteString),
        "Version" =: ("2015-12-01" :: ByteString),
        "TargetGroupArn" =: _mtgaTargetGroupARN,
        "Attributes" =: toQueryList "member" _mtgaAttributes
      ]

-- | /See:/ 'modifyTargetGroupAttributesResponse' smart constructor.
data ModifyTargetGroupAttributesResponse = ModifyTargetGroupAttributesResponse'
  { _mtgarrsAttributes ::
      !( Maybe
           [TargetGroupAttribute]
       ),
    _mtgarrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ModifyTargetGroupAttributesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mtgarrsAttributes' - Information about the attributes.
--
-- * 'mtgarrsResponseStatus' - -- | The response status code.
modifyTargetGroupAttributesResponse ::
  -- | 'mtgarrsResponseStatus'
  Int ->
  ModifyTargetGroupAttributesResponse
modifyTargetGroupAttributesResponse pResponseStatus_ =
  ModifyTargetGroupAttributesResponse'
    { _mtgarrsAttributes =
        Nothing,
      _mtgarrsResponseStatus =
        pResponseStatus_
    }

-- | Information about the attributes.
mtgarrsAttributes :: Lens' ModifyTargetGroupAttributesResponse [TargetGroupAttribute]
mtgarrsAttributes = lens _mtgarrsAttributes (\s a -> s {_mtgarrsAttributes = a}) . _Default . _Coerce

-- | -- | The response status code.
mtgarrsResponseStatus :: Lens' ModifyTargetGroupAttributesResponse Int
mtgarrsResponseStatus = lens _mtgarrsResponseStatus (\s a -> s {_mtgarrsResponseStatus = a})

instance NFData ModifyTargetGroupAttributesResponse
