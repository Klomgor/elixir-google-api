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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaAnswerQueryRequestAnswerGenerationSpec do
  @moduledoc """
  Answer generation specification.

  ## Attributes

  *   `answerLanguageCode` (*type:* `String.t`, *default:* `nil`) - Language code for Answer. Use language tags defined by [BCP47](https://www.rfc-editor.org/rfc/bcp/bcp47.txt). Note: This is an experimental feature.
  *   `ignoreAdversarialQuery` (*type:* `boolean()`, *default:* `nil`) - Specifies whether to filter out adversarial queries. The default value is `false`. Google employs search-query classification to detect adversarial queries. No answer is returned if the search query is classified as an adversarial query. For example, a user might ask a question regarding negative comments about the company or submit a query designed to generate unsafe, policy-violating output. If this field is set to `true`, we skip generating answers for adversarial queries and return fallback messages instead.
  *   `ignoreLowRelevantContent` (*type:* `boolean()`, *default:* `nil`) - Specifies whether to filter out queries that have low relevance. If this field is set to `false`, all search results are used regardless of relevance to generate answers. If set to `true` or unset, the behavior will be determined automatically by the service.
  *   `ignoreNonAnswerSeekingQuery` (*type:* `boolean()`, *default:* `nil`) - Specifies whether to filter out queries that are not answer-seeking. The default value is `false`. Google employs search-query classification to detect answer-seeking queries. No answer is returned if the search query is classified as a non-answer seeking query. If this field is set to `true`, we skip generating answers for non-answer seeking queries and return fallback messages instead.
  *   `includeCitations` (*type:* `boolean()`, *default:* `nil`) - Specifies whether to include citation metadata in the answer. The default value is `false`.
  *   `modelSpec` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaAnswerQueryRequestAnswerGenerationSpecModelSpec.t`, *default:* `nil`) - Answer generation model specification.
  *   `promptSpec` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaAnswerQueryRequestAnswerGenerationSpecPromptSpec.t`, *default:* `nil`) - Answer generation prompt specification.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :answerLanguageCode => String.t() | nil,
          :ignoreAdversarialQuery => boolean() | nil,
          :ignoreLowRelevantContent => boolean() | nil,
          :ignoreNonAnswerSeekingQuery => boolean() | nil,
          :includeCitations => boolean() | nil,
          :modelSpec =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaAnswerQueryRequestAnswerGenerationSpecModelSpec.t()
            | nil,
          :promptSpec =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaAnswerQueryRequestAnswerGenerationSpecPromptSpec.t()
            | nil
        }

  field(:answerLanguageCode)
  field(:ignoreAdversarialQuery)
  field(:ignoreLowRelevantContent)
  field(:ignoreNonAnswerSeekingQuery)
  field(:includeCitations)

  field(:modelSpec,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaAnswerQueryRequestAnswerGenerationSpecModelSpec
  )

  field(:promptSpec,
    as:
      GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaAnswerQueryRequestAnswerGenerationSpecPromptSpec
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaAnswerQueryRequestAnswerGenerationSpec do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaAnswerQueryRequestAnswerGenerationSpec.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaAnswerQueryRequestAnswerGenerationSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
