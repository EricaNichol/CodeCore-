// promptAndPlay
//
// Prompts the user to enter a song.
// Plays the entered song.
// Repeats when the song is complete.
//
$(document).ready(function() {

$("button").on("click", function() {
  var songString = prompt("Welcome to JukeBox!\nEnter a song to play:");
  var song = parseSong(songString);
  var onComplete = function(){
      $("button").html("Play");
      $("button").attr("disabled",false)
    };
  $("button").html("playing");
  $("button").attr("disabled",true);
  playSong(song, 500, onComplete);
});
});

// var promptAndPlay = function() {
//   var songString = prompt("Welcome to JukeBox!\nEnter a song to play:");
//   var song = parseSong(songString);
//   playSong(song, 500, promptAndPlay);
// Get things going.
// promptAndPlay();
