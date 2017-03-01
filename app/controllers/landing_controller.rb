class LandingController < ApplicationController

  def index
    @lat = -25.363
    @lng = 131.044
    # respond_to do |format|
    #   format.js
    #   format.html {render :index}
    # end
  end

  def create
    userPlace = params['place']
    response = RestClient.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{userPlace}&key=#{ENV['GOOGLE_MAPS_API']}")
    geoplace = JSON.parse(response)

    @lat = geoplace['results'][0]['geometry']['location']['lat']
    @lng = geoplace['results'][0]['geometry']['location']['lng']
    render :index
  end
end
