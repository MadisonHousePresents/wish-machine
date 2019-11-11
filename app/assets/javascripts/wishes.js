// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(function() {

  setTimeout(function() {
    $('.alert').each(function(index) {
      $(this).delay(500*index).slideUp();
    })
  }, 3800);


  var masonryOptionsForWishGallery = {
    itemSelector: '.WishGallery-wish',
    columnWidth: '.WishGallery-column',
    gutter: '.WishGallery-gutter',
    percentPosition: true
  }

  var masonryOptionsForGrantedWishes = {
    itemSelector: '.WishGallery-grantedWish',
    columnWidth: '.WishGallery-column',
    gutter: '.WishGallery-gutter',
    percentPosition: true
  }


  $('.WishGallery-container').masonry(masonryOptionsForWishGallery);
  // $('.WishGallery-container').masonry(masonryOptionsForGrantedWishes);
  
  $('.WishGallery').infinitePages({
    loading: function() {
      return $(this).text('Loading next page...');
    },
    error: function() {
      return $(this).text('There was an error, please try again');
    }
  });

  $(window).on('scroll', function() {
      var cta = $("#Header-linkBack");
      if ($(this).scrollTop() > 450) {
          if (!cta.data('faded')) cta.data('faded', 1).stop(true).fadeTo(350, 0);
      } else if (cta.data('faded')) {
          cta.data('faded', 0).stop(true).fadeTo(350, 1);
      }
  });

  $('#WishParticipantField').focus(function() {
    if ($('#WishParticipantField').val() == "") {
      $('#WishParticipantField').val("If I ");
    }
  });

  $('#WishParticipantField').focusout(function() {
    if ($('#WishParticipantField').val() == "If I ") {
      $('#WishParticipantField').val("");
    }
  });

  $('#WishEFField').focus(function() {
    if ($('#WishEFField').val() == "") {
      $('#WishEFField').val("then Electric Forest will ");      
    }
  });

  $('#WishEFField').focusout(function() {
    if ($('#WishEFField').val() == "then Electric Forest will ") {
      $('#WishEFField').val("");      
    }
  });

});