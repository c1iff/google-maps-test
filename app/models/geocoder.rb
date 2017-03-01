class Geocoder
  def self.get_geo (user_place)
    response = RestClient.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{user_place}&key=#{ENV['GOOGLE_MAPS_API']}")
    geoplace = JSON.parse(response)
    lat_lng = {
      lat: geoplace['results'][0]['geometry']['location']['lat'],
      lng: geoplace['results'][0]['geometry']['location']['lng']
    }
  end
end
