class ListingsController < ApplicationController
  def index
    listings = Listing.all
    render json: listings.as_json
  end

  def create
    coordinates = Geocoder.coordinates(params[:address])
    listing = Listing.new(
      description: params[:description],
      year_built: params[:year_built],
      square_feet: params[:square_feet],
      bedrooms: params[:bedrooms],
      bathrooms: params[:bathrooms],
      availability: params[:availability],
      price: params[:price],
      latitude: coordinates[0],
      longitude: coordinates[1]
    )
    listing.save
    render json: listing.as_json
  end
end
