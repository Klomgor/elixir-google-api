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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaEngineChatEngineMetadata do
  @moduledoc """
  Additional information of a Chat Engine. Fields in this message are output only.

  ## Attributes

  *   `dialogflowAgent` (*type:* `String.t`, *default:* `nil`) - The resource name of a Dialogflow agent, that this Chat Engine refers to. Format: `projects//locations//agents/`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dialogflowAgent => String.t() | nil
        }

  field(:dialogflowAgent)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaEngineChatEngineMetadata do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaEngineChatEngineMetadata.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaEngineChatEngineMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
