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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResult do
  @moduledoc """


  ## Attributes

  *   `chunkInfo` (*type:* `list(GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResultChunkInfo.t)`, *default:* `nil`) - If citation_type is CHUNK_LEVEL_CITATION and chunk mode is on, populate chunk info.
  *   `document` (*type:* `String.t`, *default:* `nil`) - Document resource name.
  *   `snippetInfo` (*type:* `list(GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResultSnippetInfo.t)`, *default:* `nil`) - If citation_type is DOCUMENT_LEVEL_CITATION, populate document level snippets.
  *   `structData` (*type:* `map()`, *default:* `nil`) - Data representation. The structured JSON data for the document. It's populated from the struct data from the Document , or the Chunk in search result .
  *   `title` (*type:* `String.t`, *default:* `nil`) - Title.
  *   `uri` (*type:* `String.t`, *default:* `nil`) - URI for the document.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :chunkInfo =>
            list(
              GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResultChunkInfo.t()
            )
            | nil,
          :document => String.t() | nil,
          :snippetInfo =>
            list(
              GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResultSnippetInfo.t()
            )
            | nil,
          :structData => map() | nil,
          :title => String.t() | nil,
          :uri => String.t() | nil
        }

  field(:chunkInfo,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResultChunkInfo,
    type: :list
  )

  field(:document)

  field(:snippetInfo,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResultSnippetInfo,
    type: :list
  )

  field(:structData, type: :map)
  field(:title)
  field(:uri)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResult do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResult.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1AnswerStepActionObservationSearchResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
