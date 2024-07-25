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

defmodule GoogleApi.Container.V1.Model.DailyMaintenanceWindow do
  @moduledoc """
  Time window specified for daily maintenance operations.

  ## Attributes

  *   `duration` (*type:* `String.t`, *default:* `nil`) - Output only. Duration of the time window, automatically chosen to be smallest possible in the given scenario. Duration will be in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) format "PTnHnMnS".
  *   `startTime` (*type:* `String.t`, *default:* `nil`) - Time within the maintenance window to start the maintenance operations. Time format should be in [RFC3339](https://www.ietf.org/rfc/rfc3339.txt) format "HH:MM", where HH : [00-23] and MM : [00-59] GMT.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :duration => String.t() | nil,
          :startTime => String.t() | nil
        }

  field(:duration)
  field(:startTime)
end

defimpl Poison.Decoder, for: GoogleApi.Container.V1.Model.DailyMaintenanceWindow do
  def decode(value, options) do
    GoogleApi.Container.V1.Model.DailyMaintenanceWindow.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Container.V1.Model.DailyMaintenanceWindow do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
