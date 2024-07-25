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

defmodule GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestSessionSpec do
  @moduledoc """
  Session specification. Multi-turn Search feature is currently at private GA stage. Please use v1alpha or v1beta version instead before we launch this feature to public GA. Or ask for allowlisting through Google Support team.

  ## Attributes

  *   `queryId` (*type:* `String.t`, *default:* `nil`) - If set, the search result gets stored to the "turn" specified by this query ID. Example: Let's say the session looks like this: session { name: ".../sessions/xxx" turns { query { text: "What is foo?" query_id: ".../questions/yyy" } answer: "Foo is ..." } turns { query { text: "How about bar then?" query_id: ".../questions/zzz" } } } The user can call /search API with a request like this: session: ".../sessions/xxx" session_spec { query_id: ".../questions/zzz" } Then, the API stores the search result, associated with the last turn. The stored search result can be used by a subsequent /answer API call (with the session ID and the query ID specified). Also, it is possible to call /search and /answer in parallel with the same session ID & query ID.
  *   `searchResultPersistenceCount` (*type:* `integer()`, *default:* `nil`) - The number of top search results to persist. The persisted search results can be used for the subsequent /answer api call. This field is simliar to the `summary_result_count` field in SearchRequest.ContentSearchSpec.SummarySpec.summary_result_count. At most 10 results for documents mode, or 50 for chunks mode.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :queryId => String.t() | nil,
          :searchResultPersistenceCount => integer() | nil
        }

  field(:queryId)
  field(:searchResultPersistenceCount)
end

defimpl Poison.Decoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestSessionSpec do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestSessionSpec.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for:
    GoogleApi.DiscoveryEngine.V1beta.Model.GoogleCloudDiscoveryengineV1betaSearchRequestSessionSpec do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
