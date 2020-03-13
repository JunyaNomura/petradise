

import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';
import { initStarRating } from '../plugins/init_star_rating';
import { initSweetalert } from '../plugins/init_sweetalert';

initMapbox();
// function sleep (time) {
//   return new Promise((resolve) => setTimeout(resolve, time));
// }
// const mapTab = document.getElementById("map-tab")
// if (mapTab) {
//   mapTab.addEventListener("click", () => {
//     sleep(200).then(() => {
//         initMapbox()
//     })
//   })
// };

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

initSweetalert('#sweet-alert-matched', {
  title: "Hot Dog!!!!",
  text: "Your dog seems to have been matched with this dog!! Time to become friends!!!",
  icon: "success",
  buttons: {
    cancel: {
      text: "Keep swiping",
      value: null,
      visible: true,
      closeModal: true
    },
    confirm: {
      text: "Check my friend",
      value: true,
      visible: true,
      closeModal: true
    }
  }
}, (value) => {
  if (value) {
    console.log("going to my friend page");
    // document.querySelector('#btn-like a').click();
    document.querySelector("#btn-my-friend a").click();
  } else {
    console.log("skip: closing the modal");
    // document.querySelector("#btn-like a").click();
  }
  // const link = document.querySelector('#button-log');
  // link.click()
});



scrollLastMessageIntoView = () => {
  const messages = document.querySelectorAll('.message');
  const lastMessage = messages[messages.length - 1];
  if (lastMessage) lastMessage.scrollIntoView();
}

initStarRating();


