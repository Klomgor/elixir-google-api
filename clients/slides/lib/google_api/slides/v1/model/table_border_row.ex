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

defmodule GoogleApi.Slides.V1.Model.TableBorderRow do
  @moduledoc """
  Contents of each border row in a table.

  ## Attributes

  *   `tableBorderCells` (*type:* `list(GoogleApi.Slides.V1.Model.TableBorderCell.t)`, *default:* `nil`) - Properties of each border cell. When a border's adjacent table cells are merged, it is not included in the response.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :tableBorderCells => list(GoogleApi.Slides.V1.Model.TableBorderCell.t())
        }

  field(:tableBorderCells, as: GoogleApi.Slides.V1.Model.TableBorderCell, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Slides.V1.Model.TableBorderRow do
  def decode(value, options) do
    GoogleApi.Slides.V1.Model.TableBorderRow.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Slides.V1.Model.TableBorderRow do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
