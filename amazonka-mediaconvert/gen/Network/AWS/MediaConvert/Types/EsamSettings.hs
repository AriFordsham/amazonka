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
-- Module      : Network.AWS.MediaConvert.Types.EsamSettings
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.EsamSettings where

import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaConvert.Types.EsamManifestConfirmConditionNotification
import Network.AWS.MediaConvert.Types.EsamSignalProcessingNotification
import qualified Network.AWS.Prelude as Prelude

-- | Settings for Event Signaling And Messaging (ESAM). If you don\'t do ad
-- insertion, you can ignore these settings.
--
-- /See:/ 'newEsamSettings' smart constructor.
data EsamSettings = EsamSettings'
  { -- | Specifies the stream distance, in milliseconds, between the SCTE 35
    -- messages that the transcoder places and the splice points that they
    -- refer to. If the time between the start of the asset and the SCTE-35
    -- message is less than this value, then the transcoder places the SCTE-35
    -- marker at the beginning of the stream.
    responseSignalPreroll :: Prelude.Maybe Prelude.Nat,
    -- | Specifies an ESAM ManifestConfirmConditionNotification XML as per
    -- OC-SP-ESAM-API-I03-131025. The transcoder uses the manifest conditioning
    -- instructions that you provide in the setting MCC XML (mccXml).
    manifestConfirmConditionNotification :: Prelude.Maybe EsamManifestConfirmConditionNotification,
    -- | Specifies an ESAM SignalProcessingNotification XML as per
    -- OC-SP-ESAM-API-I03-131025. The transcoder uses the signal processing
    -- instructions that you provide in the setting SCC XML (sccXml).
    signalProcessingNotification :: Prelude.Maybe EsamSignalProcessingNotification
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'EsamSettings' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'responseSignalPreroll', 'esamSettings_responseSignalPreroll' - Specifies the stream distance, in milliseconds, between the SCTE 35
-- messages that the transcoder places and the splice points that they
-- refer to. If the time between the start of the asset and the SCTE-35
-- message is less than this value, then the transcoder places the SCTE-35
-- marker at the beginning of the stream.
--
-- 'manifestConfirmConditionNotification', 'esamSettings_manifestConfirmConditionNotification' - Specifies an ESAM ManifestConfirmConditionNotification XML as per
-- OC-SP-ESAM-API-I03-131025. The transcoder uses the manifest conditioning
-- instructions that you provide in the setting MCC XML (mccXml).
--
-- 'signalProcessingNotification', 'esamSettings_signalProcessingNotification' - Specifies an ESAM SignalProcessingNotification XML as per
-- OC-SP-ESAM-API-I03-131025. The transcoder uses the signal processing
-- instructions that you provide in the setting SCC XML (sccXml).
newEsamSettings ::
  EsamSettings
newEsamSettings =
  EsamSettings'
    { responseSignalPreroll =
        Prelude.Nothing,
      manifestConfirmConditionNotification =
        Prelude.Nothing,
      signalProcessingNotification = Prelude.Nothing
    }

-- | Specifies the stream distance, in milliseconds, between the SCTE 35
-- messages that the transcoder places and the splice points that they
-- refer to. If the time between the start of the asset and the SCTE-35
-- message is less than this value, then the transcoder places the SCTE-35
-- marker at the beginning of the stream.
esamSettings_responseSignalPreroll :: Lens.Lens' EsamSettings (Prelude.Maybe Prelude.Natural)
esamSettings_responseSignalPreroll = Lens.lens (\EsamSettings' {responseSignalPreroll} -> responseSignalPreroll) (\s@EsamSettings' {} a -> s {responseSignalPreroll = a} :: EsamSettings) Prelude.. Lens.mapping Prelude._Nat

-- | Specifies an ESAM ManifestConfirmConditionNotification XML as per
-- OC-SP-ESAM-API-I03-131025. The transcoder uses the manifest conditioning
-- instructions that you provide in the setting MCC XML (mccXml).
esamSettings_manifestConfirmConditionNotification :: Lens.Lens' EsamSettings (Prelude.Maybe EsamManifestConfirmConditionNotification)
esamSettings_manifestConfirmConditionNotification = Lens.lens (\EsamSettings' {manifestConfirmConditionNotification} -> manifestConfirmConditionNotification) (\s@EsamSettings' {} a -> s {manifestConfirmConditionNotification = a} :: EsamSettings)

-- | Specifies an ESAM SignalProcessingNotification XML as per
-- OC-SP-ESAM-API-I03-131025. The transcoder uses the signal processing
-- instructions that you provide in the setting SCC XML (sccXml).
esamSettings_signalProcessingNotification :: Lens.Lens' EsamSettings (Prelude.Maybe EsamSignalProcessingNotification)
esamSettings_signalProcessingNotification = Lens.lens (\EsamSettings' {signalProcessingNotification} -> signalProcessingNotification) (\s@EsamSettings' {} a -> s {signalProcessingNotification = a} :: EsamSettings)

instance Prelude.FromJSON EsamSettings where
  parseJSON =
    Prelude.withObject
      "EsamSettings"
      ( \x ->
          EsamSettings'
            Prelude.<$> (x Prelude..:? "responseSignalPreroll")
            Prelude.<*> ( x
                            Prelude..:? "manifestConfirmConditionNotification"
                        )
            Prelude.<*> (x Prelude..:? "signalProcessingNotification")
      )

instance Prelude.Hashable EsamSettings

instance Prelude.NFData EsamSettings

instance Prelude.ToJSON EsamSettings where
  toJSON EsamSettings' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("responseSignalPreroll" Prelude..=)
              Prelude.<$> responseSignalPreroll,
            ("manifestConfirmConditionNotification" Prelude..=)
              Prelude.<$> manifestConfirmConditionNotification,
            ("signalProcessingNotification" Prelude..=)
              Prelude.<$> signalProcessingNotification
          ]
      )
