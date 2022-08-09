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

defmodule GoogleApi.CloudSearch.V1.Model.AppsDynamiteFormatMetadata do
  @moduledoc """
  Annotation metadata for markup formatting

  ## Attributes

  *   `fontColor` (*type:* `integer()`, *default:* `nil`) - Font color is set if and only if format_type is FONT_COLOR. The components are stored as (alpha << 24) | (red << 16) | (green << 8) | blue. Clients should always set the alpha component to 0xFF. NEXT TAG: 3
  *   `formatType` (*type:* `String.t`, *default:* `nil`) - LINT.ThenChange(//depot/google3/apps/dynamite/v1/web/datakeys/annotated_span.proto)
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :fontColor => integer() | nil,
          :formatType => String.t() | nil
        }

  field(:fontColor)
  field(:formatType)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteFormatMetadata do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.AppsDynamiteFormatMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.AppsDynamiteFormatMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end