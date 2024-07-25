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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaTrainCustomModelResponse do
  @moduledoc """
  Response of the TrainCustomModelRequest. This message is returned by the google.longrunning.Operations.response field.

  ## Attributes

  *   `errorConfig` (*type:* `GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaImportErrorConfig.t`, *default:* `nil`) - Echoes the destination for the complete errors in the request if set.
  *   `errorSamples` (*type:* `list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleRpcStatus.t)`, *default:* `nil`) - A sample of errors encountered while processing the data.
  *   `metrics` (*type:* `map()`, *default:* `nil`) - The metrics of the trained model.
  *   `modelName` (*type:* `String.t`, *default:* `nil`) - Fully qualified name of the CustomTuningModel.
  *   `modelStatus` (*type:* `String.t`, *default:* `nil`) - The trained model status. Possible values are: * **bad-data**: The training data quality is bad. * **no-improvement**: Tuning didn't improve performance. Won't deploy. * **in-progress**: Model training job creation is in progress. * **training**: Model is actively training. * **evaluating**: The model is evaluating trained metrics. * **indexing**: The model trained metrics are indexing. * **ready**: The model is ready for serving.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :errorConfig =>
            GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaImportErrorConfig.t()
            | nil,
          :errorSamples => list(GoogleApi.DiscoveryEngine.V1beta.Model.GoogleRpcStatus.t()) | nil,
          :metrics => map() | nil,
          :modelName => String.t() | nil,
          :modelStatus => String.t() | nil
        }

  field(:errorConfig,
    as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaImportErrorConfig
  )

  field(:errorSamples, as: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleRpcStatus, type: :list)
  field(:metrics, type: :map)
  field(:modelName)
  field(:modelStatus)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaTrainCustomModelResponse do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaTrainCustomModelResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1alphaTrainCustomModelResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
