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
-- Module      : Network.AWS.RDS.Types.DBProxy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.DBProxy where

import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Prelude as Prelude
import Network.AWS.RDS.Types.DBProxyStatus
import Network.AWS.RDS.Types.UserAuthConfigInfo

-- | The data structure representing a proxy managed by the RDS Proxy.
--
-- This data type is used as a response element in the @DescribeDBProxies@
-- action.
--
-- /See:/ 'newDBProxy' smart constructor.
data DBProxy = DBProxy'
  { -- | The Amazon Resource Name (ARN) for the proxy.
    dBProxyArn :: Prelude.Maybe Prelude.Text,
    -- | The current status of this proxy. A status of @available@ means the
    -- proxy is ready to handle requests. Other values indicate that you must
    -- wait for the proxy to be ready, or take some action to resolve an issue.
    status :: Prelude.Maybe DBProxyStatus,
    -- | The date and time when the proxy was first created.
    createdDate :: Prelude.Maybe Prelude.ISO8601,
    -- | The Amazon Resource Name (ARN) for the IAM role that the proxy uses to
    -- access Amazon Secrets Manager.
    roleArn :: Prelude.Maybe Prelude.Text,
    -- | The number of seconds a connection to the proxy can have no activity
    -- before the proxy drops the client connection. The proxy keeps the
    -- underlying database connection open and puts it back into the connection
    -- pool for reuse by later connection requests.
    --
    -- Default: 1800 (30 minutes)
    --
    -- Constraints: 1 to 28,800
    idleClientTimeout :: Prelude.Maybe Prelude.Int,
    -- | The EC2 subnet IDs for the proxy.
    vpcSubnetIds :: Prelude.Maybe [Prelude.Text],
    -- | One or more data structures specifying the authorization mechanism to
    -- connect to the associated RDS DB instance or Aurora DB cluster.
    auth :: Prelude.Maybe [UserAuthConfigInfo],
    -- | The engine family applies to MySQL and PostgreSQL for both RDS and
    -- Aurora.
    engineFamily :: Prelude.Maybe Prelude.Text,
    -- | Provides a list of VPC security groups that the proxy belongs to.
    vpcSecurityGroupIds :: Prelude.Maybe [Prelude.Text],
    -- | Whether the proxy includes detailed information about SQL statements in
    -- its logs. This information helps you to debug issues involving SQL
    -- behavior or the performance and scalability of the proxy connections.
    -- The debug information includes the text of SQL statements that you
    -- submit through the proxy. Thus, only enable this setting when needed for
    -- debugging, and only when you have security measures in place to
    -- safeguard any sensitive information that appears in the logs.
    debugLogging :: Prelude.Maybe Prelude.Bool,
    -- | The date and time when the proxy was last updated.
    updatedDate :: Prelude.Maybe Prelude.ISO8601,
    -- | Indicates whether Transport Layer Security (TLS) encryption is required
    -- for connections to the proxy.
    requireTLS :: Prelude.Maybe Prelude.Bool,
    -- | The endpoint that you can use to connect to the proxy. You include the
    -- endpoint value in the connection string for a database client
    -- application.
    endpoint :: Prelude.Maybe Prelude.Text,
    -- | The identifier for the proxy. This name must be unique for all proxies
    -- owned by your AWS account in the specified AWS Region.
    dBProxyName :: Prelude.Maybe Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'DBProxy' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'dBProxyArn', 'dBProxy_dBProxyArn' - The Amazon Resource Name (ARN) for the proxy.
--
-- 'status', 'dBProxy_status' - The current status of this proxy. A status of @available@ means the
-- proxy is ready to handle requests. Other values indicate that you must
-- wait for the proxy to be ready, or take some action to resolve an issue.
--
-- 'createdDate', 'dBProxy_createdDate' - The date and time when the proxy was first created.
--
-- 'roleArn', 'dBProxy_roleArn' - The Amazon Resource Name (ARN) for the IAM role that the proxy uses to
-- access Amazon Secrets Manager.
--
-- 'idleClientTimeout', 'dBProxy_idleClientTimeout' - The number of seconds a connection to the proxy can have no activity
-- before the proxy drops the client connection. The proxy keeps the
-- underlying database connection open and puts it back into the connection
-- pool for reuse by later connection requests.
--
-- Default: 1800 (30 minutes)
--
-- Constraints: 1 to 28,800
--
-- 'vpcSubnetIds', 'dBProxy_vpcSubnetIds' - The EC2 subnet IDs for the proxy.
--
-- 'auth', 'dBProxy_auth' - One or more data structures specifying the authorization mechanism to
-- connect to the associated RDS DB instance or Aurora DB cluster.
--
-- 'engineFamily', 'dBProxy_engineFamily' - The engine family applies to MySQL and PostgreSQL for both RDS and
-- Aurora.
--
-- 'vpcSecurityGroupIds', 'dBProxy_vpcSecurityGroupIds' - Provides a list of VPC security groups that the proxy belongs to.
--
-- 'debugLogging', 'dBProxy_debugLogging' - Whether the proxy includes detailed information about SQL statements in
-- its logs. This information helps you to debug issues involving SQL
-- behavior or the performance and scalability of the proxy connections.
-- The debug information includes the text of SQL statements that you
-- submit through the proxy. Thus, only enable this setting when needed for
-- debugging, and only when you have security measures in place to
-- safeguard any sensitive information that appears in the logs.
--
-- 'updatedDate', 'dBProxy_updatedDate' - The date and time when the proxy was last updated.
--
-- 'requireTLS', 'dBProxy_requireTLS' - Indicates whether Transport Layer Security (TLS) encryption is required
-- for connections to the proxy.
--
-- 'endpoint', 'dBProxy_endpoint' - The endpoint that you can use to connect to the proxy. You include the
-- endpoint value in the connection string for a database client
-- application.
--
-- 'dBProxyName', 'dBProxy_dBProxyName' - The identifier for the proxy. This name must be unique for all proxies
-- owned by your AWS account in the specified AWS Region.
newDBProxy ::
  DBProxy
newDBProxy =
  DBProxy'
    { dBProxyArn = Prelude.Nothing,
      status = Prelude.Nothing,
      createdDate = Prelude.Nothing,
      roleArn = Prelude.Nothing,
      idleClientTimeout = Prelude.Nothing,
      vpcSubnetIds = Prelude.Nothing,
      auth = Prelude.Nothing,
      engineFamily = Prelude.Nothing,
      vpcSecurityGroupIds = Prelude.Nothing,
      debugLogging = Prelude.Nothing,
      updatedDate = Prelude.Nothing,
      requireTLS = Prelude.Nothing,
      endpoint = Prelude.Nothing,
      dBProxyName = Prelude.Nothing
    }

-- | The Amazon Resource Name (ARN) for the proxy.
dBProxy_dBProxyArn :: Lens.Lens' DBProxy (Prelude.Maybe Prelude.Text)
dBProxy_dBProxyArn = Lens.lens (\DBProxy' {dBProxyArn} -> dBProxyArn) (\s@DBProxy' {} a -> s {dBProxyArn = a} :: DBProxy)

-- | The current status of this proxy. A status of @available@ means the
-- proxy is ready to handle requests. Other values indicate that you must
-- wait for the proxy to be ready, or take some action to resolve an issue.
dBProxy_status :: Lens.Lens' DBProxy (Prelude.Maybe DBProxyStatus)
dBProxy_status = Lens.lens (\DBProxy' {status} -> status) (\s@DBProxy' {} a -> s {status = a} :: DBProxy)

-- | The date and time when the proxy was first created.
dBProxy_createdDate :: Lens.Lens' DBProxy (Prelude.Maybe Prelude.UTCTime)
dBProxy_createdDate = Lens.lens (\DBProxy' {createdDate} -> createdDate) (\s@DBProxy' {} a -> s {createdDate = a} :: DBProxy) Prelude.. Lens.mapping Prelude._Time

-- | The Amazon Resource Name (ARN) for the IAM role that the proxy uses to
-- access Amazon Secrets Manager.
dBProxy_roleArn :: Lens.Lens' DBProxy (Prelude.Maybe Prelude.Text)
dBProxy_roleArn = Lens.lens (\DBProxy' {roleArn} -> roleArn) (\s@DBProxy' {} a -> s {roleArn = a} :: DBProxy)

-- | The number of seconds a connection to the proxy can have no activity
-- before the proxy drops the client connection. The proxy keeps the
-- underlying database connection open and puts it back into the connection
-- pool for reuse by later connection requests.
--
-- Default: 1800 (30 minutes)
--
-- Constraints: 1 to 28,800
dBProxy_idleClientTimeout :: Lens.Lens' DBProxy (Prelude.Maybe Prelude.Int)
dBProxy_idleClientTimeout = Lens.lens (\DBProxy' {idleClientTimeout} -> idleClientTimeout) (\s@DBProxy' {} a -> s {idleClientTimeout = a} :: DBProxy)

-- | The EC2 subnet IDs for the proxy.
dBProxy_vpcSubnetIds :: Lens.Lens' DBProxy (Prelude.Maybe [Prelude.Text])
dBProxy_vpcSubnetIds = Lens.lens (\DBProxy' {vpcSubnetIds} -> vpcSubnetIds) (\s@DBProxy' {} a -> s {vpcSubnetIds = a} :: DBProxy) Prelude.. Lens.mapping Prelude._Coerce

-- | One or more data structures specifying the authorization mechanism to
-- connect to the associated RDS DB instance or Aurora DB cluster.
dBProxy_auth :: Lens.Lens' DBProxy (Prelude.Maybe [UserAuthConfigInfo])
dBProxy_auth = Lens.lens (\DBProxy' {auth} -> auth) (\s@DBProxy' {} a -> s {auth = a} :: DBProxy) Prelude.. Lens.mapping Prelude._Coerce

-- | The engine family applies to MySQL and PostgreSQL for both RDS and
-- Aurora.
dBProxy_engineFamily :: Lens.Lens' DBProxy (Prelude.Maybe Prelude.Text)
dBProxy_engineFamily = Lens.lens (\DBProxy' {engineFamily} -> engineFamily) (\s@DBProxy' {} a -> s {engineFamily = a} :: DBProxy)

-- | Provides a list of VPC security groups that the proxy belongs to.
dBProxy_vpcSecurityGroupIds :: Lens.Lens' DBProxy (Prelude.Maybe [Prelude.Text])
dBProxy_vpcSecurityGroupIds = Lens.lens (\DBProxy' {vpcSecurityGroupIds} -> vpcSecurityGroupIds) (\s@DBProxy' {} a -> s {vpcSecurityGroupIds = a} :: DBProxy) Prelude.. Lens.mapping Prelude._Coerce

-- | Whether the proxy includes detailed information about SQL statements in
-- its logs. This information helps you to debug issues involving SQL
-- behavior or the performance and scalability of the proxy connections.
-- The debug information includes the text of SQL statements that you
-- submit through the proxy. Thus, only enable this setting when needed for
-- debugging, and only when you have security measures in place to
-- safeguard any sensitive information that appears in the logs.
dBProxy_debugLogging :: Lens.Lens' DBProxy (Prelude.Maybe Prelude.Bool)
dBProxy_debugLogging = Lens.lens (\DBProxy' {debugLogging} -> debugLogging) (\s@DBProxy' {} a -> s {debugLogging = a} :: DBProxy)

-- | The date and time when the proxy was last updated.
dBProxy_updatedDate :: Lens.Lens' DBProxy (Prelude.Maybe Prelude.UTCTime)
dBProxy_updatedDate = Lens.lens (\DBProxy' {updatedDate} -> updatedDate) (\s@DBProxy' {} a -> s {updatedDate = a} :: DBProxy) Prelude.. Lens.mapping Prelude._Time

-- | Indicates whether Transport Layer Security (TLS) encryption is required
-- for connections to the proxy.
dBProxy_requireTLS :: Lens.Lens' DBProxy (Prelude.Maybe Prelude.Bool)
dBProxy_requireTLS = Lens.lens (\DBProxy' {requireTLS} -> requireTLS) (\s@DBProxy' {} a -> s {requireTLS = a} :: DBProxy)

-- | The endpoint that you can use to connect to the proxy. You include the
-- endpoint value in the connection string for a database client
-- application.
dBProxy_endpoint :: Lens.Lens' DBProxy (Prelude.Maybe Prelude.Text)
dBProxy_endpoint = Lens.lens (\DBProxy' {endpoint} -> endpoint) (\s@DBProxy' {} a -> s {endpoint = a} :: DBProxy)

-- | The identifier for the proxy. This name must be unique for all proxies
-- owned by your AWS account in the specified AWS Region.
dBProxy_dBProxyName :: Lens.Lens' DBProxy (Prelude.Maybe Prelude.Text)
dBProxy_dBProxyName = Lens.lens (\DBProxy' {dBProxyName} -> dBProxyName) (\s@DBProxy' {} a -> s {dBProxyName = a} :: DBProxy)

instance Prelude.FromXML DBProxy where
  parseXML x =
    DBProxy'
      Prelude.<$> (x Prelude..@? "DBProxyArn")
      Prelude.<*> (x Prelude..@? "Status")
      Prelude.<*> (x Prelude..@? "CreatedDate")
      Prelude.<*> (x Prelude..@? "RoleArn")
      Prelude.<*> (x Prelude..@? "IdleClientTimeout")
      Prelude.<*> ( x Prelude..@? "VpcSubnetIds"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList "member")
                  )
      Prelude.<*> ( x Prelude..@? "Auth" Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList "member")
                  )
      Prelude.<*> (x Prelude..@? "EngineFamily")
      Prelude.<*> ( x Prelude..@? "VpcSecurityGroupIds"
                      Prelude..!@ Prelude.mempty
                      Prelude.>>= Prelude.may (Prelude.parseXMLList "member")
                  )
      Prelude.<*> (x Prelude..@? "DebugLogging")
      Prelude.<*> (x Prelude..@? "UpdatedDate")
      Prelude.<*> (x Prelude..@? "RequireTLS")
      Prelude.<*> (x Prelude..@? "Endpoint")
      Prelude.<*> (x Prelude..@? "DBProxyName")

instance Prelude.Hashable DBProxy

instance Prelude.NFData DBProxy
