$(document).ready(function() {

  $(".new_comment").on("ajax:success", function(e, data, status, xhr) {
  $(".question_comment_list").append(xhr.responseText);
  $(".comment_text_area").val("")
  return console.log("stuff", xhr.responseText);
}).on("ajax:error", function(e, xhr, status, error) {
  return $("#new_comment").prepend("<p>ERROR</p>");
});



  $(".new_answer_comment").on("ajax:success", function(e, data, status, xhr) {
    var answerCommentList = $(this).parent().parent().find(".answer_comment_list");
    answerCommentList.append(xhr.responseText);
    $(".comment_text_area").val("");
  });

<<<<<<< HEAD
  $(".show_answer_comments_form").on("click", function(event){
    var form_class = $(this).attr("href");
    console.log("HEYYYYYYYYYYYYY");
    event.preventDefault();
    $("#" + form_class).css("display", "block")
  })

=======

  $(".show_answer_comments_form").on("click", function(event){
    var form = $(this).parent().find(".answer_comment");
    console.log("HEYYYYYYYYYYYYY");
    event.preventDefault();
    form.css("display", "block");
  });
>>>>>>> 2ee34090ad3dcb747690ad553e7216b825d9a5c9
});
