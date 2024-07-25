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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1Schema do
  @moduledoc """
  Defines the structure and layout of a type of document data.

  ## Attributes

  *   `jsonSchema` (*type:* `String.t`, *default:* `nil`) - The JSON representation of the schema.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The full resource name of the schema, in the format of `projects/{project}/locations/{location}/collections/{collection}/dataStores/{data_store}/schemas/{schema}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  *   `structSchema` (*type:* `map()`, *default:* `nil`) - The structured representation of the schema.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :jsonSchema => String.t() | nil,
          :name => String.t() | nil,
          :structSchema => map() | nil
        }

  field(:jsonSchema)
  field(:name)
  field(:structSchema, type: :map)
end

defimpl Poison.Decoder, for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1Schema do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1Schema.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1Schema do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
