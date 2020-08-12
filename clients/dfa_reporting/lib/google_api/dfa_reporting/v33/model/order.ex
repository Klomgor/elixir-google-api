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

defmodule GoogleApi.DFAReporting.V33.Model.Order do
  @moduledoc """
  Describes properties of a Planning order.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - Account ID of this order.
  *   `advertiserId` (*type:* `String.t`, *default:* `nil`) - Advertiser ID of this order.
  *   `approverUserProfileIds` (*type:* `list(String.t)`, *default:* `nil`) - IDs for users that have to approve documents created for this order.
  *   `buyerInvoiceId` (*type:* `String.t`, *default:* `nil`) - Buyer invoice ID associated with this order.
  *   `buyerOrganizationName` (*type:* `String.t`, *default:* `nil`) - Name of the buyer organization.
  *   `comments` (*type:* `String.t`, *default:* `nil`) - Comments in this order.
  *   `contacts` (*type:* `list(GoogleApi.DFAReporting.V33.Model.OrderContact.t)`, *default:* `nil`) - Contacts for this order.
  *   `id` (*type:* `String.t`, *default:* `nil`) - ID of this order. This is a read-only, auto-generated field.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "dfareporting#order".
  *   `lastModifiedInfo` (*type:* `GoogleApi.DFAReporting.V33.Model.LastModifiedInfo.t`, *default:* `nil`) - Information about the most recent modification of this order.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of this order.
  *   `notes` (*type:* `String.t`, *default:* `nil`) - Notes of this order.
  *   `planningTermId` (*type:* `String.t`, *default:* `nil`) - ID of the terms and conditions template used in this order.
  *   `projectId` (*type:* `String.t`, *default:* `nil`) - Project ID of this order.
  *   `sellerOrderId` (*type:* `String.t`, *default:* `nil`) - Seller order ID associated with this order.
  *   `sellerOrganizationName` (*type:* `String.t`, *default:* `nil`) - Name of the seller organization.
  *   `siteId` (*type:* `list(String.t)`, *default:* `nil`) - Site IDs this order is associated with.
  *   `siteNames` (*type:* `list(String.t)`, *default:* `nil`) - Free-form site names this order is associated with.
  *   `subaccountId` (*type:* `String.t`, *default:* `nil`) - Subaccount ID of this order.
  *   `termsAndConditions` (*type:* `String.t`, *default:* `nil`) - Terms and conditions of this order.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t(),
          :advertiserId => String.t(),
          :approverUserProfileIds => list(String.t()),
          :buyerInvoiceId => String.t(),
          :buyerOrganizationName => String.t(),
          :comments => String.t(),
          :contacts => list(GoogleApi.DFAReporting.V33.Model.OrderContact.t()),
          :id => String.t(),
          :kind => String.t(),
          :lastModifiedInfo => GoogleApi.DFAReporting.V33.Model.LastModifiedInfo.t(),
          :name => String.t(),
          :notes => String.t(),
          :planningTermId => String.t(),
          :projectId => String.t(),
          :sellerOrderId => String.t(),
          :sellerOrganizationName => String.t(),
          :siteId => list(String.t()),
          :siteNames => list(String.t()),
          :subaccountId => String.t(),
          :termsAndConditions => String.t()
        }

  field(:accountId)
  field(:advertiserId)
  field(:approverUserProfileIds, type: :list)
  field(:buyerInvoiceId)
  field(:buyerOrganizationName)
  field(:comments)
  field(:contacts, as: GoogleApi.DFAReporting.V33.Model.OrderContact, type: :list)
  field(:id)
  field(:kind)
  field(:lastModifiedInfo, as: GoogleApi.DFAReporting.V33.Model.LastModifiedInfo)
  field(:name)
  field(:notes)
  field(:planningTermId)
  field(:projectId)
  field(:sellerOrderId)
  field(:sellerOrganizationName)
  field(:siteId, type: :list)
  field(:siteNames, type: :list)
  field(:subaccountId)
  field(:termsAndConditions)
end

defimpl Poison.Decoder, for: GoogleApi.DFAReporting.V33.Model.Order do
  def decode(value, options) do
    GoogleApi.DFAReporting.V33.Model.Order.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DFAReporting.V33.Model.Order do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
