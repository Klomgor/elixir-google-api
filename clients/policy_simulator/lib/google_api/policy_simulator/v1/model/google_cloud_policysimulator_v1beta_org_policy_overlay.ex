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

defmodule GoogleApi.PolicySimulator.V1.Model.GoogleCloudPolicysimulatorV1betaOrgPolicyOverlay do
  @moduledoc """
  The proposed changes to OrgPolicy.

  ## Attributes

  *   `customConstraints` (*type:* `list(GoogleApi.PolicySimulator.V1.Model.GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay.t)`, *default:* `nil`) - Optional. The OrgPolicy CustomConstraint changes to preview violations for. Any existing CustomConstraints with the same name will be overridden in the simulation. That is, violations will be determined as if all custom constraints in the overlay were instantiated. Only a single custom_constraint is supported in the overlay at a time. For evaluating multiple constraints, multiple `GenerateOrgPolicyViolationsPreview` requests are made, where each request evaluates a single constraint.
  *   `policies` (*type:* `list(GoogleApi.PolicySimulator.V1.Model.GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay.t)`, *default:* `nil`) - Optional. The OrgPolicy changes to preview violations for. Any existing OrgPolicies with the same name will be overridden in the simulation. That is, violations will be determined as if all policies in the overlay were created or updated.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customConstraints =>
            list(
              GoogleApi.PolicySimulator.V1.Model.GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay.t()
            )
            | nil,
          :policies =>
            list(
              GoogleApi.PolicySimulator.V1.Model.GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay.t()
            )
            | nil
        }

  field(:customConstraints,
    as:
      GoogleApi.PolicySimulator.V1.Model.GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayCustomConstraintOverlay,
    type: :list
  )

  field(:policies,
    as:
      GoogleApi.PolicySimulator.V1.Model.GoogleCloudPolicysimulatorV1betaOrgPolicyOverlayPolicyOverlay,
    type: :list
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.PolicySimulator.V1.Model.GoogleCloudPolicysimulatorV1betaOrgPolicyOverlay do
  def decode(value, options) do
    GoogleApi.PolicySimulator.V1.Model.GoogleCloudPolicysimulatorV1betaOrgPolicyOverlay.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.PolicySimulator.V1.Model.GoogleCloudPolicysimulatorV1betaOrgPolicyOverlay do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end