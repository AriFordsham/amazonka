{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Comprehend.Types.BatchDetectKeyPhrasesItemResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Comprehend.Types.BatchDetectKeyPhrasesItemResult where

import Network.AWS.Comprehend.Types.KeyPhrase
import Network.AWS.Lens
import Network.AWS.Prelude

-- | The result of calling the operation. The operation returns one object for each document that is successfully processed by the operation.
--
--
--
-- /See:/ 'batchDetectKeyPhrasesItemResult' smart constructor.
data BatchDetectKeyPhrasesItemResult = BatchDetectKeyPhrasesItemResult'
  { _bdkpirKeyPhrases ::
      !( Maybe
           [KeyPhrase]
       ),
    _bdkpirIndex ::
      !( Maybe
           Int
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'BatchDetectKeyPhrasesItemResult' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'bdkpirKeyPhrases' - One or more 'KeyPhrase' objects, one for each key phrase detected in the document.
--
-- * 'bdkpirIndex' - The zero-based index of the document in the input list.
batchDetectKeyPhrasesItemResult ::
  BatchDetectKeyPhrasesItemResult
batchDetectKeyPhrasesItemResult =
  BatchDetectKeyPhrasesItemResult'
    { _bdkpirKeyPhrases =
        Nothing,
      _bdkpirIndex = Nothing
    }

-- | One or more 'KeyPhrase' objects, one for each key phrase detected in the document.
bdkpirKeyPhrases :: Lens' BatchDetectKeyPhrasesItemResult [KeyPhrase]
bdkpirKeyPhrases = lens _bdkpirKeyPhrases (\s a -> s {_bdkpirKeyPhrases = a}) . _Default . _Coerce

-- | The zero-based index of the document in the input list.
bdkpirIndex :: Lens' BatchDetectKeyPhrasesItemResult (Maybe Int)
bdkpirIndex = lens _bdkpirIndex (\s a -> s {_bdkpirIndex = a})

instance FromJSON BatchDetectKeyPhrasesItemResult where
  parseJSON =
    withObject
      "BatchDetectKeyPhrasesItemResult"
      ( \x ->
          BatchDetectKeyPhrasesItemResult'
            <$> (x .:? "KeyPhrases" .!= mempty) <*> (x .:? "Index")
      )

instance Hashable BatchDetectKeyPhrasesItemResult

instance NFData BatchDetectKeyPhrasesItemResult
