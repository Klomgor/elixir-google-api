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

defmodule GoogleApi.Notebooks.V1.Model.UpgradeHistoryEntry do
  @moduledoc """
  The entry of VM image upgrade history.

  ## Attributes

  *   `action` (*type:* `String.t`, *default:* `nil`) - Action. Rolloback or Upgrade.
  *   `containerImage` (*type:* `String.t`, *default:* `nil`) - The container image before this instance upgrade.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The time that this instance upgrade history entry is created.
  *   `framework` (*type:* `String.t`, *default:* `nil`) - The framework of this notebook instance.
  *   `snapshot` (*type:* `String.t`, *default:* `nil`) - The snapshot of the boot disk of this notebook instance before upgrade.
  *   `state` (*type:* `String.t`, *default:* `nil`) - The state of this instance upgrade history entry.
  *   `targetImage` (*type:* `String.t`, *default:* `nil`) - Target VM Image. Format: ainotebooks-vm/project/image-name/name.
  *   `targetVersion` (*type:* `String.t`, *default:* `nil`) - Target VM Version, like m63.
  *   `version` (*type:* `String.t`, *default:* `nil`) - The version of the notebook instance before this upgrade.
  *   `vmImage` (*type:* `String.t`, *default:* `nil`) - The VM image before this instance upgrade.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :action => String.t() | nil,
          :containerImage => String.t() | nil,
          :createTime => DateTime.t() | nil,
          :framework => String.t() | nil,
          :snapshot => String.t() | nil,
          :state => String.t() | nil,
          :targetImage => String.t() | nil,
          :targetVersion => String.t() | nil,
          :version => String.t() | nil,
          :vmImage => String.t() | nil
        }

  field(:action)
  field(:containerImage)
  field(:createTime, as: DateTime)
  field(:framework)
  field(:snapshot)
  field(:state)
  field(:targetImage)
  field(:targetVersion)
  field(:version)
  field(:vmImage)
end

defimpl Poison.Decoder, for: GoogleApi.Notebooks.V1.Model.UpgradeHistoryEntry do
  def decode(value, options) do
    GoogleApi.Notebooks.V1.Model.UpgradeHistoryEntry.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Notebooks.V1.Model.UpgradeHistoryEntry do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end