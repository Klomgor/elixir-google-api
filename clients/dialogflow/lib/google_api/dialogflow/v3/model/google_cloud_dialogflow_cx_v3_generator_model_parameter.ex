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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3GeneratorModelParameter do
  @moduledoc """
  Parameters to be passed to the LLM. If not set, default values will be used.

  ## Attributes

  *   `maxDecodeSteps` (*type:* `integer()`, *default:* `nil`) - The maximum number of tokens to generate.
  *   `temperature` (*type:* `number()`, *default:* `nil`) - The temperature used for sampling. Temperature sampling occurs after both topP and topK have been applied. Valid range: [0.0, 1.0] Low temperature = less random. High temperature = more random.
  *   `topK` (*type:* `integer()`, *default:* `nil`) - If set, the sampling process in each step is limited to the top_k tokens with highest probabilities. Valid range: [1, 40] or 1000+. Small topK = less random. Large topK = more random.
  *   `topP` (*type:* `number()`, *default:* `nil`) - If set, only the tokens comprising the top top_p probability mass are considered. If both top_p and top_k are set, top_p will be used for further refining candidates selected with top_k. Valid range: (0.0, 1.0]. Small topP = less random. Large topP = more random.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxDecodeSteps => integer() | nil,
          :temperature => number() | nil,
          :topK => integer() | nil,
          :topP => number() | nil
        }

  field(:maxDecodeSteps)
  field(:temperature)
  field(:topK)
  field(:topP)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3GeneratorModelParameter do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3GeneratorModelParameter.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3GeneratorModelParameter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
