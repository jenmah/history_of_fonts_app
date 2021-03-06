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
// require turbolinks
//= require_tree .


$(document).ready(function() {

  function addSuggestion() {
    console.log('addSuggestion');
    var suggestedFont = $('#suggested-font').val();
    var suggestionReason = $('#suggestion-reason').val();
    console.log(suggestedFont);
    console.log(suggestionReason);
    $('#suggestions-list').prepend('<p>' + "Thanks! Your suggestion has been added to our database." + '</p>');
    $.ajax({
      type: 'POST',
      url: '/suggestions',
      dataType: 'json',
      data:  {
        suggestion:
        {suggested_font: suggestedFont, reason: suggestionReason}
      }
    }).done(function(suggestion) {
      var id = suggestion["id"];
      $('#suggestions-list').prepend('<h4>' + suggestion['suggested_font'] + '</h4>' + '<button class="edit-suggestion-box" data-id="' + id + '">' + 'EDIT' + '</button>' + '<button class="delete-suggestion-box" data-id="' + id + '">' + 'DELETE' + '</button>');
      console.log(suggestion.suggested_font);
      $('#suggested-font').val('');
      $('#suggestion-reason').val('');
    })
  }


  function deleteSuggestion() {
    var deleteBox = $(this);
    var deleteBoxId = $(this).data('id');
    console.log(deleteBoxId);
    $.ajax({
      type: 'DELETE',
      url: "/suggestions/" + deleteBoxId
    }).done(function(data) {
      console.log('done', deleteBox);
      $('#suggestions-list').html('<p>' + 'Changed your mind? Your suggestion has been deleted from the database.' + '</p>');
    })
  }



  function editSuggestion() {
    console.log('editSuggestion');
    var editBoxId = $(this).data('id');

    $('#suggested-font').val("testing");
    $('#suggestion-reason').val("testing");

    $('#suggestions-list').html('<p>' + 'Edit your suggestion above' + '</p>');

    $.ajax({
      type: 'GET',
      url: "/suggestions/" + editBoxId + "/edit",
      dataType: 'json',
      data: {id: editBoxId}
    }).done(function(data) {
      console.log(data);
    })
  }


  // Click Events
  $('#submit-suggestion').on('click', addSuggestion);

  $('body').delegate('.delete-suggestion-box', 'click', deleteSuggestion);

  $('body').delegate('.edit-suggestion-box', 'click', editSuggestion);

  $("a[href='#top']").click(function() {
     $("#left-side").animate({ scrollTop: 0 }, "slow");
     return false;
  });

});

