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

// app/javascript/packs/application.js
// [...]
import { loadDynamicBannerText } from '../components/typed';

document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  // [...]
  if (document.getElementById('banner-typed-text')){
    loadDynamicBannerText();
  }

  const channels = require.context('.', true, /_channel\.js$/)
  channels.keys().forEach(channels)

  const parentContainer = document.querySelector('.read-more-container');
  if (parentContainer)  {
    parentContainer.addEventListener('click', event => {

      const current = event.target;

      const isReadMoreBtn = current.className.includes('read-more-btn');

      if (!isReadMoreBtn) return;

      const currentText = event.target.parentNode.querySelector('.read-more-text');

      currentText.classList.toggle('read-more-text--show');

      current.textContent = current.textContent.includes('Read More') ? "Read Less..." : "Read More...";

    })

  }

});
// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
