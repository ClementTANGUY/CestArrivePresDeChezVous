function initializeAutocomplete(id) {
  var element = document.getElementById(id);
  var options = { types: ['geocode'],
  };

  if (element) {
    var autocomplete = new google.maps.places.Autocomplete(element, options);
    google.maps.event.addListener(autocomplete, 'place_changed', onPlaceChanged);
  }
}
function onPlaceChanged() {
  var place = this.getPlace();
  // console.log(place);  // Uncomment this line to view the full object returned by Google API.
  for (var i in place.address_components) {
    var component = place.address_components[i];
     for (var j in component.types) {  // Some types are ["country", "political"]
      var type_element = document.getElementById(component.types[j]);
      if (type_element) {
        type_element.value = component.long_name;
      }
    }
  }
}
google.maps.event.addDomListener(window, 'load', function() {
  initializeAutocomplete('search_query');
});
