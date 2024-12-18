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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CheckGroundingResponse do
  @moduledoc """
  Response message for the GroundedGenerationService.CheckGrounding method.

  ## Attributes

  *   `citedChunks` (*type:* `list(GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1FactChunk.t)`, *default:* `nil`) - List of facts cited across all claims in the answer candidate. These are derived from the facts supplied in the request.
  *   `citedFacts` (*type:* `list(GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CheckGroundingResponseCheckGroundingFactChunk.t)`, *default:* `nil`) - List of facts cited across all claims in the answer candidate. These are derived from the facts supplied in the request.
  *   `claims` (*type:* `list(GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CheckGroundingResponseClaim.t)`, *default:* `nil`) - Claim texts and citation info across all claims in the answer candidate.
  *   `supportScore` (*type:* `number()`, *default:* `nil`) - The support score for the input answer candidate. Higher the score, higher is the fraction of claims that are supported by the provided facts. This is always set when a response is returned.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :citedChunks =>
            list(GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1FactChunk.t())
            | nil,
          :citedFacts =>
            list(
              GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CheckGroundingResponseCheckGroundingFactChunk.t()
            )
            | nil,
          :claims =>
            list(
              GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CheckGroundingResponseClaim.t()
            )
            | nil,
          :supportScore => number() | nil
        }

  field(:citedChunks,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1FactChunk,
    type: :list
  )

  field(:citedFacts,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CheckGroundingResponseCheckGroundingFactChunk,
    type: :list
  )

  field(:claims,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CheckGroundingResponseClaim,
    type: :list
  )

  field(:supportScore)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CheckGroundingResponse do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CheckGroundingResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CheckGroundingResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
