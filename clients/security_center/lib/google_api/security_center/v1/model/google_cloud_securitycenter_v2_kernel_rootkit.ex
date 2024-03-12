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

defmodule GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2KernelRootkit do
  @moduledoc """
  Kernel mode rootkit signatures.

  ## Attributes

  *   `name` (*type:* `String.t`, *default:* `nil`) - Rootkit name, when available.
  *   `unexpectedCodeModification` (*type:* `boolean()`, *default:* `nil`) - True if unexpected modifications of kernel code memory are present.
  *   `unexpectedFtraceHandler` (*type:* `boolean()`, *default:* `nil`) - True if `ftrace` points are present with callbacks pointing to regions that are not in the expected kernel or module code range.
  *   `unexpectedInterruptHandler` (*type:* `boolean()`, *default:* `nil`) - True if interrupt handlers that are are not in the expected kernel or module code regions are present.
  *   `unexpectedKernelCodePages` (*type:* `boolean()`, *default:* `nil`) - True if kernel code pages that are not in the expected kernel or module code regions are present.
  *   `unexpectedKprobeHandler` (*type:* `boolean()`, *default:* `nil`) - True if `kprobe` points are present with callbacks pointing to regions that are not in the expected kernel or module code range.
  *   `unexpectedProcessesInRunqueue` (*type:* `boolean()`, *default:* `nil`) - True if unexpected processes in the scheduler run queue are present. Such processes are in the run queue, but not in the process task list.
  *   `unexpectedReadOnlyDataModification` (*type:* `boolean()`, *default:* `nil`) - True if unexpected modifications of kernel read-only data memory are present.
  *   `unexpectedSystemCallHandler` (*type:* `boolean()`, *default:* `nil`) - True if system call handlers that are are not in the expected kernel or module code regions are present.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :name => String.t() | nil,
          :unexpectedCodeModification => boolean() | nil,
          :unexpectedFtraceHandler => boolean() | nil,
          :unexpectedInterruptHandler => boolean() | nil,
          :unexpectedKernelCodePages => boolean() | nil,
          :unexpectedKprobeHandler => boolean() | nil,
          :unexpectedProcessesInRunqueue => boolean() | nil,
          :unexpectedReadOnlyDataModification => boolean() | nil,
          :unexpectedSystemCallHandler => boolean() | nil
        }

  field(:name)
  field(:unexpectedCodeModification)
  field(:unexpectedFtraceHandler)
  field(:unexpectedInterruptHandler)
  field(:unexpectedKernelCodePages)
  field(:unexpectedKprobeHandler)
  field(:unexpectedProcessesInRunqueue)
  field(:unexpectedReadOnlyDataModification)
  field(:unexpectedSystemCallHandler)
end

defimpl Poison.Decoder,
  for: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2KernelRootkit do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2KernelRootkit.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.SecurityCenter.V1.Model.GoogleCloudSecuritycenterV2KernelRootkit do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end