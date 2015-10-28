<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <style type="text/css">
      html { height: 100% }
      body { height: 100%; margin: 0; padding: 0 }
      #map_canvas { height: 100% }
    </style>
    <script type="text/javascript"
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAHIDkaYDda-AK3u2_UpBWpAPcft4yDbrk&callback=initMap">

    </script>
    <script type="text/javascript">
      function initialize() {
    	    var latlng = new google.maps.LatLng(-34.397, 150.644);
    	   /*  var latlng = new google.maps.LatLng(37.432124,127.129064);   */
            var mapOptions = {
               center: latlng,
               zoom: 8,
               mapTypeId: google.maps.MapTypeId.HYBRID
            };
            var map = new google.maps.Map ( document.getElementById("map_canvas"), mapOptions );
            var marker = new google.maps.Marker ( {position:latlng, map:map} );
      }
    </script>
  </head>
  <body onload="initialize()">
    <div id="map_canvas" style="width:100%; height:100%"></div>
  </body>
</html>