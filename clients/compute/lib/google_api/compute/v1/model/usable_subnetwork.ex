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

defmodule GoogleApi.Compute.V1.Model.UsableSubnetwork do
  @moduledoc """
  Subnetwork which the current user has compute.subnetworks.use permission on.

  ## Attributes

  *   `externalIpv6Prefix` (*type:* `String.t`, *default:* `nil`) - [Output Only] The external IPv6 address range that is assigned to this subnetwork.
  *   `internalIpv6Prefix` (*type:* `String.t`, *default:* `nil`) - [Output Only] The internal IPv6 address range that is assigned to this subnetwork.
  *   `ipCidrRange` (*type:* `String.t`, *default:* `nil`) - The range of internal addresses that are owned by this subnetwork.
  *   `ipv6AccessType` (*type:* `String.t`, *default:* `nil`) - The access type of IPv6 address this subnet holds. It's immutable and can only be specified during creation or the first time the subnet is updated into IPV4_IPV6 dual stack.
  *   `network` (*type:* `String.t`, *default:* `nil`) - Network URL.
  *   `purpose` (*type:* `String.t`, *default:* `nil`) - The purpose of the resource. This field can be either PRIVATE, GLOBAL_MANAGED_PROXY, REGIONAL_MANAGED_PROXY, PEER_MIGRATION or PRIVATE_SERVICE_CONNECT. PRIVATE is the default purpose for user-created subnets or subnets that are automatically created in auto mode networks. Subnets with purpose set to GLOBAL_MANAGED_PROXY or REGIONAL_MANAGED_PROXY are user-created subnetworks that are reserved for Envoy-based load balancers. A subnet with purpose set to PRIVATE_SERVICE_CONNECT is used to publish services using Private Service Connect. A subnet with purpose set to PEER_MIGRATION is used for subnet migration from one peered VPC to another. If unspecified, the subnet purpose defaults to PRIVATE. The enableFlowLogs field isn't supported if the subnet purpose field is set to GLOBAL_MANAGED_PROXY or REGIONAL_MANAGED_PROXY.
  *   `role` (*type:* `String.t`, *default:* `nil`) - The role of subnetwork. Currently, this field is only used when purpose is set to GLOBAL_MANAGED_PROXY or REGIONAL_MANAGED_PROXY. The value can be set to ACTIVE or BACKUP. An ACTIVE subnetwork is one that is currently being used for Envoy-based load balancers in a region. A BACKUP subnetwork is one that is ready to be promoted to ACTIVE or is currently draining. This field can be updated with a patch request.
  *   `secondaryIpRanges` (*type:* `list(GoogleApi.Compute.V1.Model.UsableSubnetworkSecondaryRange.t)`, *default:* `nil`) - Secondary IP ranges.
  *   `stackType` (*type:* `String.t`, *default:* `nil`) - The stack type for the subnet. If set to IPV4_ONLY, new VMs in the subnet are assigned IPv4 addresses only. If set to IPV4_IPV6, new VMs in the subnet can be assigned both IPv4 and IPv6 addresses. If not specified, IPV4_ONLY is used. This field can be both set at resource creation time and updated using patch.
  *   `subnetwork` (*type:* `String.t`, *default:* `nil`) - Subnetwork URL.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :externalIpv6Prefix => String.t() | nil,
          :internalIpv6Prefix => String.t() | nil,
          :ipCidrRange => String.t() | nil,
          :ipv6AccessType => String.t() | nil,
          :network => String.t() | nil,
          :purpose => String.t() | nil,
          :role => String.t() | nil,
          :secondaryIpRanges =>
            list(GoogleApi.Compute.V1.Model.UsableSubnetworkSecondaryRange.t()) | nil,
          :stackType => String.t() | nil,
          :subnetwork => String.t() | nil
        }

  field(:externalIpv6Prefix)
  field(:internalIpv6Prefix)
  field(:ipCidrRange)
  field(:ipv6AccessType)
  field(:network)
  field(:purpose)
  field(:role)

  field(:secondaryIpRanges,
    as: GoogleApi.Compute.V1.Model.UsableSubnetworkSecondaryRange,
    type: :list
  )

  field(:stackType)
  field(:subnetwork)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.UsableSubnetwork do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.UsableSubnetwork.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.UsableSubnetwork do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
