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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1ConverseConversationResponse do
  @moduledoc """
  Response message for ConversationalSearchService.ConverseConversation method.

  ## Attributes

  *   `conversation` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1Conversation.t`, *default:* `nil`) - Updated conversation including the answer.
  *   `reply` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1Reply.t`, *default:* `nil`) - Answer to the current query.
  *   `searchResults` (*type:* `list(GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchResponseSearchResult.t)`, *default:* `nil`) - Search Results.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conversation =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1Conversation.t() | nil,
          :reply =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1Reply.t() | nil,
          :searchResults =>
            list(
              GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchResponseSearchResult.t()
            )
            | nil
        }

  field(:conversation,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1Conversation
  )

  field(:reply, as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1Reply)

  field(:searchResults,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1SearchResponseSearchResult,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1ConverseConversationResponse do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1ConverseConversationResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1ConverseConversationResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
