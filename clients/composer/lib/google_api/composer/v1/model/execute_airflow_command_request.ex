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

defmodule GoogleApi.Composer.V1.Model.ExecuteAirflowCommandRequest do
  @moduledoc """
  Execute Airflow Command request.

  ## Attributes

  *   `command` (*type:* `String.t`, *default:* `nil`) - Airflow command.
  *   `parameters` (*type:* `list(String.t)`, *default:* `nil`) - Parameters for the Airflow command/subcommand as an array of arguments. It may contain positional arguments like `["my-dag-id"]`, key-value parameters like `["--foo=bar"]` or `["--foo","bar"]`, or other flags like `["-f"]`.
  *   `subcommand` (*type:* `String.t`, *default:* `nil`) - Airflow subcommand.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :command => String.t() | nil,
          :parameters => list(String.t()) | nil,
          :subcommand => String.t() | nil
        }

  field(:command)
  field(:parameters, type: :list)
  field(:subcommand)
end

defimpl Poison.Decoder, for: GoogleApi.Composer.V1.Model.ExecuteAirflowCommandRequest do
  def decode(value, options) do
    GoogleApi.Composer.V1.Model.ExecuteAirflowCommandRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Composer.V1.Model.ExecuteAirflowCommandRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end