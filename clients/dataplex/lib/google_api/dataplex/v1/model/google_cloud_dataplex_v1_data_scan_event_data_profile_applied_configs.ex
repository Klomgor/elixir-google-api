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

defmodule GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataScanEventDataProfileAppliedConfigs do
  @moduledoc """
  Applied configs for data profile type data scan job.

  ## Attributes

  *   `columnFilterApplied` (*type:* `boolean()`, *default:* `nil`) - Boolean indicating whether a column filter was applied in the DataScan job.
  *   `rowFilterApplied` (*type:* `boolean()`, *default:* `nil`) - Boolean indicating whether a row filter was applied in the DataScan job.
  *   `samplingPercent` (*type:* `number()`, *default:* `nil`) - The percentage of the records selected from the dataset for DataScan. Value ranges between 0.0 and 100.0. Value 0.0 or 100.0 imply that sampling was not applied.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :columnFilterApplied => boolean() | nil,
          :rowFilterApplied => boolean() | nil,
          :samplingPercent => number() | nil
        }

  field(:columnFilterApplied)
  field(:rowFilterApplied)
  field(:samplingPercent)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataScanEventDataProfileAppliedConfigs do
  def decode(value, options) do
    GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataScanEventDataProfileAppliedConfigs.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dataplex.V1.Model.GoogleCloudDataplexV1DataScanEventDataProfileAppliedConfigs do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end