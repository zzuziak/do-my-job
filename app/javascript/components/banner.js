import Typed from 'typed.js';

function loadDynamicBannerText() {
  new Typed('#banner-typed-text', {
    strings: ["pilot", "girl..friend", "priest", "president", "musician", "surgeon", "Cleveland Cavaliers point guard", "professor", "astronaut", "nurse"],
    typeSpeed: 80,
    loop: true
  });
}

export { loadDynamicBannerText };
