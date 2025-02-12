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

defmodule GoogleApi.ServiceControl.V1.Model.Attributes do
  @moduledoc """
  A set of attributes, each in the format `[KEY]:[VALUE]`.

  ## Attributes

  *   `attributeMap` (*type:* `%{optional(String.t) => GoogleApi.ServiceControl.V1.Model.AttributeValue.t}`, *default:* `nil`) - The set of attributes. Each attribute's key can be up to 128 bytes long. The value can be a string up to 256 bytes, a signed 64-bit integer, or the Boolean values `true` and `false`. For example: "/instance_id": "my-instance" "/http/user_agent": "" "/http/request_bytes": 300 "example.com/myattribute": true
  *   `droppedAttributesCount` (*type:* `integer()`, *default:* `nil`) - The number of attributes that were discarded. Attributes can be discarded because their keys are too long or because there are too many attributes. If this value is 0 then all attributes are valid.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attributeMap =>
            %{optional(String.t()) => GoogleApi.ServiceControl.V1.Model.AttributeValue.t()} | nil,
          :droppedAttributesCount => integer() | nil
        }

  field(:attributeMap, as: GoogleApi.ServiceControl.V1.Model.AttributeValue, type: :map)
  field(:droppedAttributesCount)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceControl.V1.Model.Attributes do
  def decode(value, options) do
    GoogleApi.ServiceControl.V1.Model.Attributes.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceControl.V1.Model.Attributes do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
