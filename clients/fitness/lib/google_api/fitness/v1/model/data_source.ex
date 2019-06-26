# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Fitness.V1.Model.DataSource do
  @moduledoc """
  Definition of a unique source of sensor data. Data sources can expose raw data coming from hardware sensors on local or companion devices. They can also expose derived data, created by transforming or merging other data sources. Multiple data sources can exist for the same data type. Every data point inserted into or read from this service has an associated data source.

  The data source contains enough information to uniquely identify its data, including the hardware device and the application that collected and/or transformed the data. It also holds useful metadata, such as the hardware and application versions, and the device type.

  Each data source produces a unique stream of data, with a unique identifier. Not all changes to data source affect the stream identifier, so that data collected by updated versions of the same application/device can still be considered to belong to the same data stream.

  ## Attributes

  *   `application` (*type:* `GoogleApi.Fitness.V1.Model.Application.t`, *default:* `nil`) - Information about an application which feeds sensor data into the platform.
  *   `dataQualityStandard` (*type:* `list(String.t)`, *default:* `nil`) - DO NOT POPULATE THIS FIELD. It is never populated in responses from the platform, and is ignored in queries. It will be removed in a future version entirely.
  *   `dataStreamId` (*type:* `String.t`, *default:* `nil`) - A unique identifier for the data stream produced by this data source. The identifier includes:

       
      - The physical device's manufacturer, model, and serial number (UID). 
      - The application's package name or name. Package name is used when the data source was created by an Android application. The developer project number is used when the data source was created by a REST client. 
      - The data source's type. 
      - The data source's stream name.  Note that not all attributes of the data source are used as part of the stream identifier. In particular, the version of the hardware/the application isn't used. This allows us to preserve the same stream through version updates. This also means that two DataSource objects may represent the same data stream even if they're not equal.

      The exact format of the data stream ID created by an Android application is: type:dataType.name:application.packageName:device.manufacturer:device.model:device.uid:dataStreamName 

      The exact format of the data stream ID created by a REST client is: type:dataType.name:developer project number:device.manufacturer:device.model:device.uid:dataStreamName 

      When any of the optional fields that make up the data stream ID are absent, they will be omitted from the data stream ID. The minimum viable data stream ID would be: type:dataType.name:developer project number

      Finally, the developer project number is obfuscated when read by any REST or Android client that did not create the data source. Only the data source creator will see the developer project number in clear and normal form.
  *   `dataStreamName` (*type:* `String.t`, *default:* `nil`) - The stream name uniquely identifies this particular data source among other data sources of the same type from the same underlying producer. Setting the stream name is optional, but should be done whenever an application exposes two streams for the same data type, or when a device has two equivalent sensors.
  *   `dataType` (*type:* `GoogleApi.Fitness.V1.Model.DataType.t`, *default:* `nil`) - The data type defines the schema for a stream of data being collected by, inserted into, or queried from the Fitness API.
  *   `device` (*type:* `GoogleApi.Fitness.V1.Model.Device.t`, *default:* `nil`) - Representation of an integrated device (such as a phone or a wearable) that can hold sensors.
  *   `name` (*type:* `String.t`, *default:* `nil`) - An end-user visible name for this data source.
  *   `type` (*type:* `String.t`, *default:* `nil`) - A constant describing the type of this data source. Indicates whether this data source produces raw or derived data.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :application => GoogleApi.Fitness.V1.Model.Application.t(),
          :dataQualityStandard => list(String.t()),
          :dataStreamId => String.t(),
          :dataStreamName => String.t(),
          :dataType => GoogleApi.Fitness.V1.Model.DataType.t(),
          :device => GoogleApi.Fitness.V1.Model.Device.t(),
          :name => String.t(),
          :type => String.t()
        }

  field(:application, as: GoogleApi.Fitness.V1.Model.Application)
  field(:dataQualityStandard, type: :list)
  field(:dataStreamId)
  field(:dataStreamName)
  field(:dataType, as: GoogleApi.Fitness.V1.Model.DataType)
  field(:device, as: GoogleApi.Fitness.V1.Model.Device)
  field(:name)
  field(:type)
end

defimpl Poison.Decoder, for: GoogleApi.Fitness.V1.Model.DataSource do
  def decode(value, options) do
    GoogleApi.Fitness.V1.Model.DataSource.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Fitness.V1.Model.DataSource do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
