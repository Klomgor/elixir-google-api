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

defmodule GoogleApi.ServiceUsage.V1.Model.Impact do
  @moduledoc """
  A message to group impacts of updating a policy.

  ## Attributes

  *   `detail` (*type:* `String.t`, *default:* `nil`) - Output only. User friendly impact detail in a free form message.
  *   `impactType` (*type:* `String.t`, *default:* `nil`) - Output only. The type of impact.
  *   `parent` (*type:* `String.t`, *default:* `nil`) - The parent resource that the analysis is based on and the service name that the analysis is for. Example: `projects/100/services/compute.googleapis.com`, folders/101/services/compute.googleapis.com` and `organizations/102/services/compute.googleapis.com`. Usually, the parent resource here is same as the parent resource of the analyzed policy. However, for some analysis types, the parent can be different. For example, for resource existence analysis, if the parent resource of the analyzed policy is a folder or an organization, the parent resource here can still be the project that contains the resources.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :detail => String.t() | nil,
          :impactType => String.t() | nil,
          :parent => String.t() | nil
        }

  field(:detail)
  field(:impactType)
  field(:parent)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceUsage.V1.Model.Impact do
  def decode(value, options) do
    GoogleApi.ServiceUsage.V1.Model.Impact.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceUsage.V1.Model.Impact do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
