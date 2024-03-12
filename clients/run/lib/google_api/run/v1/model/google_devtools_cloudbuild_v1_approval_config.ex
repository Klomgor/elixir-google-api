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

defmodule GoogleApi.Run.V1.Model.GoogleDevtoolsCloudbuildV1ApprovalConfig do
  @moduledoc """
  ApprovalConfig describes configuration for manual approval of a build.

  ## Attributes

  *   `approvalRequired` (*type:* `boolean()`, *default:* `nil`) - Whether or not approval is needed. If this is set on a build, it will become pending when created, and will need to be explicitly approved to start.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :approvalRequired => boolean() | nil
        }

  field(:approvalRequired)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V1.Model.GoogleDevtoolsCloudbuildV1ApprovalConfig do
  def decode(value, options) do
    GoogleApi.Run.V1.Model.GoogleDevtoolsCloudbuildV1ApprovalConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V1.Model.GoogleDevtoolsCloudbuildV1ApprovalConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end