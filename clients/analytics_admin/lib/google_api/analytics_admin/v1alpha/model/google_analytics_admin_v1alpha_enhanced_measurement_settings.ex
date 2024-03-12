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

defmodule GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings do
  @moduledoc """
  Singleton resource under a web DataStream, configuring measurement of additional site interactions and content.

  ## Attributes

  *   `fileDownloadsEnabled` (*type:* `boolean()`, *default:* `nil`) - If enabled, capture a file download event each time a link is clicked with a common document, compressed file, application, video, or audio extension.
  *   `formInteractionsEnabled` (*type:* `boolean()`, *default:* `nil`) - If enabled, capture a form interaction event each time a visitor interacts with a form on your website. False by default.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Resource name of the Enhanced Measurement Settings. Format: properties/{property_id}/dataStreams/{data_stream}/enhancedMeasurementSettings Example: "properties/1000/dataStreams/2000/enhancedMeasurementSettings"
  *   `outboundClicksEnabled` (*type:* `boolean()`, *default:* `nil`) - If enabled, capture an outbound click event each time a visitor clicks a link that leads them away from your domain.
  *   `pageChangesEnabled` (*type:* `boolean()`, *default:* `nil`) - If enabled, capture a page view event each time the website changes the browser history state.
  *   `scrollsEnabled` (*type:* `boolean()`, *default:* `nil`) - If enabled, capture scroll events each time a visitor gets to the bottom of a page.
  *   `searchQueryParameter` (*type:* `String.t`, *default:* `nil`) - Required. URL query parameters to interpret as site search parameters. Max length is 1024 characters. Must not be empty.
  *   `siteSearchEnabled` (*type:* `boolean()`, *default:* `nil`) - If enabled, capture a view search results event each time a visitor performs a search on your site (based on a query parameter).
  *   `streamEnabled` (*type:* `boolean()`, *default:* `nil`) - Indicates whether Enhanced Measurement Settings will be used to automatically measure interactions and content on this web stream. Changing this value does not affect the settings themselves, but determines whether they are respected.
  *   `uriQueryParameter` (*type:* `String.t`, *default:* `nil`) - Additional URL query parameters. Max length is 1024 characters.
  *   `videoEngagementEnabled` (*type:* `boolean()`, *default:* `nil`) - If enabled, capture video play, progress, and complete events as visitors view embedded videos on your site.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fileDownloadsEnabled => boolean() | nil,
          :formInteractionsEnabled => boolean() | nil,
          :name => String.t() | nil,
          :outboundClicksEnabled => boolean() | nil,
          :pageChangesEnabled => boolean() | nil,
          :scrollsEnabled => boolean() | nil,
          :searchQueryParameter => String.t() | nil,
          :siteSearchEnabled => boolean() | nil,
          :streamEnabled => boolean() | nil,
          :uriQueryParameter => String.t() | nil,
          :videoEngagementEnabled => boolean() | nil
        }

  field(:fileDownloadsEnabled)
  field(:formInteractionsEnabled)
  field(:name)
  field(:outboundClicksEnabled)
  field(:pageChangesEnabled)
  field(:scrollsEnabled)
  field(:searchQueryParameter)
  field(:siteSearchEnabled)
  field(:streamEnabled)
  field(:uriQueryParameter)
  field(:videoEngagementEnabled)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings do
  def decode(value, options) do
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaEnhancedMeasurementSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end