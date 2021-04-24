{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.LoadBalancerTLSCertificateFailureReason
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.LoadBalancerTLSCertificateFailureReason
  ( LoadBalancerTLSCertificateFailureReason
      ( ..,
        AdditionalVerificationRequired,
        DomainNotAllowed,
        InvalidPublicDomain,
        NoAvailableContacts,
        Other
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LoadBalancerTLSCertificateFailureReason
  = LoadBalancerTLSCertificateFailureReason'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AdditionalVerificationRequired :: LoadBalancerTLSCertificateFailureReason
pattern AdditionalVerificationRequired = LoadBalancerTLSCertificateFailureReason' "ADDITIONAL_VERIFICATION_REQUIRED"

pattern DomainNotAllowed :: LoadBalancerTLSCertificateFailureReason
pattern DomainNotAllowed = LoadBalancerTLSCertificateFailureReason' "DOMAIN_NOT_ALLOWED"

pattern InvalidPublicDomain :: LoadBalancerTLSCertificateFailureReason
pattern InvalidPublicDomain = LoadBalancerTLSCertificateFailureReason' "INVALID_PUBLIC_DOMAIN"

pattern NoAvailableContacts :: LoadBalancerTLSCertificateFailureReason
pattern NoAvailableContacts = LoadBalancerTLSCertificateFailureReason' "NO_AVAILABLE_CONTACTS"

pattern Other :: LoadBalancerTLSCertificateFailureReason
pattern Other = LoadBalancerTLSCertificateFailureReason' "OTHER"

{-# COMPLETE
  AdditionalVerificationRequired,
  DomainNotAllowed,
  InvalidPublicDomain,
  NoAvailableContacts,
  Other,
  LoadBalancerTLSCertificateFailureReason'
  #-}

instance FromText LoadBalancerTLSCertificateFailureReason where
  parser = (LoadBalancerTLSCertificateFailureReason' . mk) <$> takeText

instance ToText LoadBalancerTLSCertificateFailureReason where
  toText (LoadBalancerTLSCertificateFailureReason' ci) = original ci

instance Hashable LoadBalancerTLSCertificateFailureReason

instance NFData LoadBalancerTLSCertificateFailureReason

instance ToByteString LoadBalancerTLSCertificateFailureReason

instance ToQuery LoadBalancerTLSCertificateFailureReason

instance ToHeader LoadBalancerTLSCertificateFailureReason

instance FromJSON LoadBalancerTLSCertificateFailureReason where
  parseJSON = parseJSONText "LoadBalancerTLSCertificateFailureReason"
