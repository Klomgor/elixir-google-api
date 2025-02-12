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

defmodule GoogleApi.WorkloadManager.V1.Model.SapDiscovery do
  @moduledoc """
  The schema of SAP system discovery data.

  ## Attributes

  *   `applicationLayer` (*type:* `GoogleApi.WorkloadManager.V1.Model.SapDiscoveryComponent.t`, *default:* `nil`) - Optional. An SAP system may run without an application layer.
  *   `databaseLayer` (*type:* `GoogleApi.WorkloadManager.V1.Model.SapDiscoveryComponent.t`, *default:* `nil`) - Required. An SAP System must have a database.
  *   `metadata` (*type:* `GoogleApi.WorkloadManager.V1.Model.SapDiscoveryMetadata.t`, *default:* `nil`) - Optional. The metadata for SAP system discovery data.
  *   `projectNumber` (*type:* `String.t`, *default:* `nil`) - Optional. The GCP project number that this SapSystem belongs to.
  *   `systemId` (*type:* `String.t`, *default:* `nil`) - Output only. A combination of database SID, database instance URI and tenant DB name to make a unique identifier per-system.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Required. Unix timestamp this system has been updated last.
  *   `useDrReconciliation` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether to use DR reconciliation or not.
  *   `workloadProperties` (*type:* `GoogleApi.WorkloadManager.V1.Model.SapDiscoveryWorkloadProperties.t`, *default:* `nil`) - Optional. The properties of the workload.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :applicationLayer => GoogleApi.WorkloadManager.V1.Model.SapDiscoveryComponent.t() | nil,
          :databaseLayer => GoogleApi.WorkloadManager.V1.Model.SapDiscoveryComponent.t() | nil,
          :metadata => GoogleApi.WorkloadManager.V1.Model.SapDiscoveryMetadata.t() | nil,
          :projectNumber => String.t() | nil,
          :systemId => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :useDrReconciliation => boolean() | nil,
          :workloadProperties =>
            GoogleApi.WorkloadManager.V1.Model.SapDiscoveryWorkloadProperties.t() | nil
        }

  field(:applicationLayer, as: GoogleApi.WorkloadManager.V1.Model.SapDiscoveryComponent)
  field(:databaseLayer, as: GoogleApi.WorkloadManager.V1.Model.SapDiscoveryComponent)
  field(:metadata, as: GoogleApi.WorkloadManager.V1.Model.SapDiscoveryMetadata)
  field(:projectNumber)
  field(:systemId)
  field(:updateTime, as: DateTime)
  field(:useDrReconciliation)

  field(:workloadProperties, as: GoogleApi.WorkloadManager.V1.Model.SapDiscoveryWorkloadProperties)
end

defimpl Poison.Decoder, for: GoogleApi.WorkloadManager.V1.Model.SapDiscovery do
  def decode(value, options) do
    GoogleApi.WorkloadManager.V1.Model.SapDiscovery.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.WorkloadManager.V1.Model.SapDiscovery do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
