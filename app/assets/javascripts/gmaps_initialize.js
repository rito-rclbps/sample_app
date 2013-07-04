function initialize(lat, lng) {
  if(typeof lat !== "undefined"){
    var mapOptions = {
    center: new google.maps.LatLng(lat, lng),
    zoom: 8,
    mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(document.getElementById("map_canvas"),
                                                      mapOptions);
  }
}
