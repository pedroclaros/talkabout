import swal from 'sweetalert';

const initSweetalert = (selector, options = {}, callback = () => {}) => {
  const swalButton = document.querySelectorAll(selector);
  if (swalButton) { // protect other pages
    swalButton.forEach((button) => {
      button.addEventListener('click', (event) => {
        const link = document.getElementById(event.currentTarget.dataset.buttonId);
        swal(options)
        .then(function() {
        console.log(event);
        link.click()    
      });
      
    }); 
  });
  }

  
};

export { initSweetalert };

// initSweetalert('#sweet-alert-talk', {
//   title: "Está seguro que desea eliminar la charla?",
//   text: "todas las citas y favoritos seran borradas!",
//   icon: "warning"
// }, (value) => {
//   console.log(value);
//   if (value) {
//     // const link = document.querySelector('#delete-talk');
//     const link = document.getElementById(event.currentTarget.dataset.buttonId);
//     link.click()    
//   }
// });
// const link = document.getElementById(event.currentTarget.dataset.buttonId);
// link.click()     
