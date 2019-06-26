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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2BatchUpdateIntentsRequest do
  @moduledoc """
  The request message for Intents.BatchUpdateIntents.

  ## Attributes

  *   `intentBatchInline` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentBatch.t`, *default:* `nil`) - The collection of intents to update or create.
  *   `intentBatchUri` (*type:* `String.t`, *default:* `nil`) - The URI to a Google Cloud Storage file containing intents to update or
      create. The file format can either be a serialized proto (of IntentBatch
      type) or JSON object. Note: The URI must start with "gs://".
  *   `intentView` (*type:* `String.t`, *default:* `nil`) - Optional. The resource view to apply to the returned intent.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - Optional. The language of training phrases, parameters and rich messages
      defined in `intents`. If not specified, the agent's default language is
      used. [Many
      languages](https://cloud.google.com/dialogflow/docs/reference/language)
      are supported. Note: languages must be enabled in the agent before they can
      be used.
  *   `updateMask` (*type:* `String.t`, *default:* `nil`) - Optional. The mask to control which fields get updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :intentBatchInline =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentBatch.t(),
          :intentBatchUri => String.t(),
          :intentView => String.t(),
          :languageCode => String.t(),
          :updateMask => String.t()
        }

  field(:intentBatchInline, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2IntentBatch)
  field(:intentBatchUri)
  field(:intentView)
  field(:languageCode)
  field(:updateMask)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2BatchUpdateIntentsRequest do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2BatchUpdateIntentsRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2BatchUpdateIntentsRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
