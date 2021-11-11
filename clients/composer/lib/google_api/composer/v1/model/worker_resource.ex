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

defmodule GoogleApi.Composer.V1.Model.WorkerResource do
  @moduledoc """
  Configuration for resources used by Airflow workers.

  ## Attributes

  *   `cpu` (*type:* `number()`, *default:* `nil`) - Optional. CPU request and limit for a single Airflow worker replica.
  *   `maxCount` (*type:* `integer()`, *default:* `nil`) - Optional. Maximum number of workers for autoscaling.
  *   `memoryGb` (*type:* `number()`, *default:* `nil`) - Optional. Memory (GB) request and limit for a single Airflow worker replica.
  *   `minCount` (*type:* `integer()`, *default:* `nil`) - Optional. Minimum number of workers for autoscaling.
  *   `storageGb` (*type:* `number()`, *default:* `nil`) - Optional. Storage (GB) request and limit for a single Airflow worker replica.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cpu => number() | nil,
          :maxCount => integer() | nil,
          :memoryGb => number() | nil,
          :minCount => integer() | nil,
          :storageGb => number() | nil
        }

  field(:cpu)
  field(:maxCount)
  field(:memoryGb)
  field(:minCount)
  field(:storageGb)
end

defimpl Poison.Decoder, for: GoogleApi.Composer.V1.Model.WorkerResource do
  def decode(value, options) do
    GoogleApi.Composer.V1.Model.WorkerResource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Composer.V1.Model.WorkerResource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end