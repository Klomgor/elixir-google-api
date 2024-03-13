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

defmodule GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2Field do
  @moduledoc """
  Defines a field that has a display name, data type, and other configuration options. This field defines the kind of metadata that may be set on a Drive item.

  ## Attributes

  *   `appliedCapabilities` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldAppliedCapabilities.t`, *default:* `nil`) - Output only. The capabilities this user has on this field and its value when the label is applied on Drive items.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time this field was created.
  *   `creator` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2UserInfo.t`, *default:* `nil`) - Output only. The user who created this field.
  *   `dateOptions` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldDateOptions.t`, *default:* `nil`) - Date field options.
  *   `disableTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time this field was disabled. This value has no meaning when the field is not disabled.
  *   `disabler` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2UserInfo.t`, *default:* `nil`) - Output only. The user who disabled this field. This value has no meaning when the field is not disabled.
  *   `displayHints` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldDisplayHints.t`, *default:* `nil`) - Output only. UI display hints for rendering a field.
  *   `id` (*type:* `String.t`, *default:* `nil`) - Output only. The key of a field, unique within a label or library. This value is autogenerated. Matches the regex: `([a-zA-Z0-9])+`
  *   `integerOptions` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldIntegerOptions.t`, *default:* `nil`) - Integer field options.
  *   `lifecycle` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2Lifecycle.t`, *default:* `nil`) - Output only. The lifecycle of this field.
  *   `lockStatus` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2LockStatus.t`, *default:* `nil`) - Output only. The LockStatus of this field.
  *   `properties` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldProperties.t`, *default:* `nil`) - The basic properties of the field.
  *   `publisher` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2UserInfo.t`, *default:* `nil`) - Output only. The user who published this field. This value has no meaning when the field is not published.
  *   `queryKey` (*type:* `String.t`, *default:* `nil`) - Output only. The key to use when constructing Drive search queries to find files based on values defined for this field on files. For example, "`{query_key}` > 2001-01-01".
  *   `schemaCapabilities` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldSchemaCapabilities.t`, *default:* `nil`) - Output only. The capabilities this user has when editing this field.
  *   `selectionOptions` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldSelectionOptions.t`, *default:* `nil`) - Selection field options.
  *   `textOptions` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldTextOptions.t`, *default:* `nil`) - Text field options.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. The time this field was updated.
  *   `updater` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2UserInfo.t`, *default:* `nil`) - Output only. The user who modified this field.
  *   `userOptions` (*type:* `GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldUserOptions.t`, *default:* `nil`) - User field options.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appliedCapabilities =>
            GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldAppliedCapabilities.t()
            | nil,
          :createTime => DateTime.t() | nil,
          :creator => GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2UserInfo.t() | nil,
          :dateOptions =>
            GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldDateOptions.t() | nil,
          :disableTime => DateTime.t() | nil,
          :disabler => GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2UserInfo.t() | nil,
          :displayHints =>
            GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldDisplayHints.t() | nil,
          :id => String.t() | nil,
          :integerOptions =>
            GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldIntegerOptions.t() | nil,
          :lifecycle => GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2Lifecycle.t() | nil,
          :lockStatus =>
            GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2LockStatus.t() | nil,
          :properties =>
            GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldProperties.t() | nil,
          :publisher => GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2UserInfo.t() | nil,
          :queryKey => String.t() | nil,
          :schemaCapabilities =>
            GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldSchemaCapabilities.t()
            | nil,
          :selectionOptions =>
            GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldSelectionOptions.t() | nil,
          :textOptions =>
            GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldTextOptions.t() | nil,
          :updateTime => DateTime.t() | nil,
          :updater => GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2UserInfo.t() | nil,
          :userOptions =>
            GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldUserOptions.t() | nil
        }

  field(:appliedCapabilities,
    as: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldAppliedCapabilities
  )

  field(:createTime, as: DateTime)
  field(:creator, as: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2UserInfo)
  field(:dateOptions, as: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldDateOptions)
  field(:disableTime, as: DateTime)
  field(:disabler, as: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2UserInfo)

  field(:displayHints, as: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldDisplayHints)

  field(:id)

  field(:integerOptions,
    as: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldIntegerOptions
  )

  field(:lifecycle, as: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2Lifecycle)
  field(:lockStatus, as: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2LockStatus)
  field(:properties, as: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldProperties)
  field(:publisher, as: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2UserInfo)
  field(:queryKey)

  field(:schemaCapabilities,
    as: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldSchemaCapabilities
  )

  field(:selectionOptions,
    as: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldSelectionOptions
  )

  field(:textOptions, as: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldTextOptions)
  field(:updateTime, as: DateTime)
  field(:updater, as: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2UserInfo)
  field(:userOptions, as: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2FieldUserOptions)
end

defimpl Poison.Decoder, for: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2Field do
  def decode(value, options) do
    GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2Field.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DriveLabels.V2.Model.GoogleAppsDriveLabelsV2Field do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
