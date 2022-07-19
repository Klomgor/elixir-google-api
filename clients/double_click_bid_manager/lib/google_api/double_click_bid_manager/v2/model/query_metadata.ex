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

defmodule GoogleApi.DoubleClickBidManager.V2.Model.QueryMetadata do
  @moduledoc """
  Query metadata.

  ## Attributes

  *   `dataRange` (*type:* `GoogleApi.DoubleClickBidManager.V2.Model.DataRange.t`, *default:* `nil`) - Range of report data. All reports will be based on the same time zone as used by the advertiser.
  *   `format` (*type:* `String.t`, *default:* `nil`) - Format of the generated report.
  *   `sendNotification` (*type:* `boolean()`, *default:* `nil`) - Whether to send an email notification when a report is ready. Defaults to false.
  *   `shareEmailAddress` (*type:* `list(String.t)`, *default:* `nil`) - List of email addresses which are sent email notifications when the report is finished. Separate from send_notification.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Query title. It is used to name the reports generated from this query.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataRange => GoogleApi.DoubleClickBidManager.V2.Model.DataRange.t() | nil,
          :format => String.t() | nil,
          :sendNotification => boolean() | nil,
          :shareEmailAddress => list(String.t()) | nil,
          :title => String.t() | nil
        }

  field(:dataRange, as: GoogleApi.DoubleClickBidManager.V2.Model.DataRange)
  field(:format)
  field(:sendNotification)
  field(:shareEmailAddress, type: :list)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.DoubleClickBidManager.V2.Model.QueryMetadata do
  def decode(value, options) do
    GoogleApi.DoubleClickBidManager.V2.Model.QueryMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DoubleClickBidManager.V2.Model.QueryMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end