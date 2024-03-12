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

defmodule GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1GovernedContainer do
  @moduledoc """
  The organization/folder/project resource governed by organization policies of AnalyzeOrgPolicyGovernedContainersRequest.constraint.

  ## Attributes

  *   `consolidatedPolicy` (*type:* `GoogleApi.CloudAsset.V1.Model.AnalyzerOrgPolicy.t`, *default:* `nil`) - The consolidated organization policy for the analyzed resource. The consolidated organization policy is computed by merging and evaluating AnalyzeOrgPolicyGovernedContainersResponse.GovernedContainer.policy_bundle. The evaluation will respect the organization policy [hierarchy rules](https://cloud.google.com/resource-manager/docs/organization-policy/understanding-hierarchy).
  *   `effectiveTags` (*type:* `list(GoogleApi.CloudAsset.V1.Model.EffectiveTagDetails.t)`, *default:* `nil`) - The effective tags on this resource.
  *   `folders` (*type:* `list(String.t)`, *default:* `nil`) - The folder(s) that this resource belongs to, in the format of folders/{FOLDER_NUMBER}. This field is available when the resource belongs (directly or cascadingly) to one or more folders.
  *   `fullResourceName` (*type:* `String.t`, *default:* `nil`) - The [full resource name] (https://cloud.google.com/asset-inventory/docs/resource-name-format) of an organization/folder/project resource.
  *   `organization` (*type:* `String.t`, *default:* `nil`) - The organization that this resource belongs to, in the format of organizations/{ORGANIZATION_NUMBER}. This field is available when the resource belongs (directly or cascadingly) to an organization.
  *   `parent` (*type:* `String.t`, *default:* `nil`) - The [full resource name] (https://cloud.google.com/asset-inventory/docs/resource-name-format) of the parent of AnalyzeOrgPolicyGovernedContainersResponse.GovernedContainer.full_resource_name.
  *   `policyBundle` (*type:* `list(GoogleApi.CloudAsset.V1.Model.AnalyzerOrgPolicy.t)`, *default:* `nil`) - The ordered list of all organization policies from the AnalyzeOrgPoliciesResponse.OrgPolicyResult.consolidated_policy.attached_resource. to the scope specified in the request. If the constraint is defined with default policy, it will also appear in the list.
  *   `project` (*type:* `String.t`, *default:* `nil`) - The project that this resource belongs to, in the format of projects/{PROJECT_NUMBER}. This field is available when the resource belongs to a project.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :consolidatedPolicy => GoogleApi.CloudAsset.V1.Model.AnalyzerOrgPolicy.t() | nil,
          :effectiveTags => list(GoogleApi.CloudAsset.V1.Model.EffectiveTagDetails.t()) | nil,
          :folders => list(String.t()) | nil,
          :fullResourceName => String.t() | nil,
          :organization => String.t() | nil,
          :parent => String.t() | nil,
          :policyBundle => list(GoogleApi.CloudAsset.V1.Model.AnalyzerOrgPolicy.t()) | nil,
          :project => String.t() | nil
        }

  field(:consolidatedPolicy, as: GoogleApi.CloudAsset.V1.Model.AnalyzerOrgPolicy)
  field(:effectiveTags, as: GoogleApi.CloudAsset.V1.Model.EffectiveTagDetails, type: :list)
  field(:folders, type: :list)
  field(:fullResourceName)
  field(:organization)
  field(:parent)
  field(:policyBundle, as: GoogleApi.CloudAsset.V1.Model.AnalyzerOrgPolicy, type: :list)
  field(:project)
end

defimpl Poison.Decoder, for: GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1GovernedContainer do
  def decode(value, options) do
    GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1GovernedContainer.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudAsset.V1.Model.GoogleCloudAssetV1GovernedContainer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end