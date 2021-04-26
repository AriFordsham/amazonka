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
-- Module      : Network.AWS.MediaLive.UpdateChannelClass
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Changes the class of the channel.
module Network.AWS.MediaLive.UpdateChannelClass
  ( -- * Creating a Request
    UpdateChannelClass' (..),
    newUpdateChannelClass',

    -- * Request Lenses
    updateChannelClass'_destinations,
    updateChannelClass'_channelId,
    updateChannelClass'_channelClass,

    -- * Destructuring the Response
    UpdateChannelClassResponse (..),
    newUpdateChannelClassResponse,

    -- * Response Lenses
    updateChannelClassResponse_channel,
    updateChannelClassResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.MediaLive.Types
import Network.AWS.MediaLive.Types.Channel
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Channel class that the channel should be updated to.
--
-- /See:/ 'newUpdateChannelClass'' smart constructor.
data UpdateChannelClass' = UpdateChannelClass''
  { -- | A list of output destinations for this channel.
    destinations :: Prelude.Maybe [OutputDestination],
    -- | Channel Id of the channel whose class should be updated.
    channelId :: Prelude.Text,
    -- | The channel class that you wish to update this channel to use.
    channelClass :: ChannelClass
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'UpdateChannelClass'' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'destinations', 'updateChannelClass'_destinations' - A list of output destinations for this channel.
--
-- 'channelId', 'updateChannelClass'_channelId' - Channel Id of the channel whose class should be updated.
--
-- 'channelClass', 'updateChannelClass'_channelClass' - The channel class that you wish to update this channel to use.
newUpdateChannelClass' ::
  -- | 'channelId'
  Prelude.Text ->
  -- | 'channelClass'
  ChannelClass ->
  UpdateChannelClass'
newUpdateChannelClass' pChannelId_ pChannelClass_ =
  UpdateChannelClass''
    { destinations =
        Prelude.Nothing,
      channelId = pChannelId_,
      channelClass = pChannelClass_
    }

-- | A list of output destinations for this channel.
updateChannelClass'_destinations :: Lens.Lens' UpdateChannelClass' (Prelude.Maybe [OutputDestination])
updateChannelClass'_destinations = Lens.lens (\UpdateChannelClass'' {destinations} -> destinations) (\s@UpdateChannelClass'' {} a -> s {destinations = a} :: UpdateChannelClass') Prelude.. Lens.mapping Prelude._Coerce

-- | Channel Id of the channel whose class should be updated.
updateChannelClass'_channelId :: Lens.Lens' UpdateChannelClass' Prelude.Text
updateChannelClass'_channelId = Lens.lens (\UpdateChannelClass'' {channelId} -> channelId) (\s@UpdateChannelClass'' {} a -> s {channelId = a} :: UpdateChannelClass')

-- | The channel class that you wish to update this channel to use.
updateChannelClass'_channelClass :: Lens.Lens' UpdateChannelClass' ChannelClass
updateChannelClass'_channelClass = Lens.lens (\UpdateChannelClass'' {channelClass} -> channelClass) (\s@UpdateChannelClass'' {} a -> s {channelClass = a} :: UpdateChannelClass')

instance Prelude.AWSRequest UpdateChannelClass' where
  type
    Rs UpdateChannelClass' =
      UpdateChannelClassResponse
  request = Request.putJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          UpdateChannelClassResponse'
            Prelude.<$> (x Prelude..?> "channel")
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable UpdateChannelClass'

instance Prelude.NFData UpdateChannelClass'

instance Prelude.ToHeaders UpdateChannelClass' where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON UpdateChannelClass' where
  toJSON UpdateChannelClass'' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("destinations" Prelude..=)
              Prelude.<$> destinations,
            Prelude.Just
              ("channelClass" Prelude..= channelClass)
          ]
      )

instance Prelude.ToPath UpdateChannelClass' where
  toPath UpdateChannelClass'' {..} =
    Prelude.mconcat
      [ "/prod/channels/",
        Prelude.toBS channelId,
        "/channelClass"
      ]

instance Prelude.ToQuery UpdateChannelClass' where
  toQuery = Prelude.const Prelude.mempty

-- | Placeholder documentation for UpdateChannelClassResponse
--
-- /See:/ 'newUpdateChannelClassResponse' smart constructor.
data UpdateChannelClassResponse = UpdateChannelClassResponse'
  { channel :: Prelude.Maybe Channel,
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'UpdateChannelClassResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'channel', 'updateChannelClassResponse_channel' - Undocumented member.
--
-- 'httpStatus', 'updateChannelClassResponse_httpStatus' - The response's http status code.
newUpdateChannelClassResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  UpdateChannelClassResponse
newUpdateChannelClassResponse pHttpStatus_ =
  UpdateChannelClassResponse'
    { channel =
        Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | Undocumented member.
updateChannelClassResponse_channel :: Lens.Lens' UpdateChannelClassResponse (Prelude.Maybe Channel)
updateChannelClassResponse_channel = Lens.lens (\UpdateChannelClassResponse' {channel} -> channel) (\s@UpdateChannelClassResponse' {} a -> s {channel = a} :: UpdateChannelClassResponse)

-- | The response's http status code.
updateChannelClassResponse_httpStatus :: Lens.Lens' UpdateChannelClassResponse Prelude.Int
updateChannelClassResponse_httpStatus = Lens.lens (\UpdateChannelClassResponse' {httpStatus} -> httpStatus) (\s@UpdateChannelClassResponse' {} a -> s {httpStatus = a} :: UpdateChannelClassResponse)

instance Prelude.NFData UpdateChannelClassResponse
