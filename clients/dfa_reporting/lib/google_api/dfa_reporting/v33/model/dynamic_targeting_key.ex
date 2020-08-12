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

defmodule GoogleApi.DFAReporting.V33.Model.DynamicTargetingKey do
  @moduledoc """
  Contains properties of a dynamic targeting key. Dynamic targeting keys are unique, user-friendly labels, created at the advertiser level in DCM, that can be assigned to ads, creatives, and placements and used for targeting with Studio dynamic creatives. Use these labels instead of numeric Campaign Manager IDs (such as placement IDs) to save time and avoid errors in your dynamic feeds.

  ## Attributes

  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#dynamicTargetingKey".
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of this dynamic targeting key. This is a required field. Must be less than 256 characters long and cannot contain commas. All characters are converted to lowercase.
  *   `objectId` (*type:* `String.t`, *default:* `nil`) - ID of the object of this dynamic targeting key. This is a required field.
  *   `objectType` (*type:* `String.t`, *default:* `nil`) - Type of the object of this dynamic targeting key. This is a required field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :kind => String.t(),
          :name => String.t(),
          :objectId => String.t(),
          :objectType => String.t()
        }

  field(:kind)
  field(:name)
  field(:objectId)
  field(:objectType)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V33.Model.DynamicTargetingKey do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.DynamicTargetingKey.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V33.Model.DynamicTargetingKey do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
