# Hecka Light Geocoder

Unofficial Google Maps Geocoder library.

This API returns JSON-parsed data fetched from the Google Maps Geocoding API.

## Setup
To use these functions, you must require the `hl-geocoder` gem:

    require 'hl-geocoder'

Before using the library, you must instantiate the class, providing your app's ID, for example:

    geocoder = Geocoder.new('thIsIsnOtaReAlKeyOHuieIDGsad7892qe')


## Retrieval Functions
Replace `geocoder` with whatever keyword you use to initialize the API.
* `geocoder.geocode(address)` - Geocode an address, town name, etc.
* `geocoder.reverse_geocode(latitude, longitude)` - Reverse geocode an address (give coordinates instead of the place name).

See `example.rb` for a usage example.

Documentation for the Google Maps Geocoding API can be found [here](https://developers.google.com/maps/documentation/geocoding/intro).

## Authors
This software was created and is maintained by [Erik Boesen](https://github.com/ErikBoesen).

## License
This software is protected under the [MIT License](LICENSE).