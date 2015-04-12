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

});
