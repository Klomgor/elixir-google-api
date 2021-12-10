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

defmodule GoogleApi.MyBusinessBusinessInformation.V1.Model.MoreHours do
  @moduledoc """
  The time periods during which a location is open for certain types of business.

  ## Attributes

  *   `hoursTypeId` (*type:* `String.t`, *default:* `nil`) - Required. Type of hours. Clients should call {#link businessCategories:BatchGet} to get supported hours types for categories of their locations.
  *   `periods` (*type:* `list(GoogleApi.MyBusinessBusinessInformation.V1.Model.TimePeriod.t)`, *default:* `nil`) - Required. A collection of times that this location is open. Each period represents a range of hours when the location is open during the week.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :hoursTypeId => String.t() | nil,
          :periods => list(GoogleApi.MyBusinessBusinessInformation.V1.Model.TimePeriod.t()) | nil
        }

  field(:hoursTypeId)
  field(:periods, as: GoogleApi.MyBusinessBusinessInformation.V1.Model.TimePeriod, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.MyBusinessBusinessInformation.V1.Model.MoreHours do
  def decode(value, options) do
    GoogleApi.MyBusinessBusinessInformation.V1.Model.MoreHours.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MyBusinessBusinessInformation.V1.Model.MoreHours do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end