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
-- Module      : Network.AWS.SecretsManager.DeleteSecret
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes an entire secret and all of the versions. You can optionally include a recovery window during which you can restore the secret. If you don't specify a recovery window value, the operation defaults to 30 days. Secrets Manager attaches a @DeletionDate@ stamp to the secret that specifies the end of the recovery window. At the end of the recovery window, Secrets Manager deletes the secret permanently.
--
--
-- At any time before recovery window ends, you can use 'RestoreSecret' to remove the @DeletionDate@ and cancel the deletion of the secret.
--
-- You cannot access the encrypted secret information in any secret scheduled for deletion. If you need to access that information, you must cancel the deletion with 'RestoreSecret' and then retrieve the information.
--
-- __Minimum permissions__
--
-- To run this command, you must have the following permissions:
--
--     * secretsmanager:DeleteSecret
--
--
--
-- __Related operations__
--
--     * To create a secret, use 'CreateSecret' .
--
--     * To cancel deletion of a version of a secret before the recovery window has expired, use 'RestoreSecret' .
module Network.AWS.SecretsManager.DeleteSecret
  ( -- * Creating a Request
    deleteSecret,
    DeleteSecret,

    -- * Request Lenses
    dsRecoveryWindowInDays,
    dsForceDeleteWithoutRecovery,
    dsSecretId,

    -- * Destructuring the Response
    deleteSecretResponse,
    DeleteSecretResponse,

    -- * Response Lenses
    dsrrsARN,
    dsrrsName,
    dsrrsDeletionDate,
    dsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SecretsManager.Types

-- | /See:/ 'deleteSecret' smart constructor.
data DeleteSecret = DeleteSecret'
  { _dsRecoveryWindowInDays ::
      !(Maybe Integer),
    _dsForceDeleteWithoutRecovery ::
      !(Maybe Bool),
    _dsSecretId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteSecret' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsRecoveryWindowInDays' - (Optional) Specifies the number of days that Secrets Manager waits before Secrets Manager can delete the secret. You can't use both this parameter and the @ForceDeleteWithoutRecovery@ parameter in the same API call. This value can range from 7 to 30 days with a default value of 30.
--
-- * 'dsForceDeleteWithoutRecovery' - (Optional) Specifies that the secret is to be deleted without any recovery window. You can't use both this parameter and the @RecoveryWindowInDays@ parameter in the same API call. An asynchronous background process performs the actual deletion, so there can be a short delay before the operation completes. If you write code to delete and then immediately recreate a secret with the same name, ensure that your code includes appropriate back off and retry logic. /Important:/ Use this parameter with caution. This parameter causes the operation to skip the normal waiting period before the permanent deletion that AWS would normally impose with the @RecoveryWindowInDays@ parameter. If you delete a secret with the @ForceDeleteWithouRecovery@ parameter, then you have no opportunity to recover the secret. You lose the secret permanently. /Important:/ If you use this parameter and include a previously deleted or nonexistent secret, the operation does not return the error @ResourceNotFoundException@ in order to correctly handle retries.
--
-- * 'dsSecretId' - Specifies the secret to delete. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.
deleteSecret ::
  -- | 'dsSecretId'
  Text ->
  DeleteSecret
deleteSecret pSecretId_ =
  DeleteSecret'
    { _dsRecoveryWindowInDays = Nothing,
      _dsForceDeleteWithoutRecovery = Nothing,
      _dsSecretId = pSecretId_
    }

-- | (Optional) Specifies the number of days that Secrets Manager waits before Secrets Manager can delete the secret. You can't use both this parameter and the @ForceDeleteWithoutRecovery@ parameter in the same API call. This value can range from 7 to 30 days with a default value of 30.
dsRecoveryWindowInDays :: Lens' DeleteSecret (Maybe Integer)
dsRecoveryWindowInDays = lens _dsRecoveryWindowInDays (\s a -> s {_dsRecoveryWindowInDays = a})

-- | (Optional) Specifies that the secret is to be deleted without any recovery window. You can't use both this parameter and the @RecoveryWindowInDays@ parameter in the same API call. An asynchronous background process performs the actual deletion, so there can be a short delay before the operation completes. If you write code to delete and then immediately recreate a secret with the same name, ensure that your code includes appropriate back off and retry logic. /Important:/ Use this parameter with caution. This parameter causes the operation to skip the normal waiting period before the permanent deletion that AWS would normally impose with the @RecoveryWindowInDays@ parameter. If you delete a secret with the @ForceDeleteWithouRecovery@ parameter, then you have no opportunity to recover the secret. You lose the secret permanently. /Important:/ If you use this parameter and include a previously deleted or nonexistent secret, the operation does not return the error @ResourceNotFoundException@ in order to correctly handle retries.
dsForceDeleteWithoutRecovery :: Lens' DeleteSecret (Maybe Bool)
dsForceDeleteWithoutRecovery = lens _dsForceDeleteWithoutRecovery (\s a -> s {_dsForceDeleteWithoutRecovery = a})

-- | Specifies the secret to delete. You can specify either the Amazon Resource Name (ARN) or the friendly name of the secret.
dsSecretId :: Lens' DeleteSecret Text
dsSecretId = lens _dsSecretId (\s a -> s {_dsSecretId = a})

instance AWSRequest DeleteSecret where
  type Rs DeleteSecret = DeleteSecretResponse
  request = postJSON secretsManager
  response =
    receiveJSON
      ( \s h x ->
          DeleteSecretResponse'
            <$> (x .?> "ARN")
            <*> (x .?> "Name")
            <*> (x .?> "DeletionDate")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteSecret

instance NFData DeleteSecret

instance ToHeaders DeleteSecret where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("secretsmanager.DeleteSecret" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteSecret where
  toJSON DeleteSecret' {..} =
    object
      ( catMaybes
          [ ("RecoveryWindowInDays" .=)
              <$> _dsRecoveryWindowInDays,
            ("ForceDeleteWithoutRecovery" .=)
              <$> _dsForceDeleteWithoutRecovery,
            Just ("SecretId" .= _dsSecretId)
          ]
      )

instance ToPath DeleteSecret where
  toPath = const "/"

instance ToQuery DeleteSecret where
  toQuery = const mempty

-- | /See:/ 'deleteSecretResponse' smart constructor.
data DeleteSecretResponse = DeleteSecretResponse'
  { _dsrrsARN ::
      !(Maybe Text),
    _dsrrsName :: !(Maybe Text),
    _dsrrsDeletionDate ::
      !(Maybe POSIX),
    _dsrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteSecretResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dsrrsARN' - The ARN of the secret that is now scheduled for deletion.
--
-- * 'dsrrsName' - The friendly name of the secret currently scheduled for deletion.
--
-- * 'dsrrsDeletionDate' - The date and time after which this secret can be deleted by Secrets Manager and can no longer be restored. This value is the date and time of the delete request plus the number of days specified in @RecoveryWindowInDays@ .
--
-- * 'dsrrsResponseStatus' - -- | The response status code.
deleteSecretResponse ::
  -- | 'dsrrsResponseStatus'
  Int ->
  DeleteSecretResponse
deleteSecretResponse pResponseStatus_ =
  DeleteSecretResponse'
    { _dsrrsARN = Nothing,
      _dsrrsName = Nothing,
      _dsrrsDeletionDate = Nothing,
      _dsrrsResponseStatus = pResponseStatus_
    }

-- | The ARN of the secret that is now scheduled for deletion.
dsrrsARN :: Lens' DeleteSecretResponse (Maybe Text)
dsrrsARN = lens _dsrrsARN (\s a -> s {_dsrrsARN = a})

-- | The friendly name of the secret currently scheduled for deletion.
dsrrsName :: Lens' DeleteSecretResponse (Maybe Text)
dsrrsName = lens _dsrrsName (\s a -> s {_dsrrsName = a})

-- | The date and time after which this secret can be deleted by Secrets Manager and can no longer be restored. This value is the date and time of the delete request plus the number of days specified in @RecoveryWindowInDays@ .
dsrrsDeletionDate :: Lens' DeleteSecretResponse (Maybe UTCTime)
dsrrsDeletionDate = lens _dsrrsDeletionDate (\s a -> s {_dsrrsDeletionDate = a}) . mapping _Time

-- | -- | The response status code.
dsrrsResponseStatus :: Lens' DeleteSecretResponse Int
dsrrsResponseStatus = lens _dsrrsResponseStatus (\s a -> s {_dsrrsResponseStatus = a})

instance NFData DeleteSecretResponse
