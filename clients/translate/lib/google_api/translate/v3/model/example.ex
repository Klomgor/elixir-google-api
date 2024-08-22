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

defmodule GoogleApi.Translate.V3.Model.Example do
  @moduledoc """
  A sentence pair.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. The resource name of the example, in form of `projects/{project-number-or-id}/locations/{location_id}/datasets/{dataset_id}/examples/{example_id}`
  *   `sourceText` (*type:* `String.t`, *default:* `nil`) - Sentence in source language.
  *   `targetText` (*type:* `String.t`, *default:* `nil`) - Sentence in target language.
  *   `usage` (*type:* `String.t`, *default:* `nil`) - Output only. Usage of the sentence pair. Options are TRAIN|VALIDATION|TEST.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :sourceText => String.t() | nil,
          :targetText => String.t() | nil,
          :usage => String.t() | nil
        }

  field(:name)
  field(:sourceText)
  field(:targetText)
  field(:usage)
end

defimpl Poison.Decoder, for: GoogleApi.Translate.V3.Model.Example do
  def decode(value, options) do
    GoogleApi.Translate.V3.Model.Example.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Translate.V3.Model.Example do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
