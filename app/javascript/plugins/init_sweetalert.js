import swal from 'sweetalert';

const initSweetalert = (selector, options = {}, callback = () => {}) => {
  const swalButton = document.querySelectorAll(selector);
  if (swalButton) { // protect other pages
    swalButton.forEach((button) => {
      button.addEventListener('click', (event) => {
      swal(options).then(callback);
      const link = document.getElementById(event.currentTarget.dataset.buttonId);
      link.click()     
    }); 
  });
  }
};

export { initSweetalert };


// console.log(value);
// const link = document.querySelector('#delete-talk');
  // link.click()