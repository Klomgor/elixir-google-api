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

defmodule GoogleApi.MigrationCenter.V1.Model.ImportRowError do
  @moduledoc """
  A resource that reports the import job errors at row level.

  ## Attributes

  *   `csvError` (*type:* `GoogleApi.MigrationCenter.V1.Model.ImportRowErrorCsvErrorDetails.t`, *default:* `nil`) - Error details for a CSV file.
  *   `errors` (*type:* `list(GoogleApi.MigrationCenter.V1.Model.ImportError.t)`, *default:* `nil`) - The list of errors detected in the row.
  *   `rowNumber` (*type:* `integer()`, *default:* `nil`) - The row number where the error was detected.
  *   `vmName` (*type:* `String.t`, *default:* `nil`) - The name of the VM in the row.
  *   `vmUuid` (*type:* `String.t`, *default:* `nil`) - The VM UUID.
  *   `xlsxError` (*type:* `GoogleApi.MigrationCenter.V1.Model.ImportRowErrorXlsxErrorDetails.t`, *default:* `nil`) - Error details for an XLSX file.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :csvError => GoogleApi.MigrationCenter.V1.Model.ImportRowErrorCsvErrorDetails.t() | nil,
          :errors => list(GoogleApi.MigrationCenter.V1.Model.ImportError.t()) | nil,
          :rowNumber => integer() | nil,
          :vmName => String.t() | nil,
          :vmUuid => String.t() | nil,
          :xlsxError =>
            GoogleApi.MigrationCenter.V1.Model.ImportRowErrorXlsxErrorDetails.t() | nil
        }

  field(:csvError, as: GoogleApi.MigrationCenter.V1.Model.ImportRowErrorCsvErrorDetails)
  field(:errors, as: GoogleApi.MigrationCenter.V1.Model.ImportError, type: :list)
  field(:rowNumber)
  field(:vmName)
  field(:vmUuid)
  field(:xlsxError, as: GoogleApi.MigrationCenter.V1.Model.ImportRowErrorXlsxErrorDetails)
end

defimpl Poison.Decoder, for: GoogleApi.MigrationCenter.V1.Model.ImportRowError do
  def decode(value, options) do
    GoogleApi.MigrationCenter.V1.Model.ImportRowError.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.MigrationCenter.V1.Model.ImportRowError do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
