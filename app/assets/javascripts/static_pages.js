// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

jQuery(document).ready(function($) {
	$('#micropost_content').on('keydown keyup', function () {
		var textareaElement = $(this),
			counterElement = $('.remaining_characters'),
			remaining_characters = 140 - textareaElement.val().length;
		counterElement.removeClass('text-success').removeClass('text-error').removeClass('text-info');
		if (remaining_characters > 0) {
			counterElement.addClass('text-success').html(remaining_characters + ' characters remaining...');
		} else if (remaining_characters === 0) {
			counterElement.addClass('text-info').html(remaining_characters + ' characters left!');
		} else {
			remaining_characters = remaining_characters * -1;
			counterElement.addClass('text-error').html(remaining_characters + ' characters over the limit!');
		}
	});
});