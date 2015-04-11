$(document).ready(function() {

  $(".logout_button").on("click", function(event){
    console.log("HEY!!!")
    var delete_url = $(this).attr("href");
    event.preventDefault();
    $.ajax({
      url: "/logout",
      method: "delete",
      success: function(response){
        console.log(response);
        $(".pull-right").append(response);
        $(".logout_button").hide();
      }

    });
  });

});
