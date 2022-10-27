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

defmodule GoogleApi.CloudSearch.V1.Model.AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkup do
  @moduledoc """
  Markup that defines conference data associated to a Google Calendar event.

  ## Attributes

  *   `conferenceId` (*type:* `String.t`, *default:* `nil`) - Unique identifier for this conference data. Maximum 512 characters long.
  *   `conferenceSolutionId` (*type:* `String.t`, *default:* `nil`) - An identifier of the conferencing solution. Must match a value from the deployment's `calendar.conferenceSolution.id` field.
  *   `entryPoints` (*type:* `list(GoogleApi.CloudSearch.V1.Model.AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup.t)`, *default:* `nil`) - Entry points to the conference. Maximum 300 entry points are allowed.
  *   `error` (*type:* `GoogleApi.CloudSearch.V1.Model.AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError.t`, *default:* `nil`) - If set, it means an error occurred during conference creation.
  *   `note` (*type:* `String.t`, *default:* `nil`) - Additional notes (such as instructions from the administrator, legal notices) to display to the user. Can contain HTML. Max length 2048 characters.
  *   `parameters` (*type:* `list(GoogleApi.CloudSearch.V1.Model.AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupParameter.t)`, *default:* `nil`) - Additional add-on parameters. Maximum 300 parameters are allowed.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :conferenceId => String.t() | nil,
          :conferenceSolutionId => String.t() | nil,
          :entryPoints =>
            list(
              GoogleApi.CloudSearch.V1.Model.AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup.t()
            )
            | nil,
          :error =>
            GoogleApi.CloudSearch.V1.Model.AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError.t()
            | nil,
          :note => String.t() | nil,
          :parameters =>
            list(
              GoogleApi.CloudSearch.V1.Model.AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupParameter.t()
            )
            | nil
        }

  field(:conferenceId)
  field(:conferenceSolutionId)

  field(:entryPoints,
    as:
      GoogleApi.CloudSearch.V1.Model.AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupEntryPointMarkup,
    type: :list
  )

  field(:error,
    as:
      GoogleApi.CloudSearch.V1.Model.AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupError
  )

  field(:note)

  field(:parameters,
    as:
      GoogleApi.CloudSearch.V1.Model.AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkupParameter,
    type: :list
  )
end

defimpl Poison.Decoder,
  for:
    GoogleApi.CloudSearch.V1.Model.AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkup do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkup.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.CloudSearch.V1.Model.AppsExtensionsMarkupCalendarClientActionMarkupConferenceDataMarkup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end