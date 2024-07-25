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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaImportCompletionSuggestionsResponse do
  @moduledoc """
  Response of the CompletionService.ImportCompletionSuggestions method. If the long running operation is done, this message is returned by the google.longrunning.Operations.response field if the operation is successful.

  ## Attributes

  *   `errorConfig` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaImportErrorConfig.t`, *default:* `nil`) - The desired location of errors incurred during the Import.
  *   `errorSamples` (*type:* `list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleRpcStatus.t)`, *default:* `nil`) - A sample of errors encountered while processing the request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errorConfig =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaImportErrorConfig.t()
            | nil,
          :errorSamples => list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleRpcStatus.t()) | nil
        }

  field(:errorConfig,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaImportErrorConfig
  )

  field(:errorSamples, as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleRpcStatus, type: :list)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaImportCompletionSuggestionsResponse do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaImportCompletionSuggestionsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaImportCompletionSuggestionsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
