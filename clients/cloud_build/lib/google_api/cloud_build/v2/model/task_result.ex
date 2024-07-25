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

defmodule GoogleApi.CloudBuild.V2.Model.TaskResult do
  @moduledoc """
  TaskResult is used to describe the results of a task.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - Description of the result.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the result.
  *   `properties` (*type:* `%{optional(String.t) => GoogleApi.CloudBuild.V2.Model.PropertySpec.t}`, *default:* `nil`) - When type is OBJECT, this map holds the names of fields inside that object along with the type of data each field holds.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of data that the result holds.
  *   `value` (*type:* `GoogleApi.CloudBuild.V2.Model.ParamValue.t`, *default:* `nil`) - Optional. Optionally used to initialize a Task's result with a Step's result.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t() | nil,
          :name => String.t() | nil,
          :properties =>
            %{optional(String.t()) => GoogleApi.CloudBuild.V2.Model.PropertySpec.t()} | nil,
          :type => String.t() | nil,
          :value => GoogleApi.CloudBuild.V2.Model.ParamValue.t() | nil
        }

  field(:description)
  field(:name)
  field(:properties, as: GoogleApi.CloudBuild.V2.Model.PropertySpec, type: :map)
  field(:type)
  field(:value, as: GoogleApi.CloudBuild.V2.Model.ParamValue)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V2.Model.TaskResult do
  def decode(value, options) do
    GoogleApi.CloudBuild.V2.Model.TaskResult.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V2.Model.TaskResult do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
