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

defmodule GoogleApi.Redis.V1.Model.Cluster do
  @moduledoc """
  A cluster instance.

  ## Attributes

  *   `asyncClusterEndpointsDeletionEnabled` (*type:* `boolean()`, *default:* `nil`) - Optional. If true, cluster endpoints that are created and registered by customers can be deleted asynchronously. That is, such a cluster endpoint can be de-registered before the forwarding rules in the cluster endpoint are deleted.
  *   `authorizationMode` (*type:* `String.t`, *default:* `nil`) - Optional. The authorization mode of the Redis cluster. If not provided, auth feature is disabled for the cluster.
  *   `automatedBackupConfig` (*type:* `GoogleApi.Redis.V1.Model.AutomatedBackupConfig.t`, *default:* `nil`) - Optional. The automated backup config for the cluster.
  *   `backupCollection` (*type:* `String.t`, *default:* `nil`) - Optional. Output only. The backup collection full resource name. Example: projects/{project}/locations/{location}/backupCollections/{collection}
  *   `clusterEndpoints` (*type:* `list(GoogleApi.Redis.V1.Model.ClusterEndpoint.t)`, *default:* `nil`) - Optional. A list of cluster enpoints.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp associated with the cluster creation request.
  *   `crossClusterReplicationConfig` (*type:* `GoogleApi.Redis.V1.Model.CrossClusterReplicationConfig.t`, *default:* `nil`) - Optional. Cross cluster replication config.
  *   `deletionProtectionEnabled` (*type:* `boolean()`, *default:* `nil`) - Optional. The delete operation will fail when the value is set to true.
  *   `discoveryEndpoints` (*type:* `list(GoogleApi.Redis.V1.Model.DiscoveryEndpoint.t)`, *default:* `nil`) - Output only. Endpoints created on each given network, for Redis clients to connect to the cluster. Currently only one discovery endpoint is supported.
  *   `encryptionInfo` (*type:* `GoogleApi.Redis.V1.Model.EncryptionInfo.t`, *default:* `nil`) - Output only. Encryption information of the data at rest of the cluster.
  *   `gcsSource` (*type:* `GoogleApi.Redis.V1.Model.GcsBackupSource.t`, *default:* `nil`) - Optional. Backups stored in Cloud Storage buckets. The Cloud Storage buckets need to be the same region as the clusters. Read permission is required to import from the provided Cloud Storage objects.
  *   `kmsKey` (*type:* `String.t`, *default:* `nil`) - Optional. The KMS key used to encrypt the at-rest data of the cluster.
  *   `maintenancePolicy` (*type:* `GoogleApi.Redis.V1.Model.ClusterMaintenancePolicy.t`, *default:* `nil`) - Optional. ClusterMaintenancePolicy determines when to allow or deny updates.
  *   `maintenanceSchedule` (*type:* `GoogleApi.Redis.V1.Model.ClusterMaintenanceSchedule.t`, *default:* `nil`) - Output only. ClusterMaintenanceSchedule Output only Published maintenance schedule.
  *   `managedBackupSource` (*type:* `GoogleApi.Redis.V1.Model.ManagedBackupSource.t`, *default:* `nil`) - Optional. Backups generated and managed by memorystore service.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Identifier. Unique name of the resource in this scope including project and location using the form: `projects/{project_id}/locations/{location_id}/clusters/{cluster_id}`
  *   `nodeType` (*type:* `String.t`, *default:* `nil`) - Optional. The type of a redis node in the cluster. NodeType determines the underlying machine-type of a redis node.
  *   `persistenceConfig` (*type:* `GoogleApi.Redis.V1.Model.ClusterPersistenceConfig.t`, *default:* `nil`) - Optional. Persistence config (RDB, AOF) for the cluster.
  *   `preciseSizeGb` (*type:* `float()`, *default:* `nil`) - Output only. Precise value of redis memory size in GB for the entire cluster.
  *   `pscConfigs` (*type:* `list(GoogleApi.Redis.V1.Model.PscConfig.t)`, *default:* `nil`) - Optional. Each PscConfig configures the consumer network where IPs will be designated to the cluster for client access through Private Service Connect Automation. Currently, only one PscConfig is supported.
  *   `pscConnections` (*type:* `list(GoogleApi.Redis.V1.Model.PscConnection.t)`, *default:* `nil`) - Output only. The list of PSC connections that are auto-created through service connectivity automation.
  *   `pscServiceAttachments` (*type:* `list(GoogleApi.Redis.V1.Model.PscServiceAttachment.t)`, *default:* `nil`) - Output only. Service attachment details to configure Psc connections
  *   `redisConfigs` (*type:* `map()`, *default:* `nil`) - Optional. Key/Value pairs of customer overrides for mutable Redis Configs
  *   `replicaCount` (*type:* `integer()`, *default:* `nil`) - Optional. The number of replica nodes per shard.
  *   `shardCount` (*type:* `integer()`, *default:* `nil`) - Optional. Number of shards for the Redis cluster.
  *   `sizeGb` (*type:* `integer()`, *default:* `nil`) - Output only. Redis memory size in GB for the entire cluster rounded up to the next integer.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The current state of this cluster. Can be CREATING, READY, UPDATING, DELETING and SUSPENDED
  *   `stateInfo` (*type:* `GoogleApi.Redis.V1.Model.StateInfo.t`, *default:* `nil`) - Output only. Additional information about the current state of the cluster.
  *   `transitEncryptionMode` (*type:* `String.t`, *default:* `nil`) - Optional. The in-transit encryption for the Redis cluster. If not provided, encryption is disabled for the cluster.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. System assigned, unique identifier for the cluster.
  *   `zoneDistributionConfig` (*type:* `GoogleApi.Redis.V1.Model.ZoneDistributionConfig.t`, *default:* `nil`) - Optional. This config will be used to determine how the customer wants us to distribute cluster resources within the region.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :asyncClusterEndpointsDeletionEnabled => boolean() | nil,
          :authorizationMode => String.t() | nil,
          :automatedBackupConfig => GoogleApi.Redis.V1.Model.AutomatedBackupConfig.t() | nil,
          :backupCollection => String.t() | nil,
          :clusterEndpoints => list(GoogleApi.Redis.V1.Model.ClusterEndpoint.t()) | nil,
          :createTime => DateTime.t() | nil,
          :crossClusterReplicationConfig =>
            GoogleApi.Redis.V1.Model.CrossClusterReplicationConfig.t() | nil,
          :deletionProtectionEnabled => boolean() | nil,
          :discoveryEndpoints => list(GoogleApi.Redis.V1.Model.DiscoveryEndpoint.t()) | nil,
          :encryptionInfo => GoogleApi.Redis.V1.Model.EncryptionInfo.t() | nil,
          :gcsSource => GoogleApi.Redis.V1.Model.GcsBackupSource.t() | nil,
          :kmsKey => String.t() | nil,
          :maintenancePolicy => GoogleApi.Redis.V1.Model.ClusterMaintenancePolicy.t() | nil,
          :maintenanceSchedule => GoogleApi.Redis.V1.Model.ClusterMaintenanceSchedule.t() | nil,
          :managedBackupSource => GoogleApi.Redis.V1.Model.ManagedBackupSource.t() | nil,
          :name => String.t() | nil,
          :nodeType => String.t() | nil,
          :persistenceConfig => GoogleApi.Redis.V1.Model.ClusterPersistenceConfig.t() | nil,
          :preciseSizeGb => float() | nil,
          :pscConfigs => list(GoogleApi.Redis.V1.Model.PscConfig.t()) | nil,
          :pscConnections => list(GoogleApi.Redis.V1.Model.PscConnection.t()) | nil,
          :pscServiceAttachments => list(GoogleApi.Redis.V1.Model.PscServiceAttachment.t()) | nil,
          :redisConfigs => map() | nil,
          :replicaCount => integer() | nil,
          :shardCount => integer() | nil,
          :sizeGb => integer() | nil,
          :state => String.t() | nil,
          :stateInfo => GoogleApi.Redis.V1.Model.StateInfo.t() | nil,
          :transitEncryptionMode => String.t() | nil,
          :uid => String.t() | nil,
          :zoneDistributionConfig => GoogleApi.Redis.V1.Model.ZoneDistributionConfig.t() | nil
        }

  field(:asyncClusterEndpointsDeletionEnabled)
  field(:authorizationMode)
  field(:automatedBackupConfig, as: GoogleApi.Redis.V1.Model.AutomatedBackupConfig)
  field(:backupCollection)
  field(:clusterEndpoints, as: GoogleApi.Redis.V1.Model.ClusterEndpoint, type: :list)
  field(:createTime, as: DateTime)

  field(:crossClusterReplicationConfig, as: GoogleApi.Redis.V1.Model.CrossClusterReplicationConfig)

  field(:deletionProtectionEnabled)
  field(:discoveryEndpoints, as: GoogleApi.Redis.V1.Model.DiscoveryEndpoint, type: :list)
  field(:encryptionInfo, as: GoogleApi.Redis.V1.Model.EncryptionInfo)
  field(:gcsSource, as: GoogleApi.Redis.V1.Model.GcsBackupSource)
  field(:kmsKey)
  field(:maintenancePolicy, as: GoogleApi.Redis.V1.Model.ClusterMaintenancePolicy)
  field(:maintenanceSchedule, as: GoogleApi.Redis.V1.Model.ClusterMaintenanceSchedule)
  field(:managedBackupSource, as: GoogleApi.Redis.V1.Model.ManagedBackupSource)
  field(:name)
  field(:nodeType)
  field(:persistenceConfig, as: GoogleApi.Redis.V1.Model.ClusterPersistenceConfig)
  field(:preciseSizeGb)
  field(:pscConfigs, as: GoogleApi.Redis.V1.Model.PscConfig, type: :list)
  field(:pscConnections, as: GoogleApi.Redis.V1.Model.PscConnection, type: :list)
  field(:pscServiceAttachments, as: GoogleApi.Redis.V1.Model.PscServiceAttachment, type: :list)
  field(:redisConfigs, type: :map)
  field(:replicaCount)
  field(:shardCount)
  field(:sizeGb)
  field(:state)
  field(:stateInfo, as: GoogleApi.Redis.V1.Model.StateInfo)
  field(:transitEncryptionMode)
  field(:uid)
  field(:zoneDistributionConfig, as: GoogleApi.Redis.V1.Model.ZoneDistributionConfig)
end

defimpl Poison.Decoder, for: GoogleApi.Redis.V1.Model.Cluster do
  def decode(value, options) do
    GoogleApi.Redis.V1.Model.Cluster.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Redis.V1.Model.Cluster do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
