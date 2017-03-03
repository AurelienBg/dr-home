$(document).ready(function() {
  var address = $('#user_address').get(0);
  var favCity = $("#user_fav_city").get(0);
  if (address) {
    launchAutocompleteAddress(address);
  }
  if (favCity) {
    launchAutocompleteAddress(favCity);
  }
});

function launchAutocompleteAddress(address) {
  var autocomplete = new google.maps.places.Autocomplete(address, { types: ['geocode'] });
  if (address.id === "user_fav_city") {
    google.maps.event.addListener(autocomplete, 'place_changed', onUserFavCityChanged);
  } else if (address.id === "user_address") {
    google.maps.event.addListener(autocomplete, 'place_changed', onUserAddressChanged);
  }
  google.maps.event.addDomListener(address, 'keydown', function(e) {
    if (e.keyCode == 13) {
      e.preventDefault(); // Do not submit the form on Enter.
    }
  });
}

function onUserAddressChanged() {
  var place = this.getPlace();
  var components = getAddressComponents(place);
  $("#user_address").trigger('blur').val(components.address);
  $("#user_zipcode").val(components.zip_code);
  $("#user_city").val(components.city);
  if (components.country_code) {
    $('#country').val(components.country_code);
  }
}

function onUserFavCityChanged() {
  var place = this.getPlace();
  var components = getAddressComponents(place);
  $("#user_fav_city").trigger('blur').val(components.city);
}

function getAddressComponents(place) {
  // If you want lat/lng, you can look at:
  // - place.geometry.location.lat()
  // - place.geometry.location.lng()

  var street_number = null;
  var route = null;
  var zip_code = null;
  var city = null;
  var country_code = null;
  for (var i in place.address_components) {
    var component = place.address_components[i];
    for (var j in component.types) {
      var type = component.types[j];
      if (type == 'street_number') {
        street_number = component.long_name;
      } else if (type == 'route') {
        route = component.long_name;
      } else if (type == 'postal_code') {
        zip_code = component.long_name;
      } else if (type == 'locality') {
        city = component.long_name;
      } else if (type == 'country') {
        country_code = component.short_name;
      }
    }
  }

  return {
    address: street_number == null ? route : (street_number + ' ' + route),
    zip_code: zip_code,
    city: city,
    country_code: country_code
  };
}