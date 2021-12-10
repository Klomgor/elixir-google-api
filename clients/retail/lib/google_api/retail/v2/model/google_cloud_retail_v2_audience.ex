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

defmodule GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Audience do
  @moduledoc """
  An intended audience of the Product for whom it's sold.

  ## Attributes

  *   `ageGroups` (*type:* `list(String.t)`, *default:* `nil`) - The age groups of the audience. Strongly encouraged to use the standard values: "newborn" (up to 3 months old), "infant" (3–12 months old), "toddler" (1–5 years old), "kids" (5–13 years old), "adult" (typically teens or older). At most 5 values are allowed. Each value must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned. Google Merchant Center property [age_group](https://support.google.com/merchants/answer/6324463). Schema.org property [Product.audience.suggestedMinAge](https://schema.org/suggestedMinAge) and [Product.audience.suggestedMaxAge](https://schema.org/suggestedMaxAge).
  *   `genders` (*type:* `list(String.t)`, *default:* `nil`) - The genders of the audience. Strongly encouraged to use the standard values: "male", "female", "unisex". At most 5 values are allowed. Each value must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned. Google Merchant Center property [gender](https://support.google.com/merchants/answer/6324479). Schema.org property [Product.audience.suggestedGender](https://schema.org/suggestedGender).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :ageGroups => list(String.t()) | nil,
          :genders => list(String.t()) | nil
        }

  field(:ageGroups, type: :list)
  field(:genders, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Audience do
  def decode(value, options) do
    GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Audience.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Retail.V2.Model.GoogleCloudRetailV2Audience do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end