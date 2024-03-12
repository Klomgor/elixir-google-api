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

defmodule GoogleApi.Connectors.V1.Model.EventType do
  @moduledoc """
  EventType includes fields.

  ## Attributes

  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Created time.
  *   `enrichedEventPayloadSchema` (*type:* `String.t`, *default:* `nil`) - Output only. Schema of the event payload after enriched. Will be null if read before send is not supported.
  *   `entityType` (*type:* `String.t`, *default:* `nil`) - Output only. Runtime entity type name. Will be null if entity type map is not available. Used for read before send feature.
  *   `eventPayloadSchema` (*type:* `String.t`, *default:* `nil`) - Output only. Schema of webhook event payload.
  *   `eventTypeId` (*type:* `String.t`, *default:* `nil`) - Output only. Event type id. Example: `ticket.created`.
  *   `idPath` (*type:* `String.t`, *default:* `nil`) - Output only. Id path denotes the path of id in webhook payload.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Resource name of the eventtype. Format: projects/{project}/locations/{location}/providers/{provider}/connectors/{connector}/versions/{version}/eventtypes/{eventtype} Only global location is supported for Connector resource.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Updated time.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createTime => DateTime.t() | nil,
          :enrichedEventPayloadSchema => String.t() | nil,
          :entityType => String.t() | nil,
          :eventPayloadSchema => String.t() | nil,
          :eventTypeId => String.t() | nil,
          :idPath => String.t() | nil,
          :name => String.t() | nil,
          :updateTime => DateTime.t() | nil
        }

  field(:createTime, as: DateTime)
  field(:enrichedEventPayloadSchema)
  field(:entityType)
  field(:eventPayloadSchema)
  field(:eventTypeId)
  field(:idPath)
  field(:name)
  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.Connectors.V1.Model.EventType do
  def decode(value, options) do
    GoogleApi.Connectors.V1.Model.EventType.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Connectors.V1.Model.EventType do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end