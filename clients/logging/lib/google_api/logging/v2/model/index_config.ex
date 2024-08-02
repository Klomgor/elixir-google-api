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

defmodule GoogleApi.Logging.V2.Model.IndexConfig do
  @moduledoc """
  Configuration for an indexed field.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The timestamp when the index was last modified.This is used to return the timestamp, and will be ignored if supplied during update.
  *   `fieldPath` (*type:* `String.t`, *default:* `nil`) - Required. The LogEntry field path to index.Note that some paths are automatically indexed, and other paths are not eligible for indexing. See indexing documentation( https://cloud.google.com/logging/docs/analyze/custom-index) for details.For example: jsonPayload.request.status
  *   `type` (*type:* `String.t`, *default:* `nil`) - Required. The type of data in this index.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :fieldPath => String.t() | nil,
          :type => String.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:fieldPath)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Logging.V2.Model.IndexConfig do
  def decode(value, options) do
    GoogleApi.Logging.V2.Model.IndexConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Logging.V2.Model.IndexConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
