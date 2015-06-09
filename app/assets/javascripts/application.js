// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .


// declare varliables:

$(document).ready(function() {

  $('#search-bar').keypress(function(event) {
    if (event.which == 13) {
      event.preventDefault();
      var search = $('#search-bar').val();
      console.log(search);
    }
  })

//   $('a.top').click(function(){
//     $(document.body).animate({scrollTop : 0},800);
//     return false;
// });

});

