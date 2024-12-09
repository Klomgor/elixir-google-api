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

defmodule GoogleApi.Compute.V1.Model.PathRule do
  @moduledoc """
  A path-matching rule for a URL. If matched, will use the specified BackendService to handle the traffic arriving at this URL.

  ## Attributes

  *   `customErrorResponsePolicy` (*type:* `GoogleApi.Compute.V1.Model.CustomErrorResponsePolicy.t`, *default:* `nil`) - customErrorResponsePolicy specifies how the Load Balancer returns error responses when BackendServiceor BackendBucket responds with an error. If a policy for an error code is not configured for the PathRule, a policy for the error code configured in pathMatcher.defaultCustomErrorResponsePolicy is applied. If one is not specified in pathMatcher.defaultCustomErrorResponsePolicy, the policy configured in UrlMap.defaultCustomErrorResponsePolicy takes effect. For example, consider a UrlMap with the following configuration: - UrlMap.defaultCustomErrorResponsePolicy are configured with policies for 5xx and 4xx errors - A PathRule for /coming_soon/ is configured for the error code 404. If the request is for www.myotherdomain.com and a 404 is encountered, the policy under UrlMap.defaultCustomErrorResponsePolicy takes effect. If a 404 response is encountered for the request www.example.com/current_events/, the pathMatcher's policy takes effect. If however, the request for www.example.com/coming_soon/ encounters a 404, the policy in PathRule.customErrorResponsePolicy takes effect. If any of the requests in this example encounter a 500 error code, the policy at UrlMap.defaultCustomErrorResponsePolicy takes effect. customErrorResponsePolicy is supported only for global external Application Load Balancers.
  *   `paths` (*type:* `list(String.t)`, *default:* `nil`) - The list of path patterns to match. Each must start with / and the only place a * is allowed is at the end following a /. The string fed to the path matcher does not include any text after the first ? or #, and those chars are not allowed here.
  *   `routeAction` (*type:* `GoogleApi.Compute.V1.Model.HttpRouteAction.t`, *default:* `nil`) - In response to a matching path, the load balancer performs advanced routing actions, such as URL rewrites and header transformations, before forwarding the request to the selected backend. Only one of urlRedirect, service or routeAction.weightedBackendService can be set. URL maps for classic Application Load Balancers only support the urlRewrite action within a path rule's routeAction.
  *   `service` (*type:* `String.t`, *default:* `nil`) - The full or partial URL of the backend service resource to which traffic is directed if this rule is matched. If routeAction is also specified, advanced routing actions, such as URL rewrites, take effect before sending the request to the backend. Only one of urlRedirect, service or routeAction.weightedBackendService can be set.
  *   `urlRedirect` (*type:* `GoogleApi.Compute.V1.Model.HttpRedirectAction.t`, *default:* `nil`) - When a path pattern is matched, the request is redirected to a URL specified by urlRedirect. Only one of urlRedirect, service or routeAction.weightedBackendService can be set. Not supported when the URL map is bound to a target gRPC proxy.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :customErrorResponsePolicy =>
            GoogleApi.Compute.V1.Model.CustomErrorResponsePolicy.t() | nil,
          :paths => list(String.t()) | nil,
          :routeAction => GoogleApi.Compute.V1.Model.HttpRouteAction.t() | nil,
          :service => String.t() | nil,
          :urlRedirect => GoogleApi.Compute.V1.Model.HttpRedirectAction.t() | nil
        }

  field(:customErrorResponsePolicy, as: GoogleApi.Compute.V1.Model.CustomErrorResponsePolicy)
  field(:paths, type: :list)
  field(:routeAction, as: GoogleApi.Compute.V1.Model.HttpRouteAction)
  field(:service)
  field(:urlRedirect, as: GoogleApi.Compute.V1.Model.HttpRedirectAction)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.PathRule do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.PathRule.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.PathRule do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
