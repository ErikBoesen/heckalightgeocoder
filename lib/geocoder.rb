require 'net/http'
require 'uri'
require 'json'

class Geocoder

    @@BASE_URL = 'https://maps.googleapis.com/maps/api/geocode/json'
    @api_key = ''

    def initialize(key)
        @api_key = key
    end

    def fetch(key, val)
        # Replace spaces with %20. Otherwise, URI will be invalid.
        val.gsub! ' ', '%20'
        JSON.parse(Net::HTTP.get(URI.parse("#{@@BASE_URL}?key=#{@api_key}&#{key}=#{val}")))["results"][0]
    end

    def geocode(address)
        fetch('address', address)
    end

    def reverse_geocode(lat, lng)
        fetch('latlng', "#{lat},#{lng}")
    end

end