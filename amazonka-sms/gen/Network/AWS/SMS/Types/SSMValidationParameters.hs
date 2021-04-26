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
-- Module      : Network.AWS.SMS.Types.SSMValidationParameters
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SMS.Types.SSMValidationParameters where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.SMS.Types.ScriptType
import Network.AWS.SMS.Types.Source

-- | Contains validation parameters.
--
-- /See:/ 'newSSMValidationParameters' smart constructor.
data SSMValidationParameters = SSMValidationParameters'
  { -- | The ID of the instance. The instance must have the following tag:
    -- UserForSMSApplicationValidation=true.
    instanceId :: Prelude.Maybe Prelude.Text,
    -- | The name of the S3 bucket for output.
    outputS3BucketName :: Prelude.Maybe Prelude.Text,
    -- | The location of the validation script.
    source :: Prelude.Maybe Source,
    -- | The type of validation script.
    scriptType :: Prelude.Maybe ScriptType,
    -- | The command to run the validation script
    command :: Prelude.Maybe Prelude.Text,
    -- | The timeout interval, in seconds.
    executionTimeoutSeconds :: Prelude.Maybe Prelude.Nat
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'SSMValidationParameters' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'instanceId', 'sSMValidationParameters_instanceId' - The ID of the instance. The instance must have the following tag:
-- UserForSMSApplicationValidation=true.
--
-- 'outputS3BucketName', 'sSMValidationParameters_outputS3BucketName' - The name of the S3 bucket for output.
--
-- 'source', 'sSMValidationParameters_source' - The location of the validation script.
--
-- 'scriptType', 'sSMValidationParameters_scriptType' - The type of validation script.
--
-- 'command', 'sSMValidationParameters_command' - The command to run the validation script
--
-- 'executionTimeoutSeconds', 'sSMValidationParameters_executionTimeoutSeconds' - The timeout interval, in seconds.
newSSMValidationParameters ::
  SSMValidationParameters
newSSMValidationParameters =
  SSMValidationParameters'
    { instanceId =
        Prelude.Nothing,
      outputS3BucketName = Prelude.Nothing,
      source = Prelude.Nothing,
      scriptType = Prelude.Nothing,
      command = Prelude.Nothing,
      executionTimeoutSeconds = Prelude.Nothing
    }

-- | The ID of the instance. The instance must have the following tag:
-- UserForSMSApplicationValidation=true.
sSMValidationParameters_instanceId :: Lens.Lens' SSMValidationParameters (Prelude.Maybe Prelude.Text)
sSMValidationParameters_instanceId = Lens.lens (\SSMValidationParameters' {instanceId} -> instanceId) (\s@SSMValidationParameters' {} a -> s {instanceId = a} :: SSMValidationParameters)

-- | The name of the S3 bucket for output.
sSMValidationParameters_outputS3BucketName :: Lens.Lens' SSMValidationParameters (Prelude.Maybe Prelude.Text)
sSMValidationParameters_outputS3BucketName = Lens.lens (\SSMValidationParameters' {outputS3BucketName} -> outputS3BucketName) (\s@SSMValidationParameters' {} a -> s {outputS3BucketName = a} :: SSMValidationParameters)

-- | The location of the validation script.
sSMValidationParameters_source :: Lens.Lens' SSMValidationParameters (Prelude.Maybe Source)
sSMValidationParameters_source = Lens.lens (\SSMValidationParameters' {source} -> source) (\s@SSMValidationParameters' {} a -> s {source = a} :: SSMValidationParameters)

-- | The type of validation script.
sSMValidationParameters_scriptType :: Lens.Lens' SSMValidationParameters (Prelude.Maybe ScriptType)
sSMValidationParameters_scriptType = Lens.lens (\SSMValidationParameters' {scriptType} -> scriptType) (\s@SSMValidationParameters' {} a -> s {scriptType = a} :: SSMValidationParameters)

-- | The command to run the validation script
sSMValidationParameters_command :: Lens.Lens' SSMValidationParameters (Prelude.Maybe Prelude.Text)
sSMValidationParameters_command = Lens.lens (\SSMValidationParameters' {command} -> command) (\s@SSMValidationParameters' {} a -> s {command = a} :: SSMValidationParameters)

-- | The timeout interval, in seconds.
sSMValidationParameters_executionTimeoutSeconds :: Lens.Lens' SSMValidationParameters (Prelude.Maybe Prelude.Natural)
sSMValidationParameters_executionTimeoutSeconds = Lens.lens (\SSMValidationParameters' {executionTimeoutSeconds} -> executionTimeoutSeconds) (\s@SSMValidationParameters' {} a -> s {executionTimeoutSeconds = a} :: SSMValidationParameters) Prelude.. Lens.mapping Prelude._Nat

instance Prelude.FromJSON SSMValidationParameters where
  parseJSON =
    Prelude.withObject
      "SSMValidationParameters"
      ( \x ->
          SSMValidationParameters'
            Prelude.<$> (x Prelude..:? "instanceId")
            Prelude.<*> (x Prelude..:? "outputS3BucketName")
            Prelude.<*> (x Prelude..:? "source")
            Prelude.<*> (x Prelude..:? "scriptType")
            Prelude.<*> (x Prelude..:? "command")
            Prelude.<*> (x Prelude..:? "executionTimeoutSeconds")
      )

instance Prelude.Hashable SSMValidationParameters

instance Prelude.NFData SSMValidationParameters

instance Prelude.ToJSON SSMValidationParameters where
  toJSON SSMValidationParameters' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("instanceId" Prelude..=) Prelude.<$> instanceId,
            ("outputS3BucketName" Prelude..=)
              Prelude.<$> outputS3BucketName,
            ("source" Prelude..=) Prelude.<$> source,
            ("scriptType" Prelude..=) Prelude.<$> scriptType,
            ("command" Prelude..=) Prelude.<$> command,
            ("executionTimeoutSeconds" Prelude..=)
              Prelude.<$> executionTimeoutSeconds
          ]
      )
