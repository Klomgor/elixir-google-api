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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1ProjectServiceTerms do
  @moduledoc """
  Metadata about the terms of service.

  ## Attributes

  *   `acceptTime` (*type:* `DateTime.t`, *default:* `nil`) - The last time when the project agreed to the terms of service.
  *   `declineTime` (*type:* `DateTime.t`, *default:* `nil`) - The last time when the project declined or revoked the agreement to terms of service.
  *   `id` (*type:* `String.t`, *default:* `nil`) - The unique identifier of this terms of service. Available terms: * `GA_DATA_USE_TERMS`: [Terms for data use](https://cloud.google.com/retail/data-use-terms). When using this as `id`, the acceptable version to provide is `2022-11-23`.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Whether the project has accepted/rejected the service terms or it is still pending.
  *   `version` (*type:* `String.t`, *default:* `nil`) - The version string of the terms of service. For acceptable values, see the comments for id above.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :acceptTime => DateTime.t() | nil,
          :declineTime => DateTime.t() | nil,
          :id => String.t() | nil,
          :state => String.t() | nil,
          :version => String.t() | nil
        }

  field(:acceptTime, as: DateTime)
  field(:declineTime, as: DateTime)
  field(:id)
  field(:state)
  field(:version)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1ProjectServiceTerms do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1ProjectServiceTerms.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1ProjectServiceTerms do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
