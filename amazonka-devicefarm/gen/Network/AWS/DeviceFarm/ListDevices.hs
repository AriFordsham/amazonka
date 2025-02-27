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
-- Module      : Network.AWS.DeviceFarm.ListDevices
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about unique device types.
--
-- This operation returns paginated results.
module Network.AWS.DeviceFarm.ListDevices
  ( -- * Creating a Request
    ListDevices (..),
    newListDevices,

    -- * Request Lenses
    listDevices_nextToken,
    listDevices_arn,
    listDevices_filters,

    -- * Destructuring the Response
    ListDevicesResponse (..),
    newListDevicesResponse,

    -- * Response Lenses
    listDevicesResponse_nextToken,
    listDevicesResponse_devices,
    listDevicesResponse_httpStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import qualified Network.AWS.Lens as Lens
import qualified Network.AWS.Pager as Pager
import qualified Network.AWS.Prelude as Prelude
import qualified Network.AWS.Request as Request
import qualified Network.AWS.Response as Response

-- | Represents the result of a list devices request.
--
-- /See:/ 'newListDevices' smart constructor.
data ListDevices = ListDevices'
  { -- | An identifier that was returned from the previous call to this
    -- operation, which can be used to return the next set of items in the
    -- list.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | The Amazon Resource Name (ARN) of the project.
    arn :: Prelude.Maybe Prelude.Text,
    -- | Used to select a set of devices. A filter is made up of an attribute, an
    -- operator, and one or more values.
    --
    -- -   Attribute: The aspect of a device such as platform or model used as
    --     the selection criteria in a device filter.
    --
    --     Allowed values include:
    --
    --     -   ARN: The Amazon Resource Name (ARN) of the device (for example,
    --         @arn:aws:devicefarm:us-west-2::device:12345Example@).
    --
    --     -   PLATFORM: The device platform. Valid values are ANDROID or IOS.
    --
    --     -   OS_VERSION: The operating system version (for example, 10.3.2).
    --
    --     -   MODEL: The device model (for example, iPad 5th Gen).
    --
    --     -   AVAILABILITY: The current availability of the device. Valid
    --         values are AVAILABLE, HIGHLY_AVAILABLE, BUSY, or
    --         TEMPORARY_NOT_AVAILABLE.
    --
    --     -   FORM_FACTOR: The device form factor. Valid values are PHONE or
    --         TABLET.
    --
    --     -   MANUFACTURER: The device manufacturer (for example, Apple).
    --
    --     -   REMOTE_ACCESS_ENABLED: Whether the device is enabled for remote
    --         access. Valid values are TRUE or FALSE.
    --
    --     -   REMOTE_DEBUG_ENABLED: Whether the device is enabled for remote
    --         debugging. Valid values are TRUE or FALSE. Because remote
    --         debugging is
    --         <https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html no longer supported>,
    --         this attribute is ignored.
    --
    --     -   INSTANCE_ARN: The Amazon Resource Name (ARN) of the device
    --         instance.
    --
    --     -   INSTANCE_LABELS: The label of the device instance.
    --
    --     -   FLEET_TYPE: The fleet type. Valid values are PUBLIC or PRIVATE.
    --
    -- -   Operator: The filter operator.
    --
    --     -   The EQUALS operator is available for every attribute except
    --         INSTANCE_LABELS.
    --
    --     -   The CONTAINS operator is available for the INSTANCE_LABELS and
    --         MODEL attributes.
    --
    --     -   The IN and NOT_IN operators are available for the ARN,
    --         OS_VERSION, MODEL, MANUFACTURER, and INSTANCE_ARN attributes.
    --
    --     -   The LESS_THAN, GREATER_THAN, LESS_THAN_OR_EQUALS, and
    --         GREATER_THAN_OR_EQUALS operators are also available for the
    --         OS_VERSION attribute.
    --
    -- -   Values: An array of one or more filter values.
    --
    --     -   The IN and NOT_IN operators take a values array that has one or
    --         more elements.
    --
    --     -   The other operators require an array with a single element.
    --
    --     -   In a request, the AVAILABILITY attribute takes the following
    --         values: AVAILABLE, HIGHLY_AVAILABLE, BUSY, or
    --         TEMPORARY_NOT_AVAILABLE.
    filters :: Prelude.Maybe [DeviceFilter]
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListDevices' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listDevices_nextToken' - An identifier that was returned from the previous call to this
-- operation, which can be used to return the next set of items in the
-- list.
--
-- 'arn', 'listDevices_arn' - The Amazon Resource Name (ARN) of the project.
--
-- 'filters', 'listDevices_filters' - Used to select a set of devices. A filter is made up of an attribute, an
-- operator, and one or more values.
--
-- -   Attribute: The aspect of a device such as platform or model used as
--     the selection criteria in a device filter.
--
--     Allowed values include:
--
--     -   ARN: The Amazon Resource Name (ARN) of the device (for example,
--         @arn:aws:devicefarm:us-west-2::device:12345Example@).
--
--     -   PLATFORM: The device platform. Valid values are ANDROID or IOS.
--
--     -   OS_VERSION: The operating system version (for example, 10.3.2).
--
--     -   MODEL: The device model (for example, iPad 5th Gen).
--
--     -   AVAILABILITY: The current availability of the device. Valid
--         values are AVAILABLE, HIGHLY_AVAILABLE, BUSY, or
--         TEMPORARY_NOT_AVAILABLE.
--
--     -   FORM_FACTOR: The device form factor. Valid values are PHONE or
--         TABLET.
--
--     -   MANUFACTURER: The device manufacturer (for example, Apple).
--
--     -   REMOTE_ACCESS_ENABLED: Whether the device is enabled for remote
--         access. Valid values are TRUE or FALSE.
--
--     -   REMOTE_DEBUG_ENABLED: Whether the device is enabled for remote
--         debugging. Valid values are TRUE or FALSE. Because remote
--         debugging is
--         <https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html no longer supported>,
--         this attribute is ignored.
--
--     -   INSTANCE_ARN: The Amazon Resource Name (ARN) of the device
--         instance.
--
--     -   INSTANCE_LABELS: The label of the device instance.
--
--     -   FLEET_TYPE: The fleet type. Valid values are PUBLIC or PRIVATE.
--
-- -   Operator: The filter operator.
--
--     -   The EQUALS operator is available for every attribute except
--         INSTANCE_LABELS.
--
--     -   The CONTAINS operator is available for the INSTANCE_LABELS and
--         MODEL attributes.
--
--     -   The IN and NOT_IN operators are available for the ARN,
--         OS_VERSION, MODEL, MANUFACTURER, and INSTANCE_ARN attributes.
--
--     -   The LESS_THAN, GREATER_THAN, LESS_THAN_OR_EQUALS, and
--         GREATER_THAN_OR_EQUALS operators are also available for the
--         OS_VERSION attribute.
--
-- -   Values: An array of one or more filter values.
--
--     -   The IN and NOT_IN operators take a values array that has one or
--         more elements.
--
--     -   The other operators require an array with a single element.
--
--     -   In a request, the AVAILABILITY attribute takes the following
--         values: AVAILABLE, HIGHLY_AVAILABLE, BUSY, or
--         TEMPORARY_NOT_AVAILABLE.
newListDevices ::
  ListDevices
newListDevices =
  ListDevices'
    { nextToken = Prelude.Nothing,
      arn = Prelude.Nothing,
      filters = Prelude.Nothing
    }

-- | An identifier that was returned from the previous call to this
-- operation, which can be used to return the next set of items in the
-- list.
listDevices_nextToken :: Lens.Lens' ListDevices (Prelude.Maybe Prelude.Text)
listDevices_nextToken = Lens.lens (\ListDevices' {nextToken} -> nextToken) (\s@ListDevices' {} a -> s {nextToken = a} :: ListDevices)

-- | The Amazon Resource Name (ARN) of the project.
listDevices_arn :: Lens.Lens' ListDevices (Prelude.Maybe Prelude.Text)
listDevices_arn = Lens.lens (\ListDevices' {arn} -> arn) (\s@ListDevices' {} a -> s {arn = a} :: ListDevices)

-- | Used to select a set of devices. A filter is made up of an attribute, an
-- operator, and one or more values.
--
-- -   Attribute: The aspect of a device such as platform or model used as
--     the selection criteria in a device filter.
--
--     Allowed values include:
--
--     -   ARN: The Amazon Resource Name (ARN) of the device (for example,
--         @arn:aws:devicefarm:us-west-2::device:12345Example@).
--
--     -   PLATFORM: The device platform. Valid values are ANDROID or IOS.
--
--     -   OS_VERSION: The operating system version (for example, 10.3.2).
--
--     -   MODEL: The device model (for example, iPad 5th Gen).
--
--     -   AVAILABILITY: The current availability of the device. Valid
--         values are AVAILABLE, HIGHLY_AVAILABLE, BUSY, or
--         TEMPORARY_NOT_AVAILABLE.
--
--     -   FORM_FACTOR: The device form factor. Valid values are PHONE or
--         TABLET.
--
--     -   MANUFACTURER: The device manufacturer (for example, Apple).
--
--     -   REMOTE_ACCESS_ENABLED: Whether the device is enabled for remote
--         access. Valid values are TRUE or FALSE.
--
--     -   REMOTE_DEBUG_ENABLED: Whether the device is enabled for remote
--         debugging. Valid values are TRUE or FALSE. Because remote
--         debugging is
--         <https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html no longer supported>,
--         this attribute is ignored.
--
--     -   INSTANCE_ARN: The Amazon Resource Name (ARN) of the device
--         instance.
--
--     -   INSTANCE_LABELS: The label of the device instance.
--
--     -   FLEET_TYPE: The fleet type. Valid values are PUBLIC or PRIVATE.
--
-- -   Operator: The filter operator.
--
--     -   The EQUALS operator is available for every attribute except
--         INSTANCE_LABELS.
--
--     -   The CONTAINS operator is available for the INSTANCE_LABELS and
--         MODEL attributes.
--
--     -   The IN and NOT_IN operators are available for the ARN,
--         OS_VERSION, MODEL, MANUFACTURER, and INSTANCE_ARN attributes.
--
--     -   The LESS_THAN, GREATER_THAN, LESS_THAN_OR_EQUALS, and
--         GREATER_THAN_OR_EQUALS operators are also available for the
--         OS_VERSION attribute.
--
-- -   Values: An array of one or more filter values.
--
--     -   The IN and NOT_IN operators take a values array that has one or
--         more elements.
--
--     -   The other operators require an array with a single element.
--
--     -   In a request, the AVAILABILITY attribute takes the following
--         values: AVAILABLE, HIGHLY_AVAILABLE, BUSY, or
--         TEMPORARY_NOT_AVAILABLE.
listDevices_filters :: Lens.Lens' ListDevices (Prelude.Maybe [DeviceFilter])
listDevices_filters = Lens.lens (\ListDevices' {filters} -> filters) (\s@ListDevices' {} a -> s {filters = a} :: ListDevices) Prelude.. Lens.mapping Prelude._Coerce

instance Pager.AWSPager ListDevices where
  page rq rs
    | Pager.stop
        ( rs
            Lens.^? listDevicesResponse_nextToken Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Pager.stop
        ( rs
            Lens.^? listDevicesResponse_devices Prelude.. Lens._Just
        ) =
      Prelude.Nothing
    | Prelude.otherwise =
      Prelude.Just Prelude.$
        rq
          Lens.& listDevices_nextToken
          Lens..~ rs
          Lens.^? listDevicesResponse_nextToken Prelude.. Lens._Just

instance Prelude.AWSRequest ListDevices where
  type Rs ListDevices = ListDevicesResponse
  request = Request.postJSON defaultService
  response =
    Response.receiveJSON
      ( \s h x ->
          ListDevicesResponse'
            Prelude.<$> (x Prelude..?> "nextToken")
            Prelude.<*> (x Prelude..?> "devices" Prelude..!@ Prelude.mempty)
            Prelude.<*> (Prelude.pure (Prelude.fromEnum s))
      )

instance Prelude.Hashable ListDevices

instance Prelude.NFData ListDevices

instance Prelude.ToHeaders ListDevices where
  toHeaders =
    Prelude.const
      ( Prelude.mconcat
          [ "X-Amz-Target"
              Prelude.=# ( "DeviceFarm_20150623.ListDevices" ::
                             Prelude.ByteString
                         ),
            "Content-Type"
              Prelude.=# ( "application/x-amz-json-1.1" ::
                             Prelude.ByteString
                         )
          ]
      )

instance Prelude.ToJSON ListDevices where
  toJSON ListDevices' {..} =
    Prelude.object
      ( Prelude.catMaybes
          [ ("nextToken" Prelude..=) Prelude.<$> nextToken,
            ("arn" Prelude..=) Prelude.<$> arn,
            ("filters" Prelude..=) Prelude.<$> filters
          ]
      )

instance Prelude.ToPath ListDevices where
  toPath = Prelude.const "/"

instance Prelude.ToQuery ListDevices where
  toQuery = Prelude.const Prelude.mempty

-- | Represents the result of a list devices operation.
--
-- /See:/ 'newListDevicesResponse' smart constructor.
data ListDevicesResponse = ListDevicesResponse'
  { -- | If the number of items that are returned is significantly large, this is
    -- an identifier that is also returned. It can be used in a subsequent call
    -- to this operation to return the next set of items in the list.
    nextToken :: Prelude.Maybe Prelude.Text,
    -- | Information about the devices.
    devices :: Prelude.Maybe [Device],
    -- | The response's http status code.
    httpStatus :: Prelude.Int
  }
  deriving (Prelude.Eq, Prelude.Read, Prelude.Show, Prelude.Data, Prelude.Typeable, Prelude.Generic)

-- |
-- Create a value of 'ListDevicesResponse' with all optional fields omitted.
--
-- Use <https://hackage.haskell.org/package/generic-lens generic-lens> or <https://hackage.haskell.org/package/optics optics> to modify other optional fields.
--
-- The following record fields are available, with the corresponding lenses provided
-- for backwards compatibility:
--
-- 'nextToken', 'listDevicesResponse_nextToken' - If the number of items that are returned is significantly large, this is
-- an identifier that is also returned. It can be used in a subsequent call
-- to this operation to return the next set of items in the list.
--
-- 'devices', 'listDevicesResponse_devices' - Information about the devices.
--
-- 'httpStatus', 'listDevicesResponse_httpStatus' - The response's http status code.
newListDevicesResponse ::
  -- | 'httpStatus'
  Prelude.Int ->
  ListDevicesResponse
newListDevicesResponse pHttpStatus_ =
  ListDevicesResponse'
    { nextToken = Prelude.Nothing,
      devices = Prelude.Nothing,
      httpStatus = pHttpStatus_
    }

-- | If the number of items that are returned is significantly large, this is
-- an identifier that is also returned. It can be used in a subsequent call
-- to this operation to return the next set of items in the list.
listDevicesResponse_nextToken :: Lens.Lens' ListDevicesResponse (Prelude.Maybe Prelude.Text)
listDevicesResponse_nextToken = Lens.lens (\ListDevicesResponse' {nextToken} -> nextToken) (\s@ListDevicesResponse' {} a -> s {nextToken = a} :: ListDevicesResponse)

-- | Information about the devices.
listDevicesResponse_devices :: Lens.Lens' ListDevicesResponse (Prelude.Maybe [Device])
listDevicesResponse_devices = Lens.lens (\ListDevicesResponse' {devices} -> devices) (\s@ListDevicesResponse' {} a -> s {devices = a} :: ListDevicesResponse) Prelude.. Lens.mapping Prelude._Coerce

-- | The response's http status code.
listDevicesResponse_httpStatus :: Lens.Lens' ListDevicesResponse Prelude.Int
listDevicesResponse_httpStatus = Lens.lens (\ListDevicesResponse' {httpStatus} -> httpStatus) (\s@ListDevicesResponse' {} a -> s {httpStatus = a} :: ListDevicesResponse)

instance Prelude.NFData ListDevicesResponse
