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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec do
  @moduledoc """
  Boost specification to boost certain documents.

  ## Attributes

  *   `conditionBoostSpecs` (*type:* `list(GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpec.t)`, *default:* `nil`) - Condition boost specifications. If a document matches multiple conditions in the specifications, boost scores from these specifications are all applied and combined in a non-linear way. Maximum number of specifications is 20.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conditionBoostSpecs =>
            list(
              GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpec.t()
            )
            | nil
        }

  field(:conditionBoostSpecs,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpecConditionBoostSpec,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
