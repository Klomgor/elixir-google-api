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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Generator do
  @moduledoc """
  Generators contain prompt to be sent to the LLM model to generate text. The prompt can contain parameters which will be resolved before calling the model. It can optionally contain banned phrases to ensure the model responses are safe.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The human-readable name of the generator, unique within the agent. The prompt contains pre-defined parameters such as $conversation, $last-user-utterance, etc. populated by Dialogflow. It can also contain custom placeholders which will be resolved during fulfillment.
  *   `modelParameter` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3GeneratorModelParameter.t`, *default:* `nil`) - Parameters passed to the LLM to configure its behavior.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The unique identifier of the generator. Must be set for the Generators.UpdateGenerator method. Generators.CreateGenerate populates the name automatically. Format: `projects//locations//agents//generators/`.
  *   `placeholders` (*type:* `list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3GeneratorPlaceholder.t)`, *default:* `nil`) - Optional. List of custom placeholders in the prompt text.
  *   `promptText` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Phrase.t`, *default:* `nil`) - Required. Prompt for the LLM model.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :modelParameter =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3GeneratorModelParameter.t()
            | nil,
          :name => String.t() | nil,
          :placeholders =>
            list(GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3GeneratorPlaceholder.t())
            | nil,
          :promptText => GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Phrase.t() | nil
        }

  field(:displayName)

  field(:modelParameter,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3GeneratorModelParameter
  )

  field(:name)

  field(:placeholders,
    as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3GeneratorPlaceholder,
    type: :list
  )

  field(:promptText, as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Phrase)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Generator do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Generator.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Generator do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
