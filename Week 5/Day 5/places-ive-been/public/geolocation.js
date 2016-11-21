var map;
var visitedPlaces = JSON.parse(localStorage.getItem('placesArray')) || [];

// Checks the browser is compatible with geolocation
if ("geolocation" in navigator){
  navigator.geolocation.getCurrentPosition(onLocation, onError); //default to current position
}

function onLocation(position){
  // We can't just directly feed the position into our google map
  // The objects are formatted differently, google maps is looking for
  // an object with "lat" and "lng" keys.


  createMap(position.coords.latitude,position.coords.longitude);
  setupAutocomplete();
}

// Displays an error if geolocation is not possible
function onError(err){
  console.log("Your browser isn't smart enough to use this feature. What are you using, IE 7??", err);
}

function createMap(lat, lng){ // Create new Map object in the #map div
  var position = {lat: lat, lng: lng};
  var mapOptions = {
    center: position, // Centre on the position
    zoom: 2  // Zoom to world level
  };
  map = new google.maps.Map($('#map')[0], mapOptions);
  createMarker(lat,lng); // Automatically add marker for current position

  var jsonifiedPosition = JSON.parse(window.localStorage.getItem("placesArray"));
  if(jsonifiedPosition != undefined){
     jsonifiedPosition.forEach(function(pos){
    createMarker(pos.lat,pos.lng);
  });
     $('.js-number-cities').append("<h3>Cities visited: "+jsonifiedPosition.length+"</h3>")
  }
 
  
}

function createMarker(lat,lng) {

  var myLatLng = {lat: lat, lng: lng};
  console.log(myLatLng)
   var marker = new google.maps.Marker({
   position: myLatLng,
   map: map
 });
}

function setupAutocomplete(){  
  var input = $('#get-places')[0]; // Delect input form
  var autocomplete = new google.maps.places.Autocomplete(input); // Tell Google to autocomplete
  autocomplete.addListener('place_changed', function(){ // Event listener to look for change of location
    var place = autocomplete.getPlace(); // Get the place the user searched for
    if (place.geometry.location) {
      map.setCenter(place.geometry.location); // Centre on that place if it exists in GoogleMaps
      map.setZoom(10);
      var lat = place.geometry.location.lat();
      var lng = place.geometry.location.lng();
      createMarker(lat, lng);
      var myLatLng = {lat: lat, lng: lng};
      visitedPlaces.push(myLatLng);
      window.localStorage.setItem("placesArray", JSON.stringify(visitedPlaces));
      var jsonifiedPosition = JSON.parse(window.localStorage.getItem("placesArray"));
      $('.js-number-cities').empty();
      $('.js-number-cities').append("<h3>Cities visited: "+jsonifiedPosition.length+"</h3>")
    } else {
      alert("The place has no location...?")
    }
  });
}