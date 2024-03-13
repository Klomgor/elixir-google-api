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

defmodule GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DateLimits do
  @moduledoc """
  Limits for date Field type.

  ## Attributes

  *   `maxValue` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleTypeDate.t`, *default:* `nil`) - Maximum value for the date Field type.
  *   `minValue` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleTypeDate.t`, *default:* `nil`) - Minimum value for the date Field type.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxValue => GoogleApi.DriveLabels.V2.Model.GoogleTypeDate.t() | nil,
          :minValue => GoogleApi.DriveLabels.V2.Model.GoogleTypeDate.t() | nil
        }

  field(:maxValue, as: GoogleApi.DriveLabels.V2.Model.GoogleTypeDate)
  field(:minValue, as: GoogleApi.DriveLabels.V2.Model.GoogleTypeDate)
end

defimpl Poison.Decoder, for: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DateLimits do
  def decode(value, options) do
    GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DateLimits.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DateLimits do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
