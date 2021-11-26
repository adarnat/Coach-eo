// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";


// Internal imports, e.g:
import { initCoachCalendar } from '../init_calendar';


-document.addEventListener('turbolinks:load', () => {
    // Call your functions here, e.g:

  initCoachCalendar();



});

var date = new Date(),
  year = date.getFullYear(),
  month = date.getMonth(),
  day = date.getUTCDate(),
  months = ["Jan", "Feb", "Mar", "Apr", "May", "June", "July", "Aug", "Sept", "Oct", "Nov", "Dec"];

document.getElementById('daymonth').innerHTML = months[month] + " " + day;
document.getElementById('year').innerHTML = year;

var clockH = $(".hours");
var clockM = $(".minutes");

function time() {
  var d = new Date(),
    s = d.getSeconds() * 6,
    m = d.getMinutes() * 6 + (s / 60),
    h = d.getHours() % 12 / 12 * 360 + (m / 12);
  clockH.css("transform", "rotate(" + h + "deg)");
  clockM.css("transform", "rotate(" + m + "deg)");
}

var clock = setInterval(time, 1000);
time();

import "controllers"
