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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RagEmbeddingModelConfig do
  @moduledoc """
  Config for the embedding model to use for RAG.

  ## Attributes

  *   `vertexPredictionEndpoint` (*type:* `GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RagEmbeddingModelConfigVertexPredictionEndpoint.t`, *default:* `nil`) - The Vertex AI Prediction Endpoint that either refers to a publisher model or an endpoint that is hosting a 1P fine-tuned text embedding model. Endpoints hosting non-1P fine-tuned text embedding models are currently not supported. This is used for dense vector search.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :vertexPredictionEndpoint =>
            GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RagEmbeddingModelConfigVertexPredictionEndpoint.t()
            | nil
        }

  field(:vertexPredictionEndpoint,
    as:
      GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RagEmbeddingModelConfigVertexPredictionEndpoint
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RagEmbeddingModelConfig do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RagEmbeddingModelConfig.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1RagEmbeddingModelConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
