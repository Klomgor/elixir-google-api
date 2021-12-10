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

defmodule GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1ListPurchasableOffersResponse do
  @moduledoc """
  Response message for ListPurchasableOffers.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token to retrieve the next page of results.
  *   `purchasableOffers` (*type:* `list(GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1PurchasableOffer.t)`, *default:* `nil`) - The list of Offers requested.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :purchasableOffers =>
            list(GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1PurchasableOffer.t()) | nil
        }

  field(:nextPageToken)

  field(:purchasableOffers,
    as: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1PurchasableOffer,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1ListPurchasableOffersResponse do
  def decode(value, options) do
    GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1ListPurchasableOffersResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudChannel.V1.Model.GoogleCloudChannelV1ListPurchasableOffersResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end