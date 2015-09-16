var play = function(noteStrings) {
  var song = parseSong(noteStrings);
  playSong(song, 500);
};

var playing = function() {
  var songList = $("ul").children();
  play(songList.eq(0).html().trim());
  songList.eq(0).remove();
  console.log(songList.eq(0).html().trim());
  $("#play-button").slideUp();
};


$(document).ready(function() {

$('#song-form').on("submit", function() {
  event.preventDefault();
  var songString = $('.form-control[type="text"]').val().trim();
  $('#song-queue').append("<li>"+ songString + "</li>");
  $('.form-control[type="text"]').val("");
  console.log(songString);
});

 $('#play-button').on('click', function() {
   playing();
 });

});
