import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["cursos", "Cursos", "Capacitaciones", "Eventos en vivo", "Conversaciones", "Webinars"],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicBannerText };