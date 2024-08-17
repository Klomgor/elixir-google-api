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

defmodule GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_CustomerManagerLink do
  @moduledoc """
  Represents customer-manager link relationship.

  ## Attributes

  *   `managerCustomer` (*type:* `String.t`, *default:* `nil`) - Output only. The manager customer linked to the customer.
  *   `managerLinkId` (*type:* `String.t`, *default:* `nil`) - Output only. ID of the customer-manager link. This field is read only.
  *   `resourceName` (*type:* `String.t`, *default:* `nil`) - Immutable. Name of the resource. CustomerManagerLink resource names have the form: `customers/{customer_id}/customerManagerLinks/{manager_customer_id}~{manager_link_id}`
  *   `startTime` (*type:* `String.t`, *default:* `nil`) - Output only. The timestamp when the CustomerManagerLink was created. The timestamp is in the customer's time zone and in "yyyy-MM-dd HH:mm:ss" format.
  *   `status` (*type:* `String.t`, *default:* `nil`) - Status of the link between the customer and the manager.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :managerCustomer => String.t() | nil,
          :managerLinkId => String.t() | nil,
          :resourceName => String.t() | nil,
          :startTime => String.t() | nil,
          :status => String.t() | nil
        }

  field(:managerCustomer)
  field(:managerLinkId)
  field(:resourceName)
  field(:startTime)
  field(:status)
end

defimpl Poison.Decoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_CustomerManagerLink do
  def decode(value, options) do
    GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_CustomerManagerLink.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SearchAds360.V0.Model.GoogleAdsSearchads360V0Resources_CustomerManagerLink do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
