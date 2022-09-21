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

defmodule GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsV1Violation do
  @moduledoc """
  Workload monitoring Violation.

  ## Attributes

  *   `acknowledged` (*type:* `boolean()`, *default:* `nil`) - A boolean that indicates if the violation is acknowledged
  *   `acknowledgementTime` (*type:* `DateTime.t`, *default:* `nil`) - Optional. Timestamp when this violation was acknowledged last. This will be absent when acknowledged field is marked as false.
  *   `auditLogLink` (*type:* `String.t`, *default:* `nil`) - Output only. Immutable. Audit Log Link for violated resource Format: https://console.cloud.google.com/logs/query;query={logName}{protoPayload.resourceName}{timeRange}{folder}
  *   `beginTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time of the event which triggered the Violation.
  *   `category` (*type:* `String.t`, *default:* `nil`) - Output only. Category under which this violation is mapped. e.g. Location, Service Usage, Access, Encryption, etc.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Output only. Description for the Violation. e.g. OrgPolicy gcp.resourceLocations has non compliant value.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Immutable. Name of the Violation. Format: organizations/{organization}/locations/{location}/workloads/{workload_id}/violations/{violations_id}
  *   `nonCompliantOrgPolicy` (*type:* `String.t`, *default:* `nil`) - Output only. Immutable. Name of the OrgPolicy which was modified with non-compliant change and resulted this violation. Format: projects/{project_number}/policies/{constraint_name} folders/{folder_id}/policies/{constraint_name} organizations/{organization_id}/policies/{constraint_name}
  *   `orgPolicyConstraint` (*type:* `String.t`, *default:* `nil`) - Output only. Immutable. The org-policy-constraint that was incorrectly changed, which resulted in this violation.
  *   `remediation` (*type:* `GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsV1ViolationRemediation.t`, *default:* `nil`) - Output only. Compliance violation remediation
  *   `resolveTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time of the event which fixed the Violation. If the violation is ACTIVE this will be empty.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. State of the violation
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The last time when the Violation record was updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :acknowledged => boolean() | nil,
          :acknowledgementTime => DateTime.t() | nil,
          :auditLogLink => String.t() | nil,
          :beginTime => DateTime.t() | nil,
          :category => String.t() | nil,
          :description => String.t() | nil,
          :name => String.t() | nil,
          :nonCompliantOrgPolicy => String.t() | nil,
          :orgPolicyConstraint => String.t() | nil,
          :remediation =>
            GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsV1ViolationRemediation.t()
            | nil,
          :resolveTime => DateTime.t() | nil,
          :state => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:acknowledged)
  field(:acknowledgementTime, as: DateTime)
  field(:auditLogLink)
  field(:beginTime, as: DateTime)
  field(:category)
  field(:description)
  field(:name)
  field(:nonCompliantOrgPolicy)
  field(:orgPolicyConstraint)

  field(:remediation,
    as: GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsV1ViolationRemediation
  )

  field(:resolveTime, as: DateTime)
  field(:state)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsV1Violation do
  def decode(value, options) do
    GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsV1Violation.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AssuredWorkloads.V1.Model.GoogleCloudAssuredworkloadsV1Violation do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end