require 'hl-geocoder'

# Initialize geocoder
geo = Geocoder.new('PUT_YOUR_KEY_HERE')

# Get San Francisco's data
sf = geo.geocode('San Francisco, CA')

# Get New York City's data by reverse geocoding
ny = geo.reverse_geocode(40.7058316, -74.2581954)

# TODO: Do some interesting examples with the data