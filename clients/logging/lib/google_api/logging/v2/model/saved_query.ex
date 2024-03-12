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

defmodule GoogleApi.Logging.V2.Model.SavedQuery do
  @moduledoc """
  Describes a query that has been saved by a user.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the saved query was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. A human readable description of the saved query.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The user specified title for the SavedQuery.
  *   `loggingQuery` (*type:* `GoogleApi.Logging.V2.Model.LoggingQuery.t`, *default:* `nil`) - Logging query that can be executed in Logs Explorer or via Logging API.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Resource name of the saved query.In the format: "projects/[PROJECT_ID]/locations/[LOCATION_ID]/savedQueries/[QUERY_ID]" For a list of supported locations, see Supported Regions (https://cloud.google.com/logging/docs/region-support#bucket-regions)After the saved query is created, the location cannot be changed.If the user doesn't provide a QUERY_ID, the system will generate an alphanumeric ID.
  *   `opsAnalyticsQuery` (*type:* `GoogleApi.Logging.V2.Model.OpsAnalyticsQuery.t`, *default:* `nil`) - Analytics query that can be executed in Log Analytics.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the saved query was last updated.
  *   `visibility` (*type:* `String.t`, *default:* `nil`) - Required. The visibility status of this query, which determines its ownership.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :loggingQuery => GoogleApi.Logging.V2.Model.LoggingQuery.t() | nil,
          :name => String.t() | nil,
          :opsAnalyticsQuery => GoogleApi.Logging.V2.Model.OpsAnalyticsQuery.t() | nil,
          :updateTime => DateTime.t() | nil,
          :visibility => String.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:description)
  field(:displayName)
  field(:loggingQuery, as: GoogleApi.Logging.V2.Model.LoggingQuery)
  field(:name)
  field(:opsAnalyticsQuery, as: GoogleApi.Logging.V2.Model.OpsAnalyticsQuery)
  field(:updateTime, as: DateTime)
  field(:visibility)
end

defimpl Poison.Decoder, for: GoogleApi.Logging.V2.Model.SavedQuery do
  def decode(value, options) do
    GoogleApi.Logging.V2.Model.SavedQuery.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Logging.V2.Model.SavedQuery do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end