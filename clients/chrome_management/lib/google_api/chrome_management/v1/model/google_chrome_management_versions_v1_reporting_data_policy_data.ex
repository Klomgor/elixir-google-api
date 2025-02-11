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

defmodule GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ReportingDataPolicyData do
  @moduledoc """
  Information of a policy applied on a Chrome browser profile.

  ## Attributes

  *   `conflicts` (*type:* `list(GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData.t)`, *default:* `nil`) - Output only. Conflicting policy information.
  *   `error` (*type:* `String.t`, *default:* `nil`) - Output only. Error message of the policy, if any.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Name of the policy.
  *   `source` (*type:* `String.t`, *default:* `nil`) - Output only. Source of the policy.
  *   `value` (*type:* `String.t`, *default:* `nil`) - Output only. Value of the policy.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conflicts =>
            list(
              GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData.t()
            )
            | nil,
          :error => String.t() | nil,
          :name => String.t() | nil,
          :source => String.t() | nil,
          :value => String.t() | nil
        }

  field(:conflicts,
    as:
      GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ReportingDataConflictingPolicyData,
    type: :list
  )

  field(:error)
  field(:name)
  field(:source)
  field(:value)
end

defimpl Poison.Decoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ReportingDataPolicyData do
  def decode(value, options) do
    GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ReportingDataPolicyData.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ChromeManagement.V1.Model.GoogleChromeManagementVersionsV1ReportingDataPolicyData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
