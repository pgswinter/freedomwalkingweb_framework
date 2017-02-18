<?php

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
	<div class="fw-hero-image col-lg-12">
				
		<div class="summ-cont">
			<div id="map"></div>
			<script>
		      function initMap() {
		        var hcm = {lat: 10.7966966, lng: 106.7173811};
		        var map = new google.maps.Map(document.getElementById('map'), {
		          zoom: 17,
		          center: hcm,
		          zoomControl: false,
		          scrollwheel: false,
    			  scaleControl: false,
    			  navigationControl: false,
			      mapTypeControl: false,
			      scaleControl: false,
			      draggable: false,
		          styles: [
				  {
				    "elementType": "geometry",
				    "stylers": [
				      {
				        "color": "#242f3e"
				      }
				    ]
				  },
				  {
				    "elementType": "labels.text.fill",
				    "stylers": [
				      {
				        "color": "#746855"
				      }
				    ]
				  },
				  {
				    "elementType": "labels.text.stroke",
				    "stylers": [
				      {
				        "color": "#242f3e"
				      }
				    ]
				  },
				  {
				    "featureType": "administrative.locality",
				    "elementType": "labels.text.fill",
				    "stylers": [
				      {
				        "color": "#d59563"
				      }
				    ]
				  },
				  {
				    "featureType": "poi",
				    "elementType": "labels.text.fill",
				    "stylers": [
				      {
				        "color": "#d59563"
				      }
				    ]
				  },
				  {
				    "featureType": "poi.park",
				    "elementType": "geometry",
				    "stylers": [
				      {
				        "color": "#263c3f"
				      }
				    ]
				  },
				  {
				    "featureType": "poi.park",
				    "elementType": "labels.text.fill",
				    "stylers": [
				      {
				        "color": "#6b9a76"
				      }
				    ]
				  },
				  {
				    "featureType": "road",
				    "elementType": "geometry",
				    "stylers": [
				      {
				        "color": "#38414e"
				      }
				    ]
				  },
				  {
				    "featureType": "road",
				    "elementType": "geometry.stroke",
				    "stylers": [
				      {
				        "color": "#212a37"
				      }
				    ]
				  },
				  {
				    "featureType": "road",
				    "elementType": "labels.text.fill",
				    "stylers": [
				      {
				        "color": "#9ca5b3"
				      }
				    ]
				  },
				  {
				    "featureType": "road.highway",
				    "elementType": "geometry",
				    "stylers": [
				      {
				        "color": "#746855"
				      }
				    ]
				  },
				  {
				    "featureType": "road.highway",
				    "elementType": "geometry.stroke",
				    "stylers": [
				      {
				        "color": "#1f2835"
				      }
				    ]
				  },
				  {
				    "featureType": "road.highway",
				    "elementType": "labels.text.fill",
				    "stylers": [
				      {
				        "color": "#f3d19c"
				      }
				    ]
				  },
				  {
				    "featureType": "transit",
				    "elementType": "geometry",
				    "stylers": [
				      {
				        "color": "#2f3948"
				      }
				    ]
				  },
				  {
				    "featureType": "transit.station",
				    "elementType": "labels.text.fill",
				    "stylers": [
				      {
				        "color": "#d59563"
				      }
				    ]
				  },
				  {
				    "featureType": "water",
				    "elementType": "geometry",
				    "stylers": [
				      {
				        "color": "#17263c"
				      }
				    ]
				  },
				  {
				    "featureType": "water",
				    "elementType": "labels.text.fill",
				    "stylers": [
				      {
				        "color": "#515c6d"
				      }
				    ]
				  },
				  {
				    "featureType": "water",
				    "elementType": "labels.text.stroke",
				    "stylers": [
				      {
				        "color": "#17263c"
				      }
				    ]
				  }
				]
		        });
		        var marker = new google.maps.Marker({
		          position: hcm,
		          map: map
		        });
		      }
		    </script>
		    <script async defer
		    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDhrG3XTV2Wwy32o83-ywhY3m66JZCSjZA&callback=initMap">

		    </script>
    	</div>
	
	</div>
		
	<div class="fw-container">

		<div class="fw-contact col-lg-6">
			<h3>Contact Us</h3>
			<div class="summ-cont">
				
				<div class="form-inli">
					
					<input type="text" placeholder="Typing your Name ...">
					<input type="text" placeholder="Typing your Address ...">
					<input type="text" placeholder="Typing your Email ...">
					<input type="text" placeholder="Typing your Phone Number ...">
					<textarea name="" id="" cols="30" rows="10" placeholder="Send us your amazing ideals ..."></textarea>
					<input type="submit" value="send">

				</div>	

			</div>
			
		</div>
	</div>
</body>
</html>
