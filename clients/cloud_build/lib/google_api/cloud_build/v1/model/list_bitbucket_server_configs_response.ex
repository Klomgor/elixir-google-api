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

defmodule GoogleApi.CloudBuild.V1.Model.ListBitbucketServerConfigsResponse do
  @moduledoc """
  RPC response object returned by ListBitbucketServerConfigs RPC method.

  ## Attributes

  *   `bitbucketServerConfigs` (*type:* `list(GoogleApi.CloudBuild.V1.Model.BitbucketServerConfig.t)`, *default:* `nil`) - A list of BitbucketServerConfigs
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token that can be sent as `page_token` to retrieve the next page. If this field is omitted, there are no subsequent pages.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :bitbucketServerConfigs =>
            list(GoogleApi.CloudBuild.V1.Model.BitbucketServerConfig.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:bitbucketServerConfigs,
    as: GoogleApi.CloudBuild.V1.Model.BitbucketServerConfig,
    type: :list
  )

  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.CloudBuild.V1.Model.ListBitbucketServerConfigsResponse do
  def decode(value, options) do
    GoogleApi.CloudBuild.V1.Model.ListBitbucketServerConfigsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudBuild.V1.Model.ListBitbucketServerConfigsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end