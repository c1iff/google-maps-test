class LandingController < ApplicationController

  def index
    @lat = -25.363
    @lng = 131.044
  end

  def create
    @transit_method = params['transit_method']
    if params['origin'] != ''
      @user_origin = params['origin']
    end
    if params['destination'] != ''
      @user_destination = params['destination']
    end
    if params['user_place'] != ''
      @user_place = params['user_place']
      @user_latlng = Geocoder.get_geo(params['user_place'])
    end
    render :index
  end
end
