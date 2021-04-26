{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.XRay.Types.SamplingRule
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.XRay.Types.SamplingRule where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A sampling rule that services use to decide whether to instrument a
-- request. Rule fields can match properties of the service, or properties
-- of a request. The service can ignore rules that don\'t match its
-- properties.
--
-- /See:/ 'newSamplingRule' smart constructor.
data SamplingRule = SamplingRule'
  { -- | The name of the sampling rule. Specify a rule by either name or ARN, but
    -- not both.
    ruleName :: Prelude.Maybe Prelude.Text,
    -- | The ARN of the sampling rule. Specify a rule by either name or ARN, but
    -- not both.
    ruleARN :: Prelude.Maybe Prelude.Text,
    -- | Matches attributes derived from the request.
    attributes :: Prelude.Maybe (Prelude.Map Prelude.Text Prelude.Text),
    -- | Matches the ARN of the AWS resource on which the service runs.
    resourceARN :: Prelude.Text,
    -- | The priority of the sampling rule.
    priority :: Prelude.Nat,
    -- | The percentage of matching requests to instrument, after the reservoir
    -- is exhausted.
    fixedRate :: Prelude.Double,
    -- | A fixed number of matching requests to instrument per second, prior to
    -- applying the fixed rate. The reservoir is not used directly by services,
    -- but applies to all services using the rule collectively.
    reservoirSize :: Prelude.Nat,
    -- | Matches the @name@ that the service uses to identify itself in segments.
    serviceName :: Prelude.Text,
    -- | Matches the @origin@ that the service uses to identify its type in
    -- segments.
    serviceType :: Prelude.Text,
    -- | Matches the hostname from a request URL.
    host :: Prelude.Text,
    -- | Matches the HTTP method of a request.
    hTTPMethod :: Prelude.Text,
    -- | Matches the path from a request URL.
    uRLPath :: Prelude.Text,
    -- | The version of the sampling rule format (@1@).
    version :: Prelude.Nat
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'SamplingRule' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'ruleName', 'samplingRule_ruleName' - The name of the sampling rule. Specify a rule by either name or ARN, but
-- not both.
--
-- 'ruleARN', 'samplingRule_ruleARN' - The ARN of the sampling rule. Specify a rule by either name or ARN, but
-- not both.
--
-- 'attributes', 'samplingRule_attributes' - Matches attributes derived from the request.
--
-- 'resourceARN', 'samplingRule_resourceARN' - Matches the ARN of the AWS resource on which the service runs.
--
-- 'priority', 'samplingRule_priority' - The priority of the sampling rule.
--
-- 'fixedRate', 'samplingRule_fixedRate' - The percentage of matching requests to instrument, after the reservoir
-- is exhausted.
--
-- 'reservoirSize', 'samplingRule_reservoirSize' - A fixed number of matching requests to instrument per second, prior to
-- applying the fixed rate. The reservoir is not used directly by services,
-- but applies to all services using the rule collectively.
--
-- 'serviceName', 'samplingRule_serviceName' - Matches the @name@ that the service uses to identify itself in segments.
--
-- 'serviceType', 'samplingRule_serviceType' - Matches the @origin@ that the service uses to identify its type in
-- segments.
--
-- 'host', 'samplingRule_host' - Matches the hostname from a request URL.
--
-- 'hTTPMethod', 'samplingRule_hTTPMethod' - Matches the HTTP method of a request.
--
-- 'uRLPath', 'samplingRule_uRLPath' - Matches the path from a request URL.
--
-- 'version', 'samplingRule_version' - The version of the sampling rule format (@1@).
newSamplingRule ::
  -- | 'resourceARN'
  Prelude.Text ->
  -- | 'priority'
  Prelude.Natural ->
  -- | 'fixedRate'
  Prelude.Double ->
  -- | 'reservoirSize'
  Prelude.Natural ->
  -- | 'serviceName'
  Prelude.Text ->
  -- | 'serviceType'
  Prelude.Text ->
  -- | 'host'
  Prelude.Text ->
  -- | 'hTTPMethod'
  Prelude.Text ->
  -- | 'uRLPath'
  Prelude.Text ->
  -- | 'version'
  Prelude.Natural ->
  SamplingRule
newSamplingRule
  pResourceARN_
  pPriority_
  pFixedRate_
  pReservoirSize_
  pServiceName_
  pServiceType_
  pHost_
  pHTTPMethod_
  pURLPath_
  pVersion_ =
    SamplingRule'
      { ruleName = Prelude.Nothing,
        ruleARN = Prelude.Nothing,
        attributes = Prelude.Nothing,
        resourceARN = pResourceARN_,
        priority = Prelude._Nat Lens.# pPriority_,
        fixedRate = pFixedRate_,
        reservoirSize = Prelude._Nat Lens.# pReservoirSize_,
        serviceName = pServiceName_,
        serviceType = pServiceType_,
        host = pHost_,
        hTTPMethod = pHTTPMethod_,
        uRLPath = pURLPath_,
        version = Prelude._Nat Lens.# pVersion_
      }

-- | The name of the sampling rule. Specify a rule by either name or ARN, but
-- not both.
samplingRule_ruleName :: Lens.Lens' SamplingRule (Prelude.Maybe Prelude.Text)
samplingRule_ruleName = Lens.lens (\SamplingRule' {ruleName} -> ruleName) (\s@SamplingRule' {} a -> s {ruleName = a} :: SamplingRule)

-- | The ARN of the sampling rule. Specify a rule by either name or ARN, but
-- not both.
samplingRule_ruleARN :: Lens.Lens' SamplingRule (Prelude.Maybe Prelude.Text)
samplingRule_ruleARN = Lens.lens (\SamplingRule' {ruleARN} -> ruleARN) (\s@SamplingRule' {} a -> s {ruleARN = a} :: SamplingRule)

-- | Matches attributes derived from the request.
samplingRule_attributes :: Lens.Lens' SamplingRule (Prelude.Maybe (Prelude.HashMap Prelude.Text Prelude.Text))
samplingRule_attributes = Lens.lens (\SamplingRule' {attributes} -> attributes) (\s@SamplingRule' {} a -> s {attributes = a} :: SamplingRule) Prelude.. Lens.mapping Prelude._Map

-- | Matches the ARN of the AWS resource on which the service runs.
samplingRule_resourceARN :: Lens.Lens' SamplingRule Prelude.Text
samplingRule_resourceARN = Lens.lens (\SamplingRule' {resourceARN} -> resourceARN) (\s@SamplingRule' {} a -> s {resourceARN = a} :: SamplingRule)

-- | The priority of the sampling rule.
samplingRule_priority :: Lens.Lens' SamplingRule Prelude.Natural
samplingRule_priority = Lens.lens (\SamplingRule' {priority} -> priority) (\s@SamplingRule' {} a -> s {priority = a} :: SamplingRule) Prelude.. Prelude._Nat

-- | The percentage of matching requests to instrument, after the reservoir
-- is exhausted.
samplingRule_fixedRate :: Lens.Lens' SamplingRule Prelude.Double
samplingRule_fixedRate = Lens.lens (\SamplingRule' {fixedRate} -> fixedRate) (\s@SamplingRule' {} a -> s {fixedRate = a} :: SamplingRule)

-- | A fixed number of matching requests to instrument per second, prior to
-- applying the fixed rate. The reservoir is not used directly by services,
-- but applies to all services using the rule collectively.
samplingRule_reservoirSize :: Lens.Lens' SamplingRule Prelude.Natural
samplingRule_reservoirSize = Lens.lens (\SamplingRule' {reservoirSize} -> reservoirSize) (\s@SamplingRule' {} a -> s {reservoirSize = a} :: SamplingRule) Prelude.. Prelude._Nat

-- | Matches the @name@ that the service uses to identify itself in segments.
samplingRule_serviceName :: Lens.Lens' SamplingRule Prelude.Text
samplingRule_serviceName = Lens.lens (\SamplingRule' {serviceName} -> serviceName) (\s@SamplingRule' {} a -> s {serviceName = a} :: SamplingRule)

-- | Matches the @origin@ that the service uses to identify its type in
-- segments.
samplingRule_serviceType :: Lens.Lens' SamplingRule Prelude.Text
samplingRule_serviceType = Lens.lens (\SamplingRule' {serviceType} -> serviceType) (\s@SamplingRule' {} a -> s {serviceType = a} :: SamplingRule)

-- | Matches the hostname from a request URL.
samplingRule_host :: Lens.Lens' SamplingRule Prelude.Text
samplingRule_host = Lens.lens (\SamplingRule' {host} -> host) (\s@SamplingRule' {} a -> s {host = a} :: SamplingRule)

-- | Matches the HTTP method of a request.
samplingRule_hTTPMethod :: Lens.Lens' SamplingRule Prelude.Text
samplingRule_hTTPMethod = Lens.lens (\SamplingRule' {hTTPMethod} -> hTTPMethod) (\s@SamplingRule' {} a -> s {hTTPMethod = a} :: SamplingRule)

-- | Matches the path from a request URL.
samplingRule_uRLPath :: Lens.Lens' SamplingRule Prelude.Text
samplingRule_uRLPath = Lens.lens (\SamplingRule' {uRLPath} -> uRLPath) (\s@SamplingRule' {} a -> s {uRLPath = a} :: SamplingRule)

-- | The version of the sampling rule format (@1@).
samplingRule_version :: Lens.Lens' SamplingRule Prelude.Natural
samplingRule_version = Lens.lens (\SamplingRule' {version} -> version) (\s@SamplingRule' {} a -> s {version = a} :: SamplingRule) Prelude.. Prelude._Nat

instance Prelude.FromJSON SamplingRule where
  parseJSON =
    Prelude.withObject
      "SamplingRule"
      ( \x ->
          SamplingRule'
            Prelude.<$> (x Prelude..:? "RuleName")
            Prelude.<*> (x Prelude..:? "RuleARN")
            Prelude.<*> ( x Prelude..:? "Attributes"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> (x Prelude..: "ResourceARN")
            Prelude.<*> (x Prelude..: "Priority")
            Prelude.<*> (x Prelude..: "FixedRate")
            Prelude.<*> (x Prelude..: "ReservoirSize")
            Prelude.<*> (x Prelude..: "ServiceName")
            Prelude.<*> (x Prelude..: "ServiceType")
            Prelude.<*> (x Prelude..: "Host")
            Prelude.<*> (x Prelude..: "HTTPMethod")
            Prelude.<*> (x Prelude..: "URLPath")
            Prelude.<*> (x Prelude..: "Version")
      )

instance Prelude.Hashable SamplingRule

instance Prelude.NFData SamplingRule

instance Prelude.ToJSON SamplingRule where
  toJSON SamplingRule' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("RuleName" Prelude..=) Prelude.<$> ruleName,
            ("RuleARN" Prelude..=) Prelude.<$> ruleARN,
            ("Attributes" Prelude..=) Prelude.<$> attributes,
            Prelude.Just ("ResourceARN" Prelude..= resourceARN),
            Prelude.Just ("Priority" Prelude..= priority),
            Prelude.Just ("FixedRate" Prelude..= fixedRate),
            Prelude.Just
              ("ReservoirSize" Prelude..= reservoirSize),
            Prelude.Just ("ServiceName" Prelude..= serviceName),
            Prelude.Just ("ServiceType" Prelude..= serviceType),
            Prelude.Just ("Host" Prelude..= host),
            Prelude.Just ("HTTPMethod" Prelude..= hTTPMethod),
            Prelude.Just ("URLPath" Prelude..= uRLPath),
            Prelude.Just ("Version" Prelude..= version)
          ]
      )
