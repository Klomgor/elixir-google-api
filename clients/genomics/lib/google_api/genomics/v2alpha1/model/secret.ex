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

defmodule GoogleApi.Genomics.V2alpha1.Model.Secret do
  @moduledoc """
  Holds encrypted information that is only decrypted and stored in RAM by the worker VM when running the pipeline.

  ## Attributes

  *   `cipherText` (*type:* `String.t`, *default:* `nil`) - The value of the cipherText response from the `encrypt` method. This field is intentionally unaudited.
  *   `keyName` (*type:* `String.t`, *default:* `nil`) - The name of the Cloud KMS key that will be used to decrypt the secret value. The VM service account must have the required permissions and authentication scopes to invoke the `decrypt` method on the specified key.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cipherText => String.t() | nil,
          :keyName => String.t() | nil
        }

  field(:cipherText)
  field(:keyName)
end

defimpl Poison.Decoder, for: GoogleApi.Genomics.V2alpha1.Model.Secret do
  def decode(value, options) do
    GoogleApi.Genomics.V2alpha1.Model.Secret.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Genomics.V2alpha1.Model.Secret do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end