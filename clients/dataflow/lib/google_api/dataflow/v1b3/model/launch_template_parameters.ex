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

defmodule GoogleApi.Dataflow.V1b3.Model.LaunchTemplateParameters do
  @moduledoc """
  Parameters to provide to the template being launched.

  ## Attributes

  - parameters (%{optional(String.t) &#x3D;&gt; String.t}): The runtime parameters to pass to the job. Defaults to: `null`.
  - environment (RuntimeEnvironment): The runtime environment for the job. Defaults to: `null`.
  - jobName (String.t): Required. The job name to use for the created job. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :parameters => map(),
          :environment => GoogleApi.Dataflow.V1b3.Model.RuntimeEnvironment.t(),
          :jobName => any()
        }

  field(:parameters, type: :map)
  field(:environment, as: GoogleApi.Dataflow.V1b3.Model.RuntimeEnvironment)
  field(:jobName)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.LaunchTemplateParameters do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.LaunchTemplateParameters.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.LaunchTemplateParameters do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
