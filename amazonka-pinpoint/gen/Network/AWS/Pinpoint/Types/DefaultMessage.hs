{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Pinpoint.Types.DefaultMessage
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Pinpoint.Types.DefaultMessage where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Specifies the default message for all channels.
--
--
--
-- /See:/ 'defaultMessage' smart constructor.
data DefaultMessage = DefaultMessage'
  { _dmBody ::
      !(Maybe Text),
    _dmSubstitutions ::
      !(Maybe (Map Text [Text]))
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DefaultMessage' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmBody' - The default body of the message.
--
-- * 'dmSubstitutions' - The default message variables to use in the message. You can override these default variables with individual address variables.
defaultMessage ::
  DefaultMessage
defaultMessage =
  DefaultMessage'
    { _dmBody = Nothing,
      _dmSubstitutions = Nothing
    }

-- | The default body of the message.
dmBody :: Lens' DefaultMessage (Maybe Text)
dmBody = lens _dmBody (\s a -> s {_dmBody = a})

-- | The default message variables to use in the message. You can override these default variables with individual address variables.
dmSubstitutions :: Lens' DefaultMessage (HashMap Text [Text])
dmSubstitutions = lens _dmSubstitutions (\s a -> s {_dmSubstitutions = a}) . _Default . _Map

instance Hashable DefaultMessage

instance NFData DefaultMessage

instance ToJSON DefaultMessage where
  toJSON DefaultMessage' {..} =
    object
      ( catMaybes
          [ ("Body" .=) <$> _dmBody,
            ("Substitutions" .=) <$> _dmSubstitutions
          ]
      )
