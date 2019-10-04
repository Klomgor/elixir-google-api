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

defmodule GoogleApi.CloudRun.V1alpha1.Model.Policy do
  @moduledoc """
  Defines an Identity and Access Management (IAM) policy. It is used to
  specify access control policies for Cloud Platform resources.


  A `Policy` is a collection of `bindings`. A `binding` binds one or more
  `members` to a single `role`. Members can be user accounts, service accounts,
  Google groups, and domains (such as G Suite). A `role` is a named list of
  permissions (defined by IAM or configured by users). A `binding` can
  optionally specify a `condition`, which is a logic expression that further
  constrains the role binding based on attributes about the request and/or
  target resource.

  **JSON Example**

      {
        "bindings": [
          {
            "role": "roles/resourcemanager.organizationAdmin",
            "members": [
              "user:mike@example.com",
              "group:admins@example.com",
              "domain:google.com",
              "serviceAccount:my-project-id@appspot.gserviceaccount.com"
            ]
          },
          {
            "role": "roles/resourcemanager.organizationViewer",
            "members": ["user:eve@example.com"],
            "condition": {
              "title": "expirable access",
              "description": "Does not grant access after Sep 2020",
              "expression": "request.time <
              timestamp('2020-10-01T00:00:00.000Z')",
            }
          }
        ]
      }

  **YAML Example**

      bindings:
      - members:
        - user:mike@example.com
        - group:admins@example.com
        - domain:google.com
        - serviceAccount:my-project-id@appspot.gserviceaccount.com
        role: roles/resourcemanager.organizationAdmin
      - members:
        - user:eve@example.com
        role: roles/resourcemanager.organizationViewer
        condition:
          title: expirable access
          description: Does not grant access after Sep 2020
          expression: request.time < timestamp('2020-10-01T00:00:00.000Z')

  For a description of IAM and its features, see the
  [IAM developer's guide](https://cloud.google.com/iam/docs).

  ## Attributes

  *   `auditConfigs` (*type:* `list(GoogleApi.CloudRun.V1alpha1.Model.AuditConfig.t)`, *default:* `nil`) - Specifies cloud audit logging configuration for this policy.
  *   `bindings` (*type:* `list(GoogleApi.CloudRun.V1alpha1.Model.Binding.t)`, *default:* `nil`) - Associates a list of `members` to a `role`. Optionally may specify a
      `condition` that determines when binding is in effect.
      `bindings` with no members will result in an error.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - `etag` is used for optimistic concurrency control as a way to help
      prevent simultaneous updates of a policy from overwriting each other.
      It is strongly suggested that systems make use of the `etag` in the
      read-modify-write cycle to perform policy updates in order to avoid race
      conditions: An `etag` is returned in the response to `getIamPolicy`, and
      systems are expected to put that etag in the request to `setIamPolicy` to
      ensure that their change will be applied to the same version of the policy.

      If no `etag` is provided in the call to `setIamPolicy`, then the existing
      policy is overwritten. Due to blind-set semantics of an etag-less policy,
      'setIamPolicy' will not fail even if either of incoming or stored policy
      does not meet the version requirements.
  *   `version` (*type:* `integer()`, *default:* `nil`) - Specifies the format of the policy.

      Valid values are 0, 1, and 3. Requests specifying an invalid value will be
      rejected.

      Operations affecting conditional bindings must specify version 3. This can
      be either setting a conditional policy, modifying a conditional binding,
      or removing a conditional binding from the stored conditional policy.
      Operations on non-conditional policies may specify any valid value or
      leave the field unset.

      If no etag is provided in the call to `setIamPolicy`, any version
      compliance checks on the incoming and/or stored policy is skipped.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :auditConfigs => list(GoogleApi.CloudRun.V1alpha1.Model.AuditConfig.t()),
          :bindings => list(GoogleApi.CloudRun.V1alpha1.Model.Binding.t()),
          :etag => String.t(),
          :version => integer()
        }

  field(:auditConfigs, as: GoogleApi.CloudRun.V1alpha1.Model.AuditConfig, type: :list)
  field(:bindings, as: GoogleApi.CloudRun.V1alpha1.Model.Binding, type: :list)
  field(:etag)
  field(:version)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.Policy do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.Policy.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.Policy do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
