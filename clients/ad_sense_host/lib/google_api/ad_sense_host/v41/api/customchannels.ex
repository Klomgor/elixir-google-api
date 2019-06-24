# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.AdSenseHost.V41.Api.Customchannels do
  @moduledoc """
  API calls for all endpoints tagged `Customchannels`.
  """

  alias GoogleApi.AdSenseHost.V41.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Delete a specific custom channel from the host AdSense account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AdSenseHost.V41.Connection.t`) - Connection to server
  *   `ad_client_id` (*type:* `String.t`) - Ad client from which to delete the custom channel.
  *   `custom_channel_id` (*type:* `String.t`) - Custom channel to delete.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AdSenseHost.V41.Model.CustomChannel{}}` on success
  *   `{:error, info}` on failure
  """
  @spec adsensehost_customchannels_delete(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.AdSenseHost.V41.Model.CustomChannel.t()} | {:error, Tesla.Env.t()}
  def adsensehost_customchannels_delete(
        connection,
        ad_client_id,
        custom_channel_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:delete)
      |> Request.url("/adclients/{adClientId}/customchannels/{customChannelId}", %{
        "adClientId" => URI.encode(ad_client_id, &URI.char_unreserved?/1),
        "customChannelId" => URI.encode(custom_channel_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AdSenseHost.V41.Model.CustomChannel{}])
  end

  @doc """
  Get a specific custom channel from the host AdSense account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AdSenseHost.V41.Connection.t`) - Connection to server
  *   `ad_client_id` (*type:* `String.t`) - Ad client from which to get the custom channel.
  *   `custom_channel_id` (*type:* `String.t`) - Custom channel to get.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AdSenseHost.V41.Model.CustomChannel{}}` on success
  *   `{:error, info}` on failure
  """
  @spec adsensehost_customchannels_get(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.AdSenseHost.V41.Model.CustomChannel.t()} | {:error, Tesla.Env.t()}
  def adsensehost_customchannels_get(
        connection,
        ad_client_id,
        custom_channel_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/adclients/{adClientId}/customchannels/{customChannelId}", %{
        "adClientId" => URI.encode(ad_client_id, &URI.char_unreserved?/1),
        "customChannelId" => URI.encode(custom_channel_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AdSenseHost.V41.Model.CustomChannel{}])
  end

  @doc """
  Add a new custom channel to the host AdSense account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AdSenseHost.V41.Connection.t`) - Connection to server
  *   `ad_client_id` (*type:* `String.t`) - Ad client to which the new custom channel will be added.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.AdSenseHost.V41.Model.CustomChannel.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AdSenseHost.V41.Model.CustomChannel{}}` on success
  *   `{:error, info}` on failure
  """
  @spec adsensehost_customchannels_insert(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.AdSenseHost.V41.Model.CustomChannel.t()} | {:error, Tesla.Env.t()}
  def adsensehost_customchannels_insert(
        connection,
        ad_client_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/adclients/{adClientId}/customchannels", %{
        "adClientId" => URI.encode(ad_client_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AdSenseHost.V41.Model.CustomChannel{}])
  end

  @doc """
  List all host custom channels in this AdSense account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AdSenseHost.V41.Connection.t`) - Connection to server
  *   `ad_client_id` (*type:* `String.t`) - Ad client for which to list custom channels.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:maxResults` (*type:* `integer()`) - The maximum number of custom channels to include in the response, used for paging.
      *   `:pageToken` (*type:* `String.t`) - A continuation token, used to page through custom channels. To retrieve the next page, set this parameter to the value of "nextPageToken" from the previous response.
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AdSenseHost.V41.Model.CustomChannels{}}` on success
  *   `{:error, info}` on failure
  """
  @spec adsensehost_customchannels_list(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.AdSenseHost.V41.Model.CustomChannels.t()} | {:error, Tesla.Env.t()}
  def adsensehost_customchannels_list(connection, ad_client_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/adclients/{adClientId}/customchannels", %{
        "adClientId" => URI.encode(ad_client_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AdSenseHost.V41.Model.CustomChannels{}])
  end

  @doc """
  Update a custom channel in the host AdSense account. This method supports patch semantics.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AdSenseHost.V41.Connection.t`) - Connection to server
  *   `ad_client_id` (*type:* `String.t`) - Ad client in which the custom channel will be updated.
  *   `custom_channel_id` (*type:* `String.t`) - Custom channel to get.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.AdSenseHost.V41.Model.CustomChannel.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AdSenseHost.V41.Model.CustomChannel{}}` on success
  *   `{:error, info}` on failure
  """
  @spec adsensehost_customchannels_patch(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword(),
          keyword()
        ) :: {:ok, GoogleApi.AdSenseHost.V41.Model.CustomChannel.t()} | {:error, Tesla.Env.t()}
  def adsensehost_customchannels_patch(
        connection,
        ad_client_id,
        custom_channel_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:patch)
      |> Request.url("/adclients/{adClientId}/customchannels", %{
        "adClientId" => URI.encode(ad_client_id, &URI.char_unreserved?/1)
      })
      |> Request.add_param(:query, :customChannelId, custom_channel_id)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AdSenseHost.V41.Model.CustomChannel{}])
  end

  @doc """
  Update a custom channel in the host AdSense account.

  ## Parameters

  *   `connection` (*type:* `GoogleApi.AdSenseHost.V41.Connection.t`) - Connection to server
  *   `ad_client_id` (*type:* `String.t`) - Ad client in which the custom channel will be updated.
  *   `optional_params` (*type:* `keyword()`) - Optional parameters
      *   `:alt` (*type:* `String.t`) - Data format for the response.
      *   `:fields` (*type:* `String.t`) - Selector specifying which fields to include in a partial response.
      *   `:key` (*type:* `String.t`) - API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
      *   `:oauth_token` (*type:* `String.t`) - OAuth 2.0 token for the current user.
      *   `:prettyPrint` (*type:* `boolean()`) - Returns response with indentations and line breaks.
      *   `:quotaUser` (*type:* `String.t`) - An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
      *   `:userIp` (*type:* `String.t`) - Deprecated. Please use quotaUser instead.
      *   `:body` (*type:* `GoogleApi.AdSenseHost.V41.Model.CustomChannel.t`) - 
  *   `opts` (*type:* `keyword()`) - Call options

  ## Returns

  *   `{:ok, %GoogleApi.AdSenseHost.V41.Model.CustomChannel{}}` on success
  *   `{:error, info}` on failure
  """
  @spec adsensehost_customchannels_update(Tesla.Env.client(), String.t(), keyword(), keyword()) ::
          {:ok, GoogleApi.AdSenseHost.V41.Model.CustomChannel.t()} | {:error, Tesla.Env.t()}
  def adsensehost_customchannels_update(
        connection,
        ad_client_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:put)
      |> Request.url("/adclients/{adClientId}/customchannels", %{
        "adClientId" => URI.encode(ad_client_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.AdSenseHost.V41.Model.CustomChannel{}])
  end
end
