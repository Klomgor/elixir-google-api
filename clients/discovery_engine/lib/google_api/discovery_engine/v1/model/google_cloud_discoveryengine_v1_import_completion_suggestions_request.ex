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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsRequest do
  @moduledoc """
  Request message for CompletionService.ImportCompletionSuggestions method.

  ## Attributes

  *   `bigquerySource` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1BigQuerySource.t`, *default:* `nil`) - BigQuery input source.
  *   `errorConfig` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1ImportErrorConfig.t`, *default:* `nil`) - The desired location of errors incurred during the Import.
  *   `gcsSource` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1GcsSource.t`, *default:* `nil`) - Cloud Storage location for the input content.
  *   `inlineSource` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsRequestInlineSource.t`, *default:* `nil`) - The Inline source for suggestion entries.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bigquerySource =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1BigQuerySource.t()
            | nil,
          :errorConfig =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1ImportErrorConfig.t()
            | nil,
          :gcsSource =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1GcsSource.t() | nil,
          :inlineSource =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsRequestInlineSource.t()
            | nil
        }

  field(:bigquerySource,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1BigQuerySource
  )

  field(:errorConfig,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1ImportErrorConfig
  )

  field(:gcsSource, as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1GcsSource)

  field(:inlineSource,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsRequestInlineSource
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsRequest do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1ImportCompletionSuggestionsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
