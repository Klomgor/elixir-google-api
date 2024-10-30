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

defmodule GoogleApi.IAM.V1.Model.WorkforcePool do
  @moduledoc """
  Represents a collection of external workforces. Provides namespaces for federated users that can be referenced in IAM policies.

  ## Attributes

  *   `accessRestrictions` (*type:* `GoogleApi.IAM.V1.Model.AccessRestrictions.t`, *default:* `nil`) - Optional. Configure access restrictions on the workforce pool users. This is an optional field. If specified web sign-in can be restricted to given set of services or programmatic sign-in can be disabled for pool users.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. A user-specified description of the pool. Cannot exceed 256 characters.
  *   `disabled` (*type:* `boolean()`, *default:* `nil`) - Optional. Disables the workforce pool. You cannot use a disabled pool to exchange tokens, or use existing tokens to access resources. If the pool is re-enabled, existing tokens grant access again.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Optional. A user-specified display name of the pool in Google Cloud Console. Cannot exceed 32 characters.
  *   `expireTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Time after which the workforce pool will be permanently purged and cannot be recovered.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the pool. Format: `locations/{location}/workforcePools/{workforce_pool_id}`
  *   `parent` (*type:* `String.t`, *default:* `nil`) - Immutable. The resource name of the parent. Format: `organizations/{org-id}`.
  *   `sessionDuration` (*type:* `String.t`, *default:* `nil`) - Optional. Duration that the Google Cloud access tokens, console sign-in sessions, and `gcloud` sign-in sessions from this pool are valid. Must be greater than 15 minutes (900s) and less than 12 hours (43200s). If `session_duration` is not configured, minted credentials have a default duration of one hour (3600s). For SAML providers, the lifetime of the token is the minimum of the `session_duration` and the `SessionNotOnOrAfter` claim in the SAML assertion.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. The state of the pool.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accessRestrictions => GoogleApi.IAM.V1.Model.AccessRestrictions.t() | nil,
          :description => String.t() | nil,
          :disabled => boolean() | nil,
          :displayName => String.t() | nil,
          :expireTime => DateTime.t() | nil,
          :name => String.t() | nil,
          :parent => String.t() | nil,
          :sessionDuration => String.t() | nil,
          :state => String.t() | nil
        }

  field(:accessRestrictions, as: GoogleApi.IAM.V1.Model.AccessRestrictions)
  field(:description)
  field(:disabled)
  field(:displayName)
  field(:expireTime, as: DateTime)
  field(:name)
  field(:parent)
  field(:sessionDuration)
  field(:state)
end

defimpl Poison.Decoder, for: GoogleApi.IAM.V1.Model.WorkforcePool do
  def decode(value, options) do
    GoogleApi.IAM.V1.Model.WorkforcePool.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAM.V1.Model.WorkforcePool do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
