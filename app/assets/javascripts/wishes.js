// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(function() {
	$(".alert").fadeTo(5000, 500).slideUp(500, function(){
	    $(".alert").slideUp(500);
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