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

defmodule GoogleApi.VMMigration.V1.Model.MigrationWarning do
  @moduledoc """
  Represents migration resource warning information that can be used with google.rpc.Status message. MigrationWarning is used to present the user with warning information in migration operations.

  ## Attributes

  *   `actionItem` (*type:* `GoogleApi.VMMigration.V1.Model.LocalizedMessage.t`, *default:* `nil`) - Suggested action for solving the warning.
  *   `code` (*type:* `String.t`, *default:* `nil`) - The warning code.
  *   `helpLinks` (*type:* `list(GoogleApi.VMMigration.V1.Model.Link.t)`, *default:* `nil`) - URL(s) pointing to additional information on handling the current warning.
  *   `warningMessage` (*type:* `GoogleApi.VMMigration.V1.Model.LocalizedMessage.t`, *default:* `nil`) - The localized warning message.
  *   `warningTime` (*type:* `DateTime.t`, *default:* `nil`) - The time the warning occurred.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :actionItem => GoogleApi.VMMigration.V1.Model.LocalizedMessage.t() | nil,
          :code => String.t() | nil,
          :helpLinks => list(GoogleApi.VMMigration.V1.Model.Link.t()) | nil,
          :warningMessage => GoogleApi.VMMigration.V1.Model.LocalizedMessage.t() | nil,
          :warningTime => DateTime.t() | nil
        }

  field(:actionItem, as: GoogleApi.VMMigration.V1.Model.LocalizedMessage)
  field(:code)
  field(:helpLinks, as: GoogleApi.VMMigration.V1.Model.Link, type: :list)
  field(:warningMessage, as: GoogleApi.VMMigration.V1.Model.LocalizedMessage)
  field(:warningTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.VMMigration.V1.Model.MigrationWarning do
  def decode(value, options) do
    GoogleApi.VMMigration.V1.Model.MigrationWarning.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.VMMigration.V1.Model.MigrationWarning do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end