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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpec do
  @moduledoc """
  The specification that uses customized query embedding vector to do semantic document retrieval.

  ## Attributes

  *   `embeddingVectors` (*type:* `list(GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpecEmbeddingVector.t)`, *default:* `nil`) - The embedding vector used for retrieval. Limit to 1.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :embeddingVectors =>
            list(
              GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpecEmbeddingVector.t()
            )
            | nil
        }

  field(:embeddingVectors,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpecEmbeddingVector,
    type: :list
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpec do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpec.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
