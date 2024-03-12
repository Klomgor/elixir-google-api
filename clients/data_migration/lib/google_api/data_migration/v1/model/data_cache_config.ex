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

defmodule GoogleApi.DataMigration.V1.Model.DataCacheConfig do
  @moduledoc """
  Data cache is an optional feature available for Cloud SQL for MySQL Enterprise Plus edition only. For more information on data cache, see [Data cache overview](https://cloud.google.com/sql/help/mysql-data-cache) in Cloud SQL documentation.

  ## Attributes

  *   `dataCacheEnabled` (*type:* `boolean()`, *default:* `nil`) - Optional. Whether data cache is enabled for the instance.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :dataCacheEnabled => boolean() | nil
        }

  field(:dataCacheEnabled)
end

defimpl Poison.Decoder, for: GoogleApi.DataMigration.V1.Model.DataCacheConfig do
  def decode(value, options) do
    GoogleApi.DataMigration.V1.Model.DataCacheConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataMigration.V1.Model.DataCacheConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end