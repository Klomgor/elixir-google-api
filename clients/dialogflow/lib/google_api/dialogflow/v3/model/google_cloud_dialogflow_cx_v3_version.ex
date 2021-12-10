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

defmodule GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Version do
  @moduledoc """
  Represents a version of a flow.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Create time of the version.
  *   `description` (*type:* `String.t`, *default:* `nil`) - The description of the version. The maximum length is 500 characters. If exceeded, the request is rejected.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The human-readable name of the version. Limit of 64 characters.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Format: projects//locations//agents//flows//versions/. Version ID is a self-increasing number generated by Dialogflow upon version creation.
  *   `nluSettings` (*type:* `GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3NluSettings.t`, *default:* `nil`) - Output only. The NLU settings of the flow at version creation.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The state of this version. This field is read-only and cannot be set by create and update methods.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :name => String.t() | nil,
          :nluSettings =>
            GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3NluSettings.t() | nil,
          :state => String.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:displayName)
  field(:name)
  field(:nluSettings, as: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3NluSettings)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Version do
  def decode(value, options) do
    GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Version.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V3.Model.GoogleCloudDialogflowCxV3Version do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end