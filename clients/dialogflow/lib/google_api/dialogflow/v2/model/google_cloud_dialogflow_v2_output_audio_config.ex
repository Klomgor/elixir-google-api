# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2OutputAudioConfig do
  @moduledoc """
  Instructs the speech synthesizer on how to generate the output audio content.

  ## Attributes

  *   `audioEncoding` (*type:* `String.t`, *default:* `nil`) - Required. Audio encoding of the synthesized audio content.
  *   `sampleRateHertz` (*type:* `integer()`, *default:* `nil`) - Optional. The synthesis sample rate (in hertz) for this audio. If not
      provided, then the synthesizer will use the default sample rate based on
      the audio encoding. If this is different from the voice's natural sample
      rate, then the synthesizer will honor this request by converting to the
      desired sample rate (which might result in worse audio quality).
  *   `synthesizeSpeechConfig` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SynthesizeSpeechConfig.t`, *default:* `nil`) - Optional. Configuration of how speech should be synthesized.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :audioEncoding => String.t(),
          :sampleRateHertz => integer(),
          :synthesizeSpeechConfig =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SynthesizeSpeechConfig.t()
        }

  field(:audioEncoding)
  field(:sampleRateHertz)

  field(
    :synthesizeSpeechConfig,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2SynthesizeSpeechConfig
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2OutputAudioConfig do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2OutputAudioConfig.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2OutputAudioConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
