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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility do
  @moduledoc """
  Provides compatibility information for a specific metadata store.

  ## Attributes

  *   `compatible` (*type:* `boolean()`, *default:* `nil`) - Output only. Whether the entity is compatible and can be represented in the metadata store.
  *   `reason` (*type:* `String.t`, *default:* `nil`) - Output only. Provides additional detail if the entity is incompatible with the metadata store.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :compatible => boolean() | nil,
          :reason => String.t() | nil
        }

  field(:compatible)
  field(:reason)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1EntityCompatibilityStatusCompatibility do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
