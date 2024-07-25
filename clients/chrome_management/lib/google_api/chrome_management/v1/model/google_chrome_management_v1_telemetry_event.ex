# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryEvent do
  @moduledoc """
  Telemetry data reported by a managed device.

  ## Attributes

  *   `appInstallEvent` (*type:* `GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryAppInstallEvent.t`, *default:* `nil`) - Output only. Payload for app install event. Present only when `event_type` is `APP_INSTALLED`.
  *   `appLaunchEvent` (*type:* `GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryAppLaunchEvent.t`, *default:* `nil`) - Output only. Payload for app launch event.Present only when `event_type` is `APP_LAUNCHED`.
  *   `appUninstallEvent` (*type:* `GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryAppUninstallEvent.t`, *default:* `nil`) - Output only. Payload for app uninstall event. Present only when `event_type` is `APP_UNINSTALLED`.
  *   `audioSevereUnderrunEvent` (*type:* `GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent.t`, *default:* `nil`) - Output only. Payload for audio severe underrun event. Present only when the `event_type` field is `AUDIO_SEVERE_UNDERRUN`.
  *   `device` (*type:* `GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryDeviceInfo.t`, *default:* `nil`) - Output only. Information about the device associated with the event.
  *   `eventType` (*type:* `String.t`, *default:* `nil`) - The event type of the current event.
  *   `httpsLatencyChangeEvent` (*type:* `GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent.t`, *default:* `nil`) - Output only. Payload for HTTPS latency change event. Present only when `event_type` is `NETWORK_HTTPS_LATENCY_CHANGE`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Resource name of the event.
  *   `networkStateChangeEvent` (*type:* `GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent.t`, *default:* `nil`) - Output only. Payload for network connection state change event. Present only when `event_type` is `NETWORK_STATE_CHANGE`.
  *   `reportTime` (*type:* `DateTime.t`, *default:* `nil`) - Timestamp that represents when the event was reported.
  *   `usbPeripheralsEvent` (*type:* `GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryUsbPeripheralsEvent.t`, *default:* `nil`) - Output only. Payload for usb peripherals event. Present only when the `event_type` field is either `USB_ADDED` or `USB_REMOVED`.
  *   `user` (*type:* `GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryUserInfo.t`, *default:* `nil`) - Output only. Information about the user associated with the event.
  *   `vpnConnectionStateChangeEvent` (*type:* `GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent.t`, *default:* `nil`) - Output only. Payload for VPN connection state change event. Present only when `event_type` is `VPN_CONNECTION_STATE_CHANGE`.
  *   `wifiSignalStrengthEvent` (*type:* `GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent.t`, *default:* `nil`) - Output only. Payload for WiFi signal strength events. Present only when `event_type` is `WIFI_SIGNAL_STRENGTH_LOW` or `WIFI_SIGNAL_STRENGTH_RECOVERED`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appInstallEvent =>
            GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryAppInstallEvent.t()
            | nil,
          :appLaunchEvent =>
            GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryAppLaunchEvent.t()
            | nil,
          :appUninstallEvent =>
            GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryAppUninstallEvent.t()
            | nil,
          :audioSevereUnderrunEvent =>
            GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent.t()
            | nil,
          :device =>
            GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryDeviceInfo.t()
            | nil,
          :eventType => String.t() | nil,
          :httpsLatencyChangeEvent =>
            GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent.t()
            | nil,
          :name => String.t() | nil,
          :networkStateChangeEvent =>
            GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent.t()
            | nil,
          :reportTime => DateTime.t() | nil,
          :usbPeripheralsEvent =>
            GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryUsbPeripheralsEvent.t()
            | nil,
          :user =>
            GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryUserInfo.t()
            | nil,
          :vpnConnectionStateChangeEvent =>
            GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent.t()
            | nil,
          :wifiSignalStrengthEvent =>
            GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent.t()
            | nil
        }

  field(:appInstallEvent,
    as: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryAppInstallEvent
  )

  field(:appLaunchEvent,
    as: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryAppLaunchEvent
  )

  field(:appUninstallEvent,
    as: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryAppUninstallEvent
  )

  field(:audioSevereUnderrunEvent,
    as:
      GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryAudioSevereUnderrunEvent
  )

  field(:device,
    as: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryDeviceInfo
  )

  field(:eventType)

  field(:httpsLatencyChangeEvent,
    as:
      GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryHttpsLatencyChangeEvent
  )

  field(:name)

  field(:networkStateChangeEvent,
    as:
      GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent
  )

  field(:reportTime, as: DateTime)

  field(:usbPeripheralsEvent,
    as: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryUsbPeripheralsEvent
  )

  field(:user, as: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryUserInfo)

  field(:vpnConnectionStateChangeEvent,
    as:
      GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryNetworkConnectionStateChangeEvent
  )

  field(:wifiSignalStrengthEvent,
    as:
      GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryNetworkSignalStrengthEvent
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryEvent do
  def decode(value, options) do
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryEvent.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementV1TelemetryEvent do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
