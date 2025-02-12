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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaSearchRequestNaturalLanguageQueryUnderstandingSpec do
  @moduledoc """
  Specification to enable natural language understanding capabilities for search requests.

  ## Attributes

  *   `filterExtractionCondition` (*type:* `String.t`, *default:* `nil`) - The condition under which filter extraction should occur. Server behavior defaults to `DISABLED`.
  *   `geoSearchQueryDetectionFieldNames` (*type:* `list(String.t)`, *default:* `nil`) - Field names used for location-based filtering, where geolocation filters are detected in natural language search queries. Only valid when the FilterExtractionCondition is set to `ENABLED`. If this field is set, it overrides the field names set in ServingConfig.geo_search_query_detection_field_names.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :filterExtractionCondition => String.t() | nil,
          :geoSearchQueryDetectionFieldNames => list(String.t()) | nil
        }

  field(:filterExtractionCondition)
  field(:geoSearchQueryDetectionFieldNames, type: :list)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaSearchRequestNaturalLanguageQueryUnderstandingSpec do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaSearchRequestNaturalLanguageQueryUnderstandingSpec.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaSearchRequestNaturalLanguageQueryUnderstandingSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
