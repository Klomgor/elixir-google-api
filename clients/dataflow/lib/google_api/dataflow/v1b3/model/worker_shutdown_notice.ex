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

defmodule GoogleApi.Dataflow.V1b3.Model.WorkerShutdownNotice do
  @moduledoc """
  Shutdown notification from workers. This is to be sent by the shutdown script of the worker VM so that the backend knows that the VM is being shut down.

  ## Attributes

  - reason (String.t): The reason for the worker shutdown. Current possible values are:   \&quot;UNKNOWN\&quot;: shutdown reason is unknown.   \&quot;PREEMPTION\&quot;: shutdown reason is preemption. Other possible reasons may be added in the future. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :reason => any()
        }

  field(:reason)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.WorkerShutdownNotice do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.WorkerShutdownNotice.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.WorkerShutdownNotice do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
