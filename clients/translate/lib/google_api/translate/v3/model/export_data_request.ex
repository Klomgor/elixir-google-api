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

defmodule GoogleApi.Translate.V3.Model.ExportDataRequest do
  @moduledoc """
  Request message for ExportData.

  ## Attributes

  *   `outputConfig` (*type:* `GoogleApi.Translate.V3.Model.DatasetOutputConfig.t`, *default:* `nil`) - Required. The config for the output content.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :outputConfig => GoogleApi.Translate.V3.Model.DatasetOutputConfig.t() | nil
        }

  field(:outputConfig, as: GoogleApi.Translate.V3.Model.DatasetOutputConfig)
end

defimpl Poison.Decoder, for: GoogleApi.Translate.V3.Model.ExportDataRequest do
  def decode(value, options) do
    GoogleApi.Translate.V3.Model.ExportDataRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Translate.V3.Model.ExportDataRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end