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

defmodule GoogleApi.PubSub.V1.Model.AwsKinesis do
  @moduledoc """
  Ingestion settings for Amazon Kinesis Data Streams.

  ## Attributes

  *   `awsRoleArn` (*type:* `String.t`, *default:* `nil`) - Required. AWS role ARN to be used for Federated Identity authentication with Kinesis. Check the Pub/Sub docs for how to set up this role and the required permissions that need to be attached to it.
  *   `consumerArn` (*type:* `String.t`, *default:* `nil`) - Required. The Kinesis consumer ARN to used for ingestion in Enhanced Fan-Out mode. The consumer must be already created and ready to be used.
  *   `gcpServiceAccount` (*type:* `String.t`, *default:* `nil`) - Required. The GCP service account to be used for Federated Identity authentication with Kinesis (via a `AssumeRoleWithWebIdentity` call for the provided role). The `aws_role_arn` must be set up with `accounts.google.com:sub` equals to this service account number.
  *   `state` (*type:* `String.t`, *default:* `nil`) - Output only. An output-only field that indicates the state of the Kinesis ingestion source.
  *   `streamArn` (*type:* `String.t`, *default:* `nil`) - Required. The Kinesis stream ARN to ingest data from.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :awsRoleArn => String.t() | nil,
          :consumerArn => String.t() | nil,
          :gcpServiceAccount => String.t() | nil,
          :state => String.t() | nil,
          :streamArn => String.t() | nil
        }

  field(:awsRoleArn)
  field(:consumerArn)
  field(:gcpServiceAccount)
  field(:state)
  field(:streamArn)
end

defimpl Poison.Decoder, for: GoogleApi.PubSub.V1.Model.AwsKinesis do
  def decode(value, options) do
    GoogleApi.PubSub.V1.Model.AwsKinesis.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PubSub.V1.Model.AwsKinesis do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end