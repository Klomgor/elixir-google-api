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

defmodule GoogleApi.NetworkServices.V1.Model.ExtensionChainMatchCondition do
  @moduledoc """
  Conditions under which this chain is invoked for a request.

  ## Attributes

  *   `celExpression` (*type:* `String.t`, *default:* `nil`) - Required. A Common Expression Language (CEL) expression that is used to match requests for which the extension chain is executed. For more information, see [CEL matcher language reference](/service-extensions/docs/cel-matcher-language-reference).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :celExpression => String.t() | nil
        }

  field(:celExpression)
end

defimpl Poison.Decoder, for: GoogleApi.NetworkServices.V1.Model.ExtensionChainMatchCondition do
  def decode(value, options) do
    GoogleApi.NetworkServices.V1.Model.ExtensionChainMatchCondition.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.NetworkServices.V1.Model.ExtensionChainMatchCondition do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end