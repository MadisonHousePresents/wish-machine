// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$(".alert-success").fadeTo(3000, 500).slideUp(500, function(){
    $(".alert-success").slideUp(500);
});