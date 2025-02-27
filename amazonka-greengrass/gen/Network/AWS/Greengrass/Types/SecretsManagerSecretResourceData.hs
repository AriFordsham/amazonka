{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Greengrass.Types.SecretsManagerSecretResourceData
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.SecretsManagerSecretResourceData where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | Attributes that define a secret resource, which references a secret from
-- AWS Secrets Manager. AWS IoT Greengrass stores a local, encrypted copy
-- of the secret on the Greengrass core, where it can be securely accessed
-- by connectors and Lambda functions.
--
-- /See:/ 'newSecretsManagerSecretResourceData' smart constructor.
data SecretsManagerSecretResourceData = SecretsManagerSecretResourceData'
  { -- | The ARN of the Secrets Manager secret to make available on the core. The
    -- value of the secret\'s latest version (represented by the
    -- \'\'AWSCURRENT\'\' staging label) is included by default.
    arn :: Prelude.Maybe Prelude.Text,
    -- | Optional. The staging labels whose values you want to make available on
    -- the core, in addition to \'\'AWSCURRENT\'\'.
    additionalStagingLabelsToDownload :: Prelude.Maybe [Prelude.Text]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'SecretsManagerSecretResourceData' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'arn', 'secretsManagerSecretResourceData_arn' - The ARN of the Secrets Manager secret to make available on the core. The
-- value of the secret\'s latest version (represented by the
-- \'\'AWSCURRENT\'\' staging label) is included by default.
--
-- 'additionalStagingLabelsToDownload', 'secretsManagerSecretResourceData_additionalStagingLabelsToDownload' - Optional. The staging labels whose values you want to make available on
-- the core, in addition to \'\'AWSCURRENT\'\'.
newSecretsManagerSecretResourceData ::
  SecretsManagerSecretResourceData
newSecretsManagerSecretResourceData =
  SecretsManagerSecretResourceData'
    { arn =
        Prelude.Nothing,
      additionalStagingLabelsToDownload =
        Prelude.Nothing
    }

-- | The ARN of the Secrets Manager secret to make available on the core. The
-- value of the secret\'s latest version (represented by the
-- \'\'AWSCURRENT\'\' staging label) is included by default.
secretsManagerSecretResourceData_arn :: Lens.Lens' SecretsManagerSecretResourceData (Prelude.Maybe Prelude.Text)
secretsManagerSecretResourceData_arn = Lens.lens (\SecretsManagerSecretResourceData' {arn} -> arn) (\s@SecretsManagerSecretResourceData' {} a -> s {arn = a} :: SecretsManagerSecretResourceData)

-- | Optional. The staging labels whose values you want to make available on
-- the core, in addition to \'\'AWSCURRENT\'\'.
secretsManagerSecretResourceData_additionalStagingLabelsToDownload :: Lens.Lens' SecretsManagerSecretResourceData (Prelude.Maybe [Prelude.Text])
secretsManagerSecretResourceData_additionalStagingLabelsToDownload = Lens.lens (\SecretsManagerSecretResourceData' {additionalStagingLabelsToDownload} -> additionalStagingLabelsToDownload) (\s@SecretsManagerSecretResourceData' {} a -> s {additionalStagingLabelsToDownload = a} :: SecretsManagerSecretResourceData) Prelude.. Lens.mapping Prelude._Coerce

instance
  Prelude.FromJSON
    SecretsManagerSecretResourceData
  where
  parseJSON =
    Prelude.withObject
      "SecretsManagerSecretResourceData"
      ( \x ->
          SecretsManagerSecretResourceData'
            Prelude.<$> (x Prelude..:? "ARN")
            Prelude.<*> ( x Prelude..:? "AdditionalStagingLabelsToDownload"
                            Prelude..!= Prelude.mempty
                        )
      )

instance
  Prelude.Hashable
    SecretsManagerSecretResourceData

instance
  Prelude.NFData
    SecretsManagerSecretResourceData

instance
  Prelude.ToJSON
    SecretsManagerSecretResourceData
  where
  toJSON SecretsManagerSecretResourceData' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("ARN" Prelude..=) Prelude.<$> arn,
            ("AdditionalStagingLabelsToDownload" Prelude..=)
              Prelude.<$> additionalStagingLabelsToDownload
          ]
      )
