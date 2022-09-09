// Entry point for the build script in your package.json
import "@hotwired/turbo-rails"
import "./controllers"
import "bootstrap"

// console.log(document.querySelector(".mapboxgl-ctrl-geocoder--input").value)

// document.querySelector(".mapboxgl-ctrl-geocoder--input").addEventListener("change", (e) => {console.log(document.querySelector(".mapboxgl-ctrl-geocoder--input").value)})
// const sugg = document.querySelector(".suggestions")

// sugg.addEventListener("input", (e) => {
//   console.log(sugg)
//   console.log("helllooooo")
//   window.location.assign(`http://localhost:3000/hikes?query${sugg}`)
//   console.log("asasd")
// })

// console.log("kh")

import { initMapbox } from "../javascript/plugins/init_mapbox"

document.addEventListener('turbo:load', () => {
  initMapbox();
  console.log("Hello from appication.js")

});
