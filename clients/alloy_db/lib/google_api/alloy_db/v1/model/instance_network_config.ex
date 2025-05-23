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

defmodule GoogleApi.AlloyDB.V1.Model.InstanceNetworkConfig do
  @moduledoc """
  Metadata related to instance-level network configuration.

  ## Attributes

  *   `authorizedExternalNetworks` (*type:* `list(GoogleApi.AlloyDB.V1.Model.AuthorizedNetwork.t)`, *default:* `nil`) - Optional. A list of external network authorized to access this instance.
  *   `enableOutboundPublicIp` (*type:* `boolean()`, *default:* `nil`) - Optional. Enabling an outbound public IP address to support a database server sending requests out into the internet.
  *   `enablePublicIp` (*type:* `boolean()`, *default:* `nil`) - Optional. Enabling public ip for the instance.
  *   `network` (*type:* `String.t`, *default:* `nil`) - Output only. The resource link for the VPC network in which instance resources are created and from which they are accessible via Private IP. This will be the same value as the parent cluster's network. It is specified in the form: // `projects/{project_number}/global/networks/{network_id}`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authorizedExternalNetworks =>
            list(GoogleApi.AlloyDB.V1.Model.AuthorizedNetwork.t()) | nil,
          :enableOutboundPublicIp => boolean() | nil,
          :enablePublicIp => boolean() | nil,
          :network => String.t() | nil
        }

  field(:authorizedExternalNetworks, as: GoogleApi.AlloyDB.V1.Model.AuthorizedNetwork, type: :list)

  field(:enableOutboundPublicIp)
  field(:enablePublicIp)
  field(:network)
end

defimpl Poison.Decoder, for: GoogleApi.AlloyDB.V1.Model.InstanceNetworkConfig do
  def decode(value, options) do
    GoogleApi.AlloyDB.V1.Model.InstanceNetworkConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AlloyDB.V1.Model.InstanceNetworkConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
