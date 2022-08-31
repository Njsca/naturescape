// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"


console.log(document.querySelector(".mapboxgl-ctrl-geocoder--input").value)
document.querySelector(".mapboxgl-ctrl-geocoder--input").addEventListener("keyup", (e) => {console.log(document.querySelector(".mapboxgl-ctrl-geocoder--input").value)})

import "map_controller"

