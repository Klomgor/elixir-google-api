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

defmodule GoogleApi.Dataflow.V1b3.Model.PerStepNamespaceMetrics do
  @moduledoc """
  Metrics for a particular unfused step and namespace. A metric is uniquely identified by the `metrics_namespace`, `original_step`, `metric name` and `metric_labels`.

  ## Attributes

  *   `metricValues` (*type:* `list(GoogleApi.Dataflow.V1b3.Model.MetricValue.t)`, *default:* `nil`) - Optional. Metrics that are recorded for this namespace and unfused step.
  *   `metricsNamespace` (*type:* `String.t`, *default:* `nil`) - The namespace of these metrics on the worker.
  *   `originalStep` (*type:* `String.t`, *default:* `nil`) - The original system name of the unfused step that these metrics are reported from.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :metricValues => list(GoogleApi.Dataflow.V1b3.Model.MetricValue.t()) | nil,
          :metricsNamespace => String.t() | nil,
          :originalStep => String.t() | nil
        }

  field(:metricValues, as: GoogleApi.Dataflow.V1b3.Model.MetricValue, type: :list)
  field(:metricsNamespace)
  field(:originalStep)
end

defimpl Poison.Decoder, for: GoogleApi.Dataflow.V1b3.Model.PerStepNamespaceMetrics do
  def decode(value, options) do
    GoogleApi.Dataflow.V1b3.Model.PerStepNamespaceMetrics.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataflow.V1b3.Model.PerStepNamespaceMetrics do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end