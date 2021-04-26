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
-- Module      : Network.AWS.MechanicalTurk.Types.HIT
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MechanicalTurk.Types.HIT where

import qualified Network.AWS.Lens as Lens
import Network.AWS.MechanicalTurk.Types.HITReviewStatus
import Network.AWS.MechanicalTurk.Types.HITStatus
import Network.AWS.MechanicalTurk.Types.QualificationRequirement
import qualified Network.AWS.Prelude as Prelude

-- | The HIT data structure represents a single HIT, including all the
-- information necessary for a Worker to accept and complete the HIT.
--
-- /See:/ 'newHIT' smart constructor.
data HIT = HIT'
  { -- | The ID of the HIT Group of this HIT.
    hITGroupId :: Prelude.Maybe Prelude.Text,
    -- | The date and time the HIT was created.
    creationTime :: Prelude.Maybe Prelude.POSIX,
    -- | The length of time, in seconds, that a Worker has to complete the HIT
    -- after accepting it.
    assignmentDurationInSeconds :: Prelude.Maybe Prelude.Integer,
    -- | The amount of time, in seconds, after the Worker submits an assignment
    -- for the HIT that the results are automatically approved by Amazon
    -- Mechanical Turk. This is the amount of time the Requester has to reject
    -- an assignment submitted by a Worker before the assignment is
    -- auto-approved and the Worker is paid.
    autoApprovalDelayInSeconds :: Prelude.Maybe Prelude.Integer,
    -- | The data the Worker completing the HIT uses produce the results. This is
    -- either either a QuestionForm, HTMLQuestion or an ExternalQuestion data
    -- structure.
    question :: Prelude.Maybe Prelude.Text,
    -- | The date and time the HIT expires.
    expiration :: Prelude.Maybe Prelude.POSIX,
    -- | Indicates the review status of the HIT. Valid Values are NotReviewed |
    -- MarkedForReview | ReviewedAppropriate | ReviewedInappropriate.
    hITReviewStatus :: Prelude.Maybe HITReviewStatus,
    -- | The title of the HIT.
    title :: Prelude.Maybe Prelude.Text,
    -- | A unique identifier for the HIT.
    hITId :: Prelude.Maybe Prelude.Text,
    -- | The ID of the HIT Layout of this HIT.
    hITLayoutId :: Prelude.Maybe Prelude.Text,
    -- | The number of assignments for this HIT that have been approved or
    -- rejected.
    numberOfAssignmentsCompleted :: Prelude.Maybe Prelude.Int,
    reward :: Prelude.Maybe Prelude.Text,
    -- | The number of times the HIT can be accepted and completed before the HIT
    -- becomes unavailable.
    maxAssignments :: Prelude.Maybe Prelude.Int,
    -- | The status of the HIT and its assignments. Valid Values are Assignable |
    -- Unassignable | Reviewable | Reviewing | Disposed.
    hITStatus :: Prelude.Maybe HITStatus,
    -- | An arbitrary data field the Requester who created the HIT can use. This
    -- field is visible only to the creator of the HIT.
    requesterAnnotation :: Prelude.Maybe Prelude.Text,
    -- | A general description of the HIT.
    description :: Prelude.Maybe Prelude.Text,
    -- | The number of assignments for this HIT that are available for Workers to
    -- accept.
    numberOfAssignmentsAvailable :: Prelude.Maybe Prelude.Int,
    -- | The ID of the HIT type of this HIT
    hITTypeId :: Prelude.Maybe Prelude.Text,
    -- | Conditions that a Worker\'s Qualifications must meet in order to accept
    -- the HIT. A HIT can have between zero and ten Qualification requirements.
    -- All requirements must be met in order for a Worker to accept the HIT.
    -- Additionally, other actions can be restricted using the @ActionsGuarded@
    -- field on each @QualificationRequirement@ structure.
    qualificationRequirements :: Prelude.Maybe [QualificationRequirement],
    -- | The number of assignments for this HIT that are being previewed or have
    -- been accepted by Workers, but have not yet been submitted, returned, or
    -- abandoned.
    numberOfAssignmentsPending :: Prelude.Maybe Prelude.Int,
    -- | One or more words or phrases that describe the HIT, separated by commas.
    -- Search terms similar to the keywords of a HIT are more likely to have
    -- the HIT in the search results.
    keywords :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'HIT' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'hITGroupId', 'hIT_hITGroupId' - The ID of the HIT Group of this HIT.
--
-- 'creationTime', 'hIT_creationTime' - The date and time the HIT was created.
--
-- 'assignmentDurationInSeconds', 'hIT_assignmentDurationInSeconds' - The length of time, in seconds, that a Worker has to complete the HIT
-- after accepting it.
--
-- 'autoApprovalDelayInSeconds', 'hIT_autoApprovalDelayInSeconds' - The amount of time, in seconds, after the Worker submits an assignment
-- for the HIT that the results are automatically approved by Amazon
-- Mechanical Turk. This is the amount of time the Requester has to reject
-- an assignment submitted by a Worker before the assignment is
-- auto-approved and the Worker is paid.
--
-- 'question', 'hIT_question' - The data the Worker completing the HIT uses produce the results. This is
-- either either a QuestionForm, HTMLQuestion or an ExternalQuestion data
-- structure.
--
-- 'expiration', 'hIT_expiration' - The date and time the HIT expires.
--
-- 'hITReviewStatus', 'hIT_hITReviewStatus' - Indicates the review status of the HIT. Valid Values are NotReviewed |
-- MarkedForReview | ReviewedAppropriate | ReviewedInappropriate.
--
-- 'title', 'hIT_title' - The title of the HIT.
--
-- 'hITId', 'hIT_hITId' - A unique identifier for the HIT.
--
-- 'hITLayoutId', 'hIT_hITLayoutId' - The ID of the HIT Layout of this HIT.
--
-- 'numberOfAssignmentsCompleted', 'hIT_numberOfAssignmentsCompleted' - The number of assignments for this HIT that have been approved or
-- rejected.
--
-- 'reward', 'hIT_reward' - Undocumented member.
--
-- 'maxAssignments', 'hIT_maxAssignments' - The number of times the HIT can be accepted and completed before the HIT
-- becomes unavailable.
--
-- 'hITStatus', 'hIT_hITStatus' - The status of the HIT and its assignments. Valid Values are Assignable |
-- Unassignable | Reviewable | Reviewing | Disposed.
--
-- 'requesterAnnotation', 'hIT_requesterAnnotation' - An arbitrary data field the Requester who created the HIT can use. This
-- field is visible only to the creator of the HIT.
--
-- 'description', 'hIT_description' - A general description of the HIT.
--
-- 'numberOfAssignmentsAvailable', 'hIT_numberOfAssignmentsAvailable' - The number of assignments for this HIT that are available for Workers to
-- accept.
--
-- 'hITTypeId', 'hIT_hITTypeId' - The ID of the HIT type of this HIT
--
-- 'qualificationRequirements', 'hIT_qualificationRequirements' - Conditions that a Worker\'s Qualifications must meet in order to accept
-- the HIT. A HIT can have between zero and ten Qualification requirements.
-- All requirements must be met in order for a Worker to accept the HIT.
-- Additionally, other actions can be restricted using the @ActionsGuarded@
-- field on each @QualificationRequirement@ structure.
--
-- 'numberOfAssignmentsPending', 'hIT_numberOfAssignmentsPending' - The number of assignments for this HIT that are being previewed or have
-- been accepted by Workers, but have not yet been submitted, returned, or
-- abandoned.
--
-- 'keywords', 'hIT_keywords' - One or more words or phrases that describe the HIT, separated by commas.
-- Search terms similar to the keywords of a HIT are more likely to have
-- the HIT in the search results.
newHIT ::
  HIT
newHIT =
  HIT'
    { hITGroupId = Prelude.Nothing,
      creationTime = Prelude.Nothing,
      assignmentDurationInSeconds = Prelude.Nothing,
      autoApprovalDelayInSeconds = Prelude.Nothing,
      question = Prelude.Nothing,
      expiration = Prelude.Nothing,
      hITReviewStatus = Prelude.Nothing,
      title = Prelude.Nothing,
      hITId = Prelude.Nothing,
      hITLayoutId = Prelude.Nothing,
      numberOfAssignmentsCompleted = Prelude.Nothing,
      reward = Prelude.Nothing,
      maxAssignments = Prelude.Nothing,
      hITStatus = Prelude.Nothing,
      requesterAnnotation = Prelude.Nothing,
      description = Prelude.Nothing,
      numberOfAssignmentsAvailable = Prelude.Nothing,
      hITTypeId = Prelude.Nothing,
      qualificationRequirements = Prelude.Nothing,
      numberOfAssignmentsPending = Prelude.Nothing,
      keywords = Prelude.Nothing
    }

-- | The ID of the HIT Group of this HIT.
hIT_hITGroupId :: Lens.Lens' HIT (Prelude.Maybe Prelude.Text)
hIT_hITGroupId = Lens.lens (\HIT' {hITGroupId} -> hITGroupId) (\s@HIT' {} a -> s {hITGroupId = a} :: HIT)

-- | The date and time the HIT was created.
hIT_creationTime :: Lens.Lens' HIT (Prelude.Maybe Prelude.UTCTime)
hIT_creationTime = Lens.lens (\HIT' {creationTime} -> creationTime) (\s@HIT' {} a -> s {creationTime = a} :: HIT) Prelude.. Lens.mapping Prelude._Time

-- | The length of time, in seconds, that a Worker has to complete the HIT
-- after accepting it.
hIT_assignmentDurationInSeconds :: Lens.Lens' HIT (Prelude.Maybe Prelude.Integer)
hIT_assignmentDurationInSeconds = Lens.lens (\HIT' {assignmentDurationInSeconds} -> assignmentDurationInSeconds) (\s@HIT' {} a -> s {assignmentDurationInSeconds = a} :: HIT)

-- | The amount of time, in seconds, after the Worker submits an assignment
-- for the HIT that the results are automatically approved by Amazon
-- Mechanical Turk. This is the amount of time the Requester has to reject
-- an assignment submitted by a Worker before the assignment is
-- auto-approved and the Worker is paid.
hIT_autoApprovalDelayInSeconds :: Lens.Lens' HIT (Prelude.Maybe Prelude.Integer)
hIT_autoApprovalDelayInSeconds = Lens.lens (\HIT' {autoApprovalDelayInSeconds} -> autoApprovalDelayInSeconds) (\s@HIT' {} a -> s {autoApprovalDelayInSeconds = a} :: HIT)

-- | The data the Worker completing the HIT uses produce the results. This is
-- either either a QuestionForm, HTMLQuestion or an ExternalQuestion data
-- structure.
hIT_question :: Lens.Lens' HIT (Prelude.Maybe Prelude.Text)
hIT_question = Lens.lens (\HIT' {question} -> question) (\s@HIT' {} a -> s {question = a} :: HIT)

-- | The date and time the HIT expires.
hIT_expiration :: Lens.Lens' HIT (Prelude.Maybe Prelude.UTCTime)
hIT_expiration = Lens.lens (\HIT' {expiration} -> expiration) (\s@HIT' {} a -> s {expiration = a} :: HIT) Prelude.. Lens.mapping Prelude._Time

-- | Indicates the review status of the HIT. Valid Values are NotReviewed |
-- MarkedForReview | ReviewedAppropriate | ReviewedInappropriate.
hIT_hITReviewStatus :: Lens.Lens' HIT (Prelude.Maybe HITReviewStatus)
hIT_hITReviewStatus = Lens.lens (\HIT' {hITReviewStatus} -> hITReviewStatus) (\s@HIT' {} a -> s {hITReviewStatus = a} :: HIT)

-- | The title of the HIT.
hIT_title :: Lens.Lens' HIT (Prelude.Maybe Prelude.Text)
hIT_title = Lens.lens (\HIT' {title} -> title) (\s@HIT' {} a -> s {title = a} :: HIT)

-- | A unique identifier for the HIT.
hIT_hITId :: Lens.Lens' HIT (Prelude.Maybe Prelude.Text)
hIT_hITId = Lens.lens (\HIT' {hITId} -> hITId) (\s@HIT' {} a -> s {hITId = a} :: HIT)

-- | The ID of the HIT Layout of this HIT.
hIT_hITLayoutId :: Lens.Lens' HIT (Prelude.Maybe Prelude.Text)
hIT_hITLayoutId = Lens.lens (\HIT' {hITLayoutId} -> hITLayoutId) (\s@HIT' {} a -> s {hITLayoutId = a} :: HIT)

-- | The number of assignments for this HIT that have been approved or
-- rejected.
hIT_numberOfAssignmentsCompleted :: Lens.Lens' HIT (Prelude.Maybe Prelude.Int)
hIT_numberOfAssignmentsCompleted = Lens.lens (\HIT' {numberOfAssignmentsCompleted} -> numberOfAssignmentsCompleted) (\s@HIT' {} a -> s {numberOfAssignmentsCompleted = a} :: HIT)

-- | Undocumented member.
hIT_reward :: Lens.Lens' HIT (Prelude.Maybe Prelude.Text)
hIT_reward = Lens.lens (\HIT' {reward} -> reward) (\s@HIT' {} a -> s {reward = a} :: HIT)

-- | The number of times the HIT can be accepted and completed before the HIT
-- becomes unavailable.
hIT_maxAssignments :: Lens.Lens' HIT (Prelude.Maybe Prelude.Int)
hIT_maxAssignments = Lens.lens (\HIT' {maxAssignments} -> maxAssignments) (\s@HIT' {} a -> s {maxAssignments = a} :: HIT)

-- | The status of the HIT and its assignments. Valid Values are Assignable |
-- Unassignable | Reviewable | Reviewing | Disposed.
hIT_hITStatus :: Lens.Lens' HIT (Prelude.Maybe HITStatus)
hIT_hITStatus = Lens.lens (\HIT' {hITStatus} -> hITStatus) (\s@HIT' {} a -> s {hITStatus = a} :: HIT)

-- | An arbitrary data field the Requester who created the HIT can use. This
-- field is visible only to the creator of the HIT.
hIT_requesterAnnotation :: Lens.Lens' HIT (Prelude.Maybe Prelude.Text)
hIT_requesterAnnotation = Lens.lens (\HIT' {requesterAnnotation} -> requesterAnnotation) (\s@HIT' {} a -> s {requesterAnnotation = a} :: HIT)

-- | A general description of the HIT.
hIT_description :: Lens.Lens' HIT (Prelude.Maybe Prelude.Text)
hIT_description = Lens.lens (\HIT' {description} -> description) (\s@HIT' {} a -> s {description = a} :: HIT)

-- | The number of assignments for this HIT that are available for Workers to
-- accept.
hIT_numberOfAssignmentsAvailable :: Lens.Lens' HIT (Prelude.Maybe Prelude.Int)
hIT_numberOfAssignmentsAvailable = Lens.lens (\HIT' {numberOfAssignmentsAvailable} -> numberOfAssignmentsAvailable) (\s@HIT' {} a -> s {numberOfAssignmentsAvailable = a} :: HIT)

-- | The ID of the HIT type of this HIT
hIT_hITTypeId :: Lens.Lens' HIT (Prelude.Maybe Prelude.Text)
hIT_hITTypeId = Lens.lens (\HIT' {hITTypeId} -> hITTypeId) (\s@HIT' {} a -> s {hITTypeId = a} :: HIT)

-- | Conditions that a Worker\'s Qualifications must meet in order to accept
-- the HIT. A HIT can have between zero and ten Qualification requirements.
-- All requirements must be met in order for a Worker to accept the HIT.
-- Additionally, other actions can be restricted using the @ActionsGuarded@
-- field on each @QualificationRequirement@ structure.
hIT_qualificationRequirements :: Lens.Lens' HIT (Prelude.Maybe [QualificationRequirement])
hIT_qualificationRequirements = Lens.lens (\HIT' {qualificationRequirements} -> qualificationRequirements) (\s@HIT' {} a -> s {qualificationRequirements = a} :: HIT) Prelude.. Lens.mapping Prelude._Coerce

-- | The number of assignments for this HIT that are being previewed or have
-- been accepted by Workers, but have not yet been submitted, returned, or
-- abandoned.
hIT_numberOfAssignmentsPending :: Lens.Lens' HIT (Prelude.Maybe Prelude.Int)
hIT_numberOfAssignmentsPending = Lens.lens (\HIT' {numberOfAssignmentsPending} -> numberOfAssignmentsPending) (\s@HIT' {} a -> s {numberOfAssignmentsPending = a} :: HIT)

-- | One or more words or phrases that describe the HIT, separated by commas.
-- Search terms similar to the keywords of a HIT are more likely to have
-- the HIT in the search results.
hIT_keywords :: Lens.Lens' HIT (Prelude.Maybe Prelude.Text)
hIT_keywords = Lens.lens (\HIT' {keywords} -> keywords) (\s@HIT' {} a -> s {keywords = a} :: HIT)

instance Prelude.FromJSON HIT where
  parseJSON =
    Prelude.withObject
      "HIT"
      ( \x ->
          HIT'
            Prelude.<$> (x Prelude..:? "HITGroupId")
            Prelude.<*> (x Prelude..:? "CreationTime")
            Prelude.<*> (x Prelude..:? "AssignmentDurationInSeconds")
            Prelude.<*> (x Prelude..:? "AutoApprovalDelayInSeconds")
            Prelude.<*> (x Prelude..:? "Question")
            Prelude.<*> (x Prelude..:? "Expiration")
            Prelude.<*> (x Prelude..:? "HITReviewStatus")
            Prelude.<*> (x Prelude..:? "Title")
            Prelude.<*> (x Prelude..:? "HITId")
            Prelude.<*> (x Prelude..:? "HITLayoutId")
            Prelude.<*> (x Prelude..:? "NumberOfAssignmentsCompleted")
            Prelude.<*> (x Prelude..:? "Reward")
            Prelude.<*> (x Prelude..:? "MaxAssignments")
            Prelude.<*> (x Prelude..:? "HITStatus")
            Prelude.<*> (x Prelude..:? "RequesterAnnotation")
            Prelude.<*> (x Prelude..:? "Description")
            Prelude.<*> (x Prelude..:? "NumberOfAssignmentsAvailable")
            Prelude.<*> (x Prelude..:? "HITTypeId")
            Prelude.<*> ( x Prelude..:? "QualificationRequirements"
                            Prelude..!= Prelude.mempty
                        )
            Prelude.<*> (x Prelude..:? "NumberOfAssignmentsPending")
            Prelude.<*> (x Prelude..:? "Keywords")
      )

instance Prelude.Hashable HIT

instance Prelude.NFData HIT
