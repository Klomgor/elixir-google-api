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

defmodule GoogleApi.CloudDeploy.V1.Model.AutomationRun do
  @moduledoc """
  An `AutomationRun` resource in the Cloud Deploy API. An `AutomationRun` represents an execution instance of an automation rule.

  ## Attributes

  *   `advanceRolloutOperation` (*type:* `GoogleApi.CloudDeploy.V1.Model.AdvanceRolloutOperation.t`, *default:* `nil`) - Output only. Advances a rollout to the next phase.
  *   `automationId` (*type:* `String.t`, *default:* `nil`) - Output only. The ID of the automation that initiated the operation.
  *   `automationSnapshot` (*type:* `GoogleApi.CloudDeploy.V1.Model.Automation.t`, *default:* `nil`) - Output only. Snapshot of the Automation taken at AutomationRun creation time.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time at which the `AutomationRun` was created.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Output only. The weak etag of the `AutomationRun` resource. This checksum is computed by the server based on the value of other fields, and may be sent on update and delete requests to ensure the client has an up-to-date value before proceeding.
  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time the `AutomationRun` expires. An `AutomationRun` expires after 14 days from its creation date.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Name of the `AutomationRun`. Format is `projects/{project}/locations/{location}/deliveryPipelines/{delivery_pipeline}/automationRuns/{automation_run}`.
  *   `promoteReleaseOperation` (*type:* `GoogleApi.CloudDeploy.V1.Model.PromoteReleaseOperation.t`, *default:* `nil`) - Output only. Promotes a release to a specified 'Target'.
  *   `repairRolloutOperation` (*type:* `GoogleApi.CloudDeploy.V1.Model.RepairRolloutOperation.t`, *default:* `nil`) - Output only. Repairs a failed 'Rollout'.
  *   `ruleId` (*type:* `String.t`, *default:* `nil`) - Output only. The ID of the automation rule that initiated the operation.
  *   `serviceAccount` (*type:* `String.t`, *default:* `nil`) - Output only. Email address of the user-managed IAM service account that performs the operations against Cloud Deploy resources.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. Current state of the `AutomationRun`.
  *   `stateDescription` (*type:* `String.t`, *default:* `nil`) - Output only. Explains the current state of the `AutomationRun`. Present only when an explanation is needed.
  *   `targetId` (*type:* `String.t`, *default:* `nil`) - Output only. The ID of the target that represents the promotion stage that initiates the `AutomationRun`. The value of this field is the last segment of a target name.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time at which the automationRun was updated.
  *   `waitUntilTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Earliest time the `AutomationRun` will attempt to resume. Wait-time is configured by `wait` in automation rule.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :advanceRolloutOperation =>
            GoogleApi.CloudDeploy.V1.Model.AdvanceRolloutOperation.t() | nil,
          :automationId => String.t() | nil,
          :automationSnapshot => GoogleApi.CloudDeploy.V1.Model.Automation.t() | nil,
          :createTime => DateTime.t() | nil,
          :etag => String.t() | nil,
          :expireTime => DateTime.t() | nil,
          :name => String.t() | nil,
          :promoteReleaseOperation =>
            GoogleApi.CloudDeploy.V1.Model.PromoteReleaseOperation.t() | nil,
          :repairRolloutOperation =>
            GoogleApi.CloudDeploy.V1.Model.RepairRolloutOperation.t() | nil,
          :ruleId => String.t() | nil,
          :serviceAccount => String.t() | nil,
          :state => String.t() | nil,
          :stateDescription => String.t() | nil,
          :targetId => String.t() | nil,
          :updateTime => DateTime.t() | nil,
          :waitUntilTime => DateTime.t() | nil
        }

  field(:advanceRolloutOperation, as: GoogleApi.CloudDeploy.V1.Model.AdvanceRolloutOperation)
  field(:automationId)
  field(:automationSnapshot, as: GoogleApi.CloudDeploy.V1.Model.Automation)
  field(:createTime, as: DateTime)
  field(:etag)
  field(:expireTime, as: DateTime)
  field(:name)
  field(:promoteReleaseOperation, as: GoogleApi.CloudDeploy.V1.Model.PromoteReleaseOperation)
  field(:repairRolloutOperation, as: GoogleApi.CloudDeploy.V1.Model.RepairRolloutOperation)
  field(:ruleId)
  field(:serviceAccount)
  field(:state)
  field(:stateDescription)
  field(:targetId)
  field(:updateTime, as: DateTime)
  field(:waitUntilTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.CloudDeploy.V1.Model.AutomationRun do
  def decode(value, options) do
    GoogleApi.CloudDeploy.V1.Model.AutomationRun.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudDeploy.V1.Model.AutomationRun do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end