$(document).ready(function(){

  $(".question_up").on("click", function(event){
    var up_url = $(this).attr("href");
    console.log("HEYY!!")
    event.preventDefault();
    $.ajax({
      url: up_url,
      method: "post",
      success: function(response){
        console.log("YAYYYY!!")
        $(".question_vote_count").html(response);
      }
    })
  })
  $(".question_down").on("click", function(event){
    var up_url = $(this).attr("href");
    console.log("HEYY!!")
    event.preventDefault();
    $.ajax({
      url: up_url,
      method: "post",
      success: function(response){
        console.log("YAYYYY!!")
        $(".question_vote_count").html(response);
      }
    })
  })
})
