@extends('admin.template.main')

@section('title', 'Home') 

@section('content')
<!DOCTYPE html>
<html>
  <head>
    <style>
       #map {
        height: 400px;
        width: 100%;
       }
    </style>
  </head>
  <body>
    <h3>My Google Maps Demo</h3>
    <div id="map"></div>
    <script>
      function initMap() {
        var home = {lat: 10.255058, lng: -67.591194};
        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 4,
          center: home
        });
        var marker = new google.maps.Marker({
          position: home,
          map: map
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBBFsMa5W-kpx1M3pwDf-FBz7uUc5EAxQc&callback=initMap">
    </script>
  </body>
</html>
@endsection