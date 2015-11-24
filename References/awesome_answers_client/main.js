$(document).ready(function(){

 $.ajax({
   method:   "GET",
   url:      "http://localhost:3000/questions.json",
   dataType: "json",
   success: function(questions) {
     var template = $("#question-listing").html();
     for( var i = 0; i < questions.length; i++ ) {
       var html = Mustache.render(template, questions[i]);
       $("#questions").prepend(html);
       $("#questions").prepend("<h2>" + questions[i].title + "</h2>")
     }
   }
 })

$("#questions").on("click", ".question-title", function(){ //because we want it to be dynamic
  $.ajax({
    method: "GET",
    dataType: "json",
    url: "http://localhost:3000/questions/" + $(this).data("id") + ".json",
    success: function(data) {
      console.log(data.question);
      console.log(data.answers);
    }

  })
});

})
