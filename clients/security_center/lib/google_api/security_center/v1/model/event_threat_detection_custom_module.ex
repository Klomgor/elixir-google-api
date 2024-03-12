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

defmodule GoogleApi.SecurityCenter.V1.Model.EventThreatDetectionCustomModule do
  @moduledoc """
  Represents an instance of an Event Threat Detection custom module, including its full module name, display name, enablement state, and last updated time. You can create a custom module at the organization, folder, or project level. Custom modules that you create at the organization or folder level are inherited by child folders and projects.

  ## Attributes

  *   `ancestorModule` (*type:* `String.t`, *default:* `nil`) - Output only. The closest ancestor module that this module inherits the enablement state from. The format is the same as the EventThreatDetectionCustomModule resource name.
  *   `config` (*type:* `map()`, *default:* `nil`) - Config for the module. For the resident module, its config value is defined at this level. For the inherited module, its config value is inherited from the ancestor module.
  *   `description` (*type:* `String.t`, *default:* `nil`) - The description for the module.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The human readable name to be displayed for the module.
  *   `enablementState` (*type:* `String.t`, *default:* `nil`) - The state of enablement for the module at the given level of the hierarchy.
  *   `lastEditor` (*type:* `String.t`, *default:* `nil`) - Output only. The editor the module was last updated by.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Immutable. The resource name of the Event Threat Detection custom module. Its format is: * "organizations/{organization}/eventThreatDetectionSettings/customModules/{module}". * "folders/{folder}/eventThreatDetectionSettings/customModules/{module}". * "projects/{project}/eventThreatDetectionSettings/customModules/{module}".
  *   `type` (*type:* `String.t`, *default:* `nil`) - Type for the module. e.g. CONFIGURABLE_BAD_IP.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time the module was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ancestorModule => String.t() | nil,
          :config => map() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :enablementState => String.t() | nil,
          :lastEditor => String.t() | nil,
          :name => String.t() | nil,
          :type => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:ancestorModule)
  field(:config, type: :map)
  field(:description)
  field(:displayName)
  field(:enablementState)
  field(:lastEditor)
  field(:name)
  field(:type)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.SecurityCenter.V1.Model.EventThreatDetectionCustomModule do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.EventThreatDetectionCustomModule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecurityCenter.V1.Model.EventThreatDetectionCustomModule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end