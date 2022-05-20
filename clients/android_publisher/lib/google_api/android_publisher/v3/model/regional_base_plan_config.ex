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

defmodule GoogleApi.AndroidPublisher.V3.Model.RegionalBasePlanConfig do
  @moduledoc """
  Configuration for a base plan specific to a region.

  ## Attributes

  *   `newSubscriberAvailability` (*type:* `boolean()`, *default:* `nil`) - Whether the base plan in the specified region is available for new subscribers. Existing subscribers will not have their subscription canceled if this value is set to false. If not specified, this will default to false.
  *   `price` (*type:* `GoogleApi.AndroidPublisher.V3.Model.Money.t`, *default:* `nil`) - The price of the base plan in the specified region. Must be set if the base plan is available to new subscribers. Must be set in the currency that is linked to the specified region.
  *   `regionCode` (*type:* `String.t`, *default:* `nil`) - Required. Region code this configuration applies to, as defined by ISO 3166-2, e.g. "US".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :newSubscriberAvailability => boolean() | nil,
          :price => GoogleApi.AndroidPublisher.V3.Model.Money.t() | nil,
          :regionCode => String.t() | nil
        }

  field(:newSubscriberAvailability)
  field(:price, as: GoogleApi.AndroidPublisher.V3.Model.Money)
  field(:regionCode)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.RegionalBasePlanConfig do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.RegionalBasePlanConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.RegionalBasePlanConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end