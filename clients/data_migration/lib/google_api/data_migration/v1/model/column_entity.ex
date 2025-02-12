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

defmodule GoogleApi.DataMigration.V1.Model.ColumnEntity do
  @moduledoc """
  Column is not used as an independent entity, it is retrieved as part of a Table entity.

  ## Attributes

  *   `array` (*type:* `boolean()`, *default:* `nil`) - Is the column of array type.
  *   `arrayLength` (*type:* `integer()`, *default:* `nil`) - If the column is array, of which length.
  *   `autoGenerated` (*type:* `boolean()`, *default:* `nil`) - Is the column auto-generated/identity.
  *   `charset` (*type:* `String.t`, *default:* `nil`) - Charset override - instead of table level charset.
  *   `collation` (*type:* `String.t`, *default:* `nil`) - Collation override - instead of table level collation.
  *   `comment` (*type:* `String.t`, *default:* `nil`) - Comment associated with the column.
  *   `computed` (*type:* `boolean()`, *default:* `nil`) - Is the column a computed column.
  *   `customFeatures` (*type:* `map()`, *default:* `nil`) - Custom engine specific features.
  *   `dataType` (*type:* `String.t`, *default:* `nil`) - Column data type.
  *   `defaultValue` (*type:* `String.t`, *default:* `nil`) - Default value of the column.
  *   `fractionalSecondsPrecision` (*type:* `integer()`, *default:* `nil`) - Column fractional second precision - used for timestamp based datatypes.
  *   `length` (*type:* `String.t`, *default:* `nil`) - Column length - e.g. varchar (50).
  *   `name` (*type:* `String.t`, *default:* `nil`) - Column name.
  *   `nullable` (*type:* `boolean()`, *default:* `nil`) - Is the column nullable.
  *   `ordinalPosition` (*type:* `integer()`, *default:* `nil`) - Column order in the table.
  *   `precision` (*type:* `integer()`, *default:* `nil`) - Column precision - when relevant.
  *   `scale` (*type:* `integer()`, *default:* `nil`) - Column scale - when relevant.
  *   `setValues` (*type:* `list(String.t)`, *default:* `nil`) - Specifies the list of values allowed in the column. Only used for set data type.
  *   `udt` (*type:* `boolean()`, *default:* `nil`) - Is the column a UDT.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :array => boolean() | nil,
          :arrayLength => integer() | nil,
          :autoGenerated => boolean() | nil,
          :charset => String.t() | nil,
          :collation => String.t() | nil,
          :comment => String.t() | nil,
          :computed => boolean() | nil,
          :customFeatures => map() | nil,
          :dataType => String.t() | nil,
          :defaultValue => String.t() | nil,
          :fractionalSecondsPrecision => integer() | nil,
          :length => String.t() | nil,
          :name => String.t() | nil,
          :nullable => boolean() | nil,
          :ordinalPosition => integer() | nil,
          :precision => integer() | nil,
          :scale => integer() | nil,
          :setValues => list(String.t()) | nil,
          :udt => boolean() | nil
        }

  field(:array)
  field(:arrayLength)
  field(:autoGenerated)
  field(:charset)
  field(:collation)
  field(:comment)
  field(:computed)
  field(:customFeatures, type: :map)
  field(:dataType)
  field(:defaultValue)
  field(:fractionalSecondsPrecision)
  field(:length)
  field(:name)
  field(:nullable)
  field(:ordinalPosition)
  field(:precision)
  field(:scale)
  field(:setValues, type: :list)
  field(:udt)
end

defimpl Poison.Decoder, for: GoogleApi.DataMigration.V1.Model.ColumnEntity do
  def decode(value, options) do
    GoogleApi.DataMigration.V1.Model.ColumnEntity.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataMigration.V1.Model.ColumnEntity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
