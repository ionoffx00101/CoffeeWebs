<!DOCTYPE html>
<html>
<head>
<style type="text/css">
html, body {
	height: 100%;
	margin: 0;
	padding: 0;
}

#map {
	height: 100%;
}
</style>
</head>
<body>
	<div id="map"></div>
	<script type="text/javascript">
		var map;
		function initMap() {
			map = new google.maps.Map(document.getElementById('map'), {
				center : {
					lat : -34.397,
					lng : 150.644
				},
				zoom : 8

			}); // 검색 전에 화면에 보여줄 지도의 영역좌표
			var defaultBounds = new google.maps.LatLngBounds(
					new google.maps.LatLng(41.0, 125.0), //좌상단 지리좌표
					new google.maps.LatLng(35.0, 129.0)); //우하단 지리좌표
			map.fitBounds(defaultBounds);
		}
	</script>
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAHIDkaYDda-AK3u2_UpBWpAPcft4yDbrk&callback=initMap">
		
	</script>
</body>
</html>

