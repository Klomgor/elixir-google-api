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

defmodule GoogleApi.DeveloperConnect.V1.Model.BitbucketCloudConfig do
  @moduledoc """
  Configuration for connections to an instance of Bitbucket Cloud.

  ## Attributes

  *   `authorizerCredential` (*type:* `GoogleApi.DeveloperConnect.V1.Model.UserCredential.t`, *default:* `nil`) - Required. An access token with the minimum `repository`, `pullrequest` and `webhook` scope access. It can either be a workspace, project or repository access token. This is needed to create webhooks. It's recommended to use a system account to generate these credentials.
  *   `readAuthorizerCredential` (*type:* `GoogleApi.DeveloperConnect.V1.Model.UserCredential.t`, *default:* `nil`) - Required. An access token with the minimum `repository` access. It can either be a workspace, project or repository access token. It's recommended to use a system account to generate the credentials.
  *   `webhookSecretSecretVersion` (*type:* `String.t`, *default:* `nil`) - Required. Immutable. SecretManager resource containing the webhook secret used to verify webhook events, formatted as `projects/*/secrets/*/versions/*`. This is used to validate and create webhooks.
  *   `workspace` (*type:* `String.t`, *default:* `nil`) - Required. The Bitbucket Cloud Workspace ID to be connected to Google Cloud Platform.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :authorizerCredential => GoogleApi.DeveloperConnect.V1.Model.UserCredential.t() | nil,
          :readAuthorizerCredential =>
            GoogleApi.DeveloperConnect.V1.Model.UserCredential.t() | nil,
          :webhookSecretSecretVersion => String.t() | nil,
          :workspace => String.t() | nil
        }

  field(:authorizerCredential, as: GoogleApi.DeveloperConnect.V1.Model.UserCredential)
  field(:readAuthorizerCredential, as: GoogleApi.DeveloperConnect.V1.Model.UserCredential)
  field(:webhookSecretSecretVersion)
  field(:workspace)
end

defimpl Poison.Decoder, for: GoogleApi.DeveloperConnect.V1.Model.BitbucketCloudConfig do
  def decode(value, options) do
    GoogleApi.DeveloperConnect.V1.Model.BitbucketCloudConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DeveloperConnect.V1.Model.BitbucketCloudConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
