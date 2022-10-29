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

defmodule GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1CertificateReference do
  @moduledoc """
  Error information for removing of a specific certificate on a specific target. A reference to a certificate.

  ## Attributes

  *   `network` (*type:* `String.t`, *default:* `nil`) - Output only. The name of the referencing network.
  *   `orgUnitId` (*type:* `String.t`, *default:* `nil`) - Output only. The obfuscated id of the org unit the referencing network is in.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :network => String.t() | nil,
          :orgUnitId => String.t() | nil
        }

  field(:network)
  field(:orgUnitId)
end

defimpl Poison.Decoder,
  for: GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1CertificateReference do
  def decode(value, options) do
    GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1CertificateReference.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.ChromePolicy.V1.Model.GoogleChromePolicyVersionsV1CertificateReference do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end