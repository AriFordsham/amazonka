{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE NamedFieldPuns #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.DescribeNotebookInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a notebook instance.
module Network.AWS.SageMaker.DescribeNotebookInstance
  ( -- * Creating a Request
    DescribeNotebookInstance (..),
    newDescribeNotebookInstance,

    -- * Request Lenses
    describeNotebookInstance_notebookInstanceName,

    -- * Destructuring the Response
    DescribeNotebookInstanceResponse (..),
    newDescribeNotebookInstanceResponse,

    -- * Response Lenses
    describeNotebookInstanceResponse_notebookInstanceName,
    describeNotebookInstanceResponse_creationTime,
    describeNotebookInstanceResponse_acceleratorTypes,
    describeNotebookInstanceResponse_defaultCodeRepository,
    describeNotebookInstanceResponse_roleArn,
    describeNotebookInstanceResponse_instanceType,
    describeNotebookInstanceResponse_notebookInstanceLifecycleConfigName,
    describeNotebookInstanceResponse_additionalCodeRepositories,
    describeNotebookInstanceResponse_securityGroups,
    describeNotebookInstanceResponse_kmsKeyId,
    describeNotebookInstanceResponse_volumeSizeInGB,
    describeNotebookInstanceResponse_notebookInstanceStatus,
    describeNotebookInstanceResponse_failureReason,
    describeNotebookInstanceResponse_networkInterfaceId,
    describeNotebookInstanceResponse_lastModifiedTime,
    describeNotebookInstanceResponse_subnetId,
    describeNotebookInstanceResponse_url,
    describeNotebookInstanceResponse_notebookInstanceArn,
    describeNotebookInstanceResponse_directInternetAccess,
    describeNotebookInstanceResponse_rootAccess,
    describeNotebookInstanceResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'newDescribeNotebookInstance' smart constructor.
data DescribeNotebookInstance = DescribeNotebookInstance'
  { -- | The name of the notebook instance that you want information about.
    notebookInstanceName :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeNotebookInstance' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'notebookInstanceName', 'describeNotebookInstance_notebookInstanceName' - The name of the notebook instance that you want information about.
newDescribeNotebookInstance ::
  -- | 'notebookInstanceName'
  Prelude.Text ->
  DescribeNotebookInstance
newDescribeNotebookInstance pNotebookInstanceName_ =
  DescribeNotebookInstance'
    { notebookInstanceName =
        pNotebookInstanceName_
    }

-- | The name of the notebook instance that you want information about.
describeNotebookInstance_notebookInstanceName :: Lens.Lens' DescribeNotebookInstance Prelude.Text
describeNotebookInstance_notebookInstanceName = Lens.lens (\DescribeNotebookInstance' {notebookInstanceName} -> notebookInstanceName) (\s@DescribeNotebookInstance' {} a -> s {notebookInstanceName = a} :: DescribeNotebookInstance)

instance Prelude.AWSRequest DescribeNotebookInstance where
  type
    Rs DescribeNotebookInstance =
      DescribeNotebookInstanceResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          DescribeNotebookInstanceResponse'
            Prelude.<$> (x Prelude..?> "NotebookInstanceName")
            Prelude.<*> (x Prelude..?> "CreationTime")
            Prelude.<*> ( x Prelude..?> "AcceleratorTypes"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (x Prelude..?> "DefaultCodeRepository")
            Prelude.<*> (x Prelude..?> "RoleArn")
            Prelude.<*> (x Prelude..?> "InstanceType")
            Prelude.<*> (x Prelude..?> "NotebookInstanceLifecycleConfigName")
            Prelude.<*> ( x Prelude..?> "AdditionalCodeRepositories"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> ( x Prelude..?> "SecurityGroups"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (x Prelude..?> "KmsKeyId")
            Prelude.<*> (x Prelude..?> "VolumeSizeInGB")
            Prelude.<*> (x Prelude..?> "NotebookInstanceStatus")
            Prelude.<*> (x Prelude..?> "FailureReason")
            Prelude.<*> (x Prelude..?> "NetworkInterfaceId")
            Prelude.<*> (x Prelude..?> "LastModifiedTime")
            Prelude.<*> (x Prelude..?> "SubnetId")
            Prelude.<*> (x Prelude..?> "Url")
            Prelude.<*> (x Prelude..?> "NotebookInstanceArn")
            Prelude.<*> (x Prelude..?> "DirectInternetAccess")
            Prelude.<*> (x Prelude..?> "RootAccess")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable DescribeNotebookInstance

instance Prelude.NFData DescribeNotebookInstance

instance Prelude.ToHeaders DescribeNotebookInstance where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "SageMaker.DescribeNotebookInstance" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON DescribeNotebookInstance where
  toJSON DescribeNotebookInstance' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ Prelude.Just
              ( "NotebookInstanceName"
                  Prelude..= notebookInstanceName
              )
          ]
      )

instance Prelude.ToPath DescribeNotebookInstance where
  toPath = Prelude.const "/"

instance Prelude.ToQuery DescribeNotebookInstance where
  toQuery = Prelude.const Prelude.mempty

-- | /See:/ 'newDescribeNotebookInstanceResponse' smart constructor.
data DescribeNotebookInstanceResponse = DescribeNotebookInstanceResponse'
  { -- | The name of the Amazon SageMaker notebook instance.
    notebookInstanceName :: Prelude.Maybe Prelude.Text,
    -- | A timestamp. Use this parameter to return the time when the notebook
    -- instance was created
    creationTime :: Prelude.Maybe Prelude.POSIX,
    -- | A list of the Elastic Inference (EI) instance types associated with this
    -- notebook instance. Currently only one EI instance type can be associated
    -- with a notebook instance. For more information, see
    -- <https://docs.aws.amazon.com/sagemaker/latest/dg/ei.html Using Elastic Inference in Amazon SageMaker>.
    acceleratorTypes :: Prelude.Maybe [NotebookInstanceAcceleratorType],
    -- | The Git repository associated with the notebook instance as its default
    -- code repository. This can be either the name of a Git repository stored
    -- as a resource in your account, or the URL of a Git repository in
    -- <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html AWS CodeCommit>
    -- or in any other Git repository. When you open a notebook instance, it
    -- opens in the directory that contains this repository. For more
    -- information, see
    -- <https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html Associating Git Repositories with Amazon SageMaker Notebook Instances>.
    defaultCodeRepository :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the IAM role associated with the
    -- instance.
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | The type of ML compute instance running on the notebook instance.
    instanceType :: Prelude.Maybe InstanceType,
    -- | Returns the name of a notebook instance lifecycle configuration.
    --
    -- For information about notebook instance lifestyle configurations, see
    -- <https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html Step 2.1: (Optional) Customize a Notebook Instance>
    notebookInstanceLifecycleConfigName :: Prelude.Maybe Prelude.Text,
    -- | An array of up to three Git repositories associated with the notebook
    -- instance. These can be either the names of Git repositories stored as
    -- resources in your account, or the URL of Git repositories in
    -- <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html AWS CodeCommit>
    -- or in any other Git repository. These repositories are cloned at the
    -- same level as the default repository of your notebook instance. For more
    -- information, see
    -- <https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html Associating Git Repositories with Amazon SageMaker Notebook Instances>.
    additionalCodeRepositories :: Prelude.Maybe [Prelude.Text],
    -- | The IDs of the VPC security groups.
    securityGroups :: Prelude.Maybe [Prelude.Text],
    -- | The AWS KMS key ID Amazon SageMaker uses to encrypt data when storing it
    -- on the ML storage volume attached to the instance.
    kmsKeyId :: Prelude.Maybe Prelude.Text,
    -- | The size, in GB, of the ML storage volume attached to the notebook
    -- instance.
    volumeSizeInGB :: Prelude.Maybe Prelude.Natural,
    -- | The status of the notebook instance.
    notebookInstanceStatus :: Prelude.Maybe NotebookInstanceStatus,
    -- | If status is @Failed@, the reason it failed.
    failureReason :: Prelude.Maybe Prelude.Text,
    -- | The network interface IDs that Amazon SageMaker created at the time of
    -- creating the instance.
    networkInterfaceId :: Prelude.Maybe Prelude.Text,
    -- | A timestamp. Use this parameter to retrieve the time when the notebook
    -- instance was last modified.
    lastModifiedTime :: Prelude.Maybe Prelude.POSIX,
    -- | The ID of the VPC subnet.
    subnetId :: Prelude.Maybe Prelude.Text,
    -- | The URL that you use to connect to the Jupyter notebook that is running
    -- in your notebook instance.
    url :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the notebook instance.
    notebookInstanceArn :: Prelude.Maybe Prelude.Text,
    -- | Describes whether Amazon SageMaker provides internet access to the
    -- notebook instance. If this value is set to /Disabled/, the notebook
    -- instance does not have internet access, and cannot connect to Amazon
    -- SageMaker training and endpoint services.
    --
    -- For more information, see
    -- <https://docs.aws.amazon.com/sagemaker/latest/dg/appendix-additional-considerations.html#appendix-notebook-and-internet-access Notebook Instances Are Internet-Enabled by Default>.
    directInternetAccess :: Prelude.Maybe DirectInternetAccess,
    -- | Whether root access is enabled or disabled for users of the notebook
    -- instance.
    --
    -- Lifecycle configurations need root access to be able to set up a
    -- notebook instance. Because of this, lifecycle configurations associated
    -- with a notebook instance always run with root access even if you disable
    -- root access for users.
    rootAccess :: Prelude.Maybe RootAccess,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DescribeNotebookInstanceResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'notebookInstanceName', 'describeNotebookInstanceResponse_notebookInstanceName' - The name of the Amazon SageMaker notebook instance.
--
-- 'creationTime', 'describeNotebookInstanceResponse_creationTime' - A timestamp. Use this parameter to return the time when the notebook
-- instance was created
--
-- 'acceleratorTypes', 'describeNotebookInstanceResponse_acceleratorTypes' - A list of the Elastic Inference (EI) instance types associated with this
-- notebook instance. Currently only one EI instance type can be associated
-- with a notebook instance. For more information, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/ei.html Using Elastic Inference in Amazon SageMaker>.
--
-- 'defaultCodeRepository', 'describeNotebookInstanceResponse_defaultCodeRepository' - The Git repository associated with the notebook instance as its default
-- code repository. This can be either the name of a Git repository stored
-- as a resource in your account, or the URL of a Git repository in
-- <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html AWS CodeCommit>
-- or in any other Git repository. When you open a notebook instance, it
-- opens in the directory that contains this repository. For more
-- information, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html Associating Git Repositories with Amazon SageMaker Notebook Instances>.
--
-- 'roleArn', 'describeNotebookInstanceResponse_roleArn' - The Amazon Resource Name (ARN) of the IAM role associated with the
-- instance.
--
-- 'instanceType', 'describeNotebookInstanceResponse_instanceType' - The type of ML compute instance running on the notebook instance.
--
-- 'notebookInstanceLifecycleConfigName', 'describeNotebookInstanceResponse_notebookInstanceLifecycleConfigName' - Returns the name of a notebook instance lifecycle configuration.
--
-- For information about notebook instance lifestyle configurations, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html Step 2.1: (Optional) Customize a Notebook Instance>
--
-- 'additionalCodeRepositories', 'describeNotebookInstanceResponse_additionalCodeRepositories' - An array of up to three Git repositories associated with the notebook
-- instance. These can be either the names of Git repositories stored as
-- resources in your account, or the URL of Git repositories in
-- <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html AWS CodeCommit>
-- or in any other Git repository. These repositories are cloned at the
-- same level as the default repository of your notebook instance. For more
-- information, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html Associating Git Repositories with Amazon SageMaker Notebook Instances>.
--
-- 'securityGroups', 'describeNotebookInstanceResponse_securityGroups' - The IDs of the VPC security groups.
--
-- 'kmsKeyId', 'describeNotebookInstanceResponse_kmsKeyId' - The AWS KMS key ID Amazon SageMaker uses to encrypt data when storing it
-- on the ML storage volume attached to the instance.
--
-- 'volumeSizeInGB', 'describeNotebookInstanceResponse_volumeSizeInGB' - The size, in GB, of the ML storage volume attached to the notebook
-- instance.
--
-- 'notebookInstanceStatus', 'describeNotebookInstanceResponse_notebookInstanceStatus' - The status of the notebook instance.
--
-- 'failureReason', 'describeNotebookInstanceResponse_failureReason' - If status is @Failed@, the reason it failed.
--
-- 'networkInterfaceId', 'describeNotebookInstanceResponse_networkInterfaceId' - The network interface IDs that Amazon SageMaker created at the time of
-- creating the instance.
--
-- 'lastModifiedTime', 'describeNotebookInstanceResponse_lastModifiedTime' - A timestamp. Use this parameter to retrieve the time when the notebook
-- instance was last modified.
--
-- 'subnetId', 'describeNotebookInstanceResponse_subnetId' - The ID of the VPC subnet.
--
-- 'url', 'describeNotebookInstanceResponse_url' - The URL that you use to connect to the Jupyter notebook that is running
-- in your notebook instance.
--
-- 'notebookInstanceArn', 'describeNotebookInstanceResponse_notebookInstanceArn' - The Amazon Resource Name (ARN) of the notebook instance.
--
-- 'directInternetAccess', 'describeNotebookInstanceResponse_directInternetAccess' - Describes whether Amazon SageMaker provides internet access to the
-- notebook instance. If this value is set to /Disabled/, the notebook
-- instance does not have internet access, and cannot connect to Amazon
-- SageMaker training and endpoint services.
--
-- For more information, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/appendix-additional-considerations.html#appendix-notebook-and-internet-access Notebook Instances Are Internet-Enabled by Default>.
--
-- 'rootAccess', 'describeNotebookInstanceResponse_rootAccess' - Whether root access is enabled or disabled for users of the notebook
-- instance.
--
-- Lifecycle configurations need root access to be able to set up a
-- notebook instance. Because of this, lifecycle configurations associated
-- with a notebook instance always run with root access even if you disable
-- root access for users.
--
-- 'httpStatus', 'describeNotebookInstanceResponse_httpStatus' - The response's http status code.
newDescribeNotebookInstanceResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  DescribeNotebookInstanceResponse
newDescribeNotebookInstanceResponse pHttpStatus_ =
  DescribeNotebookInstanceResponse'
    { notebookInstanceName =
        Prelude.Nothing,
      creationTime = Prelude.Nothing,
      acceleratorTypes = Prelude.Nothing,
      defaultCodeRepository = Prelude.Nothing,
      roleArn = Prelude.Nothing,
      instanceType = Prelude.Nothing,
      notebookInstanceLifecycleConfigName =
        Prelude.Nothing,
      additionalCodeRepositories =
        Prelude.Nothing,
      securityGroups = Prelude.Nothing,
      kmsKeyId = Prelude.Nothing,
      volumeSizeInGB = Prelude.Nothing,
      notebookInstanceStatus = Prelude.Nothing,
      failureReason = Prelude.Nothing,
      networkInterfaceId = Prelude.Nothing,
      lastModifiedTime = Prelude.Nothing,
      subnetId = Prelude.Nothing,
      url = Prelude.Nothing,
      notebookInstanceArn = Prelude.Nothing,
      directInternetAccess = Prelude.Nothing,
      rootAccess = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | The name of the Amazon SageMaker notebook instance.
describeNotebookInstanceResponse_notebookInstanceName :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe Prelude.Text)
describeNotebookInstanceResponse_notebookInstanceName = Lens.lens (\DescribeNotebookInstanceResponse' {notebookInstanceName} -> notebookInstanceName) (\s@DescribeNotebookInstanceResponse' {} a -> s {notebookInstanceName = a} :: DescribeNotebookInstanceResponse)

-- | A timestamp. Use this parameter to return the time when the notebook
-- instance was created
describeNotebookInstanceResponse_creationTime :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe Prelude.UTCTime)
describeNotebookInstanceResponse_creationTime = Lens.lens (\DescribeNotebookInstanceResponse' {creationTime} -> creationTime) (\s@DescribeNotebookInstanceResponse' {} a -> s {creationTime = a} :: DescribeNotebookInstanceResponse) Prelude.. Lens.mapping Prelude._Time

-- | A list of the Elastic Inference (EI) instance types associated with this
-- notebook instance. Currently only one EI instance type can be associated
-- with a notebook instance. For more information, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/ei.html Using Elastic Inference in Amazon SageMaker>.
describeNotebookInstanceResponse_acceleratorTypes :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe [NotebookInstanceAcceleratorType])
describeNotebookInstanceResponse_acceleratorTypes = Lens.lens (\DescribeNotebookInstanceResponse' {acceleratorTypes} -> acceleratorTypes) (\s@DescribeNotebookInstanceResponse' {} a -> s {acceleratorTypes = a} :: DescribeNotebookInstanceResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The Git repository associated with the notebook instance as its default
-- code repository. This can be either the name of a Git repository stored
-- as a resource in your account, or the URL of a Git repository in
-- <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html AWS CodeCommit>
-- or in any other Git repository. When you open a notebook instance, it
-- opens in the directory that contains this repository. For more
-- information, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html Associating Git Repositories with Amazon SageMaker Notebook Instances>.
describeNotebookInstanceResponse_defaultCodeRepository :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe Prelude.Text)
describeNotebookInstanceResponse_defaultCodeRepository = Lens.lens (\DescribeNotebookInstanceResponse' {defaultCodeRepository} -> defaultCodeRepository) (\s@DescribeNotebookInstanceResponse' {} a -> s {defaultCodeRepository = a} :: DescribeNotebookInstanceResponse)

-- | The Amazon Resource Name (ARN) of the IAM role associated with the
-- instance.
describeNotebookInstanceResponse_roleArn :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe Prelude.Text)
describeNotebookInstanceResponse_roleArn = Lens.lens (\DescribeNotebookInstanceResponse' {roleArn} -> roleArn) (\s@DescribeNotebookInstanceResponse' {} a -> s {roleArn = a} :: DescribeNotebookInstanceResponse)

-- | The type of ML compute instance running on the notebook instance.
describeNotebookInstanceResponse_instanceType :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe InstanceType)
describeNotebookInstanceResponse_instanceType = Lens.lens (\DescribeNotebookInstanceResponse' {instanceType} -> instanceType) (\s@DescribeNotebookInstanceResponse' {} a -> s {instanceType = a} :: DescribeNotebookInstanceResponse)

-- | Returns the name of a notebook instance lifecycle configuration.
--
-- For information about notebook instance lifestyle configurations, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html Step 2.1: (Optional) Customize a Notebook Instance>
describeNotebookInstanceResponse_notebookInstanceLifecycleConfigName :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe Prelude.Text)
describeNotebookInstanceResponse_notebookInstanceLifecycleConfigName = Lens.lens (\DescribeNotebookInstanceResponse' {notebookInstanceLifecycleConfigName} -> notebookInstanceLifecycleConfigName) (\s@DescribeNotebookInstanceResponse' {} a -> s {notebookInstanceLifecycleConfigName = a} :: DescribeNotebookInstanceResponse)

-- | An array of up to three Git repositories associated with the notebook
-- instance. These can be either the names of Git repositories stored as
-- resources in your account, or the URL of Git repositories in
-- <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html AWS CodeCommit>
-- or in any other Git repository. These repositories are cloned at the
-- same level as the default repository of your notebook instance. For more
-- information, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html Associating Git Repositories with Amazon SageMaker Notebook Instances>.
describeNotebookInstanceResponse_additionalCodeRepositories :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe [Prelude.Text])
describeNotebookInstanceResponse_additionalCodeRepositories = Lens.lens (\DescribeNotebookInstanceResponse' {additionalCodeRepositories} -> additionalCodeRepositories) (\s@DescribeNotebookInstanceResponse' {} a -> s {additionalCodeRepositories = a} :: DescribeNotebookInstanceResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The IDs of the VPC security groups.
describeNotebookInstanceResponse_securityGroups :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe [Prelude.Text])
describeNotebookInstanceResponse_securityGroups = Lens.lens (\DescribeNotebookInstanceResponse' {securityGroups} -> securityGroups) (\s@DescribeNotebookInstanceResponse' {} a -> s {securityGroups = a} :: DescribeNotebookInstanceResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The AWS KMS key ID Amazon SageMaker uses to encrypt data when storing it
-- on the ML storage volume attached to the instance.
describeNotebookInstanceResponse_kmsKeyId :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe Prelude.Text)
describeNotebookInstanceResponse_kmsKeyId = Lens.lens (\DescribeNotebookInstanceResponse' {kmsKeyId} -> kmsKeyId) (\s@DescribeNotebookInstanceResponse' {} a -> s {kmsKeyId = a} :: DescribeNotebookInstanceResponse)

-- | The size, in GB, of the ML storage volume attached to the notebook
-- instance.
describeNotebookInstanceResponse_volumeSizeInGB :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe Prelude.Natural)
describeNotebookInstanceResponse_volumeSizeInGB = Lens.lens (\DescribeNotebookInstanceResponse' {volumeSizeInGB} -> volumeSizeInGB) (\s@DescribeNotebookInstanceResponse' {} a -> s {volumeSizeInGB = a} :: DescribeNotebookInstanceResponse)

-- | The status of the notebook instance.
describeNotebookInstanceResponse_notebookInstanceStatus :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe NotebookInstanceStatus)
describeNotebookInstanceResponse_notebookInstanceStatus = Lens.lens (\DescribeNotebookInstanceResponse' {notebookInstanceStatus} -> notebookInstanceStatus) (\s@DescribeNotebookInstanceResponse' {} a -> s {notebookInstanceStatus = a} :: DescribeNotebookInstanceResponse)

-- | If status is @Failed@, the reason it failed.
describeNotebookInstanceResponse_failureReason :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe Prelude.Text)
describeNotebookInstanceResponse_failureReason = Lens.lens (\DescribeNotebookInstanceResponse' {failureReason} -> failureReason) (\s@DescribeNotebookInstanceResponse' {} a -> s {failureReason = a} :: DescribeNotebookInstanceResponse)

-- | The network interface IDs that Amazon SageMaker created at the time of
-- creating the instance.
describeNotebookInstanceResponse_networkInterfaceId :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe Prelude.Text)
describeNotebookInstanceResponse_networkInterfaceId = Lens.lens (\DescribeNotebookInstanceResponse' {networkInterfaceId} -> networkInterfaceId) (\s@DescribeNotebookInstanceResponse' {} a -> s {networkInterfaceId = a} :: DescribeNotebookInstanceResponse)

-- | A timestamp. Use this parameter to retrieve the time when the notebook
-- instance was last modified.
describeNotebookInstanceResponse_lastModifiedTime :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe Prelude.UTCTime)
describeNotebookInstanceResponse_lastModifiedTime = Lens.lens (\DescribeNotebookInstanceResponse' {lastModifiedTime} -> lastModifiedTime) (\s@DescribeNotebookInstanceResponse' {} a -> s {lastModifiedTime = a} :: DescribeNotebookInstanceResponse) Prelude.. Lens.mapping Prelude._Time

-- | The ID of the VPC subnet.
describeNotebookInstanceResponse_subnetId :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe Prelude.Text)
describeNotebookInstanceResponse_subnetId = Lens.lens (\DescribeNotebookInstanceResponse' {subnetId} -> subnetId) (\s@DescribeNotebookInstanceResponse' {} a -> s {subnetId = a} :: DescribeNotebookInstanceResponse)

-- | The URL that you use to connect to the Jupyter notebook that is running
-- in your notebook instance.
describeNotebookInstanceResponse_url :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe Prelude.Text)
describeNotebookInstanceResponse_url = Lens.lens (\DescribeNotebookInstanceResponse' {url} -> url) (\s@DescribeNotebookInstanceResponse' {} a -> s {url = a} :: DescribeNotebookInstanceResponse)

-- | The Amazon Resource Name (ARN) of the notebook instance.
describeNotebookInstanceResponse_notebookInstanceArn :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe Prelude.Text)
describeNotebookInstanceResponse_notebookInstanceArn = Lens.lens (\DescribeNotebookInstanceResponse' {notebookInstanceArn} -> notebookInstanceArn) (\s@DescribeNotebookInstanceResponse' {} a -> s {notebookInstanceArn = a} :: DescribeNotebookInstanceResponse)

-- | Describes whether Amazon SageMaker provides internet access to the
-- notebook instance. If this value is set to /Disabled/, the notebook
-- instance does not have internet access, and cannot connect to Amazon
-- SageMaker training and endpoint services.
--
-- For more information, see
-- <https://docs.aws.amazon.com/sagemaker/latest/dg/appendix-additional-considerations.html#appendix-notebook-and-internet-access Notebook Instances Are Internet-Enabled by Default>.
describeNotebookInstanceResponse_directInternetAccess :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe DirectInternetAccess)
describeNotebookInstanceResponse_directInternetAccess = Lens.lens (\DescribeNotebookInstanceResponse' {directInternetAccess} -> directInternetAccess) (\s@DescribeNotebookInstanceResponse' {} a -> s {directInternetAccess = a} :: DescribeNotebookInstanceResponse)

-- | Whether root access is enabled or disabled for users of the notebook
-- instance.
--
-- Lifecycle configurations need root access to be able to set up a
-- notebook instance. Because of this, lifecycle configurations associated
-- with a notebook instance always run with root access even if you disable
-- root access for users.
describeNotebookInstanceResponse_rootAccess :: Lens.Lens' DescribeNotebookInstanceResponse (Prelude.Maybe RootAccess)
describeNotebookInstanceResponse_rootAccess = Lens.lens (\DescribeNotebookInstanceResponse' {rootAccess} -> rootAccess) (\s@DescribeNotebookInstanceResponse' {} a -> s {rootAccess = a} :: DescribeNotebookInstanceResponse)

-- | The response's http status code.
describeNotebookInstanceResponse_httpStatus :: Lens.Lens' DescribeNotebookInstanceResponse Prelude.Int
describeNotebookInstanceResponse_httpStatus = Lens.lens (\DescribeNotebookInstanceResponse' {httpStatus} -> httpStatus) (\s@DescribeNotebookInstanceResponse' {} a -> s {httpStatus = a} :: DescribeNotebookInstanceResponse)

instance
  Prelude.NFData
    DescribeNotebookInstanceResponse
