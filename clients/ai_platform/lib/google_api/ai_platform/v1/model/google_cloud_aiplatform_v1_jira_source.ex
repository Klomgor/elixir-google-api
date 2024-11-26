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

defmodule GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1JiraSource do
  @moduledoc """
  The Jira source for the ImportRagFilesRequest.

  ## Attributes

  *   `jiraQueries` (*type:* `list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1JiraSourceJiraQueries.t)`, *default:* `nil`) - Required. The Jira queries.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :jiraQueries =>
            list(GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1JiraSourceJiraQueries.t())
            | nil
        }

  field(:jiraQueries,
    as: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1JiraSourceJiraQueries,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1JiraSource do
  def decode(value, options) do
    GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1JiraSource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AIPlatform.V1.Model.GoogleCloudAiplatformV1JiraSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
