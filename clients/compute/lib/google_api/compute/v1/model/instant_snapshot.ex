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

defmodule GoogleApi.Compute.V1.Model.InstantSnapshot do
  @moduledoc """
  Represents a InstantSnapshot resource. You can use instant snapshots to create disk rollback points quickly..

  ## Attributes

  *   `architecture` (*type:* `String.t`, *default:* `nil`) - [Output Only] The architecture of the instant snapshot. Valid values are ARM64 or X86_64.
  *   `creationTimestamp` (*type:* `String.t`, *default:* `nil`) - [Output Only] Creation timestamp in RFC3339 text format.
  *   `description` (*type:* `String.t`, *default:* `nil`) - An optional description of this resource. Provide this property when you create the resource.
  *   `diskSizeGb` (*type:* `String.t`, *default:* `nil`) - [Output Only] Size of the source disk, specified in GB.
  *   `id` (*type:* `String.t`, *default:* `nil`) - [Output Only] The unique identifier for the resource. This identifier is defined by the server.
  *   `kind` (*type:* `String.t`, *default:* `compute#instantSnapshot`) - [Output Only] Type of the resource. Always compute#instantSnapshot for InstantSnapshot resources.
  *   `labelFingerprint` (*type:* `String.t`, *default:* `nil`) - A fingerprint for the labels being applied to this InstantSnapshot, which is essentially a hash of the labels set used for optimistic locking. The fingerprint is initially generated by Compute Engine and changes after every request to modify or update labels. You must always provide an up-to-date fingerprint hash in order to update or change labels, otherwise the request will fail with error 412 conditionNotMet. To see the latest fingerprint, make a get() request to retrieve a InstantSnapshot.
  *   `labels` (*type:* `map()`, *default:* `nil`) - Labels to apply to this InstantSnapshot. These can be later modified by the setLabels method. Label values may be empty.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Name of the resource; provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  *   `region` (*type:* `String.t`, *default:* `nil`) - [Output Only] URL of the region where the instant snapshot resides. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  *   `resourceStatus` (*type:* `GoogleApi.Compute.V1.Model.InstantSnapshotResourceStatus.t`, *default:* `nil`) - [Output Only] Status information for the instant snapshot resource.
  *   `satisfiesPzi` (*type:* `boolean()`, *default:* `nil`) - Output only. Reserved for future use.
  *   `satisfiesPzs` (*type:* `boolean()`, *default:* `nil`) - [Output Only] Reserved for future use.
  *   `selfLink` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for the resource.
  *   `selfLinkWithId` (*type:* `String.t`, *default:* `nil`) - [Output Only] Server-defined URL for this resource's resource id.
  *   `sourceDisk` (*type:* `String.t`, *default:* `nil`) - URL of the source disk used to create this instant snapshot. Note that the source disk must be in the same zone/region as the instant snapshot to be created. This can be a full or valid partial URL. For example, the following are valid values: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /disks/disk - https://www.googleapis.com/compute/v1/projects/project/regions/region /disks/disk - projects/project/zones/zone/disks/disk - projects/project/regions/region/disks/disk - zones/zone/disks/disk - regions/region/disks/disk 
  *   `sourceDiskId` (*type:* `String.t`, *default:* `nil`) - [Output Only] The ID value of the disk used to create this InstantSnapshot. This value may be used to determine whether the InstantSnapshot was taken from the current or a previous instance of a given disk name.
  *   `status` (*type:* `String.t`, *default:* `nil`) - [Output Only] The status of the instantSnapshot. This can be CREATING, DELETING, FAILED, or READY.
  *   `zone` (*type:* `String.t`, *default:* `nil`) - [Output Only] URL of the zone where the instant snapshot resides. You must specify this field as part of the HTTP request URL. It is not settable as a field in the request body.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :architecture => String.t() | nil,
          :creationTimestamp => String.t() | nil,
          :description => String.t() | nil,
          :diskSizeGb => String.t() | nil,
          :id => String.t() | nil,
          :kind => String.t() | nil,
          :labelFingerprint => String.t() | nil,
          :labels => map() | nil,
          :name => String.t() | nil,
          :region => String.t() | nil,
          :resourceStatus => GoogleApi.Compute.V1.Model.InstantSnapshotResourceStatus.t() | nil,
          :satisfiesPzi => boolean() | nil,
          :satisfiesPzs => boolean() | nil,
          :selfLink => String.t() | nil,
          :selfLinkWithId => String.t() | nil,
          :sourceDisk => String.t() | nil,
          :sourceDiskId => String.t() | nil,
          :status => String.t() | nil,
          :zone => String.t() | nil
        }

  field(:architecture)
  field(:creationTimestamp)
  field(:description)
  field(:diskSizeGb)
  field(:id)
  field(:kind)
  field(:labelFingerprint)
  field(:labels, type: :map)
  field(:name)
  field(:region)
  field(:resourceStatus, as: GoogleApi.Compute.V1.Model.InstantSnapshotResourceStatus)
  field(:satisfiesPzi)
  field(:satisfiesPzs)
  field(:selfLink)
  field(:selfLinkWithId)
  field(:sourceDisk)
  field(:sourceDiskId)
  field(:status)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.InstantSnapshot do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.InstantSnapshot.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.InstantSnapshot do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end