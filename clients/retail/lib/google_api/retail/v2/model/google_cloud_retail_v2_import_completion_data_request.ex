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

defmodule GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ImportCompletionDataRequest do
  @moduledoc """
  Request message for ImportCompletionData methods.

  ## Attributes

  *   `inputConfig` (*type:* `GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CompletionDataInputConfig.t`, *default:* `nil`) - Required. The desired input location of the data.
  *   `notificationPubsubTopic` (*type:* `String.t`, *default:* `nil`) - Pub/Sub topic for receiving notification. If this field is set, when the import is finished, a notification will be sent to specified Pub/Sub topic. The message data will be JSON string of a Operation. Format of the Pub/Sub topic is `projects/{project}/topics/{topic}`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :inputConfig =>
            GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CompletionDataInputConfig.t() | nil,
          :notificationPubsubTopic => String.t() | nil
        }

  field(:inputConfig, as: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2CompletionDataInputConfig)
  field(:notificationPubsubTopic)
end

defimpl Poison.Decoder,
  for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ImportCompletionDataRequest do
  def decode(value, options) do
    GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ImportCompletionDataRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2ImportCompletionDataRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end