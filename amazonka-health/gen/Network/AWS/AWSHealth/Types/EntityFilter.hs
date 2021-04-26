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
-- Module      : Network.AWS.AWSHealth.Types.EntityFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AWSHealth.Types.EntityFilter where

import Network.AWS.AWSHealth.Types.DateTimeRange
import Network.AWS.AWSHealth.Types.EntityStatusCode
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | The values to use to filter results from the
-- <https://docs.aws.amazon.com/health/latest/APIReference/API_EntityFilter.html EntityFilter>
-- operation.
--
-- /See:/ 'newEntityFilter' smart constructor.
data EntityFilter = EntityFilter'
  { -- | A list of entity ARNs (unique identifiers).
    entityArns :: Prelude.Maybe (Prelude.List1 Prelude.Text),
    -- | A list of entity status codes (@IMPAIRED@, @UNIMPAIRED@, or @UNKNOWN@).
    statusCodes :: Prelude.Maybe (Prelude.List1 EntityStatusCode),
    -- | A list of the most recent dates and times that the entity was updated.
    lastUpdatedTimes :: Prelude.Maybe (Prelude.List1 DateTimeRange),
    -- | A map of entity tags attached to the affected entity.
    --
    -- Currently, the @tags@ property isn\'t supported.
    tags :: Prelude.Maybe [Prelude.Map Prelude.Text Prelude.Text],
    -- | A list of IDs for affected entities.
    entityValues :: Prelude.Maybe (Prelude.List1 Prelude.Text),
    -- | A list of event ARNs (unique identifiers). For example:
    -- @\"arn:aws:health:us-east-1::event\/EC2\/EC2_INSTANCE_RETIREMENT_SCHEDULED\/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456\", \"arn:aws:health:us-west-1::event\/EBS\/AWS_EBS_LOST_VOLUME\/AWS_EBS_LOST_VOLUME_CHI789_JKL101\"@
    eventArns :: Prelude.List1 Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'EntityFilter' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'entityArns', 'entityFilter_entityArns' - A list of entity ARNs (unique identifiers).
--
-- 'statusCodes', 'entityFilter_statusCodes' - A list of entity status codes (@IMPAIRED@, @UNIMPAIRED@, or @UNKNOWN@).
--
-- 'lastUpdatedTimes', 'entityFilter_lastUpdatedTimes' - A list of the most recent dates and times that the entity was updated.
--
-- 'tags', 'entityFilter_tags' - A map of entity tags attached to the affected entity.
--
-- Currently, the @tags@ property isn\'t supported.
--
-- 'entityValues', 'entityFilter_entityValues' - A list of IDs for affected entities.
--
-- 'eventArns', 'entityFilter_eventArns' - A list of event ARNs (unique identifiers). For example:
-- @\"arn:aws:health:us-east-1::event\/EC2\/EC2_INSTANCE_RETIREMENT_SCHEDULED\/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456\", \"arn:aws:health:us-west-1::event\/EBS\/AWS_EBS_LOST_VOLUME\/AWS_EBS_LOST_VOLUME_CHI789_JKL101\"@
newEntityFilter ::
  -- | 'eventArns'
  Prelude.NonEmpty Prelude.Text ->
  EntityFilter
newEntityFilter pEventArns_ =
  EntityFilter'
    { entityArns = Prelude.Nothing,
      statusCodes = Prelude.Nothing,
      lastUpdatedTimes = Prelude.Nothing,
      tags = Prelude.Nothing,
      entityValues = Prelude.Nothing,
      eventArns = Prelude._List1 Lens.# pEventArns_
    }

-- | A list of entity ARNs (unique identifiers).
entityFilter_entityArns :: Lens.Lens' EntityFilter (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
entityFilter_entityArns = Lens.lens (\EntityFilter' {entityArns} -> entityArns) (\s@EntityFilter' {} a -> s {entityArns = a} :: EntityFilter) Prelude.. Lens.mapping Prelude._List1

-- | A list of entity status codes (@IMPAIRED@, @UNIMPAIRED@, or @UNKNOWN@).
entityFilter_statusCodes :: Lens.Lens' EntityFilter (Prelude.Maybe (Prelude.NonEmpty EntityStatusCode))
entityFilter_statusCodes = Lens.lens (\EntityFilter' {statusCodes} -> statusCodes) (\s@EntityFilter' {} a -> s {statusCodes = a} :: EntityFilter) Prelude.. Lens.mapping Prelude._List1

-- | A list of the most recent dates and times that the entity was updated.
entityFilter_lastUpdatedTimes :: Lens.Lens' EntityFilter (Prelude.Maybe (Prelude.NonEmpty DateTimeRange))
entityFilter_lastUpdatedTimes = Lens.lens (\EntityFilter' {lastUpdatedTimes} -> lastUpdatedTimes) (\s@EntityFilter' {} a -> s {lastUpdatedTimes = a} :: EntityFilter) Prelude.. Lens.mapping Prelude._List1

-- | A map of entity tags attached to the affected entity.
--
-- Currently, the @tags@ property isn\'t supported.
entityFilter_tags :: Lens.Lens' EntityFilter (Prelude.Maybe [Prelude.HashMap Prelude.Text Prelude.Text])
entityFilter_tags = Lens.lens (\EntityFilter' {tags} -> tags) (\s@EntityFilter' {} a -> s {tags = a} :: EntityFilter) Prelude.. Lens.mapping Prelude._Coerce

-- | A list of IDs for affected entities.
entityFilter_entityValues :: Lens.Lens' EntityFilter (Prelude.Maybe (Prelude.NonEmpty Prelude.Text))
entityFilter_entityValues = Lens.lens (\EntityFilter' {entityValues} -> entityValues) (\s@EntityFilter' {} a -> s {entityValues = a} :: EntityFilter) Prelude.. Lens.mapping Prelude._List1

-- | A list of event ARNs (unique identifiers). For example:
-- @\"arn:aws:health:us-east-1::event\/EC2\/EC2_INSTANCE_RETIREMENT_SCHEDULED\/EC2_INSTANCE_RETIREMENT_SCHEDULED_ABC123-CDE456\", \"arn:aws:health:us-west-1::event\/EBS\/AWS_EBS_LOST_VOLUME\/AWS_EBS_LOST_VOLUME_CHI789_JKL101\"@
entityFilter_eventArns :: Lens.Lens' EntityFilter (Prelude.NonEmpty Prelude.Text)
entityFilter_eventArns = Lens.lens (\EntityFilter' {eventArns} -> eventArns) (\s@EntityFilter' {} a -> s {eventArns = a} :: EntityFilter) Prelude.. Prelude._List1

instance Prelude.Hashable EntityFilter

instance Prelude.NFData EntityFilter

instance Prelude.ToJSON EntityFilter where
  toJSON EntityFilter' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("entityArns" Prelude..=) Prelude.<$> entityArns,
            ("statusCodes" Prelude..=) Prelude.<$> statusCodes,
            ("lastUpdatedTimes" Prelude..=)
              Prelude.<$> lastUpdatedTimes,
            ("tags" Prelude..=) Prelude.<$> tags,
            ("entityValues" Prelude..=) Prelude.<$> entityValues,
            Prelude.Just ("eventArns" Prelude..= eventArns)
          ]
      )
