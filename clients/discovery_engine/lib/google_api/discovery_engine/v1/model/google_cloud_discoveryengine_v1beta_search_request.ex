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

defmodule GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequest do
  @moduledoc """
  Request message for SearchService.Search method.

  ## Attributes

  *   `userLabels` (*type:* `map()`, *default:* `nil`) - The user labels applied to a resource must meet the following requirements: * Each resource can have multiple labels, up to a maximum of 64. * Each label must be a key-value pair. * Keys have a minimum length of 1 character and a maximum length of 63 characters and cannot be empty. Values can be empty and have a maximum length of 63 characters. * Keys and values can contain only lowercase letters, numeric characters, underscores, and dashes. All characters must use UTF-8 encoding, and international characters are allowed. * The key portion of a label must be unique. However, you can use the same key with multiple resources. * Keys must start with a lowercase letter or international character. See [Google Cloud Document](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements) for more details.
  *   `branch` (*type:* `String.t`, *default:* `nil`) - The branch resource name, such as `projects/*/locations/global/collections/default_collection/dataStores/default_data_store/branches/0`. Use `default_branch` as the branch ID or leave this field empty, to search documents under the default branch.
  *   `imageQuery` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestImageQuery.t`, *default:* `nil`) - Raw image query.
  *   `spellCorrectionSpec` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestSpellCorrectionSpec.t`, *default:* `nil`) - The spell correction specification that specifies the mode under which spell correction takes effect.
  *   `oneBoxPageSize` (*type:* `integer()`, *default:* `nil`) - The maximum number of results to return for OneBox. This applies to each OneBox type individually. Default number is 10.
  *   `userInfo` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaUserInfo.t`, *default:* `nil`) - Information about the end user. Highly recommended for analytics and personalization. UserInfo.user_agent is used to deduce `device_type` for analytics.
  *   `dataStoreSpecs` (*type:* `list(GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestDataStoreSpec.t)`, *default:* `nil`) - Specs defining DataStores to filter on in a search call and configurations for those data stores. This is only considered for Engines with multiple data stores. For engines with a single data store, the specs directly under SearchRequest should be used.
  *   `facetSpecs` (*type:* `list(GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpec.t)`, *default:* `nil`) - Facet specifications for faceted search. If empty, no facets are returned. A maximum of 100 values are allowed. Otherwise, an `INVALID_ARGUMENT` error is returned.
  *   `rankingExpression` (*type:* `String.t`, *default:* `nil`) - The ranking expression controls the customized ranking on retrieval documents. This overrides ServingConfig.ranking_expression. The syntax and supported features depend on the ranking_expression_backend value. If ranking_expression_backend is not provided, it defaults to BYOE. === BYOE === If ranking expression is not provided or set to BYOE, it should be a single function or multiple functions that are joined by "+". * ranking_expression = function, { " + ", function }; Supported functions: * double * relevance_score * double * dotProduct(embedding_field_path) Function variables: * `relevance_score`: pre-defined keywords, used for measure relevance between query and document. * `embedding_field_path`: the document embedding field used with query embedding vector. * `dotProduct`: embedding function between embedding_field_path and query embedding vector. Example ranking expression: If document has an embedding field doc_embedding, the ranking expression could be `0.5 * relevance_score + 0.3 * dotProduct(doc_embedding)`. === CLEARBOX === If ranking expression is set to CLEARBOX, the following expression types (and combinations of those chained using + or * operators) are supported: * double * signal * log(signal) * exp(signal) * rr(signal, double > 0) -- reciprocal rank transformation with second argument being a denominator constant. * is_nan(signal) -- returns 0 if signal is NaN, 1 otherwise. * fill_nan(signal1, signal2 | double) -- if signal1 is NaN, returns signal2 | double, else returns signal1. Examples: * 0.2 * gecko_score + 0.8 * log(bm25_score) * 0.2 * exp(fill_nan(gecko_score, 0)) + 0.3 * is_nan(bm25_score) * 0.2 * rr(gecko_score, 16) + 0.8 * rr(bm25_score, 32) The following signals are supported: * gecko_score -- semantic similarity adjustment * bm25_score -- keyword match adjustment * jetstream_score -- semantic relevance adjustment * pctr_rank -- predicted conversion rate adjustment as a rank * freshness_rank -- freshness adjustment as a rank * base_rank -- the default rank of the result
  *   `pageSize` (*type:* `integer()`, *default:* `nil`) - Maximum number of Documents to return. The maximum allowed value depends on the data type. Values above the maximum value are coerced to the maximum value. * Websites with basic indexing: Default `10`, Maximum `25`. * Websites with advanced indexing: Default `25`, Maximum `50`. * Other: Default `50`, Maximum `100`. If this field is negative, an `INVALID_ARGUMENT` is returned.
  *   `relevanceThreshold` (*type:* `String.t`, *default:* `nil`) - The relevance threshold of the search results. Default to Google defined threshold, leveraging a balance of precision and recall to deliver both highly accurate results and comprehensive coverage of relevant information.
  *   `languageCode` (*type:* `String.t`, *default:* `nil`) - The BCP-47 language code, such as "en-US" or "sr-Latn". For more information, see [Standard fields](https://cloud.google.com/apis/design/standard_fields). This field helps to better interpret the query. If a value isn't specified, the query language code is automatically detected, which may not be accurate.
  *   `rankingExpressionBackend` (*type:* `String.t`, *default:* `nil`) - Optional. The backend to use for the ranking expression evaluation.
  *   `canonicalFilter` (*type:* `String.t`, *default:* `nil`) - The default filter that is applied when a user performs a search without checking any filters on the search page. The filter applied to every search request when quality improvement such as query expansion is needed. In the case a query does not have a sufficient amount of results this filter will be used to determine whether or not to enable the query expansion flow. The original filter will still be used for the query expanded search. This field is strongly recommended to achieve high search quality. For more information about filter syntax, see SearchRequest.filter.
  *   `searchAsYouTypeSpec` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestSearchAsYouTypeSpec.t`, *default:* `nil`) - Search as you type configuration. Only supported for the IndustryVertical.MEDIA vertical.
  *   `sessionSpec` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestSessionSpec.t`, *default:* `nil`) - Session specification. Can be used only when `session` is set.
  *   `boostSpec` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec.t`, *default:* `nil`) - Boost specification to boost certain documents. For more information on boosting, see [Boosting](https://cloud.google.com/generative-ai-app-builder/docs/boost-search-results)
  *   `contentSearchSpec` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpec.t`, *default:* `nil`) - A specification for configuring the behavior of content search.
  *   `regionCode` (*type:* `String.t`, *default:* `nil`) - The Unicode country/region code (CLDR) of a location, such as "US" and "419". For more information, see [Standard fields](https://cloud.google.com/apis/design/standard_fields). If set, then results will be boosted based on the region_code provided.
  *   `embeddingSpec` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpec.t`, *default:* `nil`) - Uses the provided embedding to do additional semantic document retrieval. The retrieval is based on the dot product of SearchRequest.EmbeddingSpec.EmbeddingVector.vector and the document embedding that is provided in SearchRequest.EmbeddingSpec.EmbeddingVector.field_path. If SearchRequest.EmbeddingSpec.EmbeddingVector.field_path is not provided, it will use ServingConfig.EmbeddingConfig.field_path.
  *   `session` (*type:* `String.t`, *default:* `nil`) - The session resource name. Optional. Session allows users to do multi-turn /search API calls or coordination between /search API calls and /answer API calls. Example #1 (multi-turn /search API calls): 1. Call /search API with the auto-session mode (see below). 2. Call /search API with the session ID generated in the first call. Here, the previous search query gets considered in query standing. I.e., if the first query is "How did Alphabet do in 2022?" and the current query is "How about 2023?", the current query will be interpreted as "How did Alphabet do in 2023?". Example #2 (coordination between /search API calls and /answer API calls): 1. Call /search API with the auto-session mode (see below). 2. Call /answer API with the session ID generated in the first call. Here, the answer generation happens in the context of the search results from the first search call. Auto-session mode: when `projects/.../sessions/-` is used, a new session gets automatically created. Otherwise, users can use the create-session API to create a session manually. Multi-turn Search feature is currently at private GA stage. Please use v1alpha or v1beta version instead before we launch this feature to public GA. Or ask for allowlisting through Google Support team.
  *   `filter` (*type:* `String.t`, *default:* `nil`) - The filter syntax consists of an expression language for constructing a predicate from one or more fields of the documents being filtered. Filter expression is case-sensitive. If this field is unrecognizable, an `INVALID_ARGUMENT` is returned. Filtering in Vertex AI Search is done by mapping the LHS filter key to a key property defined in the Vertex AI Search backend -- this mapping is defined by the customer in their schema. For example a media customer might have a field 'name' in their schema. In this case the filter would look like this: filter --> name:'ANY("king kong")' For more information about filtering including syntax and filter operators, see [Filter](https://cloud.google.com/generative-ai-app-builder/docs/filter-search-metadata)
  *   `orderBy` (*type:* `String.t`, *default:* `nil`) - The order in which documents are returned. Documents can be ordered by a field in an Document object. Leave it unset if ordered by relevance. `order_by` expression is case-sensitive. For more information on ordering the website search results, see [Order web search results](https://cloud.google.com/generative-ai-app-builder/docs/order-web-search-results). For more information on ordering the healthcare search results, see [Order healthcare search results](https://cloud.google.com/generative-ai-app-builder/docs/order-hc-results). If this field is unrecognizable, an `INVALID_ARGUMENT` is returned.
  *   `queryExpansionSpec` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestQueryExpansionSpec.t`, *default:* `nil`) - The query expansion specification that specifies the conditions under which query expansion occurs.
  *   `safeSearch` (*type:* `boolean()`, *default:* `nil`) - Whether to turn on safe search. This is only supported for website search.
  *   `userPseudoId` (*type:* `String.t`, *default:* `nil`) - A unique identifier for tracking visitors. For example, this could be implemented with an HTTP cookie, which should be able to uniquely identify a visitor on a single device. This unique identifier should not change if the visitor logs in or out of the website. This field should NOT have a fixed value such as `unknown_visitor`. This should be the same identifier as UserEvent.user_pseudo_id and CompleteQueryRequest.user_pseudo_id The field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an `INVALID_ARGUMENT` error is returned.
  *   `params` (*type:* `map()`, *default:* `nil`) - Additional search parameters. For public website search only, supported values are: * `user_country_code`: string. Default empty. If set to non-empty, results are restricted or boosted based on the location provided. For example, `user_country_code: "au"` For available codes see [Country Codes](https://developers.google.com/custom-search/docs/json_api_reference#countryCodes) * `search_type`: double. Default empty. Enables non-webpage searching depending on the value. The only valid non-default value is 1, which enables image searching. For example, `search_type: 1`
  *   `offset` (*type:* `integer()`, *default:* `nil`) - A 0-indexed integer that specifies the current offset (that is, starting result location, amongst the Documents deemed by the API as relevant) in search results. This field is only considered if page_token is unset. If this field is negative, an `INVALID_ARGUMENT` is returned.
  *   `pageToken` (*type:* `String.t`, *default:* `nil`) - A page token received from a previous SearchService.Search call. Provide this to retrieve the subsequent page. When paginating, all other parameters provided to SearchService.Search must match the call that provided the page token. Otherwise, an `INVALID_ARGUMENT` error is returned.
  *   `query` (*type:* `String.t`, *default:* `nil`) - Raw search query.
  *   `servingConfig` (*type:* `String.t`, *default:* `nil`) - Required. The resource name of the Search serving config, such as `projects/*/locations/global/collections/default_collection/engines/*/servingConfigs/default_serving_config`, or `projects/*/locations/global/collections/default_collection/dataStores/default_data_store/servingConfigs/default_serving_config`. This field is used to identify the serving configuration name, set of models used to make the search.
  *   `naturalLanguageQueryUnderstandingSpec` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestNaturalLanguageQueryUnderstandingSpec.t`, *default:* `nil`) - If `naturalLanguageQueryUnderstandingSpec` is not specified, no additional natural language query understanding will be done.
  *   `personalizationSpec` (*type:* `GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestPersonalizationSpec.t`, *default:* `nil`) - The specification for personalization. Notice that if both ServingConfig.personalization_spec and SearchRequest.personalization_spec are set, SearchRequest.personalization_spec overrides ServingConfig.personalization_spec.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :userLabels => map() | nil,
          :branch => String.t() | nil,
          :imageQuery =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestImageQuery.t()
            | nil,
          :spellCorrectionSpec =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestSpellCorrectionSpec.t()
            | nil,
          :oneBoxPageSize => integer() | nil,
          :userInfo =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaUserInfo.t() | nil,
          :dataStoreSpecs =>
            list(
              GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestDataStoreSpec.t()
            )
            | nil,
          :facetSpecs =>
            list(
              GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpec.t()
            )
            | nil,
          :rankingExpression => String.t() | nil,
          :pageSize => integer() | nil,
          :relevanceThreshold => String.t() | nil,
          :languageCode => String.t() | nil,
          :rankingExpressionBackend => String.t() | nil,
          :canonicalFilter => String.t() | nil,
          :searchAsYouTypeSpec =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestSearchAsYouTypeSpec.t()
            | nil,
          :sessionSpec =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestSessionSpec.t()
            | nil,
          :boostSpec =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec.t()
            | nil,
          :contentSearchSpec =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpec.t()
            | nil,
          :regionCode => String.t() | nil,
          :embeddingSpec =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpec.t()
            | nil,
          :session => String.t() | nil,
          :filter => String.t() | nil,
          :orderBy => String.t() | nil,
          :queryExpansionSpec =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestQueryExpansionSpec.t()
            | nil,
          :safeSearch => boolean() | nil,
          :userPseudoId => String.t() | nil,
          :params => map() | nil,
          :offset => integer() | nil,
          :pageToken => String.t() | nil,
          :query => String.t() | nil,
          :servingConfig => String.t() | nil,
          :naturalLanguageQueryUnderstandingSpec =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestNaturalLanguageQueryUnderstandingSpec.t()
            | nil,
          :personalizationSpec =>
            GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestPersonalizationSpec.t()
            | nil
        }

  field(:userLabels, type: :map)
  field(:branch)

  field(:imageQuery,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestImageQuery
  )

  field(:spellCorrectionSpec,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestSpellCorrectionSpec
  )

  field(:oneBoxPageSize)

  field(:userInfo, as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaUserInfo)

  field(:dataStoreSpecs,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestDataStoreSpec,
    type: :list
  )

  field(:facetSpecs,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestFacetSpec,
    type: :list
  )

  field(:rankingExpression)
  field(:pageSize)
  field(:relevanceThreshold)
  field(:languageCode)
  field(:rankingExpressionBackend)
  field(:canonicalFilter)

  field(:searchAsYouTypeSpec,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestSearchAsYouTypeSpec
  )

  field(:sessionSpec,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestSessionSpec
  )

  field(:boostSpec,
    as: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestBoostSpec
  )

  field(:contentSearchSpec,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestContentSearchSpec
  )

  field(:regionCode)

  field(:embeddingSpec,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestEmbeddingSpec
  )

  field(:session)
  field(:filter)
  field(:orderBy)

  field(:queryExpansionSpec,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestQueryExpansionSpec
  )

  field(:safeSearch)
  field(:userPseudoId)
  field(:params, type: :map)
  field(:offset)
  field(:pageToken)
  field(:query)
  field(:servingConfig)

  field(:naturalLanguageQueryUnderstandingSpec,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestNaturalLanguageQueryUnderstandingSpec
  )

  field(:personalizationSpec,
    as:
      GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequestPersonalizationSpec
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequest do
  def decode(value, options) do
    GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DiscoveryEngine.V1.Model.GoogleCloudDiscoveryengineV1betaSearchRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
