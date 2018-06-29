# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.FirebaseDynamicLinks.V1.Model.IosInfo do
  @moduledoc """
  iOS related attributes to the Dynamic Link..

  ## Attributes

  - iosAppStoreId (String.t): iOS App Store ID. Defaults to: `null`.
  - iosBundleId (String.t): iOS bundle ID of the app. Defaults to: `null`.
  - iosCustomScheme (String.t): Custom (destination) scheme to use for iOS. By default, we’ll use the bundle ID as the custom scheme. Developer can override this behavior using this param. Defaults to: `null`.
  - iosFallbackLink (String.t): Link to open on iOS if the app is not installed. Defaults to: `null`.
  - iosIpadBundleId (String.t): iPad bundle ID of the app. Defaults to: `null`.
  - iosIpadFallbackLink (String.t): If specified, this overrides the ios_fallback_link value on iPads. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :iosAppStoreId => any(),
          :iosBundleId => any(),
          :iosCustomScheme => any(),
          :iosFallbackLink => any(),
          :iosIpadBundleId => any(),
          :iosIpadFallbackLink => any()
        }

  field(:iosAppStoreId)
  field(:iosBundleId)
  field(:iosCustomScheme)
  field(:iosFallbackLink)
  field(:iosIpadBundleId)
  field(:iosIpadFallbackLink)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseDynamicLinks.V1.Model.IosInfo do
  def decode(value, options) do
    GoogleApi.FirebaseDynamicLinks.V1.Model.IosInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseDynamicLinks.V1.Model.IosInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
