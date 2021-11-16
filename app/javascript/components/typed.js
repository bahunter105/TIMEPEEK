import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Time Travel Made Easy"],
    typeSpeed: 90,
    loop: true
  });
}

export { loadDynamicBannerText };
