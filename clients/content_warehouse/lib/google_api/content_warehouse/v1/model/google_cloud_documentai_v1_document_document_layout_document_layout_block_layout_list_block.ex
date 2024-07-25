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

defmodule GoogleApi.ContentWarehouse.V1.Model.GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock do
  @moduledoc """
  Represents a list type block.

  ## Attributes

  *   `listEntries` (*type:* `list(GoogleApi.ContentWarehouse.V1.Model.GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry.t)`, *default:* `nil`) - List entries that constitute a list block.
  *   `type` (*type:* `String.t`, *default:* `nil`) - Type of the list_entries (if exist). Available options are `ordered` and `unordered`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :listEntries =>
            list(
              GoogleApi.ContentWarehouse.V1.Model.GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry.t()
            )
            | nil,
          :type => String.t() | nil
        }

  field(:listEntries,
    as:
      GoogleApi.ContentWarehouse.V1.Model.GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutListEntry,
    type: :list
  )

  field(:type)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock do
  def decode(value, options) do
    GoogleApi.ContentWarehouse.V1.Model.GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.ContentWarehouse.V1.Model.GoogleCloudDocumentaiV1DocumentDocumentLayoutDocumentLayoutBlockLayoutListBlock do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
