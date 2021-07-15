import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Online"],
    typeSpeed: 2000,
    loop: true
  });
}

export { loadDynamicBannerText };