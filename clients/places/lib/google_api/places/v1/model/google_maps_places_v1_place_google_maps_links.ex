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

defmodule GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceGoogleMapsLinks do
  @moduledoc """
  Links to trigger different Google Maps actions.

  ## Attributes

  *   `directionsUri` (*type:* `String.t`, *default:* `nil`) - A link to show the directions to the place. The link only populates the destination location and uses the default travel mode `DRIVE`.
  *   `photosUri` (*type:* `String.t`, *default:* `nil`) - A link to show photos of this place. This link is currently not supported on Google Maps Mobile and only works on the web version of Google Maps.
  *   `placeUri` (*type:* `String.t`, *default:* `nil`) - A link to show this place.
  *   `reviewsUri` (*type:* `String.t`, *default:* `nil`) - A link to show reviews of this place. This link is currently not supported on Google Maps Mobile and only works on the web version of Google Maps.
  *   `writeAReviewUri` (*type:* `String.t`, *default:* `nil`) - A link to write a review for this place. This link is currently not supported on Google Maps Mobile and only works on the web version of Google Maps.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :directionsUri => String.t() | nil,
          :photosUri => String.t() | nil,
          :placeUri => String.t() | nil,
          :reviewsUri => String.t() | nil,
          :writeAReviewUri => String.t() | nil
        }

  field(:directionsUri)
  field(:photosUri)
  field(:placeUri)
  field(:reviewsUri)
  field(:writeAReviewUri)
end

defimpl Poison.Decoder, for: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceGoogleMapsLinks do
  def decode(value, options) do
    GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceGoogleMapsLinks.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Places.V1.Model.GoogleMapsPlacesV1PlaceGoogleMapsLinks do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
