// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(function() {

  setTimeout(function() {
    $('.alert').slideUp();
  }, 3800);

  var masonryOptions = {
    itemSelector: '.WishGallery-wish',
    columnWidth: '.WishGallery-column',
    gutter: '.WishGallery-gutter',
    percentPosition: true
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