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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TurnSignals do
  @moduledoc """
  Collection of all signals that were extracted for a single turn of the conversation.

  ## Attributes

  *   `agentEscalated` (*type:* `boolean()`, *default:* `nil`) - Whether agent responded with LiveAgentHandoff fulfillment.
  *   `dtmfUsed` (*type:* `boolean()`, *default:* `nil`) - Whether user was using DTMF input.
  *   `failureReasons` (*type:* `list(String.t)`, *default:* `nil`) - Failure reasons of the turn.
  *   `noMatch` (*type:* `boolean()`, *default:* `nil`) - Whether NLU predicted NO_MATCH.
  *   `noUserInput` (*type:* `boolean()`, *default:* `nil`) - Whether user provided no input.
  *   `reachedEndPage` (*type:* `boolean()`, *default:* `nil`) - Whether turn resulted in End Session page.
  *   `sentimentMagnitude` (*type:* `number()`, *default:* `nil`) - Sentiment magnitude of the user utterance if [sentiment](https://cloud.google.com/dialogflow/cx/docs/concept/sentiment) was enabled.
  *   `sentimentScore` (*type:* `number()`, *default:* `nil`) - Sentiment score of the user utterance if [sentiment](https://cloud.google.com/dialogflow/cx/docs/concept/sentiment) was enabled.
  *   `userEscalated` (*type:* `boolean()`, *default:* `nil`) - Whether user was specifically asking for a live agent.
  *   `webhookStatuses` (*type:* `list(String.t)`, *default:* `nil`) - Human-readable statuses of the webhooks triggered during this turn.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :agentEscalated => boolean() | nil,
          :dtmfUsed => boolean() | nil,
          :failureReasons => list(String.t()) | nil,
          :noMatch => boolean() | nil,
          :noUserInput => boolean() | nil,
          :reachedEndPage => boolean() | nil,
          :sentimentMagnitude => number() | nil,
          :sentimentScore => number() | nil,
          :userEscalated => boolean() | nil,
          :webhookStatuses => list(String.t()) | nil
        }

  field(:agentEscalated)
  field(:dtmfUsed)
  field(:failureReasons, type: :list)
  field(:noMatch)
  field(:noUserInput)
  field(:reachedEndPage)
  field(:sentimentMagnitude)
  field(:sentimentScore)
  field(:userEscalated)
  field(:webhookStatuses, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TurnSignals do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TurnSignals.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3TurnSignals do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end