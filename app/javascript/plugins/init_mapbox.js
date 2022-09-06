const initMapbox = () => {
  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
      markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
      map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
    };

    const mapElement = document.getElementById('map');
    if (mapElement) {
      mapboxgl.accessToken = mapElement.dataset.mapApiKeyValue;
      const map = new mapboxgl.Map({
        container: 'map',
        style: 'mapbox://styles/mapbox/streets-v10'
      });
      map.show();
      map.resize();
      // Markers
      const markers = JSON.parse(mapElement.dataset.mapMarkersValue);
      markers.forEach((marker) => {
        const popup = new mapboxgl.Popup().setHTML(marker.info_window)
        const customMarker = document.createElement("div")
        customMarker.className = "marker"
        customMarker.style.backgroundImage = `url('${marker.image_url}')`
        customMarker.style.backgroundSize = "contain"
        customMarker.style.backgroundRepeat = "no-repeat"
        customMarker.style.width = "25px"
        customMarker.style.height = "50px"
        new mapboxgl.Marker(customMarker)
          .setLngLat([ marker.lng, marker.lat ])
          .setPopup(popup)
          .addTo(map);
      });
      fitMapToMarkers(map, markers);
      // Search bar
      const geocoder = new MapboxGeocoder({
          accessToken: mapboxgl.accessToken,
          mapboxgl: map
      });
      document.getElementById('geocoder').appendChild(geocoder.onAdd(map));
    }
}

// export { initMapbox }
