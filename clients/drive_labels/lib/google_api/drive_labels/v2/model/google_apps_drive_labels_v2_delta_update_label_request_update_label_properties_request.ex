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

defmodule GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest do
  @moduledoc """
  Updates basic properties of a Label.

  ## Attributes

  *   `properties` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2LabelProperties.t`, *default:* `nil`) - Required. Label properties to update.
  *   `updateMask` (*type:* `String.t`, *default:* `nil`) - The fields that should be updated. At least one field must be specified. The root `label_properties` is implied and should not be specified. A single `*` can be used as short-hand for updating every field.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :properties =>
            GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2LabelProperties.t() | nil,
          :updateMask => String.t() | nil
        }

  field(:properties, as: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2LabelProperties)
  field(:updateMask)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest do
  def decode(value, options) do
    GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2DeltaUpdateLabelRequestUpdateLabelPropertiesRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
