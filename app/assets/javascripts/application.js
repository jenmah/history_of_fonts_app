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

  // $('#search-bar').keypress(function(event) {
  //   if (event.which == 13) {
  //     event.preventDefault();
  //     var search = $('#search-bar').val();
  //     console.log(search);
  //   }
  // })

  // badWords = [shitty, shit, fuck]


  // function censorSuggestions() {
  //   suggestionArray = suggestedFont.split(' ');
  //   suggestionReasonArray = suggestionReason.split(' ');
  //     suggestionArray.each_with_index do |word, index|
  //       if badWords.include?(word)
  //         replacement = "*" * word.length
  //         suggestionArray[index] = replacement
  //     }


  function addSuggestion() {
    console.log('addSuggestion');
    var suggestedFont = $('#suggested-font').val();
    var suggestionReason = $('#suggestion-reason').val();
    console.log(suggestedFont);
    console.log(suggestionReason);

    // censorSuggestions();

    $('#suggestions-list').prepend(suggestedFont +  '  |  ' +suggestionReason + '<button class="suggestion-box">' + 'EDIT' + '</button>' + '<button class="suggestion-box">' + 'DELETE' + '</button>');


    $.ajax({
      type: 'POST',
      url: '/suggestions',
      dataType: 'json',
      data:  {
        suggestion:
        {suggested_font: suggestedFont, reason: suggestionReason}
      }
    }).done(function(suggestion) {
      console.log(suggestion.suggested_font);
      $('#suggested-font').val('');
      $('#suggestion-reason').val('');
    })
  }

  $('#submit-suggestion').on('click', addSuggestion);


});

