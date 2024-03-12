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

defmodule GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1UploadConversationMetadata do
  @moduledoc """
  The metadata for an UploadConversation operation.

  ## Attributes

  *   `analysisOperation` (*type:* `String.t`, *default:* `nil`) - Output only. The operation name for a successfully created analysis operation, if any.
  *   `appliedRedactionConfig` (*type:* `GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1RedactionConfig.t`, *default:* `nil`) - Output only. The redaction config applied to the uploaded conversation.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the operation was created.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the operation finished running.
  *   `request` (*type:* `GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1UploadConversationRequest.t`, *default:* `nil`) - Output only. The original request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :analysisOperation => String.t() | nil,
          :appliedRedactionConfig =>
            GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1RedactionConfig.t()
            | nil,
          :createTime => DateTime.t() | nil,
          :endTime => DateTime.t() | nil,
          :request =>
            GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1UploadConversationRequest.t()
            | nil
        }

  field(:analysisOperation)

  field(:appliedRedactionConfig,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1RedactionConfig
  )

  field(:createTime, as: DateTime)
  field(:endTime, as: DateTime)

  field(:request,
    as:
      GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1UploadConversationRequest
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1UploadConversationMetadata do
  def decode(value, options) do
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1UploadConversationMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContactCenterInsights.V1.Model.GoogleCloudContactcenterinsightsV1alpha1UploadConversationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end