import "bootstrap";


/*----------------------------------------------------*/
/* Smooth Scrolling
------------------------------------------------------ */
 if (document.getElementById("home")) {
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
 }


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




/*------------------------------------------------------------------*/
/* Hide the logo and social links of the navigation bar when scroll
--------------------------------------------------------------------*/

// var scrollpos = window.scrollY;
// var header = document.getElementById("header-up-section");

// function add_class_on_scroll() {
//     header.classList.add("hidden");
// }

// function remove_class_on_scroll() {
//     header.classList.remove("hidden");
//     header.classList.add("shownav");
// }

// window.addEventListener('scroll', function(){

//     scrollpos = window.scrollY;

//     if(scrollpos > 20){
//         add_class_on_scroll();
//     }
//     else {
//         remove_class_on_scroll();
//     }
//     console.log(scrollpos);
// });


