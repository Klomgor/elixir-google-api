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

defmodule GoogleApi.CloudDeploy.V1.Model.GkeCluster do
  @moduledoc """
  Information specifying a GKE Cluster.

  ## Attributes

  *   `cluster` (*type:* `String.t`, *default:* `nil`) - Optional. Information specifying a GKE Cluster. Format is `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}`.
  *   `dnsEndpoint` (*type:* `boolean()`, *default:* `nil`) - Optional. If set, the cluster will be accessed using the DNS endpoint. Note that both `dns_endpoint` and `internal_ip` cannot be set to true.
  *   `internalIp` (*type:* `boolean()`, *default:* `nil`) - Optional. If true, `cluster` is accessed using the private IP address of the control plane endpoint. Otherwise, the default IP address of the control plane endpoint is used. The default IP address is the private IP address for clusters with private control-plane endpoints and the public IP address otherwise. Only specify this option when `cluster` is a [private GKE cluster](https://cloud.google.com/kubernetes-engine/docs/concepts/private-cluster-concept). Note that `internal_ip` and `dns_endpoint` cannot both be set to true.
  *   `proxyUrl` (*type:* `String.t`, *default:* `nil`) - Optional. If set, used to configure a [proxy](https://kubernetes.io/docs/concepts/configuration/organize-cluster-access-kubeconfig/#proxy) to the Kubernetes server.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cluster => String.t() | nil,
          :dnsEndpoint => boolean() | nil,
          :internalIp => boolean() | nil,
          :proxyUrl => String.t() | nil
        }

  field(:cluster)
  field(:dnsEndpoint)
  field(:internalIp)
  field(:proxyUrl)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDeploy.V1.Model.GkeCluster do
  def decode(value, options) do
    GoogleApi.CloudDeploy.V1.Model.GkeCluster.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDeploy.V1.Model.GkeCluster do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
