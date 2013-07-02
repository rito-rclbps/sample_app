function initialize(latlng) {
alert(latlng);
  if(typeof latlng === "undefined") return;
  var mapOptions = {
    center: new google.maps.LatLng(latlng["lat"], latlng["lng"]),
    zoom: 8,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  var map = new google.maps.Map(document.getElementById("map_canvas"),
                                                      mapOptions);
}
