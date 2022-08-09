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

defmodule GoogleApi.CloudSearch.V1.Model.CseInfo do
  @moduledoc """
  Information needed for Client-side Encryption.

  ## Attributes

  *   `cseDomain` (*type:* `String.t`, *default:* `nil`) - CSE domain name claimed by the meeting owner's company. This field is expected to be used for display purposes only, i.e., "Extra encryption added by $cse_domain". It can differ from the `cse_domain` as defined elsewhere on the User, in the case of cross-domain meetings.
  *   `wrappedKey` (*type:* `String.t`, *default:* `nil`) - The wrapped CSE key used by this conference.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :cseDomain => String.t() | nil,
          :wrappedKey => String.t() | nil
        }

  field(:cseDomain)
  field(:wrappedKey)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.CseInfo do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.CseInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.CseInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end