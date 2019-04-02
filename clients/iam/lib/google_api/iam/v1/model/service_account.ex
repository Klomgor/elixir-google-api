# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.IAM.V1.Model.ServiceAccount do
  @moduledoc """
  A service account in the Identity and Access Management API.  To create a service account, specify the &#x60;project_id&#x60; and the &#x60;account_id&#x60; for the account.  The &#x60;account_id&#x60; is unique within the project, and is used to generate the service account email address and a stable &#x60;unique_id&#x60;.  If the account already exists, the account&#39;s resource name is returned in the format of projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}. The caller can use the name in other methods to access the account.  All other methods can identify the service account using the format &#x60;projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}&#x60;. Using &#x60;-&#x60; as a wildcard for the &#x60;PROJECT_ID&#x60; will infer the project from the account. The &#x60;ACCOUNT&#x60; value can be the &#x60;email&#x60; address or the &#x60;unique_id&#x60; of the service account.

  ## Attributes

  - description (String.t): Optional. A user-specified opaque description of the service account. Must be less than or equal to 256 UTF-8 bytes. Defaults to: `null`.
  - disabled (boolean()): @OutputOnly A bool indicate if the service account is disabled. The field is currently in alpha phase. Defaults to: `null`.
  - displayName (String.t): Optional. A user-specified name for the service account. Must be less than or equal to 100 UTF-8 bytes. Defaults to: `null`.
  - email (String.t): @OutputOnly The email address of the service account. Defaults to: `null`.
  - etag (binary()): Optional. Note: &#x60;etag&#x60; is an inoperable legacy field that is only returned for backwards compatibility. Defaults to: `null`.
  - name (String.t): The resource name of the service account in the following format: &#x60;projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}&#x60;.  Requests using &#x60;-&#x60; as a wildcard for the &#x60;PROJECT_ID&#x60; will infer the project from the &#x60;account&#x60; and the &#x60;ACCOUNT&#x60; value can be the &#x60;email&#x60; address or the &#x60;unique_id&#x60; of the service account.  In responses the resource name will always be in the format &#x60;projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}&#x60;. Defaults to: `null`.
  - oauth2ClientId (String.t): @OutputOnly The OAuth2 client id for the service account. This is used in conjunction with the OAuth2 clientconfig API to make three legged OAuth2 (3LO) flows to access the data of Google users. Defaults to: `null`.
  - projectId (String.t): @OutputOnly The id of the project that owns the service account. Defaults to: `null`.
  - uniqueId (String.t): @OutputOnly The unique and stable id of the service account. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => any(),
          :disabled => any(),
          :displayName => any(),
          :email => any(),
          :etag => any(),
          :name => any(),
          :oauth2ClientId => any(),
          :projectId => any(),
          :uniqueId => any()
        }

  field(:description)
  field(:disabled)
  field(:displayName)
  field(:email)
  field(:etag)
  field(:name)
  field(:oauth2ClientId)
  field(:projectId)
  field(:uniqueId)
end

defimpl Poison.Decoder, for: GoogleApi.IAM.V1.Model.ServiceAccount do
  def decode(value, options) do
    GoogleApi.IAM.V1.Model.ServiceAccount.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.IAM.V1.Model.ServiceAccount do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
