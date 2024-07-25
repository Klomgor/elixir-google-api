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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaPurgeDocumentsResponse do
  @moduledoc """
  Response message for DocumentService.PurgeDocuments method. If the long running operation is successfully done, then this message is returned by the google.longrunning.Operations.response field.

  ## Attributes

  *   `purgeCount` (*type:* `String.t`, *default:* `nil`) - The total count of documents purged as a result of the operation.
  *   `purgeSample` (*type:* `list(String.t)`, *default:* `nil`) - A sample of document names that will be deleted. Only populated if `force` is set to false. A max of 100 names will be returned and the names are chosen at random.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :purgeCount => String.t() | nil,
          :purgeSample => list(String.t()) | nil
        }

  field(:purgeCount)
  field(:purgeSample, type: :list)
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaPurgeDocumentsResponse do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaPurgeDocumentsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaPurgeDocumentsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
