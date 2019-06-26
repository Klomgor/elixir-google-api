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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessage do
  @moduledoc """
  Corresponds to the `Response` field in the Dialogflow console.

  ## Attributes

  *   `basicCard` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageBasicCard.t`, *default:* `nil`) - Displays a basic card for Actions on Google.
  *   `card` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageCard.t`, *default:* `nil`) - Displays a card.
  *   `carouselSelect` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect.t`, *default:* `nil`) - Displays a carousel card for Actions on Google.
  *   `image` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageImage.t`, *default:* `nil`) - Displays an image.
  *   `linkOutSuggestion` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion.t`, *default:* `nil`) - Displays a link out suggestion chip for Actions on Google.
  *   `listSelect` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageListSelect.t`, *default:* `nil`) - Displays a list card for Actions on Google.
  *   `payload` (*type:* `map()`, *default:* `nil`) - Returns a response containing a custom, platform-specific payload.
      See the Intent.Message.Platform type for a description of the
      structure that may be required for your platform.
  *   `platform` (*type:* `String.t`, *default:* `nil`) - Optional. The platform that this message is intended for.
  *   `quickReplies` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageQuickReplies.t`, *default:* `nil`) - Displays quick replies.
  *   `simpleResponses` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses.t`, *default:* `nil`) - Returns a voice or text-only response for Actions on Google.
  *   `suggestions` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageSuggestions.t`, *default:* `nil`) - Displays suggestion chips for Actions on Google.
  *   `telephonyPlayAudio` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio.t`, *default:* `nil`) - Plays audio from a file in Telephony Gateway.
  *   `telephonySynthesizeSpeech` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech.t`, *default:* `nil`) - Synthesizes speech in Telephony Gateway.
  *   `telephonyTransferCall` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall.t`, *default:* `nil`) - Transfers the call in Telephony Gateway.
  *   `text` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageText.t`, *default:* `nil`) - Returns a text response.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :basicCard =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageBasicCard.t(),
          :card =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageCard.t(),
          :carouselSelect =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect.t(),
          :image =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageImage.t(),
          :linkOutSuggestion =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion.t(),
          :listSelect =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageListSelect.t(),
          :payload => map(),
          :platform => String.t(),
          :quickReplies =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageQuickReplies.t(),
          :simpleResponses =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses.t(),
          :suggestions =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageSuggestions.t(),
          :telephonyPlayAudio =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio.t(),
          :telephonySynthesizeSpeech =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech.t(),
          :telephonyTransferCall =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall.t(),
          :text => GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageText.t()
        }

  field(
    :basicCard,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageBasicCard
  )

  field(:card, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageCard)

  field(
    :carouselSelect,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageCarouselSelect
  )

  field(:image, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageImage)

  field(
    :linkOutSuggestion,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageLinkOutSuggestion
  )

  field(
    :listSelect,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageListSelect
  )

  field(:payload, type: :map)
  field(:platform)

  field(
    :quickReplies,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageQuickReplies
  )

  field(
    :simpleResponses,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageSimpleResponses
  )

  field(
    :suggestions,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageSuggestions
  )

  field(
    :telephonyPlayAudio,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageTelephonyPlayAudio
  )

  field(
    :telephonySynthesizeSpeech,
    as:
      GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageTelephonySynthesizeSpeech
  )

  field(
    :telephonyTransferCall,
    as:
      GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageTelephonyTransferCall
  )

  field(:text, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessageText)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessage do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessage.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1IntentMessage do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
