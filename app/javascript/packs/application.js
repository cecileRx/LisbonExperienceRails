import "bootstrap";


/*----------------------------------------------------*/
/* Smooth Scrolling
------------------------------------------------------ */
 $('.smoothscroll').on('click',function (e) {
      e.preventDefault();

      var target = this.hash,
      $target = $(target);

      $('html, body').stop().animate({
          'scrollTop': $target.offset().top
      }, 800, 'swing', function () {
          window.location.hash = target;
      });
  });


/*----------------------------------------------------*/
/* Highlight the current section in the navigation bar
------------------------------------------------------*/
function deactiveTabs () {
  document.querySelectorAll('.nav-item').forEach((tab) => {
    tab.classList.remove('active')
  })
};

function initiateActiveTab () {
  if (document.getElementById("nav-wrap")) {
    document.querySelectorAll('.nav-item').forEach((tab) => {
      tab.addEventListener('click', function(event){
        deactiveTabs();
        event.currentTarget.classList.add('active')
      })
    })
  }
}

initiateActiveTab ();
