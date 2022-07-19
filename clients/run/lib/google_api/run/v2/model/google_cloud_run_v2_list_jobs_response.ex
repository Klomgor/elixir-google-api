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

defmodule GoogleApi.Run.V2.Model.GoogleCloudRunV2ListJobsResponse do
  @moduledoc """
  Response message containing a list of Jobs.

  ## Attributes

  *   `jobs` (*type:* `list(GoogleApi.Run.V2.Model.GoogleCloudRunV2Job.t)`, *default:* `nil`) - The resulting list of Jobs.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token indicating there are more items than page_size. Use it in the next ListJobs request to continue.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :jobs => list(GoogleApi.Run.V2.Model.GoogleCloudRunV2Job.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:jobs, as: GoogleApi.Run.V2.Model.GoogleCloudRunV2Job, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V2.Model.GoogleCloudRunV2ListJobsResponse do
  def decode(value, options) do
    GoogleApi.Run.V2.Model.GoogleCloudRunV2ListJobsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V2.Model.GoogleCloudRunV2ListJobsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end