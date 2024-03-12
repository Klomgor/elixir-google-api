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

defmodule GoogleApi.NetworkConnectivity.V1.Model.SpokeTypeCount do
  @moduledoc """
  The number of spokes of a given type that are associated with a specific hub. The type indicates what kind of resource is associated with the spoke.

  ## Attributes

  *   `count` (*type:* `String.t`, *default:* `nil`) - Output only. The total number of spokes of this type that are associated with the hub.
  *   `spokeType` (*type:* `String.t`, *default:* `nil`) - Output only. The type of the spokes.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :count => String.t() | nil,
          :spokeType => String.t() | nil
        }

  field(:count)
  field(:spokeType)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkConnectivity.V1.Model.SpokeTypeCount do
  def decode(value, options) do
    GoogleApi.NetworkConnectivity.V1.Model.SpokeTypeCount.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkConnectivity.V1.Model.SpokeTypeCount do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end