

import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';

// initMapbox();
function sleep (time) {
  return new Promise((resolve) => setTimeout(resolve, time));
}
const mapTab = document.getElementById("map-tab")
if (mapTab) {
  mapTab.addEventListener("click", () => {
    sleep(200).then(() => {
        initMapbox()
    })
  })
};
