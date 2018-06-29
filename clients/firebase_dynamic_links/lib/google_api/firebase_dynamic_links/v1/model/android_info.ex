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

defmodule GoogleApi.FirebaseDynamicLinks.V1.Model.AndroidInfo do
  @moduledoc """
  Android related attributes to the Dynamic Link.

  ## Attributes

  - androidFallbackLink (String.t): Link to open on Android if the app is not installed. Defaults to: `null`.
  - androidLink (String.t): If specified, this overrides the ‘link’ parameter on Android. Defaults to: `null`.
  - androidMinPackageVersionCode (String.t): Minimum version code for the Android app. If the installed app’s version code is lower, then the user is taken to the Play Store. Defaults to: `null`.
  - androidPackageName (String.t): Android package name of the app. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :androidFallbackLink => any(),
          :androidLink => any(),
          :androidMinPackageVersionCode => any(),
          :androidPackageName => any()
        }

  field(:androidFallbackLink)
  field(:androidLink)
  field(:androidMinPackageVersionCode)
  field(:androidPackageName)
end

defimpl Poison.Decoder, for: GoogleApi.FirebaseDynamicLinks.V1.Model.AndroidInfo do
  def decode(value, options) do
    GoogleApi.FirebaseDynamicLinks.V1.Model.AndroidInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.FirebaseDynamicLinks.V1.Model.AndroidInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
