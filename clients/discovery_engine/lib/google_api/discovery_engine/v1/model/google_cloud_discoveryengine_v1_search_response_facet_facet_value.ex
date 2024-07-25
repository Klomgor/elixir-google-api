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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchResponseFacetFacetValue do
  @moduledoc """
  A facet value which contains value names and their count.

  ## Attributes

  *   `count` (*type:* `String.t`, *default:* `nil`) - Number of items that have this facet value.
  *   `interval` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1Interval.t`, *default:* `nil`) - Interval value for a facet, such as 10, 20) for facet "price". It matches [SearchRequest.FacetSpec.FacetKey.intervals.
  *   `value` (*type:* `String.t`, *default:* `nil`) - Text value of a facet, such as "Black" for facet "colors".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :count => String.t() | nil,
          :interval =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1Interval.t() | nil,
          :value => String.t() | nil
        }

  field(:count)
  field(:interval, as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1Interval)
  field(:value)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchResponseFacetFacetValue do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchResponseFacetFacetValue.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchResponseFacetFacetValue do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
