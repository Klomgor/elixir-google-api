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

defmodule GoogleApi.Redis.V1beta1.Model.LocationData do
  @moduledoc """


  ## Attributes

  *   `blobstoreLocation` (*type:* `GoogleApi.Redis.V1beta1.Model.BlobstoreLocation.t`, *default:* `nil`) - 
  *   `childAssetLocation` (*type:* `GoogleApi.Redis.V1beta1.Model.CloudAssetComposition.t`, *default:* `nil`) - 
  *   `directLocation` (*type:* `GoogleApi.Redis.V1beta1.Model.DirectLocationAssignment.t`, *default:* `nil`) - 
  *   `gcpProjectProxy` (*type:* `GoogleApi.Redis.V1beta1.Model.TenantProjectProxy.t`, *default:* `nil`) - 
  *   `placerLocation` (*type:* `GoogleApi.Redis.V1beta1.Model.PlacerLocation.t`, *default:* `nil`) - 
  *   `spannerLocation` (*type:* `GoogleApi.Redis.V1beta1.Model.SpannerLocation.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :blobstoreLocation => GoogleApi.Redis.V1beta1.Model.BlobstoreLocation.t() | nil,
          :childAssetLocation => GoogleApi.Redis.V1beta1.Model.CloudAssetComposition.t() | nil,
          :directLocation => GoogleApi.Redis.V1beta1.Model.DirectLocationAssignment.t() | nil,
          :gcpProjectProxy => GoogleApi.Redis.V1beta1.Model.TenantProjectProxy.t() | nil,
          :placerLocation => GoogleApi.Redis.V1beta1.Model.PlacerLocation.t() | nil,
          :spannerLocation => GoogleApi.Redis.V1beta1.Model.SpannerLocation.t() | nil
        }

  field(:blobstoreLocation, as: GoogleApi.Redis.V1beta1.Model.BlobstoreLocation)
  field(:childAssetLocation, as: GoogleApi.Redis.V1beta1.Model.CloudAssetComposition)
  field(:directLocation, as: GoogleApi.Redis.V1beta1.Model.DirectLocationAssignment)
  field(:gcpProjectProxy, as: GoogleApi.Redis.V1beta1.Model.TenantProjectProxy)
  field(:placerLocation, as: GoogleApi.Redis.V1beta1.Model.PlacerLocation)
  field(:spannerLocation, as: GoogleApi.Redis.V1beta1.Model.SpannerLocation)
end

defimpl Poison.Decoder, for: GoogleApi.Redis.V1beta1.Model.LocationData do
  def decode(value, options) do
    GoogleApi.Redis.V1beta1.Model.LocationData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Redis.V1beta1.Model.LocationData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
