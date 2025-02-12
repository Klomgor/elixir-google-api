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

defmodule GoogleApi.Dataform.V1beta1.Model.Target do
  @moduledoc """
  Represents an action identifier. If the action writes output, the output will be written to the referenced database object.

  ## Attributes

  *   `database` (*type:* `String.t`, *default:* `nil`) - Optional. The action's database (Google Cloud project ID) .
  *   `name` (*type:* `String.t`, *default:* `nil`) - Optional. The action's name, within `database` and `schema`.
  *   `schema` (*type:* `String.t`, *default:* `nil`) - Optional. The action's schema (BigQuery dataset ID), within `database`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :database => String.t() | nil,
          :name => String.t() | nil,
          :schema => String.t() | nil
        }

  field(:database)
  field(:name)
  field(:schema)
end

defimpl Poison.Decoder, for: GoogleApi.Dataform.V1beta1.Model.Target do
  def decode(value, options) do
    GoogleApi.Dataform.V1beta1.Model.Target.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataform.V1beta1.Model.Target do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
