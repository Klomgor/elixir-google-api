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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CompleteQueryResponse do
  @moduledoc """
  Response message for CompletionService.CompleteQuery method.

  ## Attributes

  *   `querySuggestions` (*type:* `list(GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CompleteQueryResponseQuerySuggestion.t)`, *default:* `nil`) - Results of the matched query suggestions. The result list is ordered and the first result is a top suggestion.
  *   `tailMatchTriggered` (*type:* `boolean()`, *default:* `nil`) - True if the returned suggestions are all tail suggestions. For tail matching to be triggered, include_tail_suggestions in the request must be true and there must be no suggestions that match the full query.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :querySuggestions =>
            list(
              GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CompleteQueryResponseQuerySuggestion.t()
            )
            | nil,
          :tailMatchTriggered => boolean() | nil
        }

  field(:querySuggestions,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CompleteQueryResponseQuerySuggestion,
    type: :list
  )

  field(:tailMatchTriggered)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CompleteQueryResponse do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CompleteQueryResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1CompleteQueryResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
