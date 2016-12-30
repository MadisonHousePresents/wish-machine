// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(function() {
  // var slide = function(alertItem) {
  //   alertItem.slideDown(500, function(){
  //     var next = $(this).next('.alert');
  //     if (next)
  //       slide(next);
  //   });
  // }

  // slide($('.alert:first'));

  var i = 0;
  $(".alert").each( function() {
    $(this).delay(3800*i).slideUp(1200);
    i++;
  });

  var masonryOptions = {
    itemSelector: '.WishGallery-wish',
    columnWidth: '.WishGallery-column',
    percentPosition: true,
    gutter: 24
  }

  $('.WishGallery-container').masonry(masonryOptions);
  
  $('.WishGallery').infinitePages({
    loading: function() {
      return $(this).text('Loading next page...');
    },
    error: function() {
      return $(this).text('There was an error, please try again');
    }
  });
});