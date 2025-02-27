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
-- Module      : Network.AWS.Inspector.Types.AssessmentRun
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.AssessmentRun where

import Network.AWS.Inspector.Types.AssessmentRunNotification
import Network.AWS.Inspector.Types.AssessmentRunState
import Network.AWS.Inspector.Types.AssessmentRunStateChange
import Network.AWS.Inspector.Types.Attribute
import Network.AWS.Inspector.Types.Severity
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude

-- | A snapshot of an Amazon Inspector assessment run that contains the
-- findings of the assessment run .
--
-- Used as the response element in the DescribeAssessmentRuns action.
--
-- /See:/ 'newAssessmentRun' smart constructor.
data AssessmentRun = AssessmentRun'
  { -- | The time when StartAssessmentRun was called.
    startedAt :: Prelude.Maybe Prelude.POSIX,
    -- | The assessment run completion time that corresponds to the rules
    -- packages evaluation completion time or failure.
    completedAt :: Prelude.Maybe Prelude.POSIX,
    -- | The ARN of the assessment run.
    arn :: Prelude.Text,
    -- | The auto-generated name for the assessment run.
    name :: Prelude.Text,
    -- | The ARN of the assessment template that is associated with the
    -- assessment run.
    assessmentTemplateArn :: Prelude.Text,
    -- | The state of the assessment run.
    state :: AssessmentRunState,
    -- | The duration of the assessment run.
    durationInSeconds :: Prelude.Natural,
    -- | The rules packages selected for the assessment run.
    rulesPackageArns :: Prelude.NonEmpty Prelude.Text,
    -- | The user-defined attributes that are assigned to every generated
    -- finding.
    userAttributesForFindings :: [Attribute],
    -- | The time when StartAssessmentRun was called.
    createdAt :: Prelude.POSIX,
    -- | The last time when the assessment run\'s state changed.
    stateChangedAt :: Prelude.POSIX,
    -- | A Boolean value (true or false) that specifies whether the process of
    -- collecting data from the agents is completed.
    dataCollected :: Prelude.Bool,
    -- | A list of the assessment run state changes.
    stateChanges :: [AssessmentRunStateChange],
    -- | A list of notifications for the event subscriptions. A notification
    -- about a particular generated finding is added to this list only once.
    notifications :: [AssessmentRunNotification],
    -- | Provides a total count of generated findings per severity.
    findingCounts :: Prelude.HashMap Severity Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'AssessmentRun' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'startedAt', 'assessmentRun_startedAt' - The time when StartAssessmentRun was called.
--
-- 'completedAt', 'assessmentRun_completedAt' - The assessment run completion time that corresponds to the rules
-- packages evaluation completion time or failure.
--
-- 'arn', 'assessmentRun_arn' - The ARN of the assessment run.
--
-- 'name', 'assessmentRun_name' - The auto-generated name for the assessment run.
--
-- 'assessmentTemplateArn', 'assessmentRun_assessmentTemplateArn' - The ARN of the assessment template that is associated with the
-- assessment run.
--
-- 'state', 'assessmentRun_state' - The state of the assessment run.
--
-- 'durationInSeconds', 'assessmentRun_durationInSeconds' - The duration of the assessment run.
--
-- 'rulesPackageArns', 'assessmentRun_rulesPackageArns' - The rules packages selected for the assessment run.
--
-- 'userAttributesForFindings', 'assessmentRun_userAttributesForFindings' - The user-defined attributes that are assigned to every generated
-- finding.
--
-- 'createdAt', 'assessmentRun_createdAt' - The time when StartAssessmentRun was called.
--
-- 'stateChangedAt', 'assessmentRun_stateChangedAt' - The last time when the assessment run\'s state changed.
--
-- 'dataCollected', 'assessmentRun_dataCollected' - A Boolean value (true or false) that specifies whether the process of
-- collecting data from the agents is completed.
--
-- 'stateChanges', 'assessmentRun_stateChanges' - A list of the assessment run state changes.
--
-- 'notifications', 'assessmentRun_notifications' - A list of notifications for the event subscriptions. A notification
-- about a particular generated finding is added to this list only once.
--
-- 'findingCounts', 'assessmentRun_findingCounts' - Provides a total count of generated findings per severity.
newAssessmentRun ::
  -- | 'arn'
  Prelude.Text ->
  -- | 'name'
  Prelude.Text ->
  -- | 'assessmentTemplateArn'
  Prelude.Text ->
  -- | 'state'
  AssessmentRunState ->
  -- | 'durationInSeconds'
  Prelude.Natural ->
  -- | 'rulesPackageArns'
  Prelude.NonEmpty Prelude.Text ->
  -- | 'createdAt'
  Prelude.UTCTime ->
  -- | 'stateChangedAt'
  Prelude.UTCTime ->
  -- | 'dataCollected'
  Prelude.Bool ->
  AssessmentRun
newAssessmentRun
  pArn_
  pName_
  pAssessmentTemplateArn_
  pState_
  pDurationInSeconds_
  pRulesPackageArns_
  pCreatedAt_
  pStateChangedAt_
  pDataCollected_ =
    AssessmentRun'
      { startedAt = Prelude.Nothing,
        completedAt = Prelude.Nothing,
        arn = pArn_,
        name = pName_,
        assessmentTemplateArn = pAssessmentTemplateArn_,
        state = pState_,
        durationInSeconds = pDurationInSeconds_,
        rulesPackageArns =
          Prelude._Coerce Lens.# pRulesPackageArns_,
        userAttributesForFindings = Prelude.mempty,
        createdAt = Prelude._Time Lens.# pCreatedAt_,
        stateChangedAt =
          Prelude._Time Lens.# pStateChangedAt_,
        dataCollected = pDataCollected_,
        stateChanges = Prelude.mempty,
        notifications = Prelude.mempty,
        findingCounts = Prelude.mempty
      }

-- | The time when StartAssessmentRun was called.
assessmentRun_startedAt :: Lens.Lens' AssessmentRun (Prelude.Maybe Prelude.UTCTime)
assessmentRun_startedAt = Lens.lens (\AssessmentRun' {startedAt} -> startedAt) (\s@AssessmentRun' {} a -> s {startedAt = a} :: AssessmentRun) Prelude.. Lens.mapping Prelude._Time

-- | The assessment run completion time that corresponds to the rules
-- packages evaluation completion time or failure.
assessmentRun_completedAt :: Lens.Lens' AssessmentRun (Prelude.Maybe Prelude.UTCTime)
assessmentRun_completedAt = Lens.lens (\AssessmentRun' {completedAt} -> completedAt) (\s@AssessmentRun' {} a -> s {completedAt = a} :: AssessmentRun) Prelude.. Lens.mapping Prelude._Time

-- | The ARN of the assessment run.
assessmentRun_arn :: Lens.Lens' AssessmentRun Prelude.Text
assessmentRun_arn = Lens.lens (\AssessmentRun' {arn} -> arn) (\s@AssessmentRun' {} a -> s {arn = a} :: AssessmentRun)

-- | The auto-generated name for the assessment run.
assessmentRun_name :: Lens.Lens' AssessmentRun Prelude.Text
assessmentRun_name = Lens.lens (\AssessmentRun' {name} -> name) (\s@AssessmentRun' {} a -> s {name = a} :: AssessmentRun)

-- | The ARN of the assessment template that is associated with the
-- assessment run.
assessmentRun_assessmentTemplateArn :: Lens.Lens' AssessmentRun Prelude.Text
assessmentRun_assessmentTemplateArn = Lens.lens (\AssessmentRun' {assessmentTemplateArn} -> assessmentTemplateArn) (\s@AssessmentRun' {} a -> s {assessmentTemplateArn = a} :: AssessmentRun)

-- | The state of the assessment run.
assessmentRun_state :: Lens.Lens' AssessmentRun AssessmentRunState
assessmentRun_state = Lens.lens (\AssessmentRun' {state} -> state) (\s@AssessmentRun' {} a -> s {state = a} :: AssessmentRun)

-- | The duration of the assessment run.
assessmentRun_durationInSeconds :: Lens.Lens' AssessmentRun Prelude.Natural
assessmentRun_durationInSeconds = Lens.lens (\AssessmentRun' {durationInSeconds} -> durationInSeconds) (\s@AssessmentRun' {} a -> s {durationInSeconds = a} :: AssessmentRun)

-- | The rules packages selected for the assessment run.
assessmentRun_rulesPackageArns :: Lens.Lens' AssessmentRun (Prelude.NonEmpty Prelude.Text)
assessmentRun_rulesPackageArns = Lens.lens (\AssessmentRun' {rulesPackageArns} -> rulesPackageArns) (\s@AssessmentRun' {} a -> s {rulesPackageArns = a} :: AssessmentRun) Prelude.. Prelude._Coerce

-- | The user-defined attributes that are assigned to every generated
-- finding.
assessmentRun_userAttributesForFindings :: Lens.Lens' AssessmentRun [Attribute]
assessmentRun_userAttributesForFindings = Lens.lens (\AssessmentRun' {userAttributesForFindings} -> userAttributesForFindings) (\s@AssessmentRun' {} a -> s {userAttributesForFindings = a} :: AssessmentRun) Prelude.. Prelude._Coerce

-- | The time when StartAssessmentRun was called.
assessmentRun_createdAt :: Lens.Lens' AssessmentRun Prelude.UTCTime
assessmentRun_createdAt = Lens.lens (\AssessmentRun' {createdAt} -> createdAt) (\s@AssessmentRun' {} a -> s {createdAt = a} :: AssessmentRun) Prelude.. Prelude._Time

-- | The last time when the assessment run\'s state changed.
assessmentRun_stateChangedAt :: Lens.Lens' AssessmentRun Prelude.UTCTime
assessmentRun_stateChangedAt = Lens.lens (\AssessmentRun' {stateChangedAt} -> stateChangedAt) (\s@AssessmentRun' {} a -> s {stateChangedAt = a} :: AssessmentRun) Prelude.. Prelude._Time

-- | A Boolean value (true or false) that specifies whether the process of
-- collecting data from the agents is completed.
assessmentRun_dataCollected :: Lens.Lens' AssessmentRun Prelude.Bool
assessmentRun_dataCollected = Lens.lens (\AssessmentRun' {dataCollected} -> dataCollected) (\s@AssessmentRun' {} a -> s {dataCollected = a} :: AssessmentRun)

-- | A list of the assessment run state changes.
assessmentRun_stateChanges :: Lens.Lens' AssessmentRun [AssessmentRunStateChange]
assessmentRun_stateChanges = Lens.lens (\AssessmentRun' {stateChanges} -> stateChanges) (\s@AssessmentRun' {} a -> s {stateChanges = a} :: AssessmentRun) Prelude.. Prelude._Coerce

-- | A list of notifications for the event subscriptions. A notification
-- about a particular generated finding is added to this list only once.
assessmentRun_notifications :: Lens.Lens' AssessmentRun [AssessmentRunNotification]
assessmentRun_notifications = Lens.lens (\AssessmentRun' {notifications} -> notifications) (\s@AssessmentRun' {} a -> s {notifications = a} :: AssessmentRun) Prelude.. Prelude._Coerce

-- | Provides a total count of generated findings per severity.
assessmentRun_findingCounts :: Lens.Lens' AssessmentRun (Prelude.HashMap Severity Prelude.Int)
assessmentRun_findingCounts = Lens.lens (\AssessmentRun' {findingCounts} -> findingCounts) (\s@AssessmentRun' {} a -> s {findingCounts = a} :: AssessmentRun) Prelude.. Prelude._Coerce

instance Prelude.FromJSON AssessmentRun where
  parseJSON =
    Prelude.withObject
      "AssessmentRun"
      ( \x ->
          AssessmentRun'
            Prelude.<$> (x Prelude..:? "startedAt")
            Prelude.<*> (x Prelude..:? "completedAt")
            Prelude.<*> (x Prelude..: "arn")
            Prelude.<*> (x Prelude..: "name")
            Prelude.<*> (x Prelude..: "assessmentTemplateArn")
            Prelude.<*> (x Prelude..: "state")
            Prelude.<*> (x Prelude..: "durationInSeconds")
            Prelude.<*> (x Prelude..: "rulesPackageArns")
            Prelude.<*> ( x Prelude..:? "userAttributesForFindings"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> (x Prelude..: "createdAt")
            Prelude.<*> (x Prelude..: "stateChangedAt")
            Prelude.<*> (x Prelude..: "dataCollected")
            Prelude.<*> ( x Prelude..:? "stateChanges"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> ( x Prelude..:? "notifications"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> ( x Prelude..:? "findingCounts"
                            Prelude..!= Prelude.mempty
                        )
      )

instance Prelude.Hashable AssessmentRun

instance Prelude.NFData AssessmentRun
