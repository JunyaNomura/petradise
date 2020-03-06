

import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';

import { initSweetalert } from '../plugins/init_sweetalert';

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

initSweetalert('#sweet-alert-demo', {
  title: "Remove a Friend",
  text: "you are removing a friend",
  icon: "success"
}, (value) => {
  const link = document.querySelector('#block-friend');
  link.click()
});

initSweetalert('#sweet-alert', {
  title: "Log out",
  text: "You are logging out",
  icon: "success"
}, (value) => {
  const link = document.querySelector('#button-log');
  link.click()
});
