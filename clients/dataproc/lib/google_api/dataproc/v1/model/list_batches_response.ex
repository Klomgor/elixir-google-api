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

defmodule GoogleApi.Dataproc.V1.Model.ListBatchesResponse do
  @moduledoc """
  A list of batch workloads.

  ## Attributes

  *   `batches` (*type:* `list(GoogleApi.Dataproc.V1.Model.Batch.t)`, *default:* `nil`) - The batches from the specified collection.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - A token, which can be sent as page_token to retrieve the next page. If this field is omitted, there are no subsequent pages.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :batches => list(GoogleApi.Dataproc.V1.Model.Batch.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:batches, as: GoogleApi.Dataproc.V1.Model.Batch, type: :list)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.ListBatchesResponse do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.ListBatchesResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.ListBatchesResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end