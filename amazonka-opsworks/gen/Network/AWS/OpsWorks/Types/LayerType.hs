{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.OpsWorks.Types.LayerType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.LayerType
  ( LayerType
      ( ..,
        LayerType_Aws_flow_ruby,
        LayerType_Custom,
        LayerType_Db_master,
        LayerType_Ecs_cluster,
        LayerType_Java_app,
        LayerType_Lb,
        LayerType_Memcached,
        LayerType_Monitoring_master,
        LayerType_Nodejs_app,
        LayerType_Php_app,
        LayerType_Rails_app,
        LayerType_Web
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LayerType = LayerType'
  { fromLayerType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Show,
      Prelude.Read,
      Prelude.Eq,
      Prelude.Ord,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic,
      Prelude.Hashable,
      Prelude.NFData,
      Prelude.FromText,
      Prelude.ToText,
      Prelude.ToByteString,
      Prelude.ToLog,
      Prelude.ToHeader,
      Prelude.ToQuery,
      Prelude.FromJSON,
      Prelude.FromJSONKey,
      Prelude.ToJSON,
      Prelude.ToJSONKey,
      Prelude.FromXML,
      Prelude.ToXML
    )

pattern LayerType_Aws_flow_ruby :: LayerType
pattern LayerType_Aws_flow_ruby = LayerType' "aws-flow-ruby"

pattern LayerType_Custom :: LayerType
pattern LayerType_Custom = LayerType' "custom"

pattern LayerType_Db_master :: LayerType
pattern LayerType_Db_master = LayerType' "db-master"

pattern LayerType_Ecs_cluster :: LayerType
pattern LayerType_Ecs_cluster = LayerType' "ecs-cluster"

pattern LayerType_Java_app :: LayerType
pattern LayerType_Java_app = LayerType' "java-app"

pattern LayerType_Lb :: LayerType
pattern LayerType_Lb = LayerType' "lb"

pattern LayerType_Memcached :: LayerType
pattern LayerType_Memcached = LayerType' "memcached"

pattern LayerType_Monitoring_master :: LayerType
pattern LayerType_Monitoring_master = LayerType' "monitoring-master"

pattern LayerType_Nodejs_app :: LayerType
pattern LayerType_Nodejs_app = LayerType' "nodejs-app"

pattern LayerType_Php_app :: LayerType
pattern LayerType_Php_app = LayerType' "php-app"

pattern LayerType_Rails_app :: LayerType
pattern LayerType_Rails_app = LayerType' "rails-app"

pattern LayerType_Web :: LayerType
pattern LayerType_Web = LayerType' "web"

{-# COMPLETE
  LayerType_Aws_flow_ruby,
  LayerType_Custom,
  LayerType_Db_master,
  LayerType_Ecs_cluster,
  LayerType_Java_app,
  LayerType_Lb,
  LayerType_Memcached,
  LayerType_Monitoring_master,
  LayerType_Nodejs_app,
  LayerType_Php_app,
  LayerType_Rails_app,
  LayerType_Web,
  LayerType'
  #-}
