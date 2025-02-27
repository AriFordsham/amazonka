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
-- Module      : Network.AWS.LexModels.GetBotChannelAssociations
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of all of the channels associated with the specified bot.
--
-- The @GetBotChannelAssociations@ operation requires permissions for the
-- @lex:GetBotChannelAssociations@ action.
--
-- This operation returns paginated results.
module Network.AWS.LexModels.GetBotChannelAssociations
  ( -- * Creating a Request
    GetBotChannelAssociations (..),
    newGetBotChannelAssociations,

    -- * Request Lenses
    getBotChannelAssociations_nextToken,
    getBotChannelAssociations_nameContains,
    getBotChannelAssociations_maxResults,
    getBotChannelAssociations_botName,
    getBotChannelAssociations_botAlias,

    -- * Destructuring the Response
    GetBotChannelAssociationsResponse (..),
    newGetBotChannelAssociationsResponse,

    -- * Response Lenses
    getBotChannelAssociationsResponse_nextToken,
    getBotChannelAssociationsResponse_botChannelAssociations,
    getBotChannelAssociationsResponse_httpStatus,
  )
where

import qualified Network.AWS.Lens as Lens
import Network.AWS.LexModels.Types
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | /See:/ 'newGetBotChannelAssociations' smart constructor.
data GetBotChannelAssociations = GetBotChannelAssociations'
  { -- | A pagination token for fetching the next page of associations. If the
    -- response to this call is truncated, Amazon Lex returns a pagination
    -- token in the response. To fetch the next page of associations, specify
    -- the pagination token in the next request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Substring to match in channel association names. An association will be
    -- returned if any part of its name matches the substring. For example,
    -- \"xyz\" matches both \"xyzabc\" and \"abcxyz.\" To return all bot
    -- channel associations, use a hyphen (\"-\") as the @nameContains@
    -- parameter.
    nameContains :: Prelude.Maybe Prelude.Text,
    -- | The maximum number of associations to return in the response. The
    -- default is 50.
    maxResults :: Prelude.Maybe Prelude.Natural,
    -- | The name of the Amazon Lex bot in the association.
    botName :: Prelude.Text,
    -- | An alias pointing to the specific version of the Amazon Lex bot to which
    -- this association is being made.
    botAlias :: Prelude.Text
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetBotChannelAssociations' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getBotChannelAssociations_nextToken' - A pagination token for fetching the next page of associations. If the
-- response to this call is truncated, Amazon Lex returns a pagination
-- token in the response. To fetch the next page of associations, specify
-- the pagination token in the next request.
--
-- 'nameContains', 'getBotChannelAssociations_nameContains' - Substring to match in channel association names. An association will be
-- returned if any part of its name matches the substring. For example,
-- \"xyz\" matches both \"xyzabc\" and \"abcxyz.\" To return all bot
-- channel associations, use a hyphen (\"-\") as the @nameContains@
-- parameter.
--
-- 'maxResults', 'getBotChannelAssociations_maxResults' - The maximum number of associations to return in the response. The
-- default is 50.
--
-- 'botName', 'getBotChannelAssociations_botName' - The name of the Amazon Lex bot in the association.
--
-- 'botAlias', 'getBotChannelAssociations_botAlias' - An alias pointing to the specific version of the Amazon Lex bot to which
-- this association is being made.
newGetBotChannelAssociations ::
  -- | 'botName'
  Prelude.Text ->
  -- | 'botAlias'
  Prelude.Text ->
  GetBotChannelAssociations
newGetBotChannelAssociations pBotName_ pBotAlias_ =
  GetBotChannelAssociations'
    { nextToken =
        Prelude.Nothing,
      nameContains = Prelude.Nothing,
      maxResults = Prelude.Nothing,
      botName = pBotName_,
      botAlias = pBotAlias_
    }

-- | A pagination token for fetching the next page of associations. If the
-- response to this call is truncated, Amazon Lex returns a pagination
-- token in the response. To fetch the next page of associations, specify
-- the pagination token in the next request.
getBotChannelAssociations_nextToken :: Lens.Lens' GetBotChannelAssociations (Prelude.Maybe Prelude.Text)
getBotChannelAssociations_nextToken = Lens.lens (\GetBotChannelAssociations' {nextToken} -> nextToken) (\s@GetBotChannelAssociations' {} a -> s {nextToken = a} :: GetBotChannelAssociations)

-- | Substring to match in channel association names. An association will be
-- returned if any part of its name matches the substring. For example,
-- \"xyz\" matches both \"xyzabc\" and \"abcxyz.\" To return all bot
-- channel associations, use a hyphen (\"-\") as the @nameContains@
-- parameter.
getBotChannelAssociations_nameContains :: Lens.Lens' GetBotChannelAssociations (Prelude.Maybe Prelude.Text)
getBotChannelAssociations_nameContains = Lens.lens (\GetBotChannelAssociations' {nameContains} -> nameContains) (\s@GetBotChannelAssociations' {} a -> s {nameContains = a} :: GetBotChannelAssociations)

-- | The maximum number of associations to return in the response. The
-- default is 50.
getBotChannelAssociations_maxResults :: Lens.Lens' GetBotChannelAssociations (Prelude.Maybe Prelude.Natural)
getBotChannelAssociations_maxResults = Lens.lens (\GetBotChannelAssociations' {maxResults} -> maxResults) (\s@GetBotChannelAssociations' {} a -> s {maxResults = a} :: GetBotChannelAssociations)

-- | The name of the Amazon Lex bot in the association.
getBotChannelAssociations_botName :: Lens.Lens' GetBotChannelAssociations Prelude.Text
getBotChannelAssociations_botName = Lens.lens (\GetBotChannelAssociations' {botName} -> botName) (\s@GetBotChannelAssociations' {} a -> s {botName = a} :: GetBotChannelAssociations)

-- | An alias pointing to the specific version of the Amazon Lex bot to which
-- this association is being made.
getBotChannelAssociations_botAlias :: Lens.Lens' GetBotChannelAssociations Prelude.Text
getBotChannelAssociations_botAlias = Lens.lens (\GetBotChannelAssociations' {botAlias} -> botAlias) (\s@GetBotChannelAssociations' {} a -> s {botAlias = a} :: GetBotChannelAssociations)

instance Pager.AWSPager GetBotChannelAssociations where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? getBotChannelAssociationsResponse_nextToken
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? getBotChannelAssociationsResponse_botChannelAssociations
              Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& getBotChannelAssociations_nextToken
          Lens..~ rs
          Lens.^? getBotChannelAssociationsResponse_nextToken
            Prelude.. Lens._Just

instance Prelude.AWSRequest GetBotChannelAssociations where
  type
    Rs GetBotChannelAssociations =
      GetBotChannelAssociationsResponse
  request = Request.get defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          GetBotChannelAssociationsResponse'
            Prelude.<$> (x Prelude..?> "nextToken")
            Prelude.<*> ( x Prelude..?> "botChannelAssociations"
                            Prelude..!@ Prelude.mempty
                        )
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable GetBotChannelAssociations

instance Prelude.NFData GetBotChannelAssociations

instance Prelude.ToHeaders GetBotChannelAssociations where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToPath GetBotChannelAssociations where
  toPath GetBotChannelAssociations' {..} =
    Prelude.mconcat
      [ "/bots/",
        Prelude.toBS botName,
        "/aliases/",
        Prelude.toBS botAlias,
        "/channels/"
      ]

instance Prelude.ToQuery GetBotChannelAssociations where
  toQuery GetBotChannelAssociations' {..} =
    Prelude.mconcat
      [ "nextToken" Prelude.=: nextToken,
        "nameContains" Prelude.=: nameContains,
        "maxResults" Prelude.=: maxResults
      ]

-- | /See:/ 'newGetBotChannelAssociationsResponse' smart constructor.
data GetBotChannelAssociationsResponse = GetBotChannelAssociationsResponse'
  { -- | A pagination token that fetches the next page of associations. If the
    -- response to this call is truncated, Amazon Lex returns a pagination
    -- token in the response. To fetch the next page of associations, specify
    -- the pagination token in the next request.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | An array of objects, one for each association, that provides information
    -- about the Amazon Lex bot and its association with the channel.
    botChannelAssociations :: Prelude.Maybe [BotChannelAssociation],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'GetBotChannelAssociationsResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'getBotChannelAssociationsResponse_nextToken' - A pagination token that fetches the next page of associations. If the
-- response to this call is truncated, Amazon Lex returns a pagination
-- token in the response. To fetch the next page of associations, specify
-- the pagination token in the next request.
--
-- 'botChannelAssociations', 'getBotChannelAssociationsResponse_botChannelAssociations' - An array of objects, one for each association, that provides information
-- about the Amazon Lex bot and its association with the channel.
--
-- 'httpStatus', 'getBotChannelAssociationsResponse_httpStatus' - The response's http status code.
newGetBotChannelAssociationsResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  GetBotChannelAssociationsResponse
newGetBotChannelAssociationsResponse pHttpStatus_ =
  GetBotChannelAssociationsResponse'
    { nextToken =
        Prelude.Nothing,
      botChannelAssociations = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | A pagination token that fetches the next page of associations. If the
-- response to this call is truncated, Amazon Lex returns a pagination
-- token in the response. To fetch the next page of associations, specify
-- the pagination token in the next request.
getBotChannelAssociationsResponse_nextToken :: Lens.Lens' GetBotChannelAssociationsResponse (Prelude.Maybe Prelude.Text)
getBotChannelAssociationsResponse_nextToken = Lens.lens (\GetBotChannelAssociationsResponse' {nextToken} -> nextToken) (\s@GetBotChannelAssociationsResponse' {} a -> s {nextToken = a} :: GetBotChannelAssociationsResponse)

-- | An array of objects, one for each association, that provides information
-- about the Amazon Lex bot and its association with the channel.
getBotChannelAssociationsResponse_botChannelAssociations :: Lens.Lens' GetBotChannelAssociationsResponse (Prelude.Maybe [BotChannelAssociation])
getBotChannelAssociationsResponse_botChannelAssociations = Lens.lens (\GetBotChannelAssociationsResponse' {botChannelAssociations} -> botChannelAssociations) (\s@GetBotChannelAssociationsResponse' {} a -> s {botChannelAssociations = a} :: GetBotChannelAssociationsResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
getBotChannelAssociationsResponse_httpStatus :: Lens.Lens' GetBotChannelAssociationsResponse Prelude.Int
getBotChannelAssociationsResponse_httpStatus = Lens.lens (\GetBotChannelAssociationsResponse' {httpStatus} -> httpStatus) (\s@GetBotChannelAssociationsResponse' {} a -> s {httpStatus = a} :: GetBotChannelAssociationsResponse)

instance
  Prelude.NFData
    GetBotChannelAssociationsResponse
