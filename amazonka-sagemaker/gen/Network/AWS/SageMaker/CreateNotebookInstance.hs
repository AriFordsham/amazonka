{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.CreateNotebookInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an Amazon SageMaker notebook instance. A notebook instance is a machine learning (ML) compute instance running on a Jupyter notebook.
--
--
-- In a @CreateNotebookInstance@ request, specify the type of ML compute instance that you want to run. Amazon SageMaker launches the instance, installs common libraries that you can use to explore datasets for model training, and attaches an ML storage volume to the notebook instance.
--
-- Amazon SageMaker also provides a set of example notebooks. Each notebook demonstrates how to use Amazon SageMaker with a specific algorithm or with a machine learning framework.
--
-- After receiving the request, Amazon SageMaker does the following:
--
--     * Creates a network interface in the Amazon SageMaker VPC.
--
--     * (Option) If you specified @SubnetId@ , Amazon SageMaker creates a network interface in your own VPC, which is inferred from the subnet ID that you provide in the input. When creating this network interface, Amazon SageMaker attaches the security group that you specified in the request to the network interface that it creates in your VPC.
--
--     * Launches an EC2 instance of the type specified in the request in the Amazon SageMaker VPC. If you specified @SubnetId@ of your VPC, Amazon SageMaker specifies both network interfaces when launching this instance. This enables inbound traffic from your own VPC to the notebook instance, assuming that the security groups allow it.
--
--
--
-- After creating the notebook instance, Amazon SageMaker returns its Amazon Resource Name (ARN). You can't change the name of a notebook instance after you create it.
--
-- After Amazon SageMaker creates the notebook instance, you can connect to the Jupyter server and work in Jupyter notebooks. For example, you can write code to explore a dataset that you can use for model training, train a model, host models by creating Amazon SageMaker endpoints, and validate hosted models.
--
-- For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/how-it-works.html How It Works> .
module Network.AWS.SageMaker.CreateNotebookInstance
  ( -- * Creating a Request
    createNotebookInstance,
    CreateNotebookInstance,

    -- * Request Lenses
    cniSecurityGroupIds,
    cniAcceleratorTypes,
    cniDefaultCodeRepository,
    cniAdditionalCodeRepositories,
    cniKMSKeyId,
    cniVolumeSizeInGB,
    cniTags,
    cniSubnetId,
    cniLifecycleConfigName,
    cniDirectInternetAccess,
    cniRootAccess,
    cniNotebookInstanceName,
    cniInstanceType,
    cniRoleARN,

    -- * Destructuring the Response
    createNotebookInstanceResponse,
    CreateNotebookInstanceResponse,

    -- * Response Lenses
    cnirrsNotebookInstanceARN,
    cnirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'createNotebookInstance' smart constructor.
data CreateNotebookInstance = CreateNotebookInstance'
  { _cniSecurityGroupIds ::
      !(Maybe [Text]),
    _cniAcceleratorTypes ::
      !( Maybe
           [NotebookInstanceAcceleratorType]
       ),
    _cniDefaultCodeRepository ::
      !(Maybe Text),
    _cniAdditionalCodeRepositories ::
      !(Maybe [Text]),
    _cniKMSKeyId ::
      !(Maybe Text),
    _cniVolumeSizeInGB ::
      !(Maybe Nat),
    _cniTags ::
      !(Maybe [Tag]),
    _cniSubnetId ::
      !(Maybe Text),
    _cniLifecycleConfigName ::
      !(Maybe Text),
    _cniDirectInternetAccess ::
      !( Maybe
           DirectInternetAccess
       ),
    _cniRootAccess ::
      !(Maybe RootAccess),
    _cniNotebookInstanceName ::
      !Text,
    _cniInstanceType ::
      !InstanceType,
    _cniRoleARN :: !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateNotebookInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cniSecurityGroupIds' - The VPC security group IDs, in the form sg-xxxxxxxx. The security groups must be for the same VPC as specified in the subnet.
--
-- * 'cniAcceleratorTypes' - A list of Elastic Inference (EI) instance types to associate with this notebook instance. Currently, only one instance type can be associated with a notebook instance. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/ei.html Using Elastic Inference in Amazon SageMaker> .
--
-- * 'cniDefaultCodeRepository' - A Git repository to associate with the notebook instance as its default code repository. This can be either the name of a Git repository stored as a resource in your account, or the URL of a Git repository in <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html AWS CodeCommit> or in any other Git repository. When you open a notebook instance, it opens in the directory that contains this repository. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html Associating Git Repositories with Amazon SageMaker Notebook Instances> .
--
-- * 'cniAdditionalCodeRepositories' - An array of up to three Git repositories to associate with the notebook instance. These can be either the names of Git repositories stored as resources in your account, or the URL of Git repositories in <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html AWS CodeCommit> or in any other Git repository. These repositories are cloned at the same level as the default repository of your notebook instance. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html Associating Git Repositories with Amazon SageMaker Notebook Instances> .
--
-- * 'cniKMSKeyId' - The Amazon Resource Name (ARN) of a AWS Key Management Service key that Amazon SageMaker uses to encrypt data on the storage volume attached to your notebook instance. The KMS key you provide must be enabled. For information, see <https://docs.aws.amazon.com/kms/latest/developerguide/enabling-keys.html Enabling and Disabling Keys> in the /AWS Key Management Service Developer Guide/ .
--
-- * 'cniVolumeSizeInGB' - The size, in GB, of the ML storage volume to attach to the notebook instance. The default value is 5 GB.
--
-- * 'cniTags' - An array of key-value pairs. You can use tags to categorize your AWS resources in different ways, for example, by purpose, owner, or environment. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS Resources> .
--
-- * 'cniSubnetId' - The ID of the subnet in a VPC to which you would like to have a connectivity from your ML compute instance.
--
-- * 'cniLifecycleConfigName' - The name of a lifecycle configuration to associate with the notebook instance. For information about lifestyle configurations, see <https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html Step 2.1: (Optional) Customize a Notebook Instance> .
--
-- * 'cniDirectInternetAccess' - Sets whether Amazon SageMaker provides internet access to the notebook instance. If you set this to @Disabled@ this notebook instance will be able to access resources only in your VPC, and will not be able to connect to Amazon SageMaker training and endpoint services unless your configure a NAT Gateway in your VPC. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/appendix-additional-considerations.html#appendix-notebook-and-internet-access Notebook Instances Are Internet-Enabled by Default> . You can set the value of this parameter to @Disabled@ only if you set a value for the @SubnetId@ parameter.
--
-- * 'cniRootAccess' - Whether root access is enabled or disabled for users of the notebook instance. The default value is @Enabled@ .
--
-- * 'cniNotebookInstanceName' - The name of the new notebook instance.
--
-- * 'cniInstanceType' - The type of ML compute instance to launch for the notebook instance.
--
-- * 'cniRoleARN' - When you send any requests to AWS resources from the notebook instance, Amazon SageMaker assumes this role to perform tasks on your behalf. You must grant this role necessary permissions so Amazon SageMaker can perform these tasks. The policy must allow the Amazon SageMaker service principal (sagemaker.amazonaws.com) permissions to assume this role. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html Amazon SageMaker Roles> .
createNotebookInstance ::
  -- | 'cniNotebookInstanceName'
  Text ->
  -- | 'cniInstanceType'
  InstanceType ->
  -- | 'cniRoleARN'
  Text ->
  CreateNotebookInstance
createNotebookInstance
  pNotebookInstanceName_
  pInstanceType_
  pRoleARN_ =
    CreateNotebookInstance'
      { _cniSecurityGroupIds =
          Nothing,
        _cniAcceleratorTypes = Nothing,
        _cniDefaultCodeRepository = Nothing,
        _cniAdditionalCodeRepositories = Nothing,
        _cniKMSKeyId = Nothing,
        _cniVolumeSizeInGB = Nothing,
        _cniTags = Nothing,
        _cniSubnetId = Nothing,
        _cniLifecycleConfigName = Nothing,
        _cniDirectInternetAccess = Nothing,
        _cniRootAccess = Nothing,
        _cniNotebookInstanceName = pNotebookInstanceName_,
        _cniInstanceType = pInstanceType_,
        _cniRoleARN = pRoleARN_
      }

-- | The VPC security group IDs, in the form sg-xxxxxxxx. The security groups must be for the same VPC as specified in the subnet.
cniSecurityGroupIds :: Lens' CreateNotebookInstance [Text]
cniSecurityGroupIds = lens _cniSecurityGroupIds (\s a -> s {_cniSecurityGroupIds = a}) . _Default . _Coerce

-- | A list of Elastic Inference (EI) instance types to associate with this notebook instance. Currently, only one instance type can be associated with a notebook instance. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/ei.html Using Elastic Inference in Amazon SageMaker> .
cniAcceleratorTypes :: Lens' CreateNotebookInstance [NotebookInstanceAcceleratorType]
cniAcceleratorTypes = lens _cniAcceleratorTypes (\s a -> s {_cniAcceleratorTypes = a}) . _Default . _Coerce

-- | A Git repository to associate with the notebook instance as its default code repository. This can be either the name of a Git repository stored as a resource in your account, or the URL of a Git repository in <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html AWS CodeCommit> or in any other Git repository. When you open a notebook instance, it opens in the directory that contains this repository. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html Associating Git Repositories with Amazon SageMaker Notebook Instances> .
cniDefaultCodeRepository :: Lens' CreateNotebookInstance (Maybe Text)
cniDefaultCodeRepository = lens _cniDefaultCodeRepository (\s a -> s {_cniDefaultCodeRepository = a})

-- | An array of up to three Git repositories to associate with the notebook instance. These can be either the names of Git repositories stored as resources in your account, or the URL of Git repositories in <https://docs.aws.amazon.com/codecommit/latest/userguide/welcome.html AWS CodeCommit> or in any other Git repository. These repositories are cloned at the same level as the default repository of your notebook instance. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/nbi-git-repo.html Associating Git Repositories with Amazon SageMaker Notebook Instances> .
cniAdditionalCodeRepositories :: Lens' CreateNotebookInstance [Text]
cniAdditionalCodeRepositories = lens _cniAdditionalCodeRepositories (\s a -> s {_cniAdditionalCodeRepositories = a}) . _Default . _Coerce

-- | The Amazon Resource Name (ARN) of a AWS Key Management Service key that Amazon SageMaker uses to encrypt data on the storage volume attached to your notebook instance. The KMS key you provide must be enabled. For information, see <https://docs.aws.amazon.com/kms/latest/developerguide/enabling-keys.html Enabling and Disabling Keys> in the /AWS Key Management Service Developer Guide/ .
cniKMSKeyId :: Lens' CreateNotebookInstance (Maybe Text)
cniKMSKeyId = lens _cniKMSKeyId (\s a -> s {_cniKMSKeyId = a})

-- | The size, in GB, of the ML storage volume to attach to the notebook instance. The default value is 5 GB.
cniVolumeSizeInGB :: Lens' CreateNotebookInstance (Maybe Natural)
cniVolumeSizeInGB = lens _cniVolumeSizeInGB (\s a -> s {_cniVolumeSizeInGB = a}) . mapping _Nat

-- | An array of key-value pairs. You can use tags to categorize your AWS resources in different ways, for example, by purpose, owner, or environment. For more information, see <https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html Tagging AWS Resources> .
cniTags :: Lens' CreateNotebookInstance [Tag]
cniTags = lens _cniTags (\s a -> s {_cniTags = a}) . _Default . _Coerce

-- | The ID of the subnet in a VPC to which you would like to have a connectivity from your ML compute instance.
cniSubnetId :: Lens' CreateNotebookInstance (Maybe Text)
cniSubnetId = lens _cniSubnetId (\s a -> s {_cniSubnetId = a})

-- | The name of a lifecycle configuration to associate with the notebook instance. For information about lifestyle configurations, see <https://docs.aws.amazon.com/sagemaker/latest/dg/notebook-lifecycle-config.html Step 2.1: (Optional) Customize a Notebook Instance> .
cniLifecycleConfigName :: Lens' CreateNotebookInstance (Maybe Text)
cniLifecycleConfigName = lens _cniLifecycleConfigName (\s a -> s {_cniLifecycleConfigName = a})

-- | Sets whether Amazon SageMaker provides internet access to the notebook instance. If you set this to @Disabled@ this notebook instance will be able to access resources only in your VPC, and will not be able to connect to Amazon SageMaker training and endpoint services unless your configure a NAT Gateway in your VPC. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/appendix-additional-considerations.html#appendix-notebook-and-internet-access Notebook Instances Are Internet-Enabled by Default> . You can set the value of this parameter to @Disabled@ only if you set a value for the @SubnetId@ parameter.
cniDirectInternetAccess :: Lens' CreateNotebookInstance (Maybe DirectInternetAccess)
cniDirectInternetAccess = lens _cniDirectInternetAccess (\s a -> s {_cniDirectInternetAccess = a})

-- | Whether root access is enabled or disabled for users of the notebook instance. The default value is @Enabled@ .
cniRootAccess :: Lens' CreateNotebookInstance (Maybe RootAccess)
cniRootAccess = lens _cniRootAccess (\s a -> s {_cniRootAccess = a})

-- | The name of the new notebook instance.
cniNotebookInstanceName :: Lens' CreateNotebookInstance Text
cniNotebookInstanceName = lens _cniNotebookInstanceName (\s a -> s {_cniNotebookInstanceName = a})

-- | The type of ML compute instance to launch for the notebook instance.
cniInstanceType :: Lens' CreateNotebookInstance InstanceType
cniInstanceType = lens _cniInstanceType (\s a -> s {_cniInstanceType = a})

-- | When you send any requests to AWS resources from the notebook instance, Amazon SageMaker assumes this role to perform tasks on your behalf. You must grant this role necessary permissions so Amazon SageMaker can perform these tasks. The policy must allow the Amazon SageMaker service principal (sagemaker.amazonaws.com) permissions to assume this role. For more information, see <https://docs.aws.amazon.com/sagemaker/latest/dg/sagemaker-roles.html Amazon SageMaker Roles> .
cniRoleARN :: Lens' CreateNotebookInstance Text
cniRoleARN = lens _cniRoleARN (\s a -> s {_cniRoleARN = a})

instance AWSRequest CreateNotebookInstance where
  type
    Rs CreateNotebookInstance =
      CreateNotebookInstanceResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          CreateNotebookInstanceResponse'
            <$> (x .?> "NotebookInstanceArn")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateNotebookInstance

instance NFData CreateNotebookInstance

instance ToHeaders CreateNotebookInstance where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.CreateNotebookInstance" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateNotebookInstance where
  toJSON CreateNotebookInstance' {..} =
    object
      ( catMaybes
          [ ("SecurityGroupIds" .=) <$> _cniSecurityGroupIds,
            ("AcceleratorTypes" .=) <$> _cniAcceleratorTypes,
            ("DefaultCodeRepository" .=)
              <$> _cniDefaultCodeRepository,
            ("AdditionalCodeRepositories" .=)
              <$> _cniAdditionalCodeRepositories,
            ("KmsKeyId" .=) <$> _cniKMSKeyId,
            ("VolumeSizeInGB" .=) <$> _cniVolumeSizeInGB,
            ("Tags" .=) <$> _cniTags,
            ("SubnetId" .=) <$> _cniSubnetId,
            ("LifecycleConfigName" .=)
              <$> _cniLifecycleConfigName,
            ("DirectInternetAccess" .=)
              <$> _cniDirectInternetAccess,
            ("RootAccess" .=) <$> _cniRootAccess,
            Just
              ("NotebookInstanceName" .= _cniNotebookInstanceName),
            Just ("InstanceType" .= _cniInstanceType),
            Just ("RoleArn" .= _cniRoleARN)
          ]
      )

instance ToPath CreateNotebookInstance where
  toPath = const "/"

instance ToQuery CreateNotebookInstance where
  toQuery = const mempty

-- | /See:/ 'createNotebookInstanceResponse' smart constructor.
data CreateNotebookInstanceResponse = CreateNotebookInstanceResponse'
  { _cnirrsNotebookInstanceARN ::
      !( Maybe
           Text
       ),
    _cnirrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateNotebookInstanceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cnirrsNotebookInstanceARN' - The Amazon Resource Name (ARN) of the notebook instance.
--
-- * 'cnirrsResponseStatus' - -- | The response status code.
createNotebookInstanceResponse ::
  -- | 'cnirrsResponseStatus'
  Int ->
  CreateNotebookInstanceResponse
createNotebookInstanceResponse pResponseStatus_ =
  CreateNotebookInstanceResponse'
    { _cnirrsNotebookInstanceARN =
        Nothing,
      _cnirrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the notebook instance.
cnirrsNotebookInstanceARN :: Lens' CreateNotebookInstanceResponse (Maybe Text)
cnirrsNotebookInstanceARN = lens _cnirrsNotebookInstanceARN (\s a -> s {_cnirrsNotebookInstanceARN = a})

-- | -- | The response status code.
cnirrsResponseStatus :: Lens' CreateNotebookInstanceResponse Int
cnirrsResponseStatus = lens _cnirrsResponseStatus (\s a -> s {_cnirrsResponseStatus = a})

instance NFData CreateNotebookInstanceResponse
