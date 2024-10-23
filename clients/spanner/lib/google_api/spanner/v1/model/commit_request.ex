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

defmodule GoogleApi.Spanner.V1.Model.CommitRequest do
  @moduledoc """
  The request for Commit.

  ## Attributes

  *   `maxCommitDelay` (*type:* `String.t`, *default:* `nil`) - Optional. The amount of latency this request is configured to incur in order to improve throughput. If this field is not set, Spanner assumes requests are relatively latency sensitive and automatically determines an appropriate delay time. You can specify a commit delay value between 0 and 500 ms.
  *   `mutations` (*type:* `list(GoogleApi.Spanner.V1.Model.Mutation.t)`, *default:* `nil`) - The mutations to be executed when this transaction commits. All mutations are applied atomically, in the order they appear in this list.
  *   `precommitToken` (*type:* `GoogleApi.Spanner.V1.Model.MultiplexedSessionPrecommitToken.t`, *default:* `nil`) - Optional. If the read-write transaction was executed on a multiplexed session, the precommit token with the highest sequence number received in this transaction attempt, should be included here. Failing to do so will result in a FailedPrecondition error.
  *   `requestOptions` (*type:* `GoogleApi.Spanner.V1.Model.RequestOptions.t`, *default:* `nil`) - Common options for this request.
  *   `returnCommitStats` (*type:* `boolean()`, *default:* `nil`) - If `true`, then statistics related to the transaction will be included in the CommitResponse. Default value is `false`.
  *   `singleUseTransaction` (*type:* `GoogleApi.Spanner.V1.Model.TransactionOptions.t`, *default:* `nil`) - Execute mutations in a temporary transaction. Note that unlike commit of a previously-started transaction, commit with a temporary transaction is non-idempotent. That is, if the `CommitRequest` is sent to Cloud Spanner more than once (for instance, due to retries in the application, or in the transport library), it is possible that the mutations are executed more than once. If this is undesirable, use BeginTransaction and Commit instead.
  *   `transactionId` (*type:* `String.t`, *default:* `nil`) - Commit a previously-started transaction.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :maxCommitDelay => String.t() | nil,
          :mutations => list(GoogleApi.Spanner.V1.Model.Mutation.t()) | nil,
          :precommitToken =>
            GoogleApi.Spanner.V1.Model.MultiplexedSessionPrecommitToken.t() | nil,
          :requestOptions => GoogleApi.Spanner.V1.Model.RequestOptions.t() | nil,
          :returnCommitStats => boolean() | nil,
          :singleUseTransaction => GoogleApi.Spanner.V1.Model.TransactionOptions.t() | nil,
          :transactionId => String.t() | nil
        }

  field(:maxCommitDelay)
  field(:mutations, as: GoogleApi.Spanner.V1.Model.Mutation, type: :list)
  field(:precommitToken, as: GoogleApi.Spanner.V1.Model.MultiplexedSessionPrecommitToken)
  field(:requestOptions, as: GoogleApi.Spanner.V1.Model.RequestOptions)
  field(:returnCommitStats)
  field(:singleUseTransaction, as: GoogleApi.Spanner.V1.Model.TransactionOptions)
  field(:transactionId)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.CommitRequest do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.CommitRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.CommitRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
