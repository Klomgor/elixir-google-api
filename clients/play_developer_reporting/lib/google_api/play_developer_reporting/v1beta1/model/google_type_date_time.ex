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

defmodule GoogleApi.PlayDeveloperReporting.V1beta1.Model.GoogleTypeDateTime do
  @moduledoc """
  Represents civil time (or occasionally physical time). This type can represent a civil time in one of a few possible ways: * When utc_offset is set and time_zone is unset: a civil time on a calendar day with a particular offset from UTC. * When time_zone is set and utc_offset is unset: a civil time on a calendar day in a particular time zone. * When neither time_zone nor utc_offset is set: a civil time on a calendar day in local time. The date is relative to the Proleptic Gregorian Calendar. If year is 0, the DateTime is considered not to have a specific year. month and day must have valid, non-zero values. This type may also be used to represent a physical time if all the date and time fields are set and either case of the `time_offset` oneof is set. Consider using `Timestamp` message for physical time instead. If your use case also would like to store the user's timezone, that can be done in another field. This type is more flexible than some applications may want. Make sure to document and validate your application's limitations.

  ## Attributes

  *   `day` (*type:* `integer()`, *default:* `nil`) - Required. Day of month. Must be from 1 to 31 and valid for the year and month.
  *   `hours` (*type:* `integer()`, *default:* `nil`) - Required. Hours of day in 24 hour format. Should be from 0 to 23. An API may choose to allow the value "24:00:00" for scenarios like business closing time.
  *   `minutes` (*type:* `integer()`, *default:* `nil`) - Required. Minutes of hour of day. Must be from 0 to 59.
  *   `month` (*type:* `integer()`, *default:* `nil`) - Required. Month of year. Must be from 1 to 12.
  *   `nanos` (*type:* `integer()`, *default:* `nil`) - Required. Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999.
  *   `seconds` (*type:* `integer()`, *default:* `nil`) - Required. Seconds of minutes of the time. Must normally be from 0 to 59. An API may allow the value 60 if it allows leap-seconds.
  *   `timeZone` (*type:* `GoogleApi.PlayDeveloperReporting.V1beta1.Model.GoogleTypeTimeZone.t`, *default:* `nil`) - Time zone.
  *   `utcOffset` (*type:* `String.t`, *default:* `nil`) - UTC offset. Must be whole seconds, between -18 hours and +18 hours. For example, a UTC offset of -4:00 would be represented as { seconds: -14400 }.
  *   `year` (*type:* `integer()`, *default:* `nil`) - Optional. Year of date. Must be from 1 to 9999, or 0 if specifying a datetime without a year.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :day => integer() | nil,
          :hours => integer() | nil,
          :minutes => integer() | nil,
          :month => integer() | nil,
          :nanos => integer() | nil,
          :seconds => integer() | nil,
          :timeZone =>
            GoogleApi.PlayDeveloperReporting.V1beta1.Model.GoogleTypeTimeZone.t() | nil,
          :utcOffset => String.t() | nil,
          :year => integer() | nil
        }

  field(:day)
  field(:hours)
  field(:minutes)
  field(:month)
  field(:nanos)
  field(:seconds)
  field(:timeZone, as: GoogleApi.PlayDeveloperReporting.V1beta1.Model.GoogleTypeTimeZone)
  field(:utcOffset)
  field(:year)
end

defimpl Poison.Decoder, for: GoogleApi.PlayDeveloperReporting.V1beta1.Model.GoogleTypeDateTime do
  def decode(value, options) do
    GoogleApi.PlayDeveloperReporting.V1beta1.Model.GoogleTypeDateTime.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PlayDeveloperReporting.V1beta1.Model.GoogleTypeDateTime do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end