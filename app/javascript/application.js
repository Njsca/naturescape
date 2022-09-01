// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"


console.log(document.querySelector(".mapboxgl-ctrl-geocoder--input").value)
<<<<<<< HEAD
document.querySelector(".mapboxgl-ctrl-geocoder--input").addEventListener("change", (e) => {console.log(document.querySelector(".mapboxgl-ctrl-geocoder--input").value)})
const sugg = document.querySelector(".suggestions")

sugg.addEventListener("input", (e) => {
  console.log(sugg)
  console.log("helllooooo")
  window.location.assign(`http://localhost:3000/hikes?query${sugg}`)
  console.log("asasd")
})
=======
document.querySelector(".mapboxgl-ctrl-geocoder--input").addEventListener("keyup", (e) => {console.log(document.querySelector(".mapboxgl-ctrl-geocoder--input").value)})

import "map_controller"
>>>>>>> a25d19c85a2665f1e3e4f4da8b32a46bd4d12dc6
