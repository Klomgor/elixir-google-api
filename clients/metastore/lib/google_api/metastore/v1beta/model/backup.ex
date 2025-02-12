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

defmodule GoogleApi.Metastore.V1beta.Model.Backup do
  @moduledoc """
  The details of a backup resource.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the backup was started.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. The description of the backup.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the backup finished creating.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. Identifier. The relative resource name of the backup, in the following form:projects/{project_number}/locations/{location_id}/services/{service_id}/backups/{backup_id}
  *   `restoringServices` (*type:* `list(String.t)`, *default:* `nil`) - Output only. Services that are restoring from the backup.
  *   `serviceRevision` (*type:* `GoogleApi.Metastore.V1beta.Model.Service.t`, *default:* `nil`) - Output only. The revision of the service at the time of backup.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current state of the backup.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :endTime => DateTime.t() | nil,
          :name => String.t() | nil,
          :restoringServices => list(String.t()) | nil,
          :serviceRevision => GoogleApi.Metastore.V1beta.Model.Service.t() | nil,
          :state => String.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:endTime, as: DateTime)
  field(:name)
  field(:restoringServices, type: :list)
  field(:serviceRevision, as: GoogleApi.Metastore.V1beta.Model.Service)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.Metastore.V1beta.Model.Backup do
  def decode(value, options) do
    GoogleApi.Metastore.V1beta.Model.Backup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Metastore.V1beta.Model.Backup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
