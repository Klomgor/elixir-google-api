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

defmodule GoogleApi.Compute.V1.Model.InterconnectAttachment do
  @moduledoc """
  Represents an Interconnect Attachment (VLAN) resource. You can use Interconnect attachments (VLANS) to connect your Virtual Private Cloud networks to your on-premises networks through an Interconnect. For more information, read Creating VLAN Attachments.

  ## Attributes

  *   `pairingKey` (*type:* `String.t`, *default:* `nil`) - [Output only for type PARTNER. Input only for PARTNER_PROVIDER. Not present for DEDICATED]. The opaque identifier of a PARTNER attachment used to initiate provisioning with a selected partner. Of the form "XXXXX/region/domain"
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `state` (*type:* `String.t`, *default:* `nil`) - [Output Only] The current state of this attachment's functionality. Enum values ACTIVE and UNPROVISIONED are shared by DEDICATED/PRIVATE, PARTNER, and PARTNER_PROVIDER interconnect attachments, while enum values PENDING_PARTNER, PARTNER_REQUEST_RECEIVED, and PENDING_CUSTOMER are used for only PARTNER and PARTNER_PROVIDER interconnect attachments. This state can take one of the following values: - ACTIVE: The attachment has been turned up and is ready to use. - UNPROVISIONED: The attachment is not ready to use yet, because turnup is not complete. - PENDING_PARTNER: A newly-created PARTNER attachment that has not yet been configured on the Partner side. - PARTNER_REQUEST_RECEIVED: A PARTNER attachment is in the process of provisioning after a PARTNER_PROVIDER attachment was created that references it. - PENDING_CUSTOMER: A PARTNER or PARTNER_PROVIDER attachment that is waiting for a customer to activate it. - DEFUNCT: The attachment was deleted externally and is no longer functional. This could be because the associated Interconnect was removed, or because the other side of a Partner attachment was deleted. 
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels for this resource. These can only be added or modified by the setLabels method. Each label key/value pair must comply with RFC1035. Label values may be empty.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `candidateIpv6Subnets` (*type:* `list(String.t)`, *default:* `nil`) - This field is not available.
  *   `googleReferenceId` (*type:* `String.t`, *default:* `nil`) - [Output Only] Google reference ID, to be used when raising support tickets with Google or otherwise to debug backend connectivity issues. [Deprecated] This field is not used.
  *   `kind` (*type:* `String.t`, *default:* `compute#interconnectAttachment`) - [Output Only] Type of the resource. Always compute#interconnectAttachment for interconnect attachments.
  *   `privateInterconnectInfo` (*type:* `GoogleApi.Compute.V1.Model.InterconnectAttachmentPrivateInfo.t`, *default:* `nil`) - [Output Only] Information specific to an InterconnectAttachment. This property is populated if the interconnect that this is attached to is of type DEDICATED.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource.
  *   `interconnect` (*type:* `String.t`, *default:* `nil`) - URL of the underlying Interconnect object that this attachment's traffic will traverse through.
  *   `satisfiesPzs` (*type:* `boolean()`, *default:* `nil`) - [Output Only] Reserved for future use.
  *   `customerRouterIpv6InterfaceId` (*type:* `String.t`, *default:* `nil`) - This field is not available.
  *   `cloudRouterIpAddress` (*type:* `String.t`, *default:* `nil`) - [Output Only] IPv4 address + prefix length to be configured on Cloud Router Interface for this interconnect attachment.
  *   `router` (*type:* `String.t`, *default:* `nil`) - URL of the Cloud Router to be used for dynamic routing. This router must be in the same region as this InterconnectAttachment. The InterconnectAttachment will automatically connect the Interconnect to the network & region within which the Cloud Router is configured.
  *   `remoteService` (*type:* `String.t`, *default:* `nil`) - [Output Only] If the attachment is on a Cross-Cloud Interconnect connection, this field contains the interconnect's remote location service provider. Example values: "Amazon Web Services" "Microsoft Azure". The field is set only for attachments on Cross-Cloud Interconnect connections. Its value is copied from the InterconnectRemoteLocation remoteService field.
  *   `region` (*type:* `String.t`, *default:* `nil`) - [Output Only] URL of the region where the regional interconnect attachment resides. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  *   `adminEnabled` (*type:* `boolean()`, *default:* `nil`) - Determines whether this Attachment will carry packets. Not present for PARTNER_PROVIDER.
  *   `configurationConstraints` (*type:* `GoogleApi.Compute.V1.Model.InterconnectAttachmentConfigurationConstraints.t`, *default:* `nil`) - [Output Only] Constraints for this attachment, if any. The attachment does not work if these constraints are not met.
  *   `encryption` (*type:* `String.t`, *default:* `nil`) - Indicates the user-supplied encryption option of this VLAN attachment (interconnectAttachment). Can only be specified at attachment creation for PARTNER or DEDICATED attachments. Possible values are: - NONE - This is the default value, which means that the VLAN attachment carries unencrypted traffic. VMs are able to send traffic to, or receive traffic from, such a VLAN attachment. - IPSEC - The VLAN attachment carries only encrypted traffic that is encrypted by an IPsec device, such as an HA VPN gateway or third-party IPsec VPN. VMs cannot directly send traffic to, or receive traffic from, such a VLAN attachment. To use *HA VPN over Cloud Interconnect*, the VLAN attachment must be created with this option. 
  *   `customerRouterIpAddress` (*type:* `String.t`, *default:* `nil`) - [Output Only] IPv4 address + prefix length to be configured on the customer router subinterface for this interconnect attachment.
  *   `mtu` (*type:* `integer()`, *default:* `nil`) - Maximum Transmission Unit (MTU), in bytes, of packets passing through this interconnect attachment. Only 1440 and 1500 are allowed. If not specified, the value will default to 1440.
  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `partnerMetadata` (*type:* `GoogleApi.Compute.V1.Model.InterconnectAttachmentPartnerMetadata.t`, *default:* `nil`) - Informational metadata about Partner attachments from Partners to display to customers. Output only for PARTNER type, mutable for PARTNER_PROVIDER, not available for DEDICATED.
  *   `cloudRouterIpv6InterfaceId` (*type:* `String.t`, *default:* `nil`) - This field is not available.
  *   `operationalStatus` (*type:* `String.t`, *default:* `nil`) - [Output Only] The current status of whether or not this interconnect attachment is functional, which can take one of the following values: - OS_ACTIVE: The attachment has been turned up and is ready to use. - OS_UNPROVISIONED: The attachment is not ready to use yet, because turnup is not complete. 
  *   `dataplaneVersion` (*type:* `integer()`, *default:* `nil`) - [Output Only] Dataplane version for this InterconnectAttachment. This field is only present for Dataplane version 2 and higher. Absence of this field in the API output indicates that the Dataplane is version 1.
  *   `bandwidth` (*type:* `String.t`, *default:* `nil`) - Provisioned bandwidth capacity for the interconnect attachment. For attachments of type DEDICATED, the user can set the bandwidth. For attachments of type PARTNER, the Google Partner that is operating the interconnect must set the bandwidth. Output only for PARTNER type, mutable for PARTNER_PROVIDER and DEDICATED, and can take one of the following values: - BPS_50M: 50 Mbit/s - BPS_100M: 100 Mbit/s - BPS_200M: 200 Mbit/s - BPS_300M: 300 Mbit/s - BPS_400M: 400 Mbit/s - BPS_500M: 500 Mbit/s - BPS_1G: 1 Gbit/s - BPS_2G: 2 Gbit/s - BPS_5G: 5 Gbit/s - BPS_10G: 10 Gbit/s - BPS_20G: 20 Gbit/s - BPS_50G: 50 Gbit/s - BPS_100G: 100 Gbit/s 
  *   `vlanTag8021q` (*type:* `integer()`, *default:* `nil`) - The IEEE 802.1Q VLAN tag for this attachment, in the range 2-4093. Only specified at creation time.
  *   `ipsecInternalAddresses` (*type:* `list(String.t)`, *default:* `nil`) - A list of URLs of addresses that have been reserved for the VLAN attachment. Used only for the VLAN attachment that has the encryption option as IPSEC. The addresses must be regional internal IP address ranges. When creating an HA VPN gateway over the VLAN attachment, if the attachment is configured to use a regional internal IP address, then the VPN gateway's IP address is allocated from the IP address range specified here. For example, if the HA VPN gateway's interface 0 is paired to this VLAN attachment, then a regional internal IP address for the VPN gateway interface 0 will be allocated from the IP address specified for this VLAN attachment. If this field is not specified when creating the VLAN attachment, then later on when creating an HA VPN gateway on this VLAN attachment, the HA VPN gateway's IP address is allocated from the regional external IP address pool.
  *   `type` (*type:* `String.t`, *default:* `nil`) - The type of interconnect attachment this is, which can take one of the following values: - DEDICATED: an attachment to a Dedicated Interconnect. - PARTNER: an attachment to a Partner Interconnect, created by the customer. - PARTNER_PROVIDER: an attachment to a Partner Interconnect, created by the partner. 
  *   `subnetLength` (*type:* `integer()`, *default:* `nil`) - Input only. Length of the IPv4 subnet mask. Allowed values: - 29 (default) - 30 The default value is 29, except for Cross-Cloud Interconnect connections that use an InterconnectRemoteLocation with a constraints.subnetLengthRange.min equal to 30. For example, connections that use an Azure remote location fall into this category. In these cases, the default value is 30, and requesting 29 returns an error. Where both 29 and 30 are allowed, 29 is preferred, because it gives Google Cloud Support more debugging visibility. 
  *   `labelFingerprint` (*type:* `String.t`, *default:* `nil`) - A fingerprint for the labels being applied to this InterconnectAttachment, which is essentially a hash of the labels set used for optimistic locking. The fingerprint is initially generated by Compute Engine and changes after every request to modify or update labels. You must always provide an up-to-date fingerprint hash in order to update or change labels, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve an InterconnectAttachment.
  *   `customerRouterIpv6Address` (*type:* `String.t`, *default:* `nil`) - [Output Only] IPv6 address + prefix length to be configured on the customer router subinterface for this interconnect attachment.
  *   `partnerAsn` (*type:* `String.t`, *default:* `nil`) - Optional BGP ASN for the router supplied by a Layer 3 Partner if they configured BGP on behalf of the customer. Output only for PARTNER type, input only for PARTNER_PROVIDER, not available for DEDICATED.
  *   `cloudRouterIpv6Address` (*type:* `String.t`, *default:* `nil`) - [Output Only] IPv6 address + prefix length to be configured on Cloud Router Interface for this interconnect attachment.
  *   `edgeAvailabilityDomain` (*type:* `String.t`, *default:* `nil`) - Input only. Desired availability domain for the attachment. Only available for type PARTNER, at creation time, and can take one of the following values: - AVAILABILITY_DOMAIN_ANY - AVAILABILITY_DOMAIN_1 - AVAILABILITY_DOMAIN_2 For improved reliability, customers should configure a pair of attachments, one per availability domain. The selected availability domain will be provided to the Partner via the pairing key, so that the provisioned circuit will lie in the specified domain. If not specified, the value will default to AVAILABILITY_DOMAIN_ANY.
  *   `candidateSubnets` (*type:* `list(String.t)`, *default:* `nil`) - Input only. Up to 16 candidate prefixes that can be used to restrict the allocation of cloudRouterIpAddress and customerRouterIpAddress for this attachment. All prefixes must be within link-local address space (169.254.0.0/16) and must be /29 or shorter (/28, /27, etc). Google will attempt to select an unused /29 from the supplied candidate prefix(es). The request will fail if all possible /29s are in use on Google's edge. If not supplied, Google will randomly select an unused /29 from all of link-local space.
  *   `stackType` (*type:* `String.t`, *default:* `nil`) - The stack type for this interconnect attachment to identify whether the IPv6 feature is enabled or not. If not specified, IPV4_ONLY will be used. This field can be both set at interconnect attachments creation and update interconnect attachment operations.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :pairingKey => String.t() | nil,
          :selfLink => String.t() | nil,
          :state => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :candidateIpv6Subnets => list(String.t()) | nil,
          :googleReferenceId => String.t() | nil,
          :kind => String.t() | nil,
          :privateInterconnectInfo =>
            GoogleApi.Compute.V1.Model.InterconnectAttachmentPrivateInfo.t() | nil,
          :description => String.t() | nil,
          :interconnect => String.t() | nil,
          :satisfiesPzs => boolean() | nil,
          :customerRouterIpv6InterfaceId => String.t() | nil,
          :cloudRouterIpAddress => String.t() | nil,
          :router => String.t() | nil,
          :remoteService => String.t() | nil,
          :region => String.t() | nil,
          :adminEnabled => boolean() | nil,
          :configurationConstraints =>
            GoogleApi.Compute.V1.Model.InterconnectAttachmentConfigurationConstraints.t() | nil,
          :encryption => String.t() | nil,
          :customerRouterIpAddress => String.t() | nil,
          :mtu => integer() | nil,
          :creationTimestamp => String.t() | nil,
          :partnerMetadata =>
            GoogleApi.Compute.V1.Model.InterconnectAttachmentPartnerMetadata.t() | nil,
          :cloudRouterIpv6InterfaceId => String.t() | nil,
          :operationalStatus => String.t() | nil,
          :dataplaneVersion => integer() | nil,
          :bandwidth => String.t() | nil,
          :vlanTag8021q => integer() | nil,
          :ipsecInternalAddresses => list(String.t()) | nil,
          :type => String.t() | nil,
          :subnetLength => integer() | nil,
          :labelFingerprint => String.t() | nil,
          :customerRouterIpv6Address => String.t() | nil,
          :partnerAsn => String.t() | nil,
          :cloudRouterIpv6Address => String.t() | nil,
          :edgeAvailabilityDomain => String.t() | nil,
          :candidateSubnets => list(String.t()) | nil,
          :stackType => String.t() | nil,
          :id => String.t() | nil
        }

  field(:pairingKey)
  field(:selfLink)
  field(:state)
  field(:labels, type: :map)
  field(:name)
  field(:candidateIpv6Subnets, type: :list)
  field(:googleReferenceId)
  field(:kind)

  field(:privateInterconnectInfo, as: GoogleApi.Compute.V1.Model.InterconnectAttachmentPrivateInfo)

  field(:description)
  field(:interconnect)
  field(:satisfiesPzs)
  field(:customerRouterIpv6InterfaceId)
  field(:cloudRouterIpAddress)
  field(:router)
  field(:remoteService)
  field(:region)
  field(:adminEnabled)

  field(:configurationConstraints,
    as: GoogleApi.Compute.V1.Model.InterconnectAttachmentConfigurationConstraints
  )

  field(:encryption)
  field(:customerRouterIpAddress)
  field(:mtu)
  field(:creationTimestamp)
  field(:partnerMetadata, as: GoogleApi.Compute.V1.Model.InterconnectAttachmentPartnerMetadata)
  field(:cloudRouterIpv6InterfaceId)
  field(:operationalStatus)
  field(:dataplaneVersion)
  field(:bandwidth)
  field(:vlanTag8021q)
  field(:ipsecInternalAddresses, type: :list)
  field(:type)
  field(:subnetLength)
  field(:labelFingerprint)
  field(:customerRouterIpv6Address)
  field(:partnerAsn)
  field(:cloudRouterIpv6Address)
  field(:edgeAvailabilityDomain)
  field(:candidateSubnets, type: :list)
  field(:stackType)
  field(:id)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InterconnectAttachment do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InterconnectAttachment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InterconnectAttachment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
