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

defmodule GoogleApi.Monitoring.V3.Model.QueryTimeSeriesRequest do
  @moduledoc """
  The QueryTimeSeries request. For information about the status of Monitoring Query Language (MQL), see the MQL deprecation notice (https://cloud.google.com/stackdriver/docs/deprecations/mql).

  ## Attributes

  *   `pageSize` (*type:* `integer()`, *default:* `nil`) - A positive number that is the maximum number of time_series_data to return.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - If this field is not empty then it must contain the nextPageToken value returned by a previous call to this method. Using this field causes the method to return additional results from the previous method call.
  *   `query` (*type:* `String.t`, *default:* `nil`) - Required. The query in the Monitoring Query Language (https://cloud.google.com/monitoring/mql/reference) format. The default time zone is in UTC.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :pageSize => integer() | nil,
          :pageToken => String.t() | nil,
          :query => String.t() | nil
        }

  field(:pageSize)
  field(:pageToken)
  field(:query)
end

defimpl Poison.Decoder, for: GoogleApi.Monitoring.V3.Model.QueryTimeSeriesRequest do
  def decode(value, options) do
    GoogleApi.Monitoring.V3.Model.QueryTimeSeriesRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Monitoring.V3.Model.QueryTimeSeriesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
