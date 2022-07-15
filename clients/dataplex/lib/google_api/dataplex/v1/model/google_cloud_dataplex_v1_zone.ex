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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1Zone do
  @moduledoc """
  A zone represents a logical group of related assets within a lake. A zone can be used to map to organizational structure or represent stages of data readiness from raw to curated. It provides managing behavior that is shared or inherited by all contained assets.

  ## Attributes

  *   `assetStatus` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1AssetStatus.t`, *default:* `nil`) - Output only. Aggregated status of the underlying assets of the zone.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the zone was created.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. Description of the zone.
  *   `discoverySpec` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ZoneDiscoverySpec.t`, *default:* `nil`) - Optional. Specification of the discovery feature applied to data in this zone.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Optional. User friendly display name.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Optional. User defined labels for the zone.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The relative resource name of the zone, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}/zones/{zone_id}.
  *   `resourceSpec` (*type:* `GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ZoneResourceSpec.t`, *default:* `nil`) - Required. Specification of the resources that are referenced by the assets within this zone.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. Current state of the zone.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. The type of the zone.
  *   `uid` (*type:* `String.t`, *default:* `nil`) - Output only. System generated globally unique ID for the zone. This ID will be different if the zone is deleted and re-created with the same name.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time when the zone was last updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :assetStatus => GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1AssetStatus.t() | nil,
          :createTime => DateTime.t() | nil,
          :description => String.t() | nil,
          :discoverySpec =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ZoneDiscoverySpec.t() | nil,
          :displayName => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :resourceSpec =>
            GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ZoneResourceSpec.t() | nil,
          :state => String.t() | nil,
          :type => String.t() | nil,
          :uid => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:assetStatus, as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1AssetStatus)
  field(:createTime, as: DateTime)
  field(:description)
  field(:discoverySpec, as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ZoneDiscoverySpec)
  field(:displayName)
  field(:labels, type: :map)
  field(:name)
  field(:resourceSpec, as: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1ZoneResourceSpec)
  field(:state)
  field(:type)
  field(:uid)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1Zone do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1Zone.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1Zone do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
