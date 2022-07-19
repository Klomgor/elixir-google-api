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

defmodule GoogleApi.CloudTasks.V2beta2.Model.OAuthToken do
  @moduledoc """
  Contains information needed for generating an [OAuth token](https://developers.google.com/identity/protocols/OAuth2). This type of authorization should generally only be used when calling Google APIs hosted on *.googleapis.com.

  ## Attributes

  *   `scope` (*type:* `String.t`, *default:* `nil`) - OAuth scope to be used for generating OAuth access token. If not specified, "https://www.googleapis.com/auth/cloud-platform" will be used.
  *   `serviceAccountEmail` (*type:* `String.t`, *default:* `nil`) - [Service account email](https://cloud.google.com/iam/docs/service-accounts) to be used for generating OAuth token. The service account must be within the same project as the queue. The caller must have iam.serviceAccounts.actAs permission for the service account.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :scope => String.t() | nil,
          :serviceAccountEmail => String.t() | nil
        }

  field(:scope)
  field(:serviceAccountEmail)
end

defimpl Poison.Decoder, for: GoogleApi.CloudTasks.V2beta2.Model.OAuthToken do
  def decode(value, options) do
    GoogleApi.CloudTasks.V2beta2.Model.OAuthToken.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudTasks.V2beta2.Model.OAuthToken do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end